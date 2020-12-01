// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg_register_starname_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsgRegisterStarnameAccount _$MsgRegisterStarnameAccountFromJson(
    Map<String, dynamic> json) {
  return MsgRegisterStarnameAccount(
    broker: json['broker'] as String,
    domain: json['domain'] as String,
    feePayer: json['fee_payer'] as String,
    name: json['name'] as String,
    owner: json['owner'] as String,
    registerer: json['registerer'] as String,
    resources: (json['resources'] as List)
        ?.map((e) =>
            e == null ? null : Resource.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MsgRegisterStarnameAccountToJson(
        MsgRegisterStarnameAccount instance) =>
    <String, dynamic>{
      'broker': instance.broker,
      'domain': instance.domain,
      'fee_payer': instance.feePayer,
      'name': instance.name,
      'owner': instance.owner,
      'registerer': instance.registerer,
      'resources': instance.resources?.map((e) => e?.toJson())?.toList(),
    };

Resource _$ResourceFromJson(Map<String, dynamic> json) {
  return Resource(
    resource: json['resource'] as String,
    uri: json['uri'] as String,
  );
}

Map<String, dynamic> _$ResourceToJson(Resource instance) => <String, dynamic>{
      'resource': instance.resource,
      'uri': instance.uri,
    };
