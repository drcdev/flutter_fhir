import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 452)
class Observation {

  //  This is a Observation resource
  @HiveField(0)
  final String resourceType= 'Observation';

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

  //  A unique identifier assigned to this observation.
  @HiveField(11)
  List<Identifier> identifier;

  //  A plan, proposal or order that is fulfilled in whole or in part by
  // this event.  For example, a MedicationRequest may require a patient to
  // have laboratory test performed before  it is dispensed.
  @HiveField(12)
  List<Reference> basedOn;

  //  A larger event of which this particular Observation is a component or
  // step.  For example,  an observation as part of a procedure.
  @HiveField(13)
  List<Reference> partOf;

  //  The status of the result value.
  @HiveField(14)
  String status; // <code> enum: registered/preliminary/final/amended/corrected/cancelled/entered-in-error/unknown;

  //  Extensions for status
  @HiveField(15)
  Element elementStatus;

  //  A code that classifies the general type of observation being made.
  @HiveField(16)
  List<CodeableConcept> category;

  //  Describes what was observed. Sometimes this is called the observation
  // "name".
  @HiveField(17)
  CodeableConcept code;

  //  The patient, or group of patients, location, or device this
  // observation is about and into whose record the observation is placed.
  // If the actual focus of the observation is different from the subject
  // (or a sample of, part, or region of the subject), the `focus` element
  // or the `code` itself specifies the actual focus of the observation.
  @HiveField(18)
  Reference subject;

  //  The actual focus of an observation when it is not the patient of
  // record representing something or someone associated with the patient
  // such as a spouse, parent, fetus, or donor. For example, fetus
  // observations in a mother's record.  The focus of an observation could
  // also be an existing condition,  an intervention, the subject's diet, 
  // another observation of the subject,  or a body structure such as tumor
  // or implanted device.   An example use case would be using the
  // Observation resource to capture whether the mother is trained to change
  // her child's tracheostomy tube. In this example, the child is the
  // patient of record and the mother is the focus.
  @HiveField(19)
  List<Reference> focus;

  //  The healthcare event  (e.g. a patient and healthcare provider
  // interaction) during which this observation is made.
  @HiveField(20)
  Reference encounter;

  //  The time or time-period the observed value is asserted as being true.
  // For biological subjects - e.g. human patients - this is usually called
  // the "physiologically relevant time". This is usually either the time of
  // the procedure or of specimen collection, but very often the source of
  // the date/time is not known, only the date/time itself.
  @HiveField(21)
  String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for effectiveDateTime
  @HiveField(22)
  Element elementEffectiveDateTime;

  //  The time or time-period the observed value is asserted as being true.
  // For biological subjects - e.g. human patients - this is usually called
  // the "physiologically relevant time". This is usually either the time of
  // the procedure or of specimen collection, but very often the source of
  // the date/time is not known, only the date/time itself.
  @HiveField(23)
  Period effectivePeriod;

  //  The time or time-period the observed value is asserted as being true.
  // For biological subjects - e.g. human patients - this is usually called
  // the "physiologically relevant time". This is usually either the time of
  // the procedure or of specimen collection, but very often the source of
  // the date/time is not known, only the date/time itself.
  @HiveField(24)
  Timing effectiveTiming;

  //  The time or time-period the observed value is asserted as being true.
  // For biological subjects - e.g. human patients - this is usually called
  // the "physiologically relevant time". This is usually either the time of
  // the procedure or of specimen collection, but very often the source of
  // the date/time is not known, only the date/time itself.
  @HiveField(25)
  String effectiveInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for effectiveInstant
  @HiveField(26)
  Element elementEffectiveInstant;

  //  The date and time this version of the observation was made available
  // to providers, typically after the results have been reviewed and
  // verified.
  @HiveField(27)
  DateTime issued;

  //  Extensions for issued
  @HiveField(28)
  Element elementIssued;

  //  Who was responsible for asserting the observed value as "true".
  @HiveField(29)
  List<Reference> performer;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  @HiveField(30)
  Quantity valueQuantity;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  @HiveField(31)
  CodeableConcept valueCodeableConcept;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  @HiveField(32)
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  @HiveField(33)
  Element elementValueString;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  @HiveField(34)
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  @HiveField(35)
  Element elementValueBoolean;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  @HiveField(37)
  Element elementValueInteger;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  @HiveField(38)
  Range valueRange;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  @HiveField(39)
  Ratio valueRatio;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  @HiveField(40)
  SampledData valueSampledData;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  @HiveField(41)
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for valueTime
  @HiveField(42)
  Element elementValueTime;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  @HiveField(43)
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for valueDateTime
  @HiveField(44)
  Element elementValueDateTime;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  @HiveField(45)
  Period valuePeriod;

