import 'package:alan/alan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starname_demo/src/api/rest_client.dart';
import 'package:starname_demo/src/bl/account_bloc/account_event.dart';
import 'package:starname_demo/src/bl/account_bloc/account_state.dart';
import 'package:starname_demo/src/bl/wallet.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc(this._wallet, this._restClient)
      : super(const AccountState.noAccount());

  final Wallet _wallet;
  final RestClient _restClient;

  @override
  Stream<AccountState> mapEventToState(AccountEvent event) => event.map(
        initialized: _mapInitialized,
        created: _mapCreated,
        updated: _mapUpdated,
      );

  Stream<AccountState> _mapInitialized(Initialized event) async* {
    yield const AccountState.creatingAccount();
    try {
      final request = AccountsWithOwnerRequest(
        owner: _wallet.bech32Address,
        resultsPerPage: 1,
      );
      final result = await _restClient.getAccountsWithOwner(request);
      if (result.accounts.isEmpty) {
        yield const AccountState.noAccount();
        return;
      }

      final accountDto = result.accounts.first;
      final account = Account(
        name: accountDto.name,
        ethAddress: accountDto.resources.first.resource,
      );
      yield AccountState.accountReady(account);
    } on Exception {
      yield const AccountState.noAccount();
      return;
    }
  }

  Stream<AccountState> _mapCreated(Created event) async* {
    yield const AccountState.creatingAccount();
    try {
      final result = await _wallet.registerStarnameAccount(
        resource: event.account.ethAddress,
        name: event.account.name,
      );
      if (result.isSuccessful) {
        yield const AccountState.accountSuccess();
        yield AccountState.accountReady(event.account);
      } else {
        yield const AccountState.accountFailure();
        yield const AccountState.noAccount();
      }
    } on Exception catch (e) {
      print(e);
      yield const AccountState.accountFailure();
      yield const AccountState.noAccount();
    }
  }

  Stream<AccountState> _mapUpdated(Updated event) async* {
    final currentAccount = state.maybeWhen(
      accountReady: (a) => a,
      orElse: () => null,
    );
    if (currentAccount == null) return;

    yield const AccountState.updatingAccount();
    try {
      final result = await _wallet.updateStarnameAccount(
        resource: event.account.ethAddress,
        name: event.account.name,
      );
      if (result.isSuccessful) {
        yield const AccountState.accountSuccess();
        yield AccountState.accountReady(event.account);
      } else {
        yield const AccountState.accountFailure();
        yield AccountState.accountReady(currentAccount);
      }
    } on Exception catch (e) {
      print(e);
      yield const AccountState.accountFailure();
      yield AccountState.accountReady(currentAccount);
    }
  }
}
