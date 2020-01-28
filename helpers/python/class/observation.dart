
part 'observation.g.dart';

@JsonSerializable(explicitToJson: true)
class Observation {
  
  // This is a Observation 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A unique identifier assigned to this observation.
  List<Identifier identifier;

  // A plan, proposal or order that is fulfilled in whole or in part by this
  //  event.  For example, a MedicationRequest may require a patient to have
  //  laboratory test performed before  it is dispensed.
  List<Reference basedOn;

  // A larger event of which this particular Observation is a component or step.
  //   For example,  an observation as part of a procedure.
  List<Reference partOf;

  // The status of the result value.Enum enum; //
  //  registeredpreliminaryfinalamendedcorrectedcancelledentered-in-errorunknown status;

  // Extensions for status
  Element _status;

  // A code that classifies the general type of observation being made.
  List<CodeableConcept category;

  // Describes what was observed. Sometimes this is called the observation
  //  "name".
  CodeableConcept code;

  // The patient, or group of patients, location, or device this observation is
  //  about and into whose record the observation is placed. If the actual focus of
  //  the observation is different from the subject (or a sample of, part, or region
  //  of the subject), the `focus` element or the `code` itself specifies the actual
  //  focus of the observation.
  Reference subject;

  // The actual focus of an observation when it is not the patient of record
  //  representing something or someone associated with the patient such as a spouse,
  //  parent, fetus, or donor. For example, fetus observations in a mother's record. 
  //  The focus of an observation could also be an existing condition,  an
  //  intervention, the subject's diet,  another observation of the subject,  or a
  //  body structure such as tumor or implanted device.   An example use case would
  //  be using the Observation resource to capture whether the mother is trained to
  //  change her child's tracheostomy tube. In this example, the child is the patient
  //  of record and the mother is the focus.
  List<Reference focus;

  // The healthcare event  (e.g. a patient and healthcare provider interaction)
  //  during which this observation is made.
  Reference encounter;

  // The time or time-period the observed value is asserted as being true. For
  //  biological subjects - e.g. human patients - this is usually called the
  //  "physiologically relevant time". This is usually either the time of the
  //  procedure or of specimen collection, but very often the source of the date/time
  //  is not known, only the date/time itself. string effectiveDateTime;

  // Extensions for effectiveDateTime
  Element _effectiveDateTime;

  // The time or time-period the observed value is asserted as being true. For
  //  biological subjects - e.g. human patients - this is usually called the
  //  "physiologically relevant time". This is usually either the time of the
  //  procedure or of specimen collection, but very often the source of the date/time
  //  is not known, only the date/time itself.
  Period effectivePeriod;

  // The time or time-period the observed value is asserted as being true. For
  //  biological subjects - e.g. human patients - this is usually called the
  //  "physiologically relevant time". This is usually either the time of the
  //  procedure or of specimen collection, but very often the source of the date/time
  //  is not known, only the date/time itself.
  Timing effectiveTiming;

  // The time or time-period the observed value is asserted as being true. For
  //  biological subjects - e.g. human patients - this is usually called the
  //  "physiologically relevant time". This is usually either the time of the
  //  procedure or of specimen collection, but very often the source of the date/time
  //  is not known, only the date/time itself. string effectiveInstant;

  // Extensions for effectiveInstant
  Element _effectiveInstant;

  // The date and time this version of the observation was made available to
  //  providers, typically after the results have been reviewed and verified.
  DateTime issued;

  // Extensions for issued
  Element _issued;

  // Who was responsible for asserting the observed value as "true".
  List<Reference performer;

  // The information determined as a result of making the observation, if the
  //  information has a simple value.
  Quantity valueQuantity;

  // The information determined as a result of making the observation, if the
  //  information has a simple value.
  CodeableConcept valueCodeableConcept;

  // The information determined as a result of making the observation, if the
  //  information has a simple value. string valueString;

  // Extensions for valueString
  Element _valueString;

  // The information determined as a result of making the observation, if the
  //  information has a simple value. boolean valueBoolean;

  // Extensions for valueBoolean
  Element _valueBoolean;

  // The information determined as a result of making the observation, if the
  //  information has a simple value. number valueInteger;

  // Extensions for valueInteger
  Element _valueInteger;

  // The information determined as a result of making the observation, if the
  //  information has a simple value.
  Range valueRange;

  // The information determined as a result of making the observation, if the
  //  information has a simple value.
  Ratio valueRatio;

  // The information determined as a result of making the observation, if the
  //  information has a simple value.
  SampledData valueSampledData;

  // The information determined as a result of making the observation, if the
  //  information has a simple value. string valueTime;

  // Extensions for valueTime
  Element _valueTime;

  // The information determined as a result of making the observation, if the
  //  information has a simple value. string valueDateTime;

  // Extensions for valueDateTime
  Element _valueDateTime;

  // The information determined as a result of making the observation, if the
  //  information has a simple value.
  Period valuePeriod;

  // Provides a reason why the expected value in the element
  //  Observation.value[x] is missing.
  CodeableConcept dataAbsentReason;

  // A categorical assessment of an observation value.  For example, high, low,
  //  normal.
  List<CodeableConcept interpretation;

  // Comments about the observation or the results.
  List<Annotation note;

  // Indicates the site on the subject's body where the observation was made
  //  (i.e. the target site).
  CodeableConcept bodySite;

  // Indicates the mechanism used to perform the observation.
  CodeableConcept method;

  // The specimen that was used when this observation was made.
  Reference specimen;

  // The device used to generate the observation data.
  Reference device;

  // Guidance on how to interpret the value by comparison to a normal or
  //  recommended range.  Multiple reference ranges are interpreted as an "OR".   In
  //  other words, to represent two distinct target populations, two `referenceRange`
  //  elements would be used.
  List<Observation_ReferenceRange referenceRange;

  // This observation is a group observation (e.g. a battery, a panel of tests,
  //  a set of vital sign measurements) that includes the target as a member of the
  //  group.
  List<Reference hasMember;

  // The target resource that represents a measurement from which this
  //  observation value is derived. For example, a calculated anion gap or a fetal
  //  measurement based on an ultrasound image.
  List<Reference derivedFrom;

  // Some observations have multiple component observations.  These component
  //  observations are expressed as separate code value pairs that share the same
  //  attributes.  Examples include systolic and diastolic component observations for
  //  blood pressure measurement and multiple component observations for genetics
  //  observations.
  List<Observation_Component component
Observation(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.text,
this.contained,
this.extension,
this.modifierExtension,
this.identifier,
this.basedOn,
this.partOf,
this.status,
this._status,
this.category,
this.code,
this.subject,
this.focus,
this.encounter,
this.effectiveDateTime,
this._effectiveDateTime,
this.effectivePeriod,
this.effectiveTiming,
this.effectiveInstant,
this._effectiveInstant,
this.issued,
this._issued,
this.performer,
this.valueQuantity,
this.valueCodeableConcept,
this.valueString,
this._valueString,
this.valueBoolean,
this._valueBoolean,
this.valueInteger,
this._valueInteger,
this.valueRange,
this.valueRatio,
this.valueSampledData,
this.valueTime,
this._valueTime,
this.valueDateTime,
this._valueDateTime,
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