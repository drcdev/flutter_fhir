import 'package:flutter/material.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/timing.dart';
import 'package:json_annotation/json_annotation.dart';
part 'observation.g.dart';

@JsonSerializable(explicitToJson: true)
class Observation {
  String resourceType;
  List<Identifier> identifier;
  List<Reference> basedOn;
  List<String> partOf;
  String status;
  List<CodeableConcept> category;
  CodeableConcept code;
  Reference subject;
  List<Reference> focus;
  Reference encounter;
  DateTime effectiveDateTime;
  Period effectivePeriod;
  Timing effectiveTiming;
  DateTime effectiveInstant;
  DateTime issued;
  List<Reference> performer;
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
  CodeableConcept dataAbsentReason;
  List<CodeableConcept> interpretation;
  List<Annotation> note;
  String bodySite;
  String method;
  String specimen;
  String device;
  List<ReferenceRange> referenceRange;
  List<Reference> hasMember;
  List<Reference> derivedFrom;
  List<Component> component;

  Observation(
      {this.resourceType,
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
  Quantity low;
  Quantity high;
  CodeableConcept type;
  List<CodeableConcept> appliesTo;
  Range age;
  String text;

  ReferenceRange(
      {this.low, this.high, this.type, this.appliesTo, this.age, this.text});

  factory ReferenceRange.fromJson(Map<String, dynamic> json) => _$ReferenceRangeFromJson(json);
  Map<String, dynamic> toJson() => _$ReferenceRangeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Component {
  CodeableConcept code;
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
  CodeableConcept dataAbsentReason;
  List<CodeableConcept> interpretation;
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

@JsonSerializable(explicitToJson: true)
class SampledData {
  Quantity origin;
  int period;
  int factor;
  int lowerLimit;
  int upperLimit;
  int dimensions;
  String data;

  SampledData(
      {this.origin,
        this.period,
        this.factor,
        this.lowerLimit,
        this.upperLimit,
        this.dimensions,
        this.data});

  factory SampledData.fromJson(Map<String, dynamic> json) => _$SampledDataFromJson(json);
  Map<String, dynamic> toJson() => _$SampledDataToJson(this);
}