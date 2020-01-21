import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/resource.dart';
import 'package:flutter_fhir/class/sampledData.dart';
import 'package:flutter_fhir/class/timing.dart';

part 'observation.g.dart';

@JsonSerializable(explicitToJson: true)
class Observation {
  String resourceType;

  // Logical id of this artifact
  String id;

  // Metadata about the resource
  Meta meta;

  // A set of rules under which this content was created
  String implicitRules;

  // Language of the resource content
  String language;

  // Text summary of the resource, for human interpretation
  Narrative text;

  // Contained, inline Resources
  List<Resource> contained;

  // Business Identifier for observation
  List<Identifier> identifier;

  // Fulfills plan, proposal or order
  // Reference(CarePlan|DeviceRequest|ImmunizationRecommendation|
  //   MedicationRequest|NutritionOrder|ServiceRequest)
  List<Reference> basedOn;

  // Part of referenced event
  // Reference(MedicationAdministration|MedicationDispense|
  //   MedicationStatement|Procedure|Immunization|ImagingStudy)
  List<Reference> partOf;

  // R!  registered | preliminary | final | amended +
  String status;

  // Classification of  type of observation
  List<CodeableConcept> category;

  // R!  registered | preliminary | final | amended +
  CodeableConcept code;

  // Who and/or what the observation is about
  // Reference(Patient|Group|Device|Location)
  Reference subject;

  // What the observation is about, when it is not about the subject of record
  // Reference(Any)
  List<Reference> focus;

  // Healthcare event during which this observation is made
  // Reference(Encounter)
  Reference encounter;

  // effective[x]: Clinically relevant time/time-period for observation. One of these 4:
  DateTime effectiveDateTime;
  Period effectivePeriod;
  Timing effectiveTiming;
  DateTime effectiveInstant;

  // Date/Time this version was made available
  DateTime issued;

  // Who is responsible for the observation
  // Reference(Practitioner|PractitionerRole|Organization|
  //   CareTeam|Patient|RelatedPerson)
  List <Reference> performer;

  // value[x]: Actual result. One of these 11:
  Quantity valueQuantity;
  CodeableConcept valueCodeableConcept;
  String valueString;
  bool valueBoolean;
  int valueInteger;
  Range valueRange;
  Ratio valueRatio;
  SampledData valueSampledData;
  String valueTime;
  DateTime valueDateTime;
  Period valuePeriod;

  // C? Why the result is missing
  CodeableConcept dataAbsentReason;

  // High, low, normal, etc.
  List<CodeableConcept> interpretation;

  // Comments about the observation
  List<Annotation> note;

  // Observed body part
  CodeableConcept bodySite;

  // How it was done
  CodeableConcept method;

  // Specimen used for this observation
  Reference specimen;

  // (Measurement) Device
  Reference device;

  // Provides guide for interpretation
  List<ReferenceRange> referenceRange;

  // Related resource that belongs to the Observation group
  // Reference(Observation|QuestionnaireResponse|MolecularSequence)
  List <Reference> hasMember;

  // Related measurements the observation is made from
  // Reference(DocumentReference|ImagingStudy|Media|
  //   QuestionnaireResponse|Observation|MolecularSequence)
  List <Reference> derivedFrom;

  // Component results
  List<Component> component;

  Observation(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.text,
        this.contained,
        this.identifier,
        this.basedOn,
        this.partOf,
        this.status,
        this.category,
        this.code,
        this.subject,
        this.focus,
        this.encounter,
        this.effectiveDateTime,
        this.effectivePeriod,
        this.effectiveTiming,
        this.effectiveInstant,
        this.issued,
        this.performer,
        this.valueQuantity,
        this.valueCodeableConcept,
        this.valueString,
        this.valueBoolean,
        this.valueInteger,
        this.valueRange,
        this.valueRatio,
        this.valueSampledData,
        this.valueTime,
        this.valueDateTime,
        this.valuePeriod,
        this.dataAbsentReason,
        this.interpretation,
        this.note,
        this.bodySite,
        this.method,
        this.specimen,
        this.device,
        this.referenceRange,
        this.hasMember,
        this.derivedFrom,
        this.component});

  factory Observation.fromJson(Map<String, dynamic> json) => _$ObservationFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReferenceRange {

  // C? Low Range, if relevant
  Quantity low;

  // C? High Range, if relevant
  Quantity high;

  // Reference range qualifier
  CodeableConcept type;

  // Reference range population
  List<CodeableConcept> appliesTo;

  // Applicable age range, if relevant
  Range age;

  // Text based reference range in an observation
  String text;

  ReferenceRange(
      {this.low, this.high, this.type, this.appliesTo, this.age, this.text});

  factory ReferenceRange.fromJson(Map<String, dynamic> json) => _$ReferenceRangeFromJson(json);
  Map<String, dynamic> toJson() => _$ReferenceRangeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Component {

  // R!  Type of component observation (code / type)
  CodeableConcept code;

  // value[x]: Actual component result. One of these 11:
  Quantity valueQuantity;
  CodeableConcept valueCodeableConcept;
  String valueString;
  bool valueBoolean;
  int valueInteger;
  Range valueRange;
  Ratio valueRatio;
  SampledData valueSampledData;
  String valueTime;
  DateTime valueDateTime;
  Period valuePeriod;

  // C? Why the component result is missing
  CodeableConcept dataAbsentReason;

  // High, low, normal, etc.
  List<CodeableConcept> interpretation;

  // Provides guide for interpretation of component result
  List<ReferenceRange> referenceRange;

  Component(
      {this.code,
        this.valueQuantity,
        this.valueCodeableConcept,
        this.valueString,
        this.valueBoolean,
        this.valueInteger,
        this.valueRange,
        this.valueRatio,
        this.valueSampledData,
        this.valueTime,
        this.valueDateTime,
        this.valuePeriod,
        this.dataAbsentReason,
        this.interpretation,
        this.referenceRange});

  factory Component.fromJson(Map<String, dynamic> json) => _$ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$ComponentToJson(this);
}