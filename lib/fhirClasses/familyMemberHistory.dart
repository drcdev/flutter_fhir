import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class FamilyMemberHistory {
  final String resourceType= 'FamilyMemberHistory';
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
  List<String> instantiatesCanonical;
  List<String> instantiatesUri;
  List<Element> elementInstantiatesUri;
  String status; // <code> enum: partial/completed/entered-in-error/health-unknown;
  Element elementStatus;
  CodeableConcept dataAbsentReason;
  Reference patient;
  DateTime date;
  Element elementDate;
  String name;
  Element elementName;
  CodeableConcept relationship;
  CodeableConcept sex;
  Period bornPeriod;
  String bornDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
  Element elementBornDate;
  String bornString; //  pattern: ^[ \r\n\t\S]+$
  Element elementBornString;
  Age ageAge;
  Range ageRange;
  String ageString; //  pattern: ^[ \r\n\t\S]+$
  Element elementAgeString;
  bool estimatedAge;
  Element elementEstimatedAge;
  bool deceasedBoolean; //  pattern: ^true|false$
  Element elementDeceasedBoolean;
  Age deceasedAge;
  Range deceasedRange;
  String deceasedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
  Element elementDeceasedDate;
  String deceasedString; //  pattern: ^[ \r\n\t\S]+$
  Element elementDeceasedString;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Annotation> note;
  List<FamilyMemberHistory_Condition> condition;

FamilyMemberHistory(
  this.patient,
    this.relationship,
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
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.status,
    this.elementStatus,
    this.dataAbsentReason,
    this.date,
    this.elementDate,
    this.name,
    this.elementName,
    this.sex,
    this.bornPeriod,
    this.bornDate,
    this.elementBornDate,
    this.bornString,
    this.elementBornString,
    this.ageAge,
    this.ageRange,
    this.ageString,
    this.elementAgeString,
    this.estimatedAge,
    this.elementEstimatedAge,
    this.deceasedBoolean,
    this.elementDeceasedBoolean,
    this.deceasedAge,
    this.deceasedRange,
    this.deceasedDate,
    this.elementDeceasedDate,
    this.deceasedString,
    this.elementDeceasedString,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.condition
    });

  factory FamilyMemberHistory.fromJson(Map<String, dynamic> json) => _$FamilyMemberHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$FamilyMemberHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FamilyMemberHistory_Condition {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  CodeableConcept outcome;
  bool contributedToDeath;
  Element elementContributedToDeath;
  Age onsetAge;
  Range onsetRange;
  Period onsetPeriod;
  String onsetString; //  pattern: ^[ \r\n\t\S]+$
  Element elementOnsetString;
  List<Annotation> note;

FamilyMemberHistory_Condition(
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.outcome,
    this.contributedToDeath,
    this.elementContributedToDeath,
    this.onsetAge,
    this.onsetRange,
    this.onsetPeriod,
    this.onsetString,
    this.elementOnsetString,
    this.note
    });

  factory FamilyMemberHistory_Condition.fromJson(Map<String, dynamic> json) => _$FamilyMemberHistory_ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$FamilyMemberHistory_ConditionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FamilyMemberHistory _$FamilyMemberHistoryFromJson(Map<String, dynamic> json) {
  return FamilyMemberHistory(
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    json['relationship'] == null
        ? null
        : CodeableConcept.fromJson(
            json['relationship'] as Map<String, dynamic>),
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    instantiatesUri:
        (json['instantiatesUri'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiatesUri: (json['elementInstantiatesUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    dataAbsentReason: json['dataAbsentReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['dataAbsentReason'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    sex: json['sex'] == null
        ? null
        : CodeableConcept.fromJson(json['sex'] as Map<String, dynamic>),
    bornPeriod: json['bornPeriod'] == null
        ? null
        : Period.fromJson(json['bornPeriod'] as Map<String, dynamic>),
    bornDate: json['bornDate'] as String,
    elementBornDate: json['elementBornDate'] == null
        ? null
        : Element.fromJson(json['elementBornDate'] as Map<String, dynamic>),
    bornString: json['bornString'] as String,
    elementBornString: json['elementBornString'] == null
        ? null
        : Element.fromJson(json['elementBornString'] as Map<String, dynamic>),
    ageAge: json['ageAge'] == null
        ? null
        : Age.fromJson(json['ageAge'] as Map<String, dynamic>),
    ageRange: json['ageRange'] == null
        ? null
        : Range.fromJson(json['ageRange'] as Map<String, dynamic>),
    ageString: json['ageString'] as String,
    elementAgeString: json['elementAgeString'] == null
        ? null
        : Element.fromJson(json['elementAgeString'] as Map<String, dynamic>),
    estimatedAge: json['estimatedAge'] as bool,
    elementEstimatedAge: json['elementEstimatedAge'] == null
        ? null
        : Element.fromJson(json['elementEstimatedAge'] as Map<String, dynamic>),
    deceasedBoolean: json['deceasedBoolean'] as bool,
    elementDeceasedBoolean: json['elementDeceasedBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementDeceasedBoolean'] as Map<String, dynamic>),
    deceasedAge: json['deceasedAge'] == null
        ? null
        : Age.fromJson(json['deceasedAge'] as Map<String, dynamic>),
    deceasedRange: json['deceasedRange'] == null
        ? null
        : Range.fromJson(json['deceasedRange'] as Map<String, dynamic>),
    deceasedDate: json['deceasedDate'] as String,
    elementDeceasedDate: json['elementDeceasedDate'] == null
        ? null
        : Element.fromJson(json['elementDeceasedDate'] as Map<String, dynamic>),
    deceasedString: json['deceasedString'] as String,
    elementDeceasedString: json['elementDeceasedString'] == null
        ? null
        : Element.fromJson(
            json['elementDeceasedString'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: (json['condition'] as List)
        ?.map((e) => e == null
            ? null
            : FamilyMemberHistory_Condition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FamilyMemberHistoryToJson(
        FamilyMemberHistory instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'instantiatesCanonical': instance.instantiatesCanonical,
      'instantiatesUri': instance.instantiatesUri,
      'elementInstantiatesUri':
          instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'dataAbsentReason': instance.dataAbsentReason?.toJson(),
      'patient': instance.patient?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'relationship': instance.relationship?.toJson(),
      'sex': instance.sex?.toJson(),
      'bornPeriod': instance.bornPeriod?.toJson(),
      'bornDate': instance.bornDate,
      'elementBornDate': instance.elementBornDate?.toJson(),
      'bornString': instance.bornString,
      'elementBornString': instance.elementBornString?.toJson(),
      'ageAge': instance.ageAge?.toJson(),
      'ageRange': instance.ageRange?.toJson(),
      'ageString': instance.ageString,
      'elementAgeString': instance.elementAgeString?.toJson(),
      'estimatedAge': instance.estimatedAge,
      'elementEstimatedAge': instance.elementEstimatedAge?.toJson(),
      'deceasedBoolean': instance.deceasedBoolean,
      'elementDeceasedBoolean': instance.elementDeceasedBoolean?.toJson(),
      'deceasedAge': instance.deceasedAge?.toJson(),
      'deceasedRange': instance.deceasedRange?.toJson(),
      'deceasedDate': instance.deceasedDate,
      'elementDeceasedDate': instance.elementDeceasedDate?.toJson(),
      'deceasedString': instance.deceasedString,
      'elementDeceasedString': instance.elementDeceasedString?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition?.map((e) => e?.toJson())?.toList(),
    };

FamilyMemberHistory_Condition _$FamilyMemberHistory_ConditionFromJson(
    Map<String, dynamic> json) {
  return FamilyMemberHistory_Condition(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outcome: json['outcome'] == null
        ? null
        : CodeableConcept.fromJson(json['outcome'] as Map<String, dynamic>),
    contributedToDeath: json['contributedToDeath'] as bool,
    elementContributedToDeath: json['elementContributedToDeath'] == null
        ? null
        : Element.fromJson(
            json['elementContributedToDeath'] as Map<String, dynamic>),
    onsetAge: json['onsetAge'] == null
        ? null
        : Age.fromJson(json['onsetAge'] as Map<String, dynamic>),
    onsetRange: json['onsetRange'] == null
        ? null
        : Range.fromJson(json['onsetRange'] as Map<String, dynamic>),
    onsetPeriod: json['onsetPeriod'] == null
        ? null
        : Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>),
    onsetString: json['onsetString'] as String,
    elementOnsetString: json['elementOnsetString'] == null
        ? null
        : Element.fromJson(json['elementOnsetString'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FamilyMemberHistory_ConditionToJson(
        FamilyMemberHistory_Condition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'outcome': instance.outcome?.toJson(),
      'contributedToDeath': instance.contributedToDeath,
      'elementContributedToDeath': instance.elementContributedToDeath?.toJson(),
      'onsetAge': instance.onsetAge?.toJson(),
      'onsetRange': instance.onsetRange?.toJson(),
      'onsetPeriod': instance.onsetPeriod?.toJson(),
      'onsetString': instance.onsetString,
      'elementOnsetString': instance.elementOnsetString?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };
