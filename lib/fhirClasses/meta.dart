import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Meta {
  static Future<Meta> newInstance({
    String id,
    List<Extension> extension,
    String versionId,
    Element elementVersionId,
    DateTime createdAt,
    DateTime lastUpdated,
    Element elementLastUpdated,
    String source,
    Element elementSource,
    List<String> profile,
    List<Coding> security,
    List<Coding> tag,
  }) async {
    var fhirDb = new DatabaseHelper();
    Meta newMeta = new Meta(
      id: id ?? await fhirDb.newResourceId('Meta'),
      extension: extension,
      versionId: versionId,
      elementVersionId: elementVersionId,
      createdAt: createdAt,
      lastUpdated: lastUpdated,
      elementLastUpdated: elementLastUpdated,
      source: source,
      elementSource: elementSource,
      profile: profile,
      security: security,
      tag: tag,
    );
    return newMeta;
  }

  String id;
  List<Extension> extension;
  String versionId;
  Element elementVersionId;
  DateTime createdAt;
  DateTime lastUpdated;
  Element elementLastUpdated;
  String source;
  Element elementSource;
  List<String> profile;
  List<Coding> security;
  List<Coding> tag;

  Meta({
    this.id,
    this.extension,
    this.versionId,
    this.elementVersionId,
    this.createdAt,
    this.lastUpdated,
    this.elementLastUpdated,
    this.source,
    this.elementSource,
    this.profile,
    this.security,
    this.tag,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return Meta(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    versionId: json['versionId'] as String,
    elementVersionId: json['elementVersionId'] == null
        ? null
        : Element.fromJson(json['elementVersionId'] as Map<String, dynamic>),
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    lastUpdated: json['lastUpdated'] == null
        ? null
        : DateTime.parse(json['lastUpdated'] as String),
    elementLastUpdated: json['elementLastUpdated'] == null
        ? null
        : Element.fromJson(json['elementLastUpdated'] as Map<String, dynamic>),
    source: json['source'] as String,
    elementSource: json['elementSource'] == null
        ? null
        : Element.fromJson(json['elementSource'] as Map<String, dynamic>),
    profile: (json['profile'] as List)?.map((e) => e as String)?.toList(),
    security: (json['security'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tag: (json['tag'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MetaToJson(Meta instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('versionId', instance.versionId);
  writeNotNull('elementVersionId', instance.elementVersionId?.toJson());
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('lastUpdated', instance.lastUpdated?.toIso8601String());
  writeNotNull('elementLastUpdated', instance.elementLastUpdated?.toJson());
  writeNotNull('source', instance.source);
  writeNotNull('elementSource', instance.elementSource?.toJson());
  writeNotNull('profile', instance.profile);
  writeNotNull(
      'security', instance.security?.map((e) => e?.toJson())?.toList());
  writeNotNull('tag', instance.tag?.map((e) => e?.toJson())?.toList());
  return val;
}
