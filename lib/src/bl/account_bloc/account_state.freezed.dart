// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AccountStateTearOff {
  const _$AccountStateTearOff();

// ignore: unused_element
  NoAccount noAccount() {
    return const NoAccount();
  }

// ignore: unused_element
  CreatingAccount creatingAccount() {
    return const CreatingAccount();
  }

// ignore: unused_element
  UpdatingAccount updatingAccount() {
    return const UpdatingAccount();
  }

// ignore: unused_element
  AccountFailure accountFailure() {
    return const AccountFailure();
  }

// ignore: unused_element
  AccountSuccess accountSuccess() {
    return const AccountSuccess();
  }

// ignore: unused_element
  AccountReady accountReady(Account account) {
    return AccountReady(
      account,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccountState = _$AccountStateTearOff();

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noAccount(),
    @required TResult creatingAccount(),
    @required TResult updatingAccount(),
    @required TResult accountFailure(),
    @required TResult accountSuccess(),
    @required TResult accountReady(Account account),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noAccount(),
    TResult creatingAccount(),
    TResult updatingAccount(),
    TResult accountFailure(),
    TResult accountSuccess(),
    TResult accountReady(Account account),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noAccount(NoAccount value),
    @required TResult creatingAccount(CreatingAccount value),
    @required TResult updatingAccount(UpdatingAccount value),
    @required TResult accountFailure(AccountFailure value),
    @required TResult accountSuccess(AccountSuccess value),
    @required TResult accountReady(AccountReady value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noAccount(NoAccount value),
    TResult creatingAccount(CreatingAccount value),
    TResult updatingAccount(UpdatingAccount value),
    TResult accountFailure(AccountFailure value),
    TResult accountSuccess(AccountSuccess value),
    TResult accountReady(AccountReady value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res> implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  final AccountState _value;
  // ignore: unused_field
  final $Res Function(AccountState) _then;
}

/// @nodoc
abstract class $NoAccountCopyWith<$Res> {
  factory $NoAccountCopyWith(NoAccount value, $Res Function(NoAccount) then) =
      _$NoAccountCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoAccountCopyWithImpl<$Res> extends _$AccountStateCopyWithImpl<$Res>
    implements $NoAccountCopyWith<$Res> {
  _$NoAccountCopyWithImpl(NoAccount _value, $Res Function(NoAccount) _then)
      : super(_value, (v) => _then(v as NoAccount));

  @override
  NoAccount get _value => super._value as NoAccount;
}

/// @nodoc
class _$NoAccount extends NoAccount {
  const _$NoAccount() : super._();

  @override
  String toString() {
    return 'AccountState.noAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noAccount(),
    @required TResult creatingAccount(),
    @required TResult updatingAccount(),
    @required TResult accountFailure(),
    @required TResult accountSuccess(),
    @required TResult accountReady(Account account),
  }) {
    assert(noAccount != null);
    assert(creatingAccount != null);
    assert(updatingAccount != null);
    assert(accountFailure != null);
    assert(accountSuccess != null);
    assert(accountReady != null);
    return noAccount();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noAccount(),
    TResult creatingAccount(),
    TResult updatingAccount(),
    TResult accountFailure(),
    TResult accountSuccess(),
    TResult accountReady(Account account),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noAccount != null) {
      return noAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noAccount(NoAccount value),
    @required TResult creatingAccount(CreatingAccount value),
    @required TResult updatingAccount(UpdatingAccount value),
    @required TResult accountFailure(AccountFailure value),
    @required TResult accountSuccess(AccountSuccess value),
    @required TResult accountReady(AccountReady value),
  }) {
    assert(noAccount != null);
    assert(creatingAccount != null);
    assert(updatingAccount != null);
    assert(accountFailure != null);
    assert(accountSuccess != null);
    assert(accountReady != null);
    return noAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noAccount(NoAccount value),
    TResult creatingAccount(CreatingAccount value),
    TResult updatingAccount(UpdatingAccount value),
    TResult accountFailure(AccountFailure value),
    TResult accountSuccess(AccountSuccess value),
    TResult accountReady(AccountReady value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noAccount != null) {
      return noAccount(this);
    }
    return orElse();
  }
}

abstract class NoAccount extends AccountState {
  const NoAccount._() : super._();
  const factory NoAccount() = _$NoAccount;
}

/// @nodoc
abstract class $CreatingAccountCopyWith<$Res> {
  factory $CreatingAccountCopyWith(
          CreatingAccount value, $Res Function(CreatingAccount) then) =
      _$CreatingAccountCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatingAccountCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements $CreatingAccountCopyWith<$Res> {
  _$CreatingAccountCopyWithImpl(
      CreatingAccount _value, $Res Function(CreatingAccount) _then)
      : super(_value, (v) => _then(v as CreatingAccount));

  @override
  CreatingAccount get _value => super._value as CreatingAccount;
}

/// @nodoc
class _$CreatingAccount extends CreatingAccount {
  const _$CreatingAccount() : super._();

  @override
  String toString() {
    return 'AccountState.creatingAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreatingAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noAccount(),
    @required TResult creatingAccount(),
    @required TResult updatingAccount(),
    @required TResult accountFailure(),
    @required TResult accountSuccess(),
    @required TResult accountReady(Account account),
  }) {
    assert(noAccount != null);
    assert(creatingAccount != null);
    assert(updatingAccount != null);
    assert(accountFailure != null);
    assert(accountSuccess != null);
    assert(accountReady != null);
    return creatingAccount();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noAccount(),
    TResult creatingAccount(),
    TResult updatingAccount(),
    TResult accountFailure(),
    TResult accountSuccess(),
    TResult accountReady(Account account),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (creatingAccount != null) {
      return creatingAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noAccount(NoAccount value),
    @required TResult creatingAccount(CreatingAccount value),
    @required TResult updatingAccount(UpdatingAccount value),
    @required TResult accountFailure(AccountFailure value),
    @required TResult accountSuccess(AccountSuccess value),
    @required TResult accountReady(AccountReady value),
  }) {
    assert(noAccount != null);
    assert(creatingAccount != null);
    assert(updatingAccount != null);
    assert(accountFailure != null);
    assert(accountSuccess != null);
    assert(accountReady != null);
    return creatingAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noAccount(NoAccount value),
    TResult creatingAccount(CreatingAccount value),
    TResult updatingAccount(UpdatingAccount value),
    TResult accountFailure(AccountFailure value),
    TResult accountSuccess(AccountSuccess value),
    TResult accountReady(AccountReady value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (creatingAccount != null) {
      return creatingAccount(this);
    }
    return orElse();
  }
}

abstract class CreatingAccount extends AccountState {
  const CreatingAccount._() : super._();
  const factory CreatingAccount() = _$CreatingAccount;
}

/// @nodoc
abstract class $UpdatingAccountCopyWith<$Res> {
  factory $UpdatingAccountCopyWith(
          UpdatingAccount value, $Res Function(UpdatingAccount) then) =
      _$UpdatingAccountCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdatingAccountCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements $UpdatingAccountCopyWith<$Res> {
  _$UpdatingAccountCopyWithImpl(
      UpdatingAccount _value, $Res Function(UpdatingAccount) _then)
      : super(_value, (v) => _then(v as UpdatingAccount));

  @override
  UpdatingAccount get _value => super._value as UpdatingAccount;
}

/// @nodoc
class _$UpdatingAccount extends UpdatingAccount {
  const _$UpdatingAccount() : super._();

  @override
  String toString() {
    return 'AccountState.updatingAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdatingAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noAccount(),
    @required TResult creatingAccount(),
    @required TResult updatingAccount(),
    @required TResult accountFailure(),
    @required TResult accountSuccess(),
    @required TResult accountReady(Account account),
  }) {
    assert(noAccount != null);
    assert(creatingAccount != null);
    assert(updatingAccount != null);
    assert(accountFailure != null);
    assert(accountSuccess != null);
    assert(accountReady != null);
    return updatingAccount();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noAccount(),
    TResult creatingAccount(),
    TResult updatingAccount(),
    TResult accountFailure(),
    TResult accountSuccess(),
    TResult accountReady(Account account),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatingAccount != null) {
      return updatingAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noAccount(NoAccount value),
    @required TResult creatingAccount(CreatingAccount value),
    @required TResult updatingAccount(UpdatingAccount value),
    @required TResult accountFailure(AccountFailure value),
    @required TResult accountSuccess(AccountSuccess value),
    @required TResult accountReady(AccountReady value),
  }) {
    assert(noAccount != null);
    assert(creatingAccount != null);
    assert(updatingAccount != null);
    assert(accountFailure != null);
    assert(accountSuccess != null);
    assert(accountReady != null);
    return updatingAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noAccount(NoAccount value),
    TResult creatingAccount(CreatingAccount value),
    TResult updatingAccount(UpdatingAccount value),
    TResult accountFailure(AccountFailure value),
    TResult accountSuccess(AccountSuccess value),
    TResult accountReady(AccountReady value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatingAccount != null) {
      return updatingAccount(this);
    }
    return orElse();
  }
}

abstract class UpdatingAccount extends AccountState {
  const UpdatingAccount._() : super._();
  const factory UpdatingAccount() = _$UpdatingAccount;
}

/// @nodoc
abstract class $AccountFailureCopyWith<$Res> {
  factory $AccountFailureCopyWith(
          AccountFailure value, $Res Function(AccountFailure) then) =
      _$AccountFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountFailureCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements $AccountFailureCopyWith<$Res> {
  _$AccountFailureCopyWithImpl(
      AccountFailure _value, $Res Function(AccountFailure) _then)
      : super(_value, (v) => _then(v as AccountFailure));

  @override
  AccountFailure get _value => super._value as AccountFailure;
}

/// @nodoc
class _$AccountFailure extends AccountFailure {
  const _$AccountFailure() : super._();

  @override
  String toString() {
    return 'AccountState.accountFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AccountFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noAccount(),
    @required TResult creatingAccount(),
    @required TResult updatingAccount(),
    @required TResult accountFailure(),
    @required TResult accountSuccess(),
    @required TResult accountReady(Account account),
  }) {
    assert(noAccount != null);
    assert(creatingAccount != null);
    assert(updatingAccount != null);
    assert(accountFailure != null);
    assert(accountSuccess != null);
    assert(accountReady != null);
    return accountFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noAccount(),
    TResult creatingAccount(),
    TResult updatingAccount(),
    TResult accountFailure(),
    TResult accountSuccess(),
    TResult accountReady(Account account),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (accountFailure != null) {
      return accountFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noAccount(NoAccount value),
    @required TResult creatingAccount(CreatingAccount value),
    @required TResult updatingAccount(UpdatingAccount value),
    @required TResult accountFailure(AccountFailure value),
    @required TResult accountSuccess(AccountSuccess value),
    @required TResult accountReady(AccountReady value),
  }) {
    assert(noAccount != null);
    assert(creatingAccount != null);
    assert(updatingAccount != null);
    assert(accountFailure != null);
    assert(accountSuccess != null);
    assert(accountReady != null);
    return accountFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noAccount(NoAccount value),
    TResult creatingAccount(CreatingAccount value),
    TResult updatingAccount(UpdatingAccount value),
    TResult accountFailure(AccountFailure value),
    TResult accountSuccess(AccountSuccess value),
    TResult accountReady(AccountReady value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (accountFailure != null) {
      return accountFailure(this);
    }
    return orElse();
  }
}

abstract class AccountFailure extends AccountState {
  const AccountFailure._() : super._();
  const factory AccountFailure() = _$AccountFailure;
}

/// @nodoc
abstract class $AccountSuccessCopyWith<$Res> {
  factory $AccountSuccessCopyWith(
          AccountSuccess value, $Res Function(AccountSuccess) then) =
      _$AccountSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountSuccessCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements $AccountSuccessCopyWith<$Res> {
  _$AccountSuccessCopyWithImpl(
      AccountSuccess _value, $Res Function(AccountSuccess) _then)
      : super(_value, (v) => _then(v as AccountSuccess));

  @override
  AccountSuccess get _value => super._value as AccountSuccess;
}

/// @nodoc
class _$AccountSuccess extends AccountSuccess {
  const _$AccountSuccess() : super._();

  @override
  String toString() {
    return 'AccountState.accountSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AccountSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noAccount(),
    @required TResult creatingAccount(),
    @required TResult updatingAccount(),
    @required TResult accountFailure(),
    @required TResult accountSuccess(),
    @required TResult accountReady(Account account),
  }) {
    assert(noAccount != null);
    assert(creatingAccount != null);
    assert(updatingAccount != null);
    assert(accountFailure != null);
    assert(accountSuccess != null);
    assert(accountReady != null);
    return accountSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noAccount(),
    TResult creatingAccount(),
    TResult updatingAccount(),
    TResult accountFailure(),
    TResult accountSuccess(),
    TResult accountReady(Account account),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (accountSuccess != null) {
      return accountSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noAccount(NoAccount value),
    @required TResult creatingAccount(CreatingAccount value),
    @required TResult updatingAccount(UpdatingAccount value),
    @required TResult accountFailure(AccountFailure value),
    @required TResult accountSuccess(AccountSuccess value),
    @required TResult accountReady(AccountReady value),
  }) {
    assert(noAccount != null);
    assert(creatingAccount != null);
    assert(updatingAccount != null);
    assert(accountFailure != null);
    assert(accountSuccess != null);
    assert(accountReady != null);
    return accountSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noAccount(NoAccount value),
    TResult creatingAccount(CreatingAccount value),
    TResult updatingAccount(UpdatingAccount value),
    TResult accountFailure(AccountFailure value),
    TResult accountSuccess(AccountSuccess value),
    TResult accountReady(AccountReady value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (accountSuccess != null) {
      return accountSuccess(this);
    }
    return orElse();
  }
}

abstract class AccountSuccess extends AccountState {
  const AccountSuccess._() : super._();
  const factory AccountSuccess() = _$AccountSuccess;
}

/// @nodoc
abstract class $AccountReadyCopyWith<$Res> {
  factory $AccountReadyCopyWith(
          AccountReady value, $Res Function(AccountReady) then) =
      _$AccountReadyCopyWithImpl<$Res>;
  $Res call({Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$AccountReadyCopyWithImpl<$Res> extends _$AccountStateCopyWithImpl<$Res>
    implements $AccountReadyCopyWith<$Res> {
  _$AccountReadyCopyWithImpl(
      AccountReady _value, $Res Function(AccountReady) _then)
      : super(_value, (v) => _then(v as AccountReady));

  @override
  AccountReady get _value => super._value as AccountReady;

  @override
  $Res call({
    Object account = freezed,
  }) {
    return _then(AccountReady(
      account == freezed ? _value.account : account as Account,
    ));
  }

  @override
  $AccountCopyWith<$Res> get account {
    if (_value.account == null) {
      return null;
    }
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc
class _$AccountReady extends AccountReady {
  const _$AccountReady(this.account)
      : assert(account != null),
        super._();

  @override
  final Account account;

  @override
  String toString() {
    return 'AccountState.accountReady(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountReady &&
            (identical(other.account, account) ||
                const DeepCollectionEquality().equals(other.account, account)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(account);

  @override
  $AccountReadyCopyWith<AccountReady> get copyWith =>
      _$AccountReadyCopyWithImpl<AccountReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noAccount(),
    @required TResult creatingAccount(),
    @required TResult updatingAccount(),
    @required TResult accountFailure(),
    @required TResult accountSuccess(),
    @required TResult accountReady(Account account),
  }) {
    assert(noAccount != null);
    assert(creatingAccount != null);
    assert(updatingAccount != null);
    assert(accountFailure != null);
    assert(accountSuccess != null);
    assert(accountReady != null);
    return accountReady(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noAccount(),
    TResult creatingAccount(),
    TResult updatingAccount(),
    TResult accountFailure(),
    TResult accountSuccess(),
    TResult accountReady(Account account),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (accountReady != null) {
      return accountReady(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noAccount(NoAccount value),
    @required TResult creatingAccount(CreatingAccount value),
    @required TResult updatingAccount(UpdatingAccount value),
    @required TResult accountFailure(AccountFailure value),
    @required TResult accountSuccess(AccountSuccess value),
    @required TResult accountReady(AccountReady value),
  }) {
    assert(noAccount != null);
    assert(creatingAccount != null);
    assert(updatingAccount != null);
    assert(accountFailure != null);
    assert(accountSuccess != null);
    assert(accountReady != null);
    return accountReady(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noAccount(NoAccount value),
    TResult creatingAccount(CreatingAccount value),
    TResult updatingAccount(UpdatingAccount value),
    TResult accountFailure(AccountFailure value),
    TResult accountSuccess(AccountSuccess value),
    TResult accountReady(AccountReady value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (accountReady != null) {
      return accountReady(this);
    }
    return orElse();
  }
}

abstract class AccountReady extends AccountState {
  const AccountReady._() : super._();
  const factory AccountReady(Account account) = _$AccountReady;

  Account get account;
  $AccountReadyCopyWith<AccountReady> get copyWith;
}

/// @nodoc
class _$AccountTearOff {
  const _$AccountTearOff();

// ignore: unused_element
  _Account call({@required String name, @required String ethAddress}) {
    return _Account(
      name: name,
      ethAddress: ethAddress,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Account = _$AccountTearOff();

/// @nodoc
mixin _$Account {
  String get name;
  String get ethAddress;

  $AccountCopyWith<Account> get copyWith;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res>;
  $Res call({String name, String ethAddress});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res> implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  final Account _value;
  // ignore: unused_field
  final $Res Function(Account) _then;

  @override
  $Res call({
    Object name = freezed,
    Object ethAddress = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      ethAddress:
          ethAddress == freezed ? _value.ethAddress : ethAddress as String,
    ));
  }
}

/// @nodoc
abstract class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) then) =
      __$AccountCopyWithImpl<$Res>;
  @override
  $Res call({String name, String ethAddress});
}

/// @nodoc
class __$AccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(_Account _value, $Res Function(_Account) _then)
      : super(_value, (v) => _then(v as _Account));

  @override
  _Account get _value => super._value as _Account;

  @override
  $Res call({
    Object name = freezed,
    Object ethAddress = freezed,
  }) {
    return _then(_Account(
      name: name == freezed ? _value.name : name as String,
      ethAddress:
          ethAddress == freezed ? _value.ethAddress : ethAddress as String,
    ));
  }
}

/// @nodoc
class _$_Account extends _Account {
  const _$_Account({@required this.name, @required this.ethAddress})
      : assert(name != null),
        assert(ethAddress != null),
        super._();

  @override
  final String name;
  @override
  final String ethAddress;

  @override
  String toString() {
    return 'Account(name: $name, ethAddress: $ethAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Account &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.ethAddress, ethAddress) ||
                const DeepCollectionEquality()
                    .equals(other.ethAddress, ethAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(ethAddress);

  @override
  _$AccountCopyWith<_Account> get copyWith =>
      __$AccountCopyWithImpl<_Account>(this, _$identity);
}

abstract class _Account extends Account {
  const _Account._() : super._();
  const factory _Account({@required String name, @required String ethAddress}) =
      _$_Account;

  @override
  String get name;
  @override
  String get ethAddress;
  @override
  _$AccountCopyWith<_Account> get copyWith;
}
