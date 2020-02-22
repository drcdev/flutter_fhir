import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/population.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductUndesirableEffect {
  static Future<MedicinalProductUndesirableEffect> newInstance({
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
    List<Reference> subject,
    CodeableConcept symptomConditionEffect,
    CodeableConcept classification,
    CodeableConcept frequencyOfOccurrence,
    List<Population> population,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductUndesirableEffect newMedicinalProductUndesirableEffect =
        new MedicinalProductUndesirableEffect(
      resourceType: 'MedicinalProductUndesirableEffect',
      id: id ?? await fhirDb.newResourceId('MedicinalProductUndesirableEffect'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      subject: subject,
      symptomConditionEffect: symptomConditionEffect,
      classification: classification,
      frequencyOfOccurrence: frequencyOfOccurrence,
      population: population,
    );
    newMedicinalProductUndesirableEffect.meta.createdAt = DateTime.now();
    newMedicinalProductUndesirableEffect.meta.lastUpdated =
        newMedicinalProductUndesirableEffect.meta.createdAt;
    int saved = await fhirDb.saveResource(newMedicinalProductUndesirableEffect);
    return newMedicinalProductUndesirableEffect;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'MedicinalProductUndesirableEffect';
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
  List<Reference> subject;
  CodeableConcept symptomConditionEffect;
  CodeableConcept classification;
  CodeableConcept frequencyOfOccurrence;
  List<Population> population;

  MedicinalProductUndesirableEffect({
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
    this.subject,
    this.symptomConditionEffect,
    this.classification,
    this.frequencyOfOccurrence,
    this.population,
  });

  factory MedicinalProductUndesirableEffect.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductUndesirableEffectFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicinalProductUndesirableEffectToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductUndesirableEffect _$MedicinalProductUndesirableEffectFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductUndesirableEffect(
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
    subject: (json['subject'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    symptomConditionEffect: json['symptomConditionEffect'] == null
        ? null
        : CodeableConcept.fromJson(
            json['symptomConditionEffect'] as Map<String, dynamic>),
    classification: json['classification'] == null
        ? null
        : CodeableConcept.fromJson(
            json['classification'] as Map<String, dynamic>),
    frequencyOfOccurrence: json['frequencyOfOccurrence'] == null
        ? null
        : CodeableConcept.fromJson(
            json['frequencyOfOccurrence'] as Map<String, dynamic>),
    population: (json['population'] as List)
        ?.map((e) =>
            e == null ? null : Population.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductUndesirableEffectToJson(
        MedicinalProductUndesirableEffect instance) =>
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
      'subject': instance.subject?.map((e) => e?.toJson())?.toList(),
      'symptomConditionEffect': instance.symptomConditionEffect?.toJson(),
      'classification': instance.classification?.toJson(),
      'frequencyOfOccurrence': instance.frequencyOfOccurrence?.toJson(),
      'population': instance.population?.map((e) => e?.toJson())?.toList(),
    };
