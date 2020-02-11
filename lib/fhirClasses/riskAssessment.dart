import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 520)
class RiskAssessment {

  //  This is a RiskAssessment resource
  @HiveField(0)
  final String resourceType= 'RiskAssessment';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  Business identifier assigned to the risk assessment.
  @HiveField(11)
  List<Identifier> identifier;

  //  A reference to the request that is fulfilled by this risk assessment.
  @HiveField(12)
  Reference basedOn;

  //  A reference to a resource that this risk assessment is part of, such
  // as a Procedure.
  @HiveField(13)
  Reference parent;

  //  The status of the RiskAssessment, using the same statuses as an
  // Observation.
  @HiveField(14)
  String status;

  //  Extensions for status
  @HiveField(15)
  Element elementStatus;

  //  The algorithm, process or mechanism used to evaluate the risk.
  @HiveField(16)
  CodeableConcept method;

  //  The type of the risk assessment performed.
  @HiveField(17)
  CodeableConcept code;

  //  The patient or group the risk assessment applies to.
  @HiveField(18)
  Reference subject;

  //  The encounter where the assessment was performed.
  @HiveField(19)
  Reference encounter;

  //  The date (and possibly time) the risk assessment was performed.
  @HiveField(20)
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for occurrenceDateTime
  @HiveField(21)
  Element elementOccurrenceDateTime;

  //  The date (and possibly time) the risk assessment was performed.
  @HiveField(22)
  Period occurrencePeriod;

  //  For assessments or prognosis specific to a particular condition,
  // indicates the condition being assessed.
  @HiveField(23)
  Reference condition;

  //  The provider or software application that performed the assessment.
  @HiveField(24)
  Reference performer;

  //  The reason the risk assessment was performed.
  @HiveField(25)
  List<CodeableConcept> reasonCode;

  //  Resources supporting the reason the risk assessment was performed.
  @HiveField(26)
  List<Reference> reasonReference;

  //  Indicates the source data considered as part of the assessment (for
  // example, FamilyHistory, Observations, Procedures, Conditions, etc.).
  @HiveField(27)
  List<Reference> basis;

  //  Describes the expected outcome for the subject.
  @HiveField(28)
  List<RiskAssessment_Prediction> prediction;

  //  A description of the steps that might be taken to reduce the
  // identified risk(s).
  @HiveField(29)
  String mitigation;

  //  Extensions for mitigation
  @HiveField(30)
  Element elementMitigation;

