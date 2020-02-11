import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 25)
class Meta {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  The version specific identifier, as it appears in the version portion
  // of the URL. This value changes when the resource is created, updated,
  // or deleted.
  @HiveField(2)
  String versionId;

  //  Extensions for versionId
  @HiveField(3)
  Element elementVersionId;

  //  When the resource last changed - e.g. when the version changed.
  @HiveField(4)
  DateTime lastUpdated;

  //  Extensions for lastUpdated
  @HiveField(5)
  Element elementLastUpdated;

  //  A uri that identifies the source system of the resource. This provides
  // a minimal amount of [[[Provenance]]] information that can be used to
  // track or differentiate the source of information in the resource. The
  // source may identify another FHIR server, document, message, database,
  // etc.
  @HiveField(6)
  String source;

  //  Extensions for source
  @HiveField(7)
  Element elementSource;

  //  A list of profiles (references to [[[StructureDefinition]]] resources)
  // that this resource claims to conform to. The URL is a reference to
  // [[[StructureDefinition.url]]].
  @HiveField(8)
  List<String> profile;

  //  Security labels applied to this resource. These tags connect specific
  // resources to the overall security policy and infrastructure.
  @HiveField(9)
  List<Coding> security;

  //  Tags applied to this resource. Tags are intended to be used to
  // identify and relate resources to process and workflow, and applications
  // are not required to consider the tags when interpreting the meaning of
  // a resource.
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
  final typeId = 25;

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
