import 'package:alan/alan.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_state.freezed.dart';

@freezed
abstract class WalletState implements _$WalletState {
  const WalletState._();

  const factory WalletState.none() = None;

  const factory WalletState.creating() = Creating;

  const factory WalletState.failure() = Failure;

  const factory WalletState.success(Wallet wallet) = Success;
}
