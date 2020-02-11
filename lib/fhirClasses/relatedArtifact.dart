import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 33)
class RelatedArtifact {

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

  //  The type of relationship to the related artifact.
  @HiveField(2)
  String type; // <code> enum: documentation/justification/citation/predecessor/successor/derived-from/depends-on/composed-of;

  //  Extensions for type
  @HiveField(3)
  Element elementType;

  //  A short label that can be used to reference the citation from
  // elsewhere in the containing artifact, such as a footnote index.
  @HiveField(4)
  String label;

  //  Extensions for label
  @HiveField(5)
  Element elementLabel;

  //  A brief description of the document or knowledge resource being
  // referenced, suitable for display to a consumer.
  @HiveField(6)
  String display;

  //  Extensions for display
  @HiveField(7)
  Element elementDisplay;

  //  A bibliographic citation for the related artifact. This text SHOULD be
  // formatted according to an accepted citation format.
  @HiveField(8)
  String citation;

  //  Extensions for citation
  @HiveField(9)
  Element elementCitation;

  //  A url for the artifact that can be followed to access the actual
  // content.
  @HiveField(10)
  String url;

  //  Extensions for url
  @HiveField(11)
  Element elementUrl;

  //  The document being referenced, represented as an attachment. This is
  // exclusive with the resource element.
  @HiveField(12)
  Attachment document;

  //  The related resource, such as a library, value set, profile, or other
  // knowledge resource.
  @HiveField(13)
  String resource;

RelatedArtifact(
  {this.id,
    this.extension,
    this.type,
    this.elementType,
    this.label,
    this.elementLabel,
    this.display,
    this.elementDisplay,
    this.citation,
    this.elementCitation,
    this.url,
    this.elementUrl,
    this.document,
    this.resource
    });

  factory RelatedArtifact.fromJson(Map<String, dynamic> json) => _$RelatedArtifactFromJson(json);
  Map<String, dynamic> toJson() => _$RelatedArtifactToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RelatedArtifactAdapter extends TypeAdapter<RelatedArtifact> {
  @override
  final typeId = 33;

  @override
  RelatedArtifact read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RelatedArtifact(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      type: fields[2] as String,
      elementType: fields[3] as Element,
      label: fields[4] as String,
      elementLabel: fields[5] as Element,
      display: fields[6] as String,
      elementDisplay: fields[7] as Element,
      citation: fields[8] as String,
      elementCitation: fields[9] as Element,
      url: fields[10] as String,
      elementUrl: fields[11] as Element,
      document: fields[12] as Attachment,
      resource: fields[13] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RelatedArtifact obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.elementType)
      ..writeByte(4)
      ..write(obj.label)
      ..writeByte(5)
      ..write(obj.elementLabel)
      ..writeByte(6)
      ..write(obj.display)
      ..writeByte(7)
      ..write(obj.elementDisplay)
      ..writeByte(8)
      ..write(obj.citation)
      ..writeByte(9)
      ..write(obj.elementCitation)
      ..writeByte(10)
      ..write(obj.url)
      ..writeByte(11)
      ..write(obj.elementUrl)
      ..writeByte(12)
      ..write(obj.document)
      ..writeByte(13)
      ..write(obj.resource);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelatedArtifact _$RelatedArtifactFromJson(Map<String, dynamic> json) {
  return RelatedArtifact(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    label: json['label'] as String,
    elementLabel: json['elementLabel'] == null
        ? null
        : Element.fromJson(json['elementLabel'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
    citation: json['citation'] as String,
    elementCitation: json['elementCitation'] == null
        ? null
        : Element.fromJson(json['elementCitation'] as Map<String, dynamic>),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    document: json['document'] == null
        ? null
        : Attachment.fromJson(json['document'] as Map<String, dynamic>),
    resource: json['resource'] as String,
  );
}

Map<String, dynamic> _$RelatedArtifactToJson(RelatedArtifact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'label': instance.label,
      'elementLabel': instance.elementLabel?.toJson(),
      'display': instance.display,
      'elementDisplay': instance.elementDisplay?.toJson(),
      'citation': instance.citation,
      'elementCitation': instance.elementCitation?.toJson(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'document': instance.document?.toJson(),
      'resource': instance.resource,
    };
