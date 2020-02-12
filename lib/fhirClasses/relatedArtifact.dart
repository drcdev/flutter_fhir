import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 45)
class RelatedArtifact {

	static Future<RelatedArtifact> newInstance({
		String id,
		List<Extension> extension,
		String type,
		Element elementType,
		String label,
		Element elementLabel,
		String display,
		Element elementDisplay,
		String citation,
		Element elementCitation,
		String url,
		Element elementUrl,
		Attachment document,
		String resource}) async {
	RelatedArtifact newRelatedArtifact = new RelatedArtifact(
			id: await newId('RelatedArtifact'),
			extension: extension,
			type: type,
			elementType: elementType,
			label: label,
			elementLabel: elementLabel,
			display: display,
			elementDisplay: elementDisplay,
			citation: citation,
			elementCitation: elementCitation,
			url: url,
			elementUrl: elementUrl,
			document: document,
			resource: resource);
	var relatedArtifactBox = await Hive.openBox<RelatedArtifact>('RelatedArtifactBox');
	relatedArtifactBox.put(newRelatedArtifact.id, newRelatedArtifact);
	return newRelatedArtifact;
}
  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  String type; // <code> enum: documentation/justification/citation/predecessor/successor/derived-from/depends-on/composed-of;
  @HiveField(3)
  Element elementType;
  @HiveField(4)
  String label;
  @HiveField(5)
  Element elementLabel;
  @HiveField(6)
  String display;
  @HiveField(7)
  Element elementDisplay;
  @HiveField(8)
  String citation;
  @HiveField(9)
  Element elementCitation;
  @HiveField(10)
  String url;
  @HiveField(11)
  Element elementUrl;
  @HiveField(12)
  Attachment document;
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
  final typeId = 45;

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
