import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/sampledData.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Observation {
  static Future<Observation> newInstance({
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
    List<Reference> partOf,
    String status,
    Element elementStatus,
    List<CodeableConcept> category,
    CodeableConcept code,
    Reference subject,
    List<Reference> focus,
    Reference encounter,
    String effectiveDateTime,
    Element elementEffectiveDateTime,
    Period effectivePeriod,
    Timing effectiveTiming,
    String effectiveInstant,
    Element elementEffectiveInstant,
    DateTime issued,
    Element elementIssued,
    List<Reference> performer,
    Quantity valueQuantity,
    CodeableConcept valueCodeableConcept,
    String valueString,
    Element elementValueString,
    bool valueBoolean,
    Element elementValueBoolean,
    int valueInteger,
    Element elementValueInteger,
    Range valueRange,
    Ratio valueRatio,
    SampledData valueSampledData,
    String valueTime,
    Element elementValueTime,
    String valueDateTime,
    Element elementValueDateTime,
    Period valuePeriod,
    CodeableConcept dataAbsentReason,
    List<CodeableConcept> interpretation,
    List<Annotation> note,
    CodeableConcept bodySite,
    CodeableConcept method,
    Reference specimen,
    Reference device,
    List<Observation_ReferenceRange> referenceRange,
    List<Reference> hasMember,
    List<Reference> derivedFrom,
    List<Observation_Component> component,
  }) async {
    var fhirDb = new DatabaseHelper();
    Observation newObservation = new Observation(
      resourceType: 'Observation',
      id: id ?? await fhirDb.newResourceId('Observation'),
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
      partOf: partOf,
      status: status,
      elementStatus: elementStatus,
      category: category,
      code: code,
      subject: subject,
      focus: focus,
      encounter: encounter,
      effectiveDateTime: effectiveDateTime,
      elementEffectiveDateTime: elementEffectiveDateTime,
      effectivePeriod: effectivePeriod,
      effectiveTiming: effectiveTiming,
      effectiveInstant: effectiveInstant,
      elementEffectiveInstant: elementEffectiveInstant,
      issued: issued,
      elementIssued: elementIssued,
      performer: performer,
      valueQuantity: valueQuantity,
      valueCodeableConcept: valueCodeableConcept,
      valueString: valueString,
      elementValueString: elementValueString,
      valueBoolean: valueBoolean,
      elementValueBoolean: elementValueBoolean,
      valueInteger: valueInteger,
      elementValueInteger: elementValueInteger,
      valueRange: valueRange,
      valueRatio: valueRatio,
      valueSampledData: valueSampledData,
      valueTime: valueTime,
      elementValueTime: elementValueTime,
      valueDateTime: valueDateTime,
      elementValueDateTime: elementValueDateTime,
      valuePeriod: valuePeriod,
      dataAbsentReason: dataAbsentReason,
      interpretation: interpretation,
      note: note,
      bodySite: bodySite,
      method: method,
      specimen: specimen,
      device: device,
      referenceRange: referenceRange,
      hasMember: hasMember,
      derivedFrom: derivedFrom,
      component: component,
    );
    newObservation.meta.createdAt = DateTime.now();
    newObservation.meta.lastUpdated = newObservation.meta.createdAt;
    int saved = await fhirDb.saveResource(newObservation);
    return newObservation;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'Observation';
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
  List<Identifier> identifier;
  @HiveField(12)
  List<Reference> basedOn;
  @HiveField(13)
  List<Reference> partOf;
  @HiveField(14)
  String status;
  @HiveField(15)
  Element elementStatus;
  @HiveField(16)
  List<CodeableConcept> category;
  @HiveField(17)
  CodeableConcept code;
  @HiveField(18)
  Reference subject;
  @HiveField(19)
  List<Reference> focus;
  @HiveField(20)
  Reference encounter;
  @HiveField(21)
  String effectiveDateTime;
  @HiveField(22)
  Element elementEffectiveDateTime;
  @HiveField(23)
  Period effectivePeriod;
  @HiveField(24)
  Timing effectiveTiming;
  @HiveField(25)
  String effectiveInstant;
  @HiveField(26)
  Element elementEffectiveInstant;
  @HiveField(27)
  DateTime issued;
  @HiveField(28)
  Element elementIssued;
  @HiveField(29)
  List<Reference> performer;
  @HiveField(30)
  Quantity valueQuantity;
  @HiveField(31)
  CodeableConcept valueCodeableConcept;
  @HiveField(32)
  String valueString;
  @HiveField(33)
  Element elementValueString;
  @HiveField(34)
  bool valueBoolean;
  @HiveField(35)
  Element elementValueBoolean;
  @HiveField(36)
  int valueInteger;
  @HiveField(37)
  Element elementValueInteger;
  @HiveField(38)
  Range valueRange;
  @HiveField(39)
  Ratio valueRatio;
  @HiveField(40)
  SampledData valueSampledData;
  @HiveField(41)
  String valueTime;
  @HiveField(42)
  Element elementValueTime;
  @HiveField(43)
  String valueDateTime;
  @HiveField(44)
  Element elementValueDateTime;
  @HiveField(45)
  Period valuePeriod;
  @HiveField(46)
  CodeableConcept dataAbsentReason;
  @HiveField(47)
  List<CodeableConcept> interpretation;
  @HiveField(48)
  List<Annotation> note;
  @HiveField(49)
  CodeableConcept bodySite;
  @HiveField(50)
  CodeableConcept method;
  @HiveField(51)
  Reference specimen;
  @HiveField(52)
  Reference device;
  @HiveField(53)
  List<Observation_ReferenceRange> referenceRange;
  @HiveField(54)
  List<Reference> hasMember;
  @HiveField(55)
  List<Reference> derivedFrom;
  @HiveField(56)
  List<Observation_Component> component;

  Observation({
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
    this.partOf,
    this.status,
    this.elementStatus,
    this.category,
    @required this.code,
    this.subject,
    this.focus,
    this.encounter,
    this.effectiveDateTime,
    this.elementEffectiveDateTime,
    this.effectivePeriod,
    this.effectiveTiming,
    this.effectiveInstant,
    this.elementEffectiveInstant,
    this.issued,
    this.elementIssued,
    this.performer,
    this.valueQuantity,
    this.valueCodeableConcept,
    this.valueString,
    this.elementValueString,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueInteger,
    this.elementValueInteger,
    this.valueRange,
    this.valueRatio,
    this.valueSampledData,
    this.valueTime,
    this.elementValueTime,
    this.valueDateTime,
    this.elementValueDateTime,
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
    this.component,
  });

  factory Observation.fromJson(Map<String, dynamic> json) =>
      _$ObservationFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationToJson(this);
}

class Observation_ReferenceRange {
  static Future<Observation_ReferenceRange> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Quantity low,
    Quantity high,
    CodeableConcept type,
    List<CodeableConcept> appliesTo,
    Range age,
    String text,
    Element elementText,
  }) async {
    var fhirDb = new DatabaseHelper();
    Observation_ReferenceRange newObservation_ReferenceRange =
        new Observation_ReferenceRange(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      low: low,
      high: high,
      type: type,
      appliesTo: appliesTo,
      age: age,
      text: text,
      elementText: elementText,
    );
    return newObservation_ReferenceRange;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Quantity low;
  @HiveField(4)
  Quantity high;
  @HiveField(5)
  CodeableConcept type;
  @HiveField(6)
  List<CodeableConcept> appliesTo;
  @HiveField(7)
  Range age;
  @HiveField(8)
  String text;
  @HiveField(9)
  Element elementText;

  Observation_ReferenceRange({
    this.id,
    this.extension,
    this.modifierExtension,
    this.low,
    this.high,
    this.type,
    this.appliesTo,
    this.age,
    this.text,
    this.elementText,
  });

  factory Observation_ReferenceRange.fromJson(Map<String, dynamic> json) =>
      _$Observation_ReferenceRangeFromJson(json);
  Map<String, dynamic> toJson() => _$Observation_ReferenceRangeToJson(this);
}

