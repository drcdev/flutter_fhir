import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class AllergyIntolerance {
  static Future<AllergyIntolerance> newInstance({
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
    CodeableConcept clinicalStatus,
    CodeableConcept verificationStatus,
    String type,
    Element elementType,
    String category,
    List<Element> elementCategory,
    String criticality,
    Element elementCriticality,
    CodeableConcept code,
    Reference patient,
    Reference encounter,
    String onsetDateTime,
    Element elementOnsetDateTime,
    Age onsetAge,
    Period onsetPeriod,
    Range onsetRange,
    String onsetString,
    Element elementOnsetString,
    DateTime recordedDate,
    Element elementRecordedDate,
    Reference recorder,
    Reference asserter,
    DateTime lastOccurrence,
    Element elementLastOccurrence,
    List<Annotation> note,
    List<AllergyIntolerance_Reaction> reaction,
  }) async {
    var fhirDb = new DatabaseHelper();
    AllergyIntolerance newAllergyIntolerance = new AllergyIntolerance(
      resourceType: 'AllergyIntolerance',
      id: id ?? await fhirDb.newResourceId('AllergyIntolerance'),
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
      clinicalStatus: clinicalStatus,
      verificationStatus: verificationStatus,
      type: type,
      elementType: elementType,
      category: category,
      elementCategory: elementCategory,
      criticality: criticality,
      elementCriticality: elementCriticality,
      code: code,
      patient: patient,
      encounter: encounter,
      onsetDateTime: onsetDateTime,
      elementOnsetDateTime: elementOnsetDateTime,
      onsetAge: onsetAge,
      onsetPeriod: onsetPeriod,
      onsetRange: onsetRange,
      onsetString: onsetString,
      elementOnsetString: elementOnsetString,
      recordedDate: recordedDate,
      elementRecordedDate: elementRecordedDate,
      recorder: recorder,
      asserter: asserter,
      lastOccurrence: lastOccurrence,
      elementLastOccurrence: elementLastOccurrence,
      note: note,
      reaction: reaction,
    );
    newAllergyIntolerance.meta.createdAt = DateTime.now();
    newAllergyIntolerance.meta.lastUpdated =
        newAllergyIntolerance.meta.createdAt;
    int saved = await fhirDb.saveResource(newAllergyIntolerance);
    return newAllergyIntolerance;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'AllergyIntolerance';
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
  CodeableConcept clinicalStatus;
  CodeableConcept verificationStatus;
  String type;
  Element elementType;
  String category;
  List<Element> elementCategory;
  String criticality;
  Element elementCriticality;
  CodeableConcept code;
  Reference patient;
  Reference encounter;
  String onsetDateTime;
  Element elementOnsetDateTime;
  Age onsetAge;
  Period onsetPeriod;
  Range onsetRange;
  String onsetString;
  Element elementOnsetString;
  DateTime recordedDate;
  Element elementRecordedDate;
  Reference recorder;
  Reference asserter;
  DateTime lastOccurrence;
  Element elementLastOccurrence;
  List<Annotation> note;
  List<AllergyIntolerance_Reaction> reaction;

  AllergyIntolerance({
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
    this.clinicalStatus,
    this.verificationStatus,
    this.type,
    this.elementType,
    this.category,
    this.elementCategory,
    this.criticality,
    this.elementCriticality,
    this.code,
    @required this.patient,
    this.encounter,
    this.onsetDateTime,
    this.elementOnsetDateTime,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.elementOnsetString,
    this.recordedDate,
    this.elementRecordedDate,
    this.recorder,
    this.asserter,
    this.lastOccurrence,
    this.elementLastOccurrence,
    this.note,
    this.reaction,
  });

  factory AllergyIntolerance.fromJson(Map<String, dynamic> json) =>
      _$AllergyIntoleranceFromJson(json);
  Map<String, dynamic> toJson() => _$AllergyIntoleranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllergyIntolerance_Reaction {
  static Future<AllergyIntolerance_Reaction> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept substance,
    List<CodeableConcept> manifestation,
    String description,
    Element elementDescription,
    DateTime onset,
    Element elementOnset,
    String severity,
    Element elementSeverity,
    CodeableConcept exposureRoute,
    List<Annotation> note,
  }) async {
    var fhirDb = new DatabaseHelper();
    AllergyIntolerance_Reaction newAllergyIntolerance_Reaction =
        new AllergyIntolerance_Reaction(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      substance: substance,
      manifestation: manifestation,
      description: description,
      elementDescription: elementDescription,
      onset: onset,
      elementOnset: elementOnset,
      severity: severity,
      elementSeverity: elementSeverity,
      exposureRoute: exposureRoute,
      note: note,
    );
    return newAllergyIntolerance_Reaction;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept substance;
  List<CodeableConcept> manifestation;
  String description;
  Element elementDescription;
  DateTime onset;
  Element elementOnset;
  String severity;
  Element elementSeverity;
  CodeableConcept exposureRoute;
  List<Annotation> note;

  AllergyIntolerance_Reaction({
    this.id,
    this.extension,
    this.modifierExtension,
    this.substance,
    @required this.manifestation,
    this.description,
    this.elementDescription,
    this.onset,
    this.elementOnset,
    this.severity,
    this.elementSeverity,
    this.exposureRoute,
    this.note,
  });

  factory AllergyIntolerance_Reaction.fromJson(Map<String, dynamic> json) =>
      _$AllergyIntolerance_ReactionFromJson(json);
  Map<String, dynamic> toJson() => _$AllergyIntolerance_ReactionToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllergyIntolerance _$AllergyIntoleranceFromJson(Map<String, dynamic> json) {
  return AllergyIntolerance(
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
    clinicalStatus: json['clinicalStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['clinicalStatus'] as Map<String, dynamic>),
    verificationStatus: json['verificationStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['verificationStatus'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    category: json['category'] as String,
    elementCategory: (json['elementCategory'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    criticality: json['criticality'] as String,
    elementCriticality: json['elementCriticality'] == null
        ? null
        : Element.fromJson(json['elementCriticality'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    onsetDateTime: json['onsetDateTime'] as String,
    elementOnsetDateTime: json['elementOnsetDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOnsetDateTime'] as Map<String, dynamic>),
    onsetAge: json['onsetAge'] == null
        ? null
        : Age.fromJson(json['onsetAge'] as Map<String, dynamic>),
    onsetPeriod: json['onsetPeriod'] == null
        ? null
        : Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>),
    onsetRange: json['onsetRange'] == null
        ? null
        : Range.fromJson(json['onsetRange'] as Map<String, dynamic>),
    onsetString: json['onsetString'] as String,
    elementOnsetString: json['elementOnsetString'] == null
        ? null
        : Element.fromJson(json['elementOnsetString'] as Map<String, dynamic>),
    recordedDate: json['recordedDate'] == null
        ? null
        : DateTime.parse(json['recordedDate'] as String),
    elementRecordedDate: json['elementRecordedDate'] == null
        ? null
        : Element.fromJson(json['elementRecordedDate'] as Map<String, dynamic>),
    recorder: json['recorder'] == null
        ? null
        : Reference.fromJson(json['recorder'] as Map<String, dynamic>),
    asserter: json['asserter'] == null
        ? null
        : Reference.fromJson(json['asserter'] as Map<String, dynamic>),
    lastOccurrence: json['lastOccurrence'] == null
        ? null
        : DateTime.parse(json['lastOccurrence'] as String),
    elementLastOccurrence: json['elementLastOccurrence'] == null
        ? null
        : Element.fromJson(
            json['elementLastOccurrence'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reaction: (json['reaction'] as List)
        ?.map((e) => e == null
            ? null
            : AllergyIntolerance_Reaction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AllergyIntoleranceToJson(AllergyIntolerance instance) =>
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
      'clinicalStatus': instance.clinicalStatus?.toJson(),
      'verificationStatus': instance.verificationStatus?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'category': instance.category,
      'elementCategory':
          instance.elementCategory?.map((e) => e?.toJson())?.toList(),
      'criticality': instance.criticality,
      'elementCriticality': instance.elementCriticality?.toJson(),
      'code': instance.code?.toJson(),
      'patient': instance.patient?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'onsetDateTime': instance.onsetDateTime,
      'elementOnsetDateTime': instance.elementOnsetDateTime?.toJson(),
      'onsetAge': instance.onsetAge?.toJson(),
      'onsetPeriod': instance.onsetPeriod?.toJson(),
      'onsetRange': instance.onsetRange?.toJson(),
      'onsetString': instance.onsetString,
      'elementOnsetString': instance.elementOnsetString?.toJson(),
      'recordedDate': instance.recordedDate?.toIso8601String(),
      'elementRecordedDate': instance.elementRecordedDate?.toJson(),
      'recorder': instance.recorder?.toJson(),
      'asserter': instance.asserter?.toJson(),
      'lastOccurrence': instance.lastOccurrence?.toIso8601String(),
      'elementLastOccurrence': instance.elementLastOccurrence?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'reaction': instance.reaction?.map((e) => e?.toJson())?.toList(),
    };

AllergyIntolerance_Reaction _$AllergyIntolerance_ReactionFromJson(
    Map<String, dynamic> json) {
  return AllergyIntolerance_Reaction(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    substance: json['substance'] == null
        ? null
        : CodeableConcept.fromJson(json['substance'] as Map<String, dynamic>),
    manifestation: (json['manifestation'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    onset:
        json['onset'] == null ? null : DateTime.parse(json['onset'] as String),
    elementOnset: json['elementOnset'] == null
        ? null
        : Element.fromJson(json['elementOnset'] as Map<String, dynamic>),
    severity: json['severity'] as String,
    elementSeverity: json['elementSeverity'] == null
        ? null
        : Element.fromJson(json['elementSeverity'] as Map<String, dynamic>),
    exposureRoute: json['exposureRoute'] == null
        ? null
        : CodeableConcept.fromJson(
            json['exposureRoute'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AllergyIntolerance_ReactionToJson(
        AllergyIntolerance_Reaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'substance': instance.substance?.toJson(),
      'manifestation':
          instance.manifestation?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'onset': instance.onset?.toIso8601String(),
      'elementOnset': instance.elementOnset?.toJson(),
      'severity': instance.severity,
      'elementSeverity': instance.elementSeverity?.toJson(),
      'exposureRoute': instance.exposureRoute?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };
