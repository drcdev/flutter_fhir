import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
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
	codeableConceptBox.put(newCodeableConcept.id, newCodeableConcept);
	return newCodeableConcept;
}
  String id;
  List<Extension> extension;
  List<Coding> coding;
  String text;
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
