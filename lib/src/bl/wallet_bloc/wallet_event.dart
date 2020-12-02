import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_event.freezed.dart';

@freezed
abstract class WalletEvent implements _$WalletEvent {
  const WalletEvent._();

  const factory WalletEvent.initialized() = Initialized;

  const factory WalletEvent.created() = Created;

  const factory WalletEvent.deleted() = Deleted;
}
