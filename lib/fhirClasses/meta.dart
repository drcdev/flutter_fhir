import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 40)
class Meta {

	static Future<Meta> newInstance({
		String id,
		List<Extension> extension,
		String versionId,
		Element elementVersionId,
		DateTime lastUpdated,
		Element elementLastUpdated,
		String source,
		Element elementSource,
		List<String> profile,
		List<Coding> security,
		List<Coding> tag}) async {
	Meta newMeta = new Meta(
			id: await newId('Meta'),
			extension: extension,
			versionId: versionId,
			elementVersionId: elementVersionId,
			lastUpdated: lastUpdated,
			elementLastUpdated: elementLastUpdated,
			source: source,
			elementSource: elementSource,
			profile: profile,
			security: security,
			tag: tag);
	var metaBox = await Hive.openBox<Meta>('MetaBox');
	metaBox.put(newMeta.id, newMeta);
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

Meta(
  {this.id,
    this.extension,
    this.versionId,
    this.elementVersionId,
    this.lastUpdated,
    this.elementLastUpdated,
    this.source,
    this.elementSource,
    this.profile,
    this.security,
    this.tag
    });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MetaAdapter extends TypeAdapter<Meta> {
  @override
  final typeId = 40;

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
      lastUpdated: fields[4] as DateTime,
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
      ..write(obj.lastUpdated)
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

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'versionId': instance.versionId,
      'elementVersionId': instance.elementVersionId?.toJson(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'elementLastUpdated': instance.elementLastUpdated?.toJson(),
      'source': instance.source,
      'elementSource': instance.elementSource?.toJson(),
      'profile': instance.profile,
      'security': instance.security?.map((e) => e?.toJson())?.toList(),
      'tag': instance.tag?.map((e) => e?.toJson())?.toList(),
    };
