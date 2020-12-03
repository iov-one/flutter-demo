import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'resource.g.dart';

@JsonSerializable()
class Resource {
  const Resource({
    @required this.resource,
    @required this.uri,
  });

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);

  final String resource;
  final String uri;

  Map<String, dynamic> toJson() => _$ResourceToJson(this);
}
