import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class DiagnosticReport {
  static Future<DiagnosticReport> newInstance({
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
    List<Identifier> identifier,
    List<Reference> basedOn,
    String status,
    Element elementStatus,
    List<CodeableConcept> category,
    CodeableConcept code,
    Reference subject,
    Reference encounter,
    String effectiveDateTime,
    Element elementEffectiveDateTime,
    Period effectivePeriod,
    DateTime issued,
    Element elementIssued,
    List<Reference> performer,
    List<Reference> resultsInterpreter,
    List<Reference> specimen,
    List<Reference> result,
    List<Reference> imagingStudy,
    List<DiagnosticReport_Media> media,
    String conclusion,
    Element elementConclusion,
    List<CodeableConcept> conclusionCode,
    List<Attachment> presentedForm,
  }) async {
    var fhirDb = new DatabaseHelper();
    DiagnosticReport newDiagnosticReport = new DiagnosticReport(
      resourceType: 'DiagnosticReport',
      id: id ?? await fhirDb.newResourceId('DiagnosticReport'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      basedOn: basedOn,
      status: status,
      elementStatus: elementStatus,
      category: category,
      code: code,
      subject: subject,
      encounter: encounter,
      effectiveDateTime: effectiveDateTime,
      elementEffectiveDateTime: elementEffectiveDateTime,
      effectivePeriod: effectivePeriod,
      issued: issued,
      elementIssued: elementIssued,
      performer: performer,
      resultsInterpreter: resultsInterpreter,
      specimen: specimen,
      result: result,
      imagingStudy: imagingStudy,
      media: media,
      conclusion: conclusion,
      elementConclusion: elementConclusion,
      conclusionCode: conclusionCode,
      presentedForm: presentedForm,
    );
    newDiagnosticReport.meta.createdAt = DateTime.now();
    newDiagnosticReport.meta.lastUpdated = newDiagnosticReport.meta.createdAt;
    int saved = await fhirDb.saveResource(newDiagnosticReport);
    return newDiagnosticReport;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saveed = await fhirDb.saveResource(this);
  }

  String resourceType = 'DiagnosticReport';
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
  List<Identifier> identifier;
  List<Reference> basedOn;
  String status;
  Element elementStatus;
  List<CodeableConcept> category;
  CodeableConcept code;
  Reference subject;
  Reference encounter;
  String effectiveDateTime;
  Element elementEffectiveDateTime;
  Period effectivePeriod;
  DateTime issued;
  Element elementIssued;
  List<Reference> performer;
  List<Reference> resultsInterpreter;
  List<Reference> specimen;
  List<Reference> result;
  List<Reference> imagingStudy;
  List<DiagnosticReport_Media> media;
  String conclusion;
  Element elementConclusion;
  List<CodeableConcept> conclusionCode;
  List<Attachment> presentedForm;

  DiagnosticReport({
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
    this.identifier,
    this.basedOn,
    this.status,
    this.elementStatus,
    this.category,
    @required this.code,
    this.subject,
    this.encounter,
    this.effectiveDateTime,
    this.elementEffectiveDateTime,
    this.effectivePeriod,
    this.issued,
    this.elementIssued,
    this.performer,
    this.resultsInterpreter,
    this.specimen,
    this.result,
    this.imagingStudy,
    this.media,
    this.conclusion,
    this.elementConclusion,
    this.conclusionCode,
    this.presentedForm,
  });

  factory DiagnosticReport.fromJson(Map<String, dynamic> json) =>
      _$DiagnosticReportFromJson(json);
  Map<String, dynamic> toJson() => _$DiagnosticReportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DiagnosticReport_Media {
  static Future<DiagnosticReport_Media> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String comment,
    Element elementComment,
    Reference link,
  }) async {
    var fhirDb = new DatabaseHelper();
    DiagnosticReport_Media newDiagnosticReport_Media =
        new DiagnosticReport_Media(
      id: id ?? await fhirDb.newResourceId('DiagnosticReport_Media'),
      extension: extension,
      modifierExtension: modifierExtension,
      comment: comment,
      elementComment: elementComment,
      link: link,
    );
    return newDiagnosticReport_Media;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String comment;
  Element elementComment;
  Reference link;

  DiagnosticReport_Media({
    this.id,
    this.extension,
    this.modifierExtension,
    this.comment,
    this.elementComment,
    @required this.link,
  });

  factory DiagnosticReport_Media.fromJson(Map<String, dynamic> json) =>
      _$DiagnosticReport_MediaFromJson(json);
  Map<String, dynamic> toJson() => _$DiagnosticReport_MediaToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiagnosticReport _$DiagnosticReportFromJson(Map<String, dynamic> json) {
  return DiagnosticReport(
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    effectiveDateTime: json['effectiveDateTime'] as String,
    elementEffectiveDateTime: json['elementEffectiveDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementEffectiveDateTime'] as Map<String, dynamic>),
    effectivePeriod: json['effectivePeriod'] == null
        ? null
        : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
    issued: json['issued'] == null
        ? null
        : DateTime.parse(json['issued'] as String),
    elementIssued: json['elementIssued'] == null
        ? null
        : Element.fromJson(json['elementIssued'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    resultsInterpreter: (json['resultsInterpreter'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specimen: (json['specimen'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    result: (json['result'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    imagingStudy: (json['imagingStudy'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    media: (json['media'] as List)
        ?.map((e) => e == null
            ? null
            : DiagnosticReport_Media.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    conclusion: json['conclusion'] as String,
    elementConclusion: json['elementConclusion'] == null
        ? null
        : Element.fromJson(json['elementConclusion'] as Map<String, dynamic>),
    conclusionCode: (json['conclusionCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    presentedForm: (json['presentedForm'] as List)
        ?.map((e) =>
            e == null ? null : Attachment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DiagnosticReportToJson(DiagnosticReport instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'effectiveDateTime': instance.effectiveDateTime,
      'elementEffectiveDateTime': instance.elementEffectiveDateTime?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'issued': instance.issued?.toIso8601String(),
      'elementIssued': instance.elementIssued?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'resultsInterpreter':
          instance.resultsInterpreter?.map((e) => e?.toJson())?.toList(),
      'specimen': instance.specimen?.map((e) => e?.toJson())?.toList(),
      'result': instance.result?.map((e) => e?.toJson())?.toList(),
      'imagingStudy': instance.imagingStudy?.map((e) => e?.toJson())?.toList(),
      'media': instance.media?.map((e) => e?.toJson())?.toList(),
      'conclusion': instance.conclusion,
      'elementConclusion': instance.elementConclusion?.toJson(),
      'conclusionCode':
          instance.conclusionCode?.map((e) => e?.toJson())?.toList(),
      'presentedForm':
          instance.presentedForm?.map((e) => e?.toJson())?.toList(),
    };

DiagnosticReport_Media _$DiagnosticReport_MediaFromJson(
    Map<String, dynamic> json) {
  return DiagnosticReport_Media(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    link: json['link'] == null
        ? null
        : Reference.fromJson(json['link'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DiagnosticReport_MediaToJson(
        DiagnosticReport_Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
      'link': instance.link?.toJson(),
    };
