// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountsWithOwnerRequest _$AccountsWithOwnerRequestFromJson(
    Map<String, dynamic> json) {
  return AccountsWithOwnerRequest(
    owner: json['owner'] as String,
    resultsPerPage: json['results_per_page'] as int,
  );
}

Map<String, dynamic> _$AccountsWithOwnerRequestToJson(
        AccountsWithOwnerRequest instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'results_per_page': instance.resultsPerPage,
    };

AccountsWithOwnerResponse _$AccountsWithOwnerResponseFromJson(
    Map<String, dynamic> json) {
  return AccountsWithOwnerResponse(
    accounts: (json['accounts'] as List)
        ?.map((e) =>
            e == null ? null : AccountDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AccountsWithOwnerResponseToJson(
        AccountsWithOwnerResponse instance) =>
    <String, dynamic>{
      'accounts': instance.accounts,
    };

ResourceDto _$ResourceDtoFromJson(Map<String, dynamic> json) {
  return ResourceDto(
    uri: json['uri'] as String,
    resource: json['resource'] as String,
  );
}

Map<String, dynamic> _$ResourceDtoToJson(ResourceDto instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'resource': instance.resource,
    };

AccountDto _$AccountDtoFromJson(Map<String, dynamic> json) {
  return AccountDto(
    name: json['name'] as String,
    resources: (json['resources'] as List)
        ?.map((e) =>
            e == null ? null : ResourceDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AccountDtoToJson(AccountDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'resources': instance.resources,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://iovnscli-rest-api.cluster-galaxynet.iov.one';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<AccountsWithOwnerResponse> getAccountsWithOwner(request) async {
    ArgumentError.checkNotNull(request, 'request');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        '/starname/query/accountsWithOwner',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AccountsWithOwnerResponse.fromJson(_result.data);
    return value;
  }
}
