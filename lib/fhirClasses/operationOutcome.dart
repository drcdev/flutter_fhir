import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OperationOutcome {
  static Future<OperationOutcome> newInstance({
    String resourceType,
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
    List<OperationOutcome_Issue> issue,
  }) async {
    var fhirDb = new DatabaseHelper();
    OperationOutcome newOperationOutcome = new OperationOutcome(
      resourceType: 'OperationOutcome',
      id: id ?? await fhirDb.newResourceId('OperationOutcome'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      issue: issue,
    );
    newOperationOutcome.meta.createdAt = DateTime.now();
    newOperationOutcome.meta.lastUpdated = newOperationOutcome.meta.createdAt;
    int saved = await fhirDb.saveResource(newOperationOutcome);
    return newOperationOutcome;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'OperationOutcome';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<OperationOutcome_Issue> issue;

  OperationOutcome({
    @required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    @required this.issue,
  });

  factory OperationOutcome.fromJson(Map<String, dynamic> json) =>
      _$OperationOutcomeFromJson(json);
  Map<String, dynamic> toJson() => _$OperationOutcomeToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
    List<Element> elementExpression,
  }) async {
    var fhirDb = new DatabaseHelper();
    OperationOutcome_Issue newOperationOutcome_Issue =
        new OperationOutcome_Issue(
      id: id ?? await fhirDb.newResourceId('OperationOutcome_Issue'),
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
      elementExpression: elementExpression,
    );
    return newOperationOutcome_Issue;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String severity;
  Element elementSeverity;
  String code;
  Element elementCode;
  CodeableConcept details;
  String diagnostics;
  Element elementDiagnostics;
  List<String> location;
  List<Element> elementLocation;
  List<String> expression;
  List<Element> elementExpression;

  OperationOutcome_Issue({
    this.id,
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
    this.elementExpression,
  });

  factory OperationOutcome_Issue.fromJson(Map<String, dynamic> json) =>
      _$OperationOutcome_IssueFromJson(json);
  Map<String, dynamic> toJson() => _$OperationOutcome_IssueToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperationOutcome _$OperationOutcomeFromJson(Map<String, dynamic> json) {
  return OperationOutcome(
    resourceType: json['resourceType'] as String,
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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

Map<String, dynamic> _$OperationOutcomeToJson(OperationOutcome instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('issue', instance.issue?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    OperationOutcome_Issue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('severity', instance.severity);
  writeNotNull('elementSeverity', instance.elementSeverity?.toJson());
  writeNotNull('code', instance.code);
  writeNotNull('elementCode', instance.elementCode?.toJson());
  writeNotNull('details', instance.details?.toJson());
  writeNotNull('diagnostics', instance.diagnostics);
  writeNotNull('elementDiagnostics', instance.elementDiagnostics?.toJson());
  writeNotNull('location', instance.location);
  writeNotNull('elementLocation',
      instance.elementLocation?.map((e) => e?.toJson())?.toList());
  writeNotNull('expression', instance.expression);
  writeNotNull('elementExpression',
      instance.elementExpression?.map((e) => e?.toJson())?.toList());
  return val;
}
