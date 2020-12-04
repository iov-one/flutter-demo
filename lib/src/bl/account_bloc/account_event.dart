import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_event.freezed.dart';

@freezed
abstract class AccountEvent implements _$AccountEvent {
  const AccountEvent._();

  const factory AccountEvent.initialized() = Initialized;

  const factory AccountEvent.created({
    @required String name,
    @required String ethAddress,
    @required String btcAddress,
    @required String metaName,
    @required File image,
  }) = Created;

  const factory AccountEvent.updated({
    @required String ethAddress,
    @required String btcAddress,
    @required String metaName,
    @required File image,
  }) = Updated;
}
