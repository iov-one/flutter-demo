// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg_replace_starname_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsgReplaceStarnameAccount _$MsgReplaceStarnameAccountFromJson(
    Map<String, dynamic> json) {
  return MsgReplaceStarnameAccount(
    domain: json['domain'] as String,
    feePayer: json['fee_payer'] as String,
    name: json['name'] as String,
    owner: json['owner'] as String,
    newResources: (json['new_resources'] as List)
        ?.map((e) =>
            e == null ? null : Resource.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MsgReplaceStarnameAccountToJson(
        MsgReplaceStarnameAccount instance) =>
    <String, dynamic>{
      'domain': instance.domain,
      'fee_payer': instance.feePayer,
      'name': instance.name,
      'owner': instance.owner,
      'new_resources': instance.newResources?.map((e) => e?.toJson())?.toList(),
    };
