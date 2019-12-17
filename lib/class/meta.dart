import 'package:json_annotation/json_annotation.dart';
part 'meta.g.dart';

@JsonSerializable(explicitToJson: true)
class Meta {
  DateTime lastUpdated;
  DateTime createdAt;
  String versionId;

  Meta({this.lastUpdated, this.createdAt, this.versionId});

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}