
part 'medicationAdministration.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationAdministration {
  
  // This is a MedicationAdministration 
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

  // Identifiers associated with this Medication Administration that are defined
  //  by business processes and/or used to refer to it when a direct URL reference to
  //  the resource itself is not appropriate. They are business identifiers assigned
  //  to this resource by the performer or other systems and remain constant as the
  //  resource is updated and propagates from server to server.
  List<Identifier identifier;

  // A protocol, guideline, orderset, or other definition that was adhered to in
  //  whole or in part by this event.
  List<String instantiates;

  // Extensions for instantiates
  List<Element _instantiates;

  // A larger event of which this particular event is a component or step.
  List<Reference partOf;

  // Will generally be set to show that the administration has been completed. 
  //  For some long running administrations such as infusions, it is possible for an
  //  administration to be started but not completed or it may be paused while some
  //  other process is under way.
  String status;

  // Extensions for status
  Element _status;

  // A code indicating why the administration was not performed.
  List<CodeableConcept statusReason;

  // Indicates where the medication is expected to be consumed or administered.
  CodeableConcept category;

  // Identifies the medication that was administered. This is either a link to a
  //  resource representing the details of the medication or a simple attribute
  //  carrying a code that identifies the medication from a known list of medications.
  CodeableConcept medicationCodeableConcept;

  // Identifies the medication that was administered. This is either a link to a
  //  resource representing the details of the medication or a simple attribute
  //  carrying a code that identifies the medication from a known list of medications.
  Reference medicationReference;

  // The person or animal or group receiving the medication.
  Reference subject;

  // The visit, admission, or other contact between patient and health care
  //  provider during which the medication administration was performed.
  Reference context;

  // Additional information (for example, patient height and weight) that
  //  supports the administration of the medication.
  List<Reference supportingInformation;

  // A specific date/time or interval of time during which the administration
  //  took place (or did not take place, when the 'notGiven' attribute is true). For
  //  many administrations, such as swallowing a tablet the use of dateTime is more
  //  appropriate. string effectiveDateTime;

  // Extensions for effectiveDateTime
  Element _effectiveDateTime;

  // A specific date/time or interval of time during which the administration
  //  took place (or did not take place, when the 'notGiven' attribute is true). For
  //  many administrations, such as swallowing a tablet the use of dateTime is more
  //  appropriate.
  Period effectivePeriod;

  // Indicates who or what performed the medication administration and how they
  //  were involved.
  List<MedicationAdministration_Performer performer;

  // A code indicating why the medication was given.
  List<CodeableConcept reasonCode;

  // Condition or observation that supports why the medication was administered.
  List<Reference reasonReference;

  // The original request, instruction or authority to perform the
  //  administration.
  Reference request;

  // The device used in administering the medication to the patient.  For
  //  example, a particular infusion pump.
  List<Reference device;

  // Extra information about the medication administration that is not conveyed
  //  by the other attributes.
  List<Annotation note;

  // Describes the medication dosage information details e.g. dose, rate, site,
  //  route, etc.
  MedicationAdministration_Dosage dosage;

  // A summary of the events of interest that have occurred, such as when the
  //  administration was verified.
  List<Reference eventHistory
MedicationAdministration(
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
this.instantiates,
this._instantiates,
this.partOf,
this.status,
this._status,
this.statusReason,
this.category,
this.medicationCodeableConcept,
this.medicationReference,
this.subject,
this.context,
this.supportingInformation,
this.effectiveDateTime,
this._effectiveDateTime,
this.effectivePeriod,
this.performer,
this.reasonCode,
this.reasonReference,
this.request,
this.device,
this.note,
this.dosage,
this.eventHistory});

  factory MedicationAdministration.fromJson(Map<String, dynamic> json) => _$MedicationAdministrationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationAdministrationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationAdministration_Dosage {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Free text dosage can be used for cases where the dosage administered is too
  //  complex to code. When coded dosage is present, the free text dosage may still
  //  be present for display to humans.

The dosage instructions should reflect the
  //  dosage of the medication that was administered.
  String text;

  // Extensions for text
  Element _text;

  // A coded specification of the anatomic site where the medication first
  //  entered the body.  For example, "left arm".
  CodeableConcept site;

  // A code specifying the route or physiological path of administration of a
  //  therapeutic agent into or onto the patient.  For example, topical, intravenous,
  //  etc.
  CodeableConcept route;

  // A coded value indicating the method by which the medication is intended to
  //  be or was introduced into or on the body.  This attribute will most often NOT
  //  be populated.  It is most commonly used for injections.  For example, Slow
  //  Push, Deep IV.
  CodeableConcept method;

  // The amount of the medication given at one administration event.   Use this
  //  value when the administration is essentially an instantaneous event such as a
  //  swallowing a tablet or giving an injection.
  Quantity dose;

  // Identifies the speed with which the medication was or will be introduced
  //  into the patient.  Typically, the rate for an infusion e.g. 100 ml per 1 hour
  //  or 100 ml/hr.  May also be expressed as a rate per unit of time, e.g. 500 ml
  //  per 2 hours.  Other examples:  200 mcg/min or 200 mcg/1 minute; 1 liter/8 hours.
  Ratio rateRatio;

  // Identifies the speed with which the medication was or will be introduced
  //  into the patient.  Typically, the rate for an infusion e.g. 100 ml per 1 hour
  //  or 100 ml/hr.  May also be expressed as a rate per unit of time, e.g. 500 ml
  //  per 2 hours.  Other examples:  200 mcg/min or 200 mcg/1 minute; 1 liter/8 hours.
  Quantity rateQuantity
MedicationAdministration_Dosage(
      {this.id,
this.extension,
this.modifierExtension,
this.text,
this._text,
this.site,
this.route,
this.method,
this.dose,
this.rateRatio,
this.rateQuantity});

  factory MedicationAdministration_Dosage.fromJson(Map<String, dynamic> json) => _$MedicationAdministration_DosageFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationAdministration_DosageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationAdministration_Performer {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Distinguishes the type of involvement of the performer in the medication
  //  administration.
  CodeableConcept function;

  // Indicates who or what performed the medication administration.
  Reference actor
MedicationAdministration_Performer(
      {this.id,
this.extension,
this.modifierExtension,
this.function,
this.actor});

  factory MedicationAdministration_Performer.fromJson(Map<String, dynamic> json) => _$MedicationAdministration_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationAdministration_PerformerToJson(this);
}