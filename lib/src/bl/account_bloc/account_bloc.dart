import 'package:alan/alan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starname_demo/src/bl/account_bloc/account_event.dart';
import 'package:starname_demo/src/bl/account_bloc/account_state.dart';
import 'package:starname_demo/src/bl/wallet.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc(this.wallet) : super(const AccountState.noAccount());

  final Wallet wallet;

  @override
  Stream<AccountState> mapEventToState(AccountEvent event) => event.map(
        initialized: _mapInitialized,
        created: _mapCreated,
      );

  Stream<AccountState> _mapInitialized(Initialized event) async* {
    // todo: load account
  }

  Stream<AccountState> _mapCreated(Created event) async* {
    yield const AccountState.processingAccount();
    try {
      final result = await wallet.registerStarnameAccount(
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
    } on Exception {
      yield const AccountState.accountFailure();
      yield const AccountState.noAccount();
    }
  }
}