  //  Additional comments about the risk assessment.
  @HiveField(31)
  List<Annotation> note;

RiskAssessment(
  this.subject,
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
    this.basedOn,
    this.parent,
    this.status,
    this.elementStatus,
    this.method,
    this.code,
    this.encounter,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrencePeriod,
    this.condition,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.basis,
    this.prediction,
    this.mitigation,
    this.elementMitigation,
    this.note
    });

  factory RiskAssessment.fromJson(Map<String, dynamic> json) => _$RiskAssessmentFromJson(json);
  Map<String, dynamic> toJson() => _$RiskAssessmentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskAssessment_Prediction {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  One of the potential outcomes for the patient (e.g. remission, death, 
  // a particular condition).
  CodeableConcept outcome;

  //  Indicates how likely the outcome is (in the specified timeframe).
  double probabilityDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for probabilityDecimal
  Element elementProbabilityDecimal;

  //  Indicates how likely the outcome is (in the specified timeframe).
  Range probabilityRange;

  //  Indicates how likely the outcome is (in the specified timeframe),
  // expressed as a qualitative value (e.g. low, medium, or high).
  CodeableConcept qualitativeRisk;

  //  Indicates the risk for this particular subject (with their specific
  // characteristics) divided by the risk of the population in general. 
  // (Numbers greater than 1 = higher risk than the population, numbers less
  // than 1 = lower risk.).
  double relativeRisk;

  //  Extensions for relativeRisk
  Element elementRelativeRisk;

  //  Indicates the period of time or age range of the subject to which the
  // specified probability applies.
  Period whenPeriod;

  //  Indicates the period of time or age range of the subject to which the
  // specified probability applies.
  Range whenRange;

  //  Additional information explaining the basis for the prediction.
  String rationale;

  //  Extensions for rationale
  Element elementRationale;

RiskAssessment_Prediction(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.outcome,
    this.probabilityDecimal,
    this.elementProbabilityDecimal,
    this.probabilityRange,
    this.qualitativeRisk,
    this.relativeRisk,
    this.elementRelativeRisk,
    this.whenPeriod,
    this.whenRange,
    this.rationale,
    this.elementRationale
    });

  factory RiskAssessment_Prediction.fromJson(Map<String, dynamic> json) => _$RiskAssessment_PredictionFromJson(json);
  Map<String, dynamic> toJson() => _$RiskAssessment_PredictionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RiskAssessmentAdapter extends TypeAdapter<RiskAssessment> {
  @override
  final typeId = 520;

  @override
  RiskAssessment read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RiskAssessment(
      fields[18] as Reference,
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
      identifier: (fields[11] as List)?.cast<Identifier>(),
      basedOn: fields[12] as Reference,
      parent: fields[13] as Reference,
      status: fields[14] as String,
      elementStatus: fields[15] as Element,
      method: fields[16] as CodeableConcept,
      code: fields[17] as CodeableConcept,
      encounter: fields[19] as Reference,
      occurrenceDateTime: fields[20] as String,
      elementOccurrenceDateTime: fields[21] as Element,
      occurrencePeriod: fields[22] as Period,
      condition: fields[23] as Reference,
      performer: fields[24] as Reference,
      reasonCode: (fields[25] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[26] as List)?.cast<Reference>(),
      basis: (fields[27] as List)?.cast<Reference>(),
      prediction: (fields[28] as List)?.cast<RiskAssessment_Prediction>(),
      mitigation: fields[29] as String,
      elementMitigation: fields[30] as Element,
      note: (fields[31] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, RiskAssessment obj) {
    writer
      ..writeByte(32)
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
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.basedOn)
      ..writeByte(13)
      ..write(obj.parent)
      ..writeByte(14)
      ..write(obj.status)
      ..writeByte(15)
      ..write(obj.elementStatus)
      ..writeByte(16)
      ..write(obj.method)
      ..writeByte(17)
      ..write(obj.code)
      ..writeByte(18)
      ..write(obj.subject)
      ..writeByte(19)
      ..write(obj.encounter)
      ..writeByte(20)
      ..write(obj.occurrenceDateTime)
      ..writeByte(21)
      ..write(obj.elementOccurrenceDateTime)
      ..writeByte(22)
      ..write(obj.occurrencePeriod)
      ..writeByte(23)
      ..write(obj.condition)
      ..writeByte(24)
      ..write(obj.performer)
      ..writeByte(25)
      ..write(obj.reasonCode)
      ..writeByte(26)
      ..write(obj.reasonReference)
      ..writeByte(27)
      ..write(obj.basis)
      ..writeByte(28)
      ..write(obj.prediction)
      ..writeByte(29)
      ..write(obj.mitigation)
      ..writeByte(30)
      ..write(obj.elementMitigation)
      ..writeByte(31)
      ..write(obj.note);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RiskAssessment _$RiskAssessmentFromJson(Map<String, dynamic> json) {
  return RiskAssessment(
    json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
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
    basedOn: json['basedOn'] == null
        ? null
        : Reference.fromJson(json['basedOn'] as Map<String, dynamic>),
    parent: json['parent'] == null
        ? null
        : Reference.fromJson(json['parent'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    occurrenceDateTime: json['occurrenceDateTime'] as String,
    elementOccurrenceDateTime: json['elementOccurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOccurrenceDateTime'] as Map<String, dynamic>),
    occurrencePeriod: json['occurrencePeriod'] == null
        ? null
        : Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>),
    condition: json['condition'] == null
        ? null
        : Reference.fromJson(json['condition'] as Map<String, dynamic>),
    performer: json['performer'] == null
        ? null
        : Reference.fromJson(json['performer'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    basis: (json['basis'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prediction: (json['prediction'] as List)
        ?.map((e) => e == null
            ? null
            : RiskAssessment_Prediction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mitigation: json['mitigation'] as String,
    elementMitigation: json['elementMitigation'] == null
        ? null
        : Element.fromJson(json['elementMitigation'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RiskAssessmentToJson(RiskAssessment instance) =>
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
      'basedOn': instance.basedOn?.toJson(),
      'parent': instance.parent?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'method': instance.method?.toJson(),
      'code': instance.code?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'elementOccurrenceDateTime': instance.elementOccurrenceDateTime?.toJson(),
      'occurrencePeriod': instance.occurrencePeriod?.toJson(),
      'condition': instance.condition?.toJson(),
      'performer': instance.performer?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'basis': instance.basis?.map((e) => e?.toJson())?.toList(),
      'prediction': instance.prediction?.map((e) => e?.toJson())?.toList(),
      'mitigation': instance.mitigation,
      'elementMitigation': instance.elementMitigation?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };

RiskAssessment_Prediction _$RiskAssessment_PredictionFromJson(
    Map<String, dynamic> json) {
  return RiskAssessment_Prediction(
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
    probabilityDecimal: (json['probabilityDecimal'] as num)?.toDouble(),
    elementProbabilityDecimal: json['elementProbabilityDecimal'] == null
        ? null
        : Element.fromJson(
            json['elementProbabilityDecimal'] as Map<String, dynamic>),
    probabilityRange: json['probabilityRange'] == null
        ? null
        : Range.fromJson(json['probabilityRange'] as Map<String, dynamic>),
    qualitativeRisk: json['qualitativeRisk'] == null
        ? null
        : CodeableConcept.fromJson(
            json['qualitativeRisk'] as Map<String, dynamic>),
    relativeRisk: (json['relativeRisk'] as num)?.toDouble(),
    elementRelativeRisk: json['elementRelativeRisk'] == null
        ? null
        : Element.fromJson(json['elementRelativeRisk'] as Map<String, dynamic>),
    whenPeriod: json['whenPeriod'] == null
        ? null
        : Period.fromJson(json['whenPeriod'] as Map<String, dynamic>),
    whenRange: json['whenRange'] == null
        ? null
        : Range.fromJson(json['whenRange'] as Map<String, dynamic>),
    rationale: json['rationale'] as String,
    elementRationale: json['elementRationale'] == null
        ? null
        : Element.fromJson(json['elementRationale'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RiskAssessment_PredictionToJson(
        RiskAssessment_Prediction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'outcome': instance.outcome?.toJson(),
      'probabilityDecimal': instance.probabilityDecimal,
      'elementProbabilityDecimal': instance.elementProbabilityDecimal?.toJson(),
      'probabilityRange': instance.probabilityRange?.toJson(),
      'qualitativeRisk': instance.qualitativeRisk?.toJson(),
      'relativeRisk': instance.relativeRisk,
      'elementRelativeRisk': instance.elementRelativeRisk?.toJson(),
      'whenPeriod': instance.whenPeriod?.toJson(),
      'whenRange': instance.whenRange?.toJson(),
      'rationale': instance.rationale,
      'elementRationale': instance.elementRationale?.toJson(),
    };
