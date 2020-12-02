import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:retrofit/http.dart';

part 'rest_client.g.dart';

const restApiBaseUrl = 'https://iovnscli-rest-api.cluster-galaxynet.iov.one';

@RestApi(baseUrl: restApiBaseUrl)
abstract class RestClient {
  factory RestClient({String baseUrl}) {
    final dio = Dio()
      ..interceptors.add(InterceptorsWrapper(
        onResponse: (response) async {
          response.data = response.data['result'];
          return response;
        },
      ));
    return _RestClient(dio, baseUrl: baseUrl);
  }

  @POST('/starname/query/accountsWithOwner')
  Future<AccountsWithOwnerResponse> getAccountsWithOwner(
      @Body() AccountsWithOwnerRequest request);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AccountsWithOwnerRequest {
  AccountsWithOwnerRequest({
    @required this.owner,
    @required this.resultsPerPage,
  });

  final String owner;
  final int resultsPerPage;

  Map<String, dynamic> toJson() => _$AccountsWithOwnerRequestToJson(this);
}

@JsonSerializable()
class AccountsWithOwnerResponse {
  AccountsWithOwnerResponse({
    @required this.accounts,
  });

  factory AccountsWithOwnerResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountsWithOwnerResponseFromJson(json);

  final List<AccountDto> accounts;
}

@JsonSerializable()
class ResourceDto {
  ResourceDto({
    @required this.uri,
    @required this.resource,
  });

  factory ResourceDto.fromJson(Map<String, dynamic> json) =>
      _$ResourceDtoFromJson(json);

  final String uri;
  final String resource;
}

@JsonSerializable()
class AccountDto {
  AccountDto({
    @required this.name,
    @required this.resources,
  });

  factory AccountDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDtoFromJson(json);

  final String name;
  final List<ResourceDto> resources;
}
