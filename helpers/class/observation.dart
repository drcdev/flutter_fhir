import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/sampledData.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/timing.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'observation.g.dart';

@JsonSerializable(explicitToJson: true)
class Observation {

//  This is a Observation resource
String resourceType;

//  The logical id of the resource, as used in the URL for the resource.
// Once assigned, this value never changes.
String id;

//  The metadata about the resource. This is content that is maintained by
// the infrastructure. Changes to the content might not always be
// associated with version changes to the resource.
Meta meta;

//  A reference to a set of rules that were followed when the resource was
// constructed, and which must be understood when processing the content.
// Often, this is a reference to an implementation guide that defines the
// special rules along with other profiles etc.
String implicitRules;

//  The base language in which the resource is written.
String language;

//  A human-readable narrative that contains a summary of the resource and
// can be used to represent the content of the resource to a human. The
// narrative need not encode all the structured data, but is required to
// contain sufficient detail to make it "clinically safe" for a human to
// just read the narrative. Resource definitions may define what content
// should be represented in the narrative to ensure clinical safety.
Narrative text;

//  These resources do not have an independent existence apart from the
// resource that contains them - they cannot be identified independently,
// and nor can they have their own independent transaction scope.
List<ResourceList> contained;

//  May be used to represent additional information that is not part of
// the basic definition of the resource. To make the use of extensions
// safe and manageable, there is a strict set of governance  applied to
// the definition and use of extensions. Though any implementer can define
// an extension, there is a set of requirements that SHALL be met as part
// of the definition of the extension.
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
List<Extension> modifierExtension;

//  A unique identifier assigned to this observation.
List<Identifier> identifier;

//  A plan, proposal or order that is fulfilled in whole or in part by
// this event.  For example, a MedicationRequest may require a patient to
// have laboratory test performed before  it is dispensed.
List<Reference> basedOn;

//  A larger event of which this particular Observation is a component or
// step.  For example,  an observation as part of a procedure.
List<Reference> partOf;

//  The status of the result value.
String status; // <code> enum: registered/preliminary/final/amended/corrected/cancelled/entered-in-error/unknown;

//  A code that classifies the general type of observation being made.
List<CodeableConcept> category;

//  Describes what was observed. Sometimes this is called the observation
// "name".
CodeableConcept code;

//  The patient, or group of patients, location, or device this
// observation is about and into whose record the observation is placed.
// If the actual focus of the observation is different from the subject
// (or a sample of, part, or region of the subject), the `focus` element
// or the `code` itself specifies the actual focus of the observation.
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
List<Reference> focus;

//  The healthcare event  (e.g. a patient and healthcare provider
// interaction) during which this observation is made.
Reference encounter;

//  The time or time-period the observed value is asserted as being true.
// For biological subjects - e.g. human patients - this is usually called
// the "physiologically relevant time". This is usually either the time of
// the procedure or of specimen collection, but very often the source of
// the date/time is not known, only the date/time itself.
String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

//  The time or time-period the observed value is asserted as being true.
// For biological subjects - e.g. human patients - this is usually called
// the "physiologically relevant time". This is usually either the time of
// the procedure or of specimen collection, but very often the source of
// the date/time is not known, only the date/time itself.
Period effectivePeriod;

//  The time or time-period the observed value is asserted as being true.
// For biological subjects - e.g. human patients - this is usually called
// the "physiologically relevant time". This is usually either the time of
// the procedure or of specimen collection, but very often the source of
// the date/time is not known, only the date/time itself.
Timing effectiveTiming;

//  The time or time-period the observed value is asserted as being true.
// For biological subjects - e.g. human patients - this is usually called
// the "physiologically relevant time". This is usually either the time of
// the procedure or of specimen collection, but very often the source of
// the date/time is not known, only the date/time itself.
String effectiveInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

//  The date and time this version of the observation was made available
// to providers, typically after the results have been reviewed and
// verified.
DateTime issued;

//  Who was responsible for asserting the observed value as "true".
List<Reference> performer;

//  The information determined as a result of making the observation, if
// the information has a simple value.
Quantity valueQuantity;

//  The information determined as a result of making the observation, if
// the information has a simple value.
CodeableConcept valueCodeableConcept;

//  The information determined as a result of making the observation, if
// the information has a simple value.
String valueString; //  pattern: ^[ \r\n\t\S]+$

//  The information determined as a result of making the observation, if
// the information has a simple value.
bool valueBoolean; //  pattern: ^true|false$

//  The information determined as a result of making the observation, if
// the information has a simple value.
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

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

//  The information determined as a result of making the observation, if
// the information has a simple value.
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

//  The information determined as a result of making the observation, if
// the information has a simple value.
Period valuePeriod;

//  Provides a reason why the expected value in the element
// Observation.value[x] is missing.
CodeableConcept dataAbsentReason;

//  A categorical assessment of an observation value.  For example, high,
// low, normal.
List<CodeableConcept> interpretation;

//  Comments about the observation or the results.
List<Annotation> note;

//  Indicates the site on the subject's body where the observation was
// made (i.e. the target site).
CodeableConcept bodySite;

//  Indicates the mechanism used to perform the observation.
CodeableConcept method;

//  The specimen that was used when this observation was made.
Reference specimen;

//  The device used to generate the observation data.
Reference device;

//  Guidance on how to interpret the value by comparison to a normal or
// recommended range.  Multiple reference ranges are interpreted as an
// "OR".   In other words, to represent two distinct target populations,
// two `referenceRange` elements would be used.
List<Observation_ReferenceRange> referenceRange;

//  This observation is a group observation (e.g. a battery, a panel of
// tests, a set of vital sign measurements) that includes the target as a
// member of the group.
List<Reference> hasMember;

//  The target resource that represents a measurement from which this
// observation value is derived. For example, a calculated anion gap or a
// fetal measurement based on an ultrasound image.
List<Reference> derivedFrom;

//  Some observations have multiple component observations.  These
// component observations are expressed as separate code value pairs that
// share the same attributes.  Examples include systolic and diastolic
// component observations for blood pressure measurement and multiple
// component observations for genetics observations.
List<Observation_Component> component;

Observation(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
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

Observation_ReferenceRange(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.low,
    this.high,
    this.type,
    this.appliesTo,
    this.age,
    this.text
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

//  The information determined as a result of making the observation, if
// the information has a simple value.
bool valueBoolean; //  pattern: ^true|false$

//  The information determined as a result of making the observation, if
// the information has a simple value.
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

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

//  The information determined as a result of making the observation, if
// the information has a simple value.
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

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
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
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
    this.referenceRange
    });

  factory Observation_Component.fromJson(Map<String, dynamic> json) => _$Observation_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$Observation_ComponentToJson(this);
}