class Observation_Component {
  static Future<Observation_Component> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    Quantity valueQuantity,
    CodeableConcept valueCodeableConcept,
    String valueString,
    Element elementValueString,
    bool valueBoolean,
    Element elementValueBoolean,
    int valueInteger,
    Element elementValueInteger,
    Range valueRange,
    Ratio valueRatio,
    SampledData valueSampledData,
    String valueTime,
    Element elementValueTime,
    String valueDateTime,
    Element elementValueDateTime,
    Period valuePeriod,
    CodeableConcept dataAbsentReason,
    List<CodeableConcept> interpretation,
    List<Observation_ReferenceRange> referenceRange,
  }) async {
    var fhirDb = new DatabaseHelper();
    Observation_Component newObservation_Component = new Observation_Component(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      valueQuantity: valueQuantity,
      valueCodeableConcept: valueCodeableConcept,
      valueString: valueString,
      elementValueString: elementValueString,
      valueBoolean: valueBoolean,
      elementValueBoolean: elementValueBoolean,
      valueInteger: valueInteger,
      elementValueInteger: elementValueInteger,
      valueRange: valueRange,
      valueRatio: valueRatio,
      valueSampledData: valueSampledData,
      valueTime: valueTime,
      elementValueTime: elementValueTime,
      valueDateTime: valueDateTime,
      elementValueDateTime: elementValueDateTime,
      valuePeriod: valuePeriod,
      dataAbsentReason: dataAbsentReason,
      interpretation: interpretation,
      referenceRange: referenceRange,
    );
    return newObservation_Component;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept code;
  @HiveField(4)
  Quantity valueQuantity;
  @HiveField(5)
  CodeableConcept valueCodeableConcept;
  @HiveField(6)
  String valueString;
  @HiveField(7)
  Element elementValueString;
  @HiveField(8)
  bool valueBoolean;
  @HiveField(9)
  Element elementValueBoolean;
  @HiveField(10)
  int valueInteger;
  @HiveField(11)
  Element elementValueInteger;
  @HiveField(12)
  Range valueRange;
  @HiveField(13)
  Ratio valueRatio;
  @HiveField(14)
  SampledData valueSampledData;
  @HiveField(15)
  String valueTime;
  @HiveField(16)
  Element elementValueTime;
  @HiveField(17)
  String valueDateTime;
  @HiveField(18)
  Element elementValueDateTime;
  @HiveField(19)
  Period valuePeriod;
  @HiveField(20)
  CodeableConcept dataAbsentReason;
  @HiveField(21)
  List<CodeableConcept> interpretation;
  @HiveField(22)
  List<Observation_ReferenceRange> referenceRange;

  Observation_Component({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.code,
    this.valueQuantity,
    this.valueCodeableConcept,
    this.valueString,
    this.elementValueString,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueInteger,
    this.elementValueInteger,
    this.valueRange,
    this.valueRatio,
    this.valueSampledData,
    this.valueTime,
    this.elementValueTime,
    this.valueDateTime,
    this.elementValueDateTime,
    this.valuePeriod,
    this.dataAbsentReason,
    this.interpretation,
    this.referenceRange,
  });

  factory Observation_Component.fromJson(Map<String, dynamic> json) =>
      _$Observation_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$Observation_ComponentToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Observation _$ObservationFromJson(Map<String, dynamic> json) {
  return Observation(
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
    partOf: (json['partOf'] as List)
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
    focus: (json['focus'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    effectiveTiming: json['effectiveTiming'] == null
        ? null
        : Timing.fromJson(json['effectiveTiming'] as Map<String, dynamic>),
    effectiveInstant: json['effectiveInstant'] as String,
    elementEffectiveInstant: json['elementEffectiveInstant'] == null
        ? null
        : Element.fromJson(
            json['elementEffectiveInstant'] as Map<String, dynamic>),
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
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueCodeableConcept: json['valueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['valueCodeableConcept'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueRange: json['valueRange'] == null
        ? null
        : Range.fromJson(json['valueRange'] as Map<String, dynamic>),
    valueRatio: json['valueRatio'] == null
        ? null
        : Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>),
    valueSampledData: json['valueSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['valueSampledData'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    elementValueTime: json['elementValueTime'] == null
        ? null
        : Element.fromJson(json['elementValueTime'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
    valuePeriod: json['valuePeriod'] == null
        ? null
        : Period.fromJson(json['valuePeriod'] as Map<String, dynamic>),
    dataAbsentReason: json['dataAbsentReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['dataAbsentReason'] as Map<String, dynamic>),
    interpretation: (json['interpretation'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    bodySite: json['bodySite'] == null
        ? null
        : CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    specimen: json['specimen'] == null
        ? null
        : Reference.fromJson(json['specimen'] as Map<String, dynamic>),
    device: json['device'] == null
        ? null
        : Reference.fromJson(json['device'] as Map<String, dynamic>),
    referenceRange: (json['referenceRange'] as List)
        ?.map((e) => e == null
            ? null
            : Observation_ReferenceRange.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    hasMember: (json['hasMember'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    derivedFrom: (json['derivedFrom'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    component: (json['component'] as List)
        ?.map((e) => e == null
            ? null
            : Observation_Component.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ObservationToJson(Observation instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('basedOn', instance.basedOn?.map((e) => e?.toJson())?.toList());
  writeNotNull('partOf', instance.partOf?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull(
      'category', instance.category?.map((e) => e?.toJson())?.toList());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('focus', instance.focus?.map((e) => e?.toJson())?.toList());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('effectiveDateTime', instance.effectiveDateTime);
  writeNotNull(
      'elementEffectiveDateTime', instance.elementEffectiveDateTime?.toJson());
  writeNotNull('effectivePeriod', instance.effectivePeriod?.toJson());
  writeNotNull('effectiveTiming', instance.effectiveTiming?.toJson());
  writeNotNull('effectiveInstant', instance.effectiveInstant);
  writeNotNull(
      'elementEffectiveInstant', instance.elementEffectiveInstant?.toJson());
  writeNotNull('issued', instance.issued?.toIso8601String());
  writeNotNull('elementIssued', instance.elementIssued?.toJson());
  writeNotNull(
      'performer', instance.performer?.map((e) => e?.toJson())?.toList());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueCodeableConcept', instance.valueCodeableConcept?.toJson());
  writeNotNull('valueString', instance.valueString);
  writeNotNull('elementValueString', instance.elementValueString?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean);
  writeNotNull('elementValueBoolean', instance.elementValueBoolean?.toJson());
  writeNotNull('valueInteger', instance.valueInteger);
  writeNotNull('elementValueInteger', instance.elementValueInteger?.toJson());
  writeNotNull('valueRange', instance.valueRange?.toJson());
  writeNotNull('valueRatio', instance.valueRatio?.toJson());
  writeNotNull('valueSampledData', instance.valueSampledData?.toJson());
  writeNotNull('valueTime', instance.valueTime);
  writeNotNull('elementValueTime', instance.elementValueTime?.toJson());
  writeNotNull('valueDateTime', instance.valueDateTime);
  writeNotNull('elementValueDateTime', instance.elementValueDateTime?.toJson());
  writeNotNull('valuePeriod', instance.valuePeriod?.toJson());
  writeNotNull('dataAbsentReason', instance.dataAbsentReason?.toJson());
  writeNotNull('interpretation',
      instance.interpretation?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull('bodySite', instance.bodySite?.toJson());
  writeNotNull('method', instance.method?.toJson());
  writeNotNull('specimen', instance.specimen?.toJson());
  writeNotNull('device', instance.device?.toJson());
  writeNotNull('referenceRange',
      instance.referenceRange?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'hasMember', instance.hasMember?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'derivedFrom', instance.derivedFrom?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'component', instance.component?.map((e) => e?.toJson())?.toList());
  return val;
}

Observation_ReferenceRange _$Observation_ReferenceRangeFromJson(
    Map<String, dynamic> json) {
  return Observation_ReferenceRange(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    low: json['low'] == null
        ? null
        : Quantity.fromJson(json['low'] as Map<String, dynamic>),
    high: json['high'] == null
        ? null
        : Quantity.fromJson(json['high'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    appliesTo: (json['appliesTo'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    age: json['age'] == null
        ? null
        : Range.fromJson(json['age'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Observation_ReferenceRangeToJson(
    Observation_ReferenceRange instance) {
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
  writeNotNull('low', instance.low?.toJson());
  writeNotNull('high', instance.high?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull(
      'appliesTo', instance.appliesTo?.map((e) => e?.toJson())?.toList());
  writeNotNull('age', instance.age?.toJson());
  writeNotNull('text', instance.text);
  writeNotNull('elementText', instance.elementText?.toJson());
  return val;
}

Observation_Component _$Observation_ComponentFromJson(
    Map<String, dynamic> json) {
  return Observation_Component(
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
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueCodeableConcept: json['valueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['valueCodeableConcept'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueRange: json['valueRange'] == null
        ? null
        : Range.fromJson(json['valueRange'] as Map<String, dynamic>),
    valueRatio: json['valueRatio'] == null
        ? null
        : Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>),
    valueSampledData: json['valueSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['valueSampledData'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    elementValueTime: json['elementValueTime'] == null
        ? null
        : Element.fromJson(json['elementValueTime'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
    valuePeriod: json['valuePeriod'] == null
        ? null
        : Period.fromJson(json['valuePeriod'] as Map<String, dynamic>),
    dataAbsentReason: json['dataAbsentReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['dataAbsentReason'] as Map<String, dynamic>),
    interpretation: (json['interpretation'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    referenceRange: (json['referenceRange'] as List)
        ?.map((e) => e == null
            ? null
            : Observation_ReferenceRange.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Observation_ComponentToJson(
    Observation_Component instance) {
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
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueCodeableConcept', instance.valueCodeableConcept?.toJson());
  writeNotNull('valueString', instance.valueString);
  writeNotNull('elementValueString', instance.elementValueString?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean);
  writeNotNull('elementValueBoolean', instance.elementValueBoolean?.toJson());
  writeNotNull('valueInteger', instance.valueInteger);
  writeNotNull('elementValueInteger', instance.elementValueInteger?.toJson());
  writeNotNull('valueRange', instance.valueRange?.toJson());
  writeNotNull('valueRatio', instance.valueRatio?.toJson());
  writeNotNull('valueSampledData', instance.valueSampledData?.toJson());
  writeNotNull('valueTime', instance.valueTime);
  writeNotNull('elementValueTime', instance.elementValueTime?.toJson());
  writeNotNull('valueDateTime', instance.valueDateTime);
  writeNotNull('elementValueDateTime', instance.elementValueDateTime?.toJson());
  writeNotNull('valuePeriod', instance.valuePeriod?.toJson());
  writeNotNull('dataAbsentReason', instance.dataAbsentReason?.toJson());
  writeNotNull('interpretation',
      instance.interpretation?.map((e) => e?.toJson())?.toList());
  writeNotNull('referenceRange',
      instance.referenceRange?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ObservationAdapter extends TypeAdapter<Observation> {
  @override
  Observation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Observation(
      resourceType: fields[0] as String,
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
      basedOn: (fields[12] as List)?.cast<Reference>(),
      partOf: (fields[13] as List)?.cast<Reference>(),
      status: fields[14] as String,
      elementStatus: fields[15] as Element,
      category: (fields[16] as List)?.cast<CodeableConcept>(),
      code: fields[17] as CodeableConcept,
      subject: fields[18] as Reference,
      focus: (fields[19] as List)?.cast<Reference>(),
      encounter: fields[20] as Reference,
      effectiveDateTime: fields[21] as String,
      elementEffectiveDateTime: fields[22] as Element,
      effectivePeriod: fields[23] as Period,
      effectiveTiming: fields[24] as Timing,
      effectiveInstant: fields[25] as String,
      elementEffectiveInstant: fields[26] as Element,
      issued: fields[27] as DateTime,
      elementIssued: fields[28] as Element,
      performer: (fields[29] as List)?.cast<Reference>(),
      valueQuantity: fields[30] as Quantity,
      valueCodeableConcept: fields[31] as CodeableConcept,
      valueString: fields[32] as String,
      elementValueString: fields[33] as Element,
      valueBoolean: fields[34] as bool,
      elementValueBoolean: fields[35] as Element,
      valueInteger: fields[36] as int,
      elementValueInteger: fields[37] as Element,
      valueRange: fields[38] as Range,
      valueRatio: fields[39] as Ratio,
      valueSampledData: fields[40] as SampledData,
      valueTime: fields[41] as String,
      elementValueTime: fields[42] as Element,
      valueDateTime: fields[43] as String,
      elementValueDateTime: fields[44] as Element,
      valuePeriod: fields[45] as Period,
      dataAbsentReason: fields[46] as CodeableConcept,
      interpretation: (fields[47] as List)?.cast<CodeableConcept>(),
      note: (fields[48] as List)?.cast<Annotation>(),
      bodySite: fields[49] as CodeableConcept,
      method: fields[50] as CodeableConcept,
      specimen: fields[51] as Reference,
      device: fields[52] as Reference,
      referenceRange: (fields[53] as List)?.cast<Observation_ReferenceRange>(),
      hasMember: (fields[54] as List)?.cast<Reference>(),
      derivedFrom: (fields[55] as List)?.cast<Reference>(),
      component: (fields[56] as List)?.cast<Observation_Component>(),
    );
  }

  @override
  void write(BinaryWriter writer, Observation obj) {
    writer
      ..writeByte(57)
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
      ..write(obj.partOf)
      ..writeByte(14)
      ..write(obj.status)
      ..writeByte(15)
      ..write(obj.elementStatus)
      ..writeByte(16)
      ..write(obj.category)
      ..writeByte(17)
      ..write(obj.code)
      ..writeByte(18)
      ..write(obj.subject)
      ..writeByte(19)
      ..write(obj.focus)
      ..writeByte(20)
      ..write(obj.encounter)
      ..writeByte(21)
      ..write(obj.effectiveDateTime)
      ..writeByte(22)
      ..write(obj.elementEffectiveDateTime)
      ..writeByte(23)
      ..write(obj.effectivePeriod)
      ..writeByte(24)
      ..write(obj.effectiveTiming)
      ..writeByte(25)
      ..write(obj.effectiveInstant)
      ..writeByte(26)
      ..write(obj.elementEffectiveInstant)
      ..writeByte(27)
      ..write(obj.issued)
      ..writeByte(28)
      ..write(obj.elementIssued)
      ..writeByte(29)
      ..write(obj.performer)
      ..writeByte(30)
      ..write(obj.valueQuantity)
      ..writeByte(31)
      ..write(obj.valueCodeableConcept)
      ..writeByte(32)
      ..write(obj.valueString)
      ..writeByte(33)
      ..write(obj.elementValueString)
      ..writeByte(34)
      ..write(obj.valueBoolean)
      ..writeByte(35)
      ..write(obj.elementValueBoolean)
      ..writeByte(36)
      ..write(obj.valueInteger)
      ..writeByte(37)
      ..write(obj.elementValueInteger)
      ..writeByte(38)
      ..write(obj.valueRange)
      ..writeByte(39)
      ..write(obj.valueRatio)
      ..writeByte(40)
      ..write(obj.valueSampledData)
      ..writeByte(41)
      ..write(obj.valueTime)
      ..writeByte(42)
      ..write(obj.elementValueTime)
      ..writeByte(43)
      ..write(obj.valueDateTime)
      ..writeByte(44)
      ..write(obj.elementValueDateTime)
      ..writeByte(45)
      ..write(obj.valuePeriod)
      ..writeByte(46)
      ..write(obj.dataAbsentReason)
      ..writeByte(47)
      ..write(obj.interpretation)
      ..writeByte(48)
      ..write(obj.note)
      ..writeByte(49)
      ..write(obj.bodySite)
      ..writeByte(50)
      ..write(obj.method)
      ..writeByte(51)
      ..write(obj.specimen)
      ..writeByte(52)
      ..write(obj.device)
      ..writeByte(53)
      ..write(obj.referenceRange)
      ..writeByte(54)
      ..write(obj.hasMember)
      ..writeByte(55)
      ..write(obj.derivedFrom)
      ..writeByte(56)
      ..write(obj.component);
  }
}

class Observation_ReferenceRangeAdapter
    extends TypeAdapter<Observation_ReferenceRange> {
  @override
  Observation_ReferenceRange read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Observation_ReferenceRange(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      low: fields[3] as Quantity,
      high: fields[4] as Quantity,
      type: fields[5] as CodeableConcept,
      appliesTo: (fields[6] as List)?.cast<CodeableConcept>(),
      age: fields[7] as Range,
      text: fields[8] as String,
      elementText: fields[9] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Observation_ReferenceRange obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.low)
      ..writeByte(4)
      ..write(obj.high)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.appliesTo)
      ..writeByte(7)
      ..write(obj.age)
      ..writeByte(8)
      ..write(obj.text)
      ..writeByte(9)
      ..write(obj.elementText);
  }
}

class Observation_ComponentAdapter extends TypeAdapter<Observation_Component> {
  @override
  Observation_Component read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Observation_Component(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      valueQuantity: fields[4] as Quantity,
      valueCodeableConcept: fields[5] as CodeableConcept,
      valueString: fields[6] as String,
      elementValueString: fields[7] as Element,
      valueBoolean: fields[8] as bool,
      elementValueBoolean: fields[9] as Element,
      valueInteger: fields[10] as int,
      elementValueInteger: fields[11] as Element,
      valueRange: fields[12] as Range,
      valueRatio: fields[13] as Ratio,
      valueSampledData: fields[14] as SampledData,
      valueTime: fields[15] as String,
      elementValueTime: fields[16] as Element,
      valueDateTime: fields[17] as String,
      elementValueDateTime: fields[18] as Element,
      valuePeriod: fields[19] as Period,
      dataAbsentReason: fields[20] as CodeableConcept,
      interpretation: (fields[21] as List)?.cast<CodeableConcept>(),
      referenceRange: (fields[22] as List)?.cast<Observation_ReferenceRange>(),
    );
  }

  @override
  void write(BinaryWriter writer, Observation_Component obj) {
    writer
      ..writeByte(23)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.valueQuantity)
      ..writeByte(5)
      ..write(obj.valueCodeableConcept)
      ..writeByte(6)
      ..write(obj.valueString)
      ..writeByte(7)
      ..write(obj.elementValueString)
      ..writeByte(8)
      ..write(obj.valueBoolean)
      ..writeByte(9)
      ..write(obj.elementValueBoolean)
      ..writeByte(10)
      ..write(obj.valueInteger)
      ..writeByte(11)
      ..write(obj.elementValueInteger)
      ..writeByte(12)
      ..write(obj.valueRange)
      ..writeByte(13)
      ..write(obj.valueRatio)
      ..writeByte(14)
      ..write(obj.valueSampledData)
      ..writeByte(15)
      ..write(obj.valueTime)
      ..writeByte(16)
      ..write(obj.elementValueTime)
      ..writeByte(17)
      ..write(obj.valueDateTime)
      ..writeByte(18)
      ..write(obj.elementValueDateTime)
      ..writeByte(19)
      ..write(obj.valuePeriod)
      ..writeByte(20)
      ..write(obj.dataAbsentReason)
      ..writeByte(21)
      ..write(obj.interpretation)
      ..writeByte(22)
      ..write(obj.referenceRange);
  }
}
