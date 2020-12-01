import 'package:alan/alan.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'msg_register_starname_account.g.dart';

@reflector
@JsonSerializable(explicitToJson: true)
class MsgRegisterStarnameAccount extends StdMsg {
  MsgRegisterStarnameAccount({
    @required this.broker,
    @required this.domain,
    @required this.feePayer,
    @required this.name,
    @required this.owner,
    @required this.registerer,
    @required this.resources,
  });

  final String broker;

  final String domain;

  @JsonKey(name: 'fee_payer')
  final String feePayer;

  final String name;

  final String owner;

  final String registerer;

  final List<Resource> resources;

  factory MsgRegisterStarnameAccount.fromJson(Map<String, dynamic> json) {
    return _$MsgRegisterStarnameAccountFromJson(json);
  }

  @override
  Map<String, dynamic> asJson() => _$MsgRegisterStarnameAccountToJson(this);

  @override
  List<Object> get props => [
        broker,
        domain,
        feePayer,
        name,
        owner,
        registerer,
        resources,
      ];

  @override
  Exception validate() {
    return null;
  }
}

@JsonSerializable()
class Resource {
  const Resource({
    @required this.resource,
    @required this.uri,
  });

  final String resource;
  final String uri;

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ResourceToJson(this);
}
