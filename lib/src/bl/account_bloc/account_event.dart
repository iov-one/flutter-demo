import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starname_demo/src/bl/account_bloc/account_state.dart';

part 'account_event.freezed.dart';

@freezed
abstract class AccountEvent implements _$AccountEvent {
  const AccountEvent._();

  const factory AccountEvent.initialized() = Initialized;

  const factory AccountEvent.created(Account account) = Created;

  const factory AccountEvent.updated(Account account) = Updated;
}
