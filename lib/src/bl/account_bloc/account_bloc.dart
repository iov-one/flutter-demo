import 'package:alan/alan.dart';
import 'package:dfunc/dfunc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starname_demo/src/api/pinata.dart';
import 'package:starname_demo/src/api/rest_client.dart';
import 'package:starname_demo/src/bl/account_bloc/account_event.dart';
import 'package:starname_demo/src/bl/account_bloc/account_state.dart';
import 'package:starname_demo/src/bl/metadata.dart';
import 'package:starname_demo/src/bl/wallet.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc(this._wallet, this._restClient, this._dio, this._pinataApi)
      : super(const AccountState.noAccount());

  final Wallet _wallet;
  final RestClient _restClient;
  final Dio _dio;
  final PinataApi _pinataApi;

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
      final metadata = await accountDto.resources
          .firstWhere((e) => e.uri == 'metadata:url', orElse: () => null)
          ?.let((r) => _loadMetadata(r.resource));
      final account = Account(
        name: accountDto.name,
        ethAddress: accountDto.resources
                .firstWhere((e) => e.uri == 'asset:eth', orElse: () => null)
                ?.resource ??
            '',
        metaName: metadata?.name ?? '',
        image: metadata?.photo,
      );
      yield AccountState.accountReady(account);
    } on Exception {
      yield const AccountState.noAccount();
      return;
    }
  }

  Future<MetaData> _loadMetadata(String url) => _dio
      .get<Map<String, dynamic>>(url)
      .then((r) => MetaData.fromJson(r.data));

  Stream<AccountState> _mapCreated(Created event) async* {
    yield const AccountState.creatingAccount();
    try {
      final metadataUrl = await _pinataApi.pinFile(event.image, event.metaName);
      final metaData = await _loadMetadata(metadataUrl);
      final result = await _wallet.registerStarnameAccount(
        resource: event.ethAddress,
        name: event.name,
        metadataUrl: metadataUrl,
      );
      if (result.isSuccessful) {
        yield const AccountState.accountSuccess();
        yield AccountState.accountReady(Account(
          name: event.name,
          ethAddress: event.ethAddress,
          metaName: metaData.name,
          image: metaData.photo,
        ));
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
      final metadataUrl = await _pinataApi.pinFile(event.image, event.metaName);
      final metaData = await _loadMetadata(metadataUrl);
      final result = await _wallet.updateStarnameAccount(
        resource: event.ethAddress,
        name: currentAccount.name,
        metadataUrl: metadataUrl,
      );
      if (result.isSuccessful) {
        yield const AccountState.accountSuccess();
        yield AccountState.accountReady(Account(
          name: currentAccount.name,
          ethAddress: event.ethAddress,
          metaName: metaData.name,
          image: metaData.photo,
        ));
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
