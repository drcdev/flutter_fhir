import 'package:flutter_fhir/class/coding.dart';
import 'package:json_annotation/json_annotation.dart';
part 'meta.g.dart';

@JsonSerializable(explicitToJson: true)
class Meta {
  String versionId;
  DateTime lastUpdated;
  String source;
  List <String> profile; //canonical
  List<Coding> security;
  List<Coding> tag;

  Meta(
      {this.versionId,
        this.lastUpdated,
        this.source,
        this.profile,
        this.security,
        this.tag});

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}