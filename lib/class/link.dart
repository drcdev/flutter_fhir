import 'package:json_annotation/json_annotation.dart';
part 'link.g.dart';

@JsonSerializable(explicitToJson: true)
class Link {
  DateTime lastUpdated;
  DateTime createdAt;
  String versionId;

  Link({this.lastUpdated, this.createdAt, this.versionId});

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
  Map<String, dynamic> toJson() => _$LinkToJson(this);
}