import 'package:flutter_fhir/class/coding.dart';
import 'package:json_annotation/json_annotation.dart';
part 'meta.g.dart';

@JsonSerializable(explicitToJson: true)
class Meta {

  // Version specific identifier
  String versionId;

  // When the resource version last changed
  DateTime lastUpdated;

  // Identifies where the resource comes from
  String source;

  // Profiles this resource claims to conform to
  // canonical(StructureDefinition)
  List <String> profile;

  // Security Labels applied to this resource
  List<Coding> security;

  // Tags applied to this resource
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