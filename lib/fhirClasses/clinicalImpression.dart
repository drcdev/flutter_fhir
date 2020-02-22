import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class ClinicalImpression {
  static Future<ClinicalImpression> newInstance({
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
    String status,
    Element elementStatus,
    CodeableConcept statusReason,
    CodeableConcept code,
    String description,
    Element elementDescription,
    Reference subject,
    Reference encounter,
    String effectiveDateTime,
    Element elementEffectiveDateTime,
    Period effectivePeriod,
    DateTime date,
    Element elementDate,
    Reference assessor,
    Reference previous,
    List<Reference> problem,
    List<ClinicalImpression_Investigation> investigation,
    List<String> protocol,
    List<Element> elementProtocol,
    String summary,
    Element elementSummary,
    List<ClinicalImpression_Finding> finding,
    List<CodeableConcept> prognosisCodeableConcept,
    List<Reference> prognosisReference,
    List<Reference> supportingInfo,
    List<Annotation> note,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClinicalImpression newClinicalImpression = new ClinicalImpression(
      resourceType: 'ClinicalImpression',
      id: id ?? await fhirDb.newResourceId('ClinicalImpression'),
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
      status: status,
      elementStatus: elementStatus,
      statusReason: statusReason,
      code: code,
      description: description,
      elementDescription: elementDescription,
      subject: subject,
      encounter: encounter,
      effectiveDateTime: effectiveDateTime,
      elementEffectiveDateTime: elementEffectiveDateTime,
      effectivePeriod: effectivePeriod,
      date: date,
      elementDate: elementDate,
      assessor: assessor,
      previous: previous,
      problem: problem,
      investigation: investigation,
      protocol: protocol,
      elementProtocol: elementProtocol,
      summary: summary,
      elementSummary: elementSummary,
      finding: finding,
      prognosisCodeableConcept: prognosisCodeableConcept,
      prognosisReference: prognosisReference,
      supportingInfo: supportingInfo,
      note: note,
    );
    newClinicalImpression.meta.createdAt = DateTime.now();
    newClinicalImpression.meta.lastUpdated =
        newClinicalImpression.meta.createdAt;
    int saved = await fhirDb.saveResource(newClinicalImpression);
    return newClinicalImpression;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'ClinicalImpression';
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
  String status;
  Element elementStatus;
  CodeableConcept statusReason;
  CodeableConcept code;
  String description;
  Element elementDescription;
  Reference subject;
  Reference encounter;
  String effectiveDateTime;
  Element elementEffectiveDateTime;
  Period effectivePeriod;
  DateTime date;
  Element elementDate;
  Reference assessor;
  Reference previous;
  List<Reference> problem;
  List<ClinicalImpression_Investigation> investigation;
  List<String> protocol;
  List<Element> elementProtocol;
  String summary;
  Element elementSummary;
  List<ClinicalImpression_Finding> finding;
  List<CodeableConcept> prognosisCodeableConcept;
  List<Reference> prognosisReference;
  List<Reference> supportingInfo;
  List<Annotation> note;

  ClinicalImpression({
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
    this.status,
    this.elementStatus,
    this.statusReason,
    this.code,
    this.description,
    this.elementDescription,
    @required this.subject,
    this.encounter,
    this.effectiveDateTime,
    this.elementEffectiveDateTime,
    this.effectivePeriod,
    this.date,
    this.elementDate,
    this.assessor,
    this.previous,
    this.problem,
    this.investigation,
    this.protocol,
    this.elementProtocol,
    this.summary,
    this.elementSummary,
    this.finding,
    this.prognosisCodeableConcept,
    this.prognosisReference,
    this.supportingInfo,
    this.note,
  });

  factory ClinicalImpression.fromJson(Map<String, dynamic> json) =>
      _$ClinicalImpressionFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicalImpressionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClinicalImpression_Investigation {
  static Future<ClinicalImpression_Investigation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    List<Reference> item,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClinicalImpression_Investigation newClinicalImpression_Investigation =
        new ClinicalImpression_Investigation(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      item: item,
    );
    return newClinicalImpression_Investigation;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  List<Reference> item;

  ClinicalImpression_Investigation({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.code,
    this.item,
  });

  factory ClinicalImpression_Investigation.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalImpression_InvestigationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ClinicalImpression_InvestigationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClinicalImpression_Finding {
  static Future<ClinicalImpression_Finding> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept itemCodeableConcept,
    Reference itemReference,
    String basis,
    Element elementBasis,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClinicalImpression_Finding newClinicalImpression_Finding =
        new ClinicalImpression_Finding(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      itemCodeableConcept: itemCodeableConcept,
      itemReference: itemReference,
      basis: basis,
      elementBasis: elementBasis,
    );
    return newClinicalImpression_Finding;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept itemCodeableConcept;
  Reference itemReference;
  String basis;
  Element elementBasis;

  ClinicalImpression_Finding({
    this.id,
    this.extension,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.basis,
    this.elementBasis,
  });

  factory ClinicalImpression_Finding.fromJson(Map<String, dynamic> json) =>
      _$ClinicalImpression_FindingFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicalImpression_FindingToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClinicalImpression _$ClinicalImpressionFromJson(Map<String, dynamic> json) {
  return ClinicalImpression(
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusReason: json['statusReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReason'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
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
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    assessor: json['assessor'] == null
        ? null
        : Reference.fromJson(json['assessor'] as Map<String, dynamic>),
    previous: json['previous'] == null
        ? null
        : Reference.fromJson(json['previous'] as Map<String, dynamic>),
    problem: (json['problem'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    investigation: (json['investigation'] as List)
        ?.map((e) => e == null
            ? null
            : ClinicalImpression_Investigation.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    protocol: (json['protocol'] as List)?.map((e) => e as String)?.toList(),
    elementProtocol: (json['elementProtocol'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    summary: json['summary'] as String,
    elementSummary: json['elementSummary'] == null
        ? null
        : Element.fromJson(json['elementSummary'] as Map<String, dynamic>),
    finding: (json['finding'] as List)
        ?.map((e) => e == null
            ? null
            : ClinicalImpression_Finding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prognosisCodeableConcept: (json['prognosisCodeableConcept'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prognosisReference: (json['prognosisReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClinicalImpressionToJson(ClinicalImpression instance) =>
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
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusReason': instance.statusReason?.toJson(),
      'code': instance.code?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'effectiveDateTime': instance.effectiveDateTime,
      'elementEffectiveDateTime': instance.elementEffectiveDateTime?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'assessor': instance.assessor?.toJson(),
      'previous': instance.previous?.toJson(),
      'problem': instance.problem?.map((e) => e?.toJson())?.toList(),
      'investigation':
          instance.investigation?.map((e) => e?.toJson())?.toList(),
      'protocol': instance.protocol,
      'elementProtocol':
          instance.elementProtocol?.map((e) => e?.toJson())?.toList(),
      'summary': instance.summary,
      'elementSummary': instance.elementSummary?.toJson(),
      'finding': instance.finding?.map((e) => e?.toJson())?.toList(),
      'prognosisCodeableConcept':
          instance.prognosisCodeableConcept?.map((e) => e?.toJson())?.toList(),
      'prognosisReference':
          instance.prognosisReference?.map((e) => e?.toJson())?.toList(),
      'supportingInfo':
          instance.supportingInfo?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };

ClinicalImpression_Investigation _$ClinicalImpression_InvestigationFromJson(
    Map<String, dynamic> json) {
  return ClinicalImpression_Investigation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    item: (json['item'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClinicalImpression_InvestigationToJson(
        ClinicalImpression_Investigation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };

ClinicalImpression_Finding _$ClinicalImpression_FindingFromJson(
    Map<String, dynamic> json) {
  return ClinicalImpression_Finding(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemCodeableConcept: json['itemCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['itemCodeableConcept'] as Map<String, dynamic>),
    itemReference: json['itemReference'] == null
        ? null
        : Reference.fromJson(json['itemReference'] as Map<String, dynamic>),
    basis: json['basis'] as String,
    elementBasis: json['elementBasis'] == null
        ? null
        : Element.fromJson(json['elementBasis'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClinicalImpression_FindingToJson(
        ClinicalImpression_Finding instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'itemCodeableConcept': instance.itemCodeableConcept?.toJson(),
      'itemReference': instance.itemReference?.toJson(),
      'basis': instance.basis,
      'elementBasis': instance.elementBasis?.toJson(),
    };
