import 'package:alan/alan.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:starname_demo/src/bl/resource.dart';

part 'msg_register_starname_account.g.dart';

@reflector
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
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

  factory MsgRegisterStarnameAccount.fromJson(Map<String, dynamic> json) =>
      _$MsgRegisterStarnameAccountFromJson(json);

  final String broker;

  final String domain;

  @JsonKey(name: 'fee_payer')
  final String feePayer;

  final String name;

  final String owner;

  final String registerer;

  final List<Resource> resources;

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
  Exception validate() => null;
}
