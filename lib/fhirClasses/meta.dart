import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  String versionId;
  @HiveField(3)
  Element elementVersionId;
  @HiveField(4)
  DateTime createdAt;
  DateTime lastUpdated;
  @HiveField(5)
  Element elementLastUpdated;
  @HiveField(6)
  String source;
  @HiveField(7)
  Element elementSource;
  @HiveField(8)
  List<String> profile;
  @HiveField(9)
  List<Coding> security;
  @HiveField(10)
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

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MetaAdapter extends TypeAdapter<Meta> {
  @override
  Meta read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Meta(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      versionId: fields[2] as String,
      elementVersionId: fields[3] as Element,
      createdAt: fields[4] as DateTime,
      elementLastUpdated: fields[5] as Element,
      source: fields[6] as String,
      elementSource: fields[7] as Element,
      profile: (fields[8] as List)?.cast<String>(),
      security: (fields[9] as List)?.cast<Coding>(),
      tag: (fields[10] as List)?.cast<Coding>(),
    );
  }

  @override
  void write(BinaryWriter writer, Meta obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.versionId)
      ..writeByte(3)
      ..write(obj.elementVersionId)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(5)
      ..write(obj.elementLastUpdated)
      ..writeByte(6)
      ..write(obj.source)
      ..writeByte(7)
      ..write(obj.elementSource)
      ..writeByte(8)
      ..write(obj.profile)
      ..writeByte(9)
      ..write(obj.security)
      ..writeByte(10)
      ..write(obj.tag);
  }
}