  //  Provides a reason why the expected value in the element
  // Observation.value[x] is missing.
  @HiveField(46)
  CodeableConcept dataAbsentReason;

  //  A categorical assessment of an observation value.  For example, high,
  // low, normal.
  @HiveField(47)
  List<CodeableConcept> interpretation;

  //  Comments about the observation or the results.
  @HiveField(48)
  List<Annotation> note;

  //  Indicates the site on the subject's body where the observation was
  // made (i.e. the target site).
  @HiveField(49)
  CodeableConcept bodySite;

  //  Indicates the mechanism used to perform the observation.
  @HiveField(50)
  CodeableConcept method;

  //  The specimen that was used when this observation was made.
  @HiveField(51)
  Reference specimen;

  //  The device used to generate the observation data.
  @HiveField(52)
  Reference device;

  //  Guidance on how to interpret the value by comparison to a normal or
  // recommended range.  Multiple reference ranges are interpreted as an
  // "OR".   In other words, to represent two distinct target populations,
  // two `referenceRange` elements would be used.
  @HiveField(53)
  List<Observation_ReferenceRange> referenceRange;

  //  This observation is a group observation (e.g. a battery, a panel of
  // tests, a set of vital sign measurements) that includes the target as a
  // member of the group.
  @HiveField(54)
  List<Reference> hasMember;

  //  The target resource that represents a measurement from which this
  // observation value is derived. For example, a calculated anion gap or a
  // fetal measurement based on an ultrasound image.
  @HiveField(55)
  List<Reference> derivedFrom;

