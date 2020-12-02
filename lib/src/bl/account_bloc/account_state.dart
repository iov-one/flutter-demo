import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_state.freezed.dart';

@freezed
abstract class AccountState implements _$AccountState {
  const AccountState._();

  const factory AccountState.noAccount() = NoAccount;

  const factory AccountState.processingAccount() = ProcessingAccount;

  const factory AccountState.accountFailure() = AccountFailure;

  const factory AccountState.accountSuccess() = AccountSuccess;

  const factory AccountState.accountReady(Account account) = AccountReady;
}

@freezed
abstract class Account implements _$Account {
  const factory Account({
    @required String name,
    @required String ethAddress,
  }) = _Account;

  const Account._();
}