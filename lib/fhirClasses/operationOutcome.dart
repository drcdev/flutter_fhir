import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 154)
class OperationOutcome {

	static Future<OperationOutcome> newInstance({
		String id,
		Meta meta,
		String implicitRules,
		Element elementImplicitRules,
		String language,
		Element elementLanguage,
		Narrative text,
		List<dynamic> contained,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<OperationOutcome_Issue> issue}) async {
	OperationOutcome newOperationOutcome = new OperationOutcome(
			id: await newId('OperationOutcome'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			issue: issue);
	var operationOutcomeBox = await Hive.openBox<OperationOutcome>('OperationOutcomeBox');
	operationOutcomeBox.add(newOperationOutcome);
	return newOperationOutcome;
}
  @HiveField(0)
  final String resourceType= 'OperationOutcome';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<OperationOutcome_Issue> issue;

OperationOutcome(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    @required this.issue
    });

  factory OperationOutcome.fromJson(Map<String, dynamic> json) => _$OperationOutcomeFromJson(json);
  Map<String, dynamic> toJson() => _$OperationOutcomeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationOutcome_Issue {

	static Future<OperationOutcome_Issue> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String severity,
		Element elementSeverity,
		String code,
		Element elementCode,
		CodeableConcept details,
		String diagnostics,
		Element elementDiagnostics,
		List<String> location,
		List<Element> elementLocation,
		List<String> expression,
		List<Element> elementExpression}) async {
	OperationOutcome_Issue newOperationOutcome_Issue = new OperationOutcome_Issue(
			id: await newId('OperationOutcome_Issue'),
			extension: extension,
			modifierExtension: modifierExtension,
			severity: severity,
			elementSeverity: elementSeverity,
			code: code,
			elementCode: elementCode,
			details: details,
			diagnostics: diagnostics,
			elementDiagnostics: elementDiagnostics,
			location: location,
			elementLocation: elementLocation,
			expression: expression,
			elementExpression: elementExpression);
	var operationOutcome_IssueBox = await Hive.openBox<OperationOutcome_Issue>('OperationOutcome_IssueBox');
	operationOutcome_IssueBox.add(newOperationOutcome_Issue);
	return newOperationOutcome_Issue;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String severity; // <code> enum: fatal/error/warning/information;
  Element elementSeverity;
  String code; // <code> enum: invalid/structure/required/value/invariant/security/login/unknown/expired/forbidden/suppressed/processing/not-supported/duplicate/multiple-matches/not-found/deleted/too-long/code-invalid/extension/too-costly/business-rule/conflict/transient/lock-error/no-store/exception/timeout/incomplete/throttled/informational;
  Element elementCode;
  CodeableConcept details;
  String diagnostics;
  Element elementDiagnostics;
  List<String> location;
  List<Element> elementLocation;
  List<String> expression;
  List<Element> elementExpression;

OperationOutcome_Issue(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.severity,
    this.elementSeverity,
    this.code,
    this.elementCode,
    this.details,
    this.diagnostics,
    this.elementDiagnostics,
    this.location,
    this.elementLocation,
    this.expression,
    this.elementExpression
    });

  factory OperationOutcome_Issue.fromJson(Map<String, dynamic> json) => _$OperationOutcome_IssueFromJson(json);
  Map<String, dynamic> toJson() => _$OperationOutcome_IssueToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OperationOutcomeAdapter extends TypeAdapter<OperationOutcome> {
  @override
  final typeId = 154;

  @override
  OperationOutcome read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OperationOutcome(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      issue: (fields[11] as List)?.cast<OperationOutcome_Issue>(),
    );
  }

  @override
  void write(BinaryWriter writer, OperationOutcome obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.issue);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperationOutcome _$OperationOutcomeFromJson(Map<String, dynamic> json) {
  return OperationOutcome(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    issue: (json['issue'] as List)
        ?.map((e) => e == null
            ? null
            : OperationOutcome_Issue.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$OperationOutcomeToJson(OperationOutcome instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'issue': instance.issue?.map((e) => e?.toJson())?.toList(),
    };

OperationOutcome_Issue _$OperationOutcome_IssueFromJson(
    Map<String, dynamic> json) {
  return OperationOutcome_Issue(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    severity: json['severity'] as String,
    elementSeverity: json['elementSeverity'] == null
        ? null
        : Element.fromJson(json['elementSeverity'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    details: json['details'] == null
        ? null
        : CodeableConcept.fromJson(json['details'] as Map<String, dynamic>),
    diagnostics: json['diagnostics'] as String,
    elementDiagnostics: json['elementDiagnostics'] == null
        ? null
        : Element.fromJson(json['elementDiagnostics'] as Map<String, dynamic>),
    location: (json['location'] as List)?.map((e) => e as String)?.toList(),
    elementLocation: (json['elementLocation'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    expression: (json['expression'] as List)?.map((e) => e as String)?.toList(),
    elementExpression: (json['elementExpression'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$OperationOutcome_IssueToJson(
        OperationOutcome_Issue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'severity': instance.severity,
      'elementSeverity': instance.elementSeverity?.toJson(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'details': instance.details?.toJson(),
      'diagnostics': instance.diagnostics,
      'elementDiagnostics': instance.elementDiagnostics?.toJson(),
      'location': instance.location,
      'elementLocation':
          instance.elementLocation?.map((e) => e?.toJson())?.toList(),
      'expression': instance.expression,
      'elementExpression':
          instance.elementExpression?.map((e) => e?.toJson())?.toList(),
    };