  //  Some observations have multiple component observations.  These
  // component observations are expressed as separate code value pairs that
  // share the same attributes.  Examples include systolic and diastolic
  // component observations for blood pressure measurement and multiple
  // component observations for genetics observations.
  @HiveField(56)
  List<Observation_Component> component;

Observation(
  this.code,
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
    this.partOf,
    this.status,
    this.elementStatus,
    this.category,
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
    this.component
    });

  factory Observation.fromJson(Map<String, dynamic> json) => _$ObservationFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Observation_ReferenceRange {

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

  //  The value of the low bound of the reference range.  The low bound of
  // the reference range endpoint is inclusive of the value (e.g.  reference
  // range is >=5 - <=9). If the low bound is omitted,  it is assumed to be
  // meaningless (e.g. reference range is <=2.3).
  Quantity low;

  //  The value of the high bound of the reference range.  The high bound of
  // the reference range endpoint is inclusive of the value (e.g.  reference
  // range is >=5 - <=9). If the high bound is omitted,  it is assumed to be
  // meaningless (e.g. reference range is >= 2.3).
  Quantity high;

  //  Codes to indicate the what part of the targeted reference population
  // it applies to. For example, the normal or therapeutic range.
  CodeableConcept type;

  //  Codes to indicate the target population this reference range applies
  // to.  For example, a reference range may be based on the normal
  // population or a particular sex or race.  Multiple `appliesTo`  are
  // interpreted as an "AND" of the target populations.  For example, to
  // represent a target population of African American females, both a code
  // of female and a code for African American would be used.
  List<CodeableConcept> appliesTo;

  //  The age at which this reference range is applicable. This is a
  // neonatal age (e.g. number of weeks at term) if the meaning says so.
  Range age;

  //  Text based reference range in an observation which may be used when a
  // quantitative range is not appropriate for an observation.  An example
  // would be a reference value of "Negative" or a list or table of
  // "normals".
  String text;

  //  Extensions for text
  Element elementText;

Observation_ReferenceRange(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.low,
    this.high,
    this.type,
    this.appliesTo,
    this.age,
    this.text,
    this.elementText
    });

  factory Observation_ReferenceRange.fromJson(Map<String, dynamic> json) => _$Observation_ReferenceRangeFromJson(json);
  Map<String, dynamic> toJson() => _$Observation_ReferenceRangeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Observation_Component {

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

  //  Describes what was observed. Sometimes this is called the observation
  // "code".
  CodeableConcept code;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  Quantity valueQuantity;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  CodeableConcept valueCodeableConcept;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  Element elementValueString;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  Element elementValueBoolean;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  Element elementValueInteger;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  Range valueRange;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  Ratio valueRatio;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  SampledData valueSampledData;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for valueTime
  Element elementValueTime;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for valueDateTime
  Element elementValueDateTime;

  //  The information determined as a result of making the observation, if
  // the information has a simple value.
  Period valuePeriod;

  //  Provides a reason why the expected value in the element
  // Observation.component.value[x] is missing.
  CodeableConcept dataAbsentReason;

  //  A categorical assessment of an observation value.  For example, high,
  // low, normal.
  List<CodeableConcept> interpretation;

  //  Guidance on how to interpret the value by comparison to a normal or
  // recommended range.
  List<Observation_ReferenceRange> referenceRange;

Observation_Component(
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension,
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
    this.referenceRange
    });

  factory Observation_Component.fromJson(Map<String, dynamic> json) => _$Observation_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$Observation_ComponentToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ObservationAdapter extends TypeAdapter<Observation> {
  @override
  final typeId = 452;

  @override
  Observation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Observation(
      fields[17] as CodeableConcept,
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
      ..writeByte(56)
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Observation _$ObservationFromJson(Map<String, dynamic> json) {
  return Observation(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ObservationToJson(Observation instance) =>
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
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'subject': instance.subject?.toJson(),
      'focus': instance.focus?.map((e) => e?.toJson())?.toList(),
      'encounter': instance.encounter?.toJson(),
      'effectiveDateTime': instance.effectiveDateTime,
      'elementEffectiveDateTime': instance.elementEffectiveDateTime?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'effectiveTiming': instance.effectiveTiming?.toJson(),
      'effectiveInstant': instance.effectiveInstant,
      'elementEffectiveInstant': instance.elementEffectiveInstant?.toJson(),
      'issued': instance.issued?.toIso8601String(),
      'elementIssued': instance.elementIssued?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueCodeableConcept': instance.valueCodeableConcept?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueRange': instance.valueRange?.toJson(),
      'valueRatio': instance.valueRatio?.toJson(),
      'valueSampledData': instance.valueSampledData?.toJson(),
      'valueTime': instance.valueTime,
      'elementValueTime': instance.elementValueTime?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'elementValueDateTime': instance.elementValueDateTime?.toJson(),
      'valuePeriod': instance.valuePeriod?.toJson(),
      'dataAbsentReason': instance.dataAbsentReason?.toJson(),
      'interpretation':
          instance.interpretation?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'bodySite': instance.bodySite?.toJson(),
      'method': instance.method?.toJson(),
      'specimen': instance.specimen?.toJson(),
      'device': instance.device?.toJson(),
      'referenceRange':
          instance.referenceRange?.map((e) => e?.toJson())?.toList(),
      'hasMember': instance.hasMember?.map((e) => e?.toJson())?.toList(),
      'derivedFrom': instance.derivedFrom?.map((e) => e?.toJson())?.toList(),
      'component': instance.component?.map((e) => e?.toJson())?.toList(),
    };

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
        Observation_ReferenceRange instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'low': instance.low?.toJson(),
      'high': instance.high?.toJson(),
      'type': instance.type?.toJson(),
      'appliesTo': instance.appliesTo?.map((e) => e?.toJson())?.toList(),
      'age': instance.age?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
    };

Observation_Component _$Observation_ComponentFromJson(
    Map<String, dynamic> json) {
  return Observation_Component(
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
        Observation_Component instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueCodeableConcept': instance.valueCodeableConcept?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueRange': instance.valueRange?.toJson(),
      'valueRatio': instance.valueRatio?.toJson(),
      'valueSampledData': instance.valueSampledData?.toJson(),
      'valueTime': instance.valueTime,
      'elementValueTime': instance.elementValueTime?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'elementValueDateTime': instance.elementValueDateTime?.toJson(),
      'valuePeriod': instance.valuePeriod?.toJson(),
      'dataAbsentReason': instance.dataAbsentReason?.toJson(),
      'interpretation':
          instance.interpretation?.map((e) => e?.toJson())?.toList(),
      'referenceRange':
          instance.referenceRange?.map((e) => e?.toJson())?.toList(),
    };
