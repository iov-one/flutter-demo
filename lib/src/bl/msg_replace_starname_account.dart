import 'package:alan/alan.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:starname_demo/src/bl/resource.dart';

part 'msg_replace_starname_account.g.dart';

@reflector
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class MsgReplaceStarnameAccount extends StdMsg {
  MsgReplaceStarnameAccount({
    @required this.domain,
    @required this.feePayer,
    @required this.name,
    @required this.owner,
    @required this.newResources,
  });

  factory MsgReplaceStarnameAccount.fromJson(Map<String, dynamic> json) =>
      _$MsgReplaceStarnameAccountFromJson(json);

  @override
  Map<String, dynamic> asJson() => _$MsgReplaceStarnameAccountToJson(this);

  final String domain;
  final String feePayer;
  final String name;
  final String owner;
  final List<Resource> newResources;

  @override
  List<Object> get props => [
        domain,
        feePayer,
        name,
        owner,
        newResources,
      ];

  @override
  Exception validate() => null;
}
