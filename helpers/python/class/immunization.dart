
part 'immunization.g.dart';

@JsonSerializable(explicitToJson: true)
class Immunization {
  
  // This is a Immunization 
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

  // A unique identifier assigned to this immunization record.
  List<Identifier identifier;

  // Indicates the current status of the immunization event.
  String status;

  // Extensions for status
  Element _status;

  // Indicates the reason the immunization event was not performed.
  CodeableConcept statusReason;

  // Vaccine that was administered or was to be administered.
  CodeableConcept vaccineCode;

  // The patient who either received or did not receive the immunization.
  Reference patient;

  // The visit or admission or other contact between patient and health care
  //  provider the immunization was performed as part of.
  Reference encounter;

  // Date vaccine administered or was to be administered. string
  //  occurrenceDateTime;

  // Extensions for occurrenceDateTime
  Element _occurrenceDateTime;

  // Date vaccine administered or was to be administered. string
  //  occurrenceString;

  // Extensions for occurrenceString
  Element _occurrenceString;

  // The date the occurrence of the immunization was first captured in the
  //  record - potentially significantly after the occurrence of the event.
  StringTime recorded;

  // Extensions for recorded
  Element _recorded;

  // An indication that the content of the record is based on information from
  //  the person who administered the vaccine. This reflects the context under which
  //  the data was originally recorded.
  bool primarySource;

  // Extensions for primarySource
  Element _primarySource;

  // The source of the data when the report of the immunization event is not
  //  based on information from the person who administered the vaccine.
  CodeableConcept reportOrigin;

  // The service delivery location where the vaccine administration occurred.
  Reference location;

  // Name of vaccine manufacturer.
  Reference manufacturer;

  // Lot number of the  vaccine product.
  String lotNumber;

  // Extensions for lotNumber
  Element _lotNumber;

  // Date vaccine batch expires.
  String expirationDate;

  // Extensions for expirationDate
  Element _expirationDate;

  // Body site where vaccine was administered.
  CodeableConcept site;

  // The path by which the vaccine product is taken into the body.
  CodeableConcept route;

  // The quantity of vaccine product that was administered.
  Quantity doseQuantity;

  // Indicates who performed the immunization event.
  List<Immunization_Performer performer;

  // Extra information about the immunization that is not conveyed by the other
  //  attributes.
  List<Annotation note;

  // Reasons why the vaccine was administered.
  List<CodeableConcept reasonCode;

  // Condition, Observation or DiagnosticReport that supports why the
  //  immunization was administered.
  List<Reference reasonReference;

  // Indication if a dose is considered to be subpotent. By default, a dose
  //  should be considered to be potent.
  bool isSubpotent;

  // Extensions for isSubpotent
  Element _isSubpotent;

  // Reason why a dose is considered to be subpotent.
  List<CodeableConcept subpotentReason;

  // Educational material presented to the patient (or guardian) at the time of
  //  vaccine administration.
  List<Immunization_Education education;

  // Indicates a patient's eligibility for a funding program.
  List<CodeableConcept programEligibility;

  // Indicates the source of the vaccine actually administered. This may be
  //  different than the patient eligibility (e.g. the patient may be eligible for a
  //  publically purchased vaccine but due to inventory issues, vaccine purchased
  //  with private funds was actually administered).
  CodeableConcept fundingSource;

  // Categorical data indicating that an adverse event is associated in time to
  //  an immunization.
  List<Immunization_Reaction reaction;

  // The protocol (set of recommendations) being followed by the provider who
  //  administered the dose.
  List<Immunization_ProtocolApplied protocolApplied
Immunization(
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
this.status,
this._status,
this.statusReason,
this.vaccineCode,
this.patient,
this.encounter,
this.occurrenceDateTime,
this._occurrenceDateTime,
this.occurrenceString,
this._occurrenceString,
this.recorded,
this._recorded,
this.primarySource,
this._primarySource,
this.reportOrigin,
this.location,
this.manufacturer,
this.lotNumber,
this._lotNumber,
this.expirationDate,
this._expirationDate,
this.site,
this.route,
this.doseQuantity,
this.performer,
this.note,
this.reasonCode,
this.reasonReference,
this.isSubpotent,
this._isSubpotent,
this.subpotentReason,
this.education,
this.programEligibility,
this.fundingSource,
this.reaction,
this.protocolApplied});

  factory Immunization.fromJson(Map<String, dynamic> json) => _$ImmunizationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationToJson(this);
}
