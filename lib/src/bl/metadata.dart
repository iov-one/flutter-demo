import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'metadata.g.dart';

@JsonSerializable()
class MetaData {
  MetaData({@required this.name, @required this.photo});

  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);

  final String name;
  final String photo;
}
