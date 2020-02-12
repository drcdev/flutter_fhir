import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 22)
class CodeableConcept {

	static Future<CodeableConcept> newInstance({
		String id,
		List<Extension> extension,
		List<Coding> coding,
		String text,
		Element elementText}) async {
	CodeableConcept newCodeableConcept = new CodeableConcept(
			id: await newId('CodeableConcept'),
			extension: extension,
			coding: coding,
			text: text,
			elementText: elementText);
	var codeableConceptBox = await Hive.openBox<CodeableConcept>('CodeableConceptBox');
	codeableConceptBox.add(newCodeableConcept);
	return newCodeableConcept;
}
  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Coding> coding;
  @HiveField(3)
  String text;
  @HiveField(4)
  Element elementText;

CodeableConcept(
  {this.id,
    this.extension,
    this.coding,
    this.text,
    this.elementText
    });

  factory CodeableConcept.fromJson(Map<String, dynamic> json) => _$CodeableConceptFromJson(json);
  Map<String, dynamic> toJson() => _$CodeableConceptToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CodeableConceptAdapter extends TypeAdapter<CodeableConcept> {
  @override
  final typeId = 22;

  @override
  CodeableConcept read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CodeableConcept(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      coding: (fields[2] as List)?.cast<Coding>(),
      text: fields[3] as String,
      elementText: fields[4] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, CodeableConcept obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.coding)
      ..writeByte(3)
      ..write(obj.text)
      ..writeByte(4)
      ..write(obj.elementText);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeableConcept _$CodeableConceptFromJson(Map<String, dynamic> json) {
  return CodeableConcept(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    coding: (json['coding'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CodeableConceptToJson(CodeableConcept instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'coding': instance.coding?.map((e) => e?.toJson())?.toList(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
    };
