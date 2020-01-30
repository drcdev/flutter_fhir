import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/dosage.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'medicationDispense.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationDispense {

//  This is a MedicationDispense resource
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

//  Extensions for implicitRules
Element element_implicitRules;

//  The base language in which the resource is written.
String language;

//  Extensions for language
Element element_language;

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

//  Identifiers associated with this Medication Dispense that are defined
// by business processes and/or used to refer to it when a direct URL
// reference to the resource itself is not appropriate. They are business
// identifiers assigned to this resource by the performer or other systems
// and remain constant as the resource is updated and propagates from
// server to server.
List<Identifier> identifier;

//  The procedure that trigger the dispense.
List<Reference> partOf;

//  A code specifying the state of the set of dispense events.
String status;

//  Extensions for status
Element element_status;

//  Indicates the reason why a dispense was not performed.
CodeableConcept statusReasonCodeableConcept;

//  Indicates the reason why a dispense was not performed.
Reference statusReasonReference;

//  Indicates the type of medication dispense (for example, where the
// medication is expected to be consumed or administered (i.e. inpatient
// or outpatient)).
CodeableConcept category;

//  Identifies the medication being administered. This is either a link to
// a resource representing the details of the medication or a simple
// attribute carrying a code that identifies the medication from a known
// list of medications.
CodeableConcept medicationCodeableConcept;

//  Identifies the medication being administered. This is either a link to
// a resource representing the details of the medication or a simple
// attribute carrying a code that identifies the medication from a known
// list of medications.
Reference medicationReference;

//  A link to a resource representing the person or the group to whom the
// medication will be given.
Reference subject;

//  The encounter or episode of care that establishes the context for this
// event.
Reference context;

//  Additional information that supports the medication being dispensed.
List<Reference> supportingInformation;

//  Indicates who or what performed the event.
List<MedicationDispense_Performer> performer;

//  The principal physical location where the dispense was performed.
Reference location;

//  Indicates the medication order that is being dispensed against.
List<Reference> authorizingPrescription;

//  Indicates the type of dispensing event that is performed. For example,
// Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples,
// etc.
CodeableConcept type;

//  The amount of medication that has been dispensed. Includes unit of
// measure.
Quantity quantity;

//  The amount of medication expressed as a timing amount.
Quantity daysSupply;

//  The time when the dispensed product was packaged and reviewed.
DateTime whenPrepared;

//  Extensions for whenPrepared
Element element_whenPrepared;

//  The time the dispensed product was provided to the patient or their
// representative.
DateTime whenHandedOver;

//  Extensions for whenHandedOver
Element element_whenHandedOver;

//  Identification of the facility/location where the medication was
// shipped to, as part of the dispense event.
Reference destination;

//  Identifies the person who picked up the medication.  This will usually
// be a patient or their caregiver, but some cases exist where it can be a
// healthcare professional.
List<Reference> receiver;

//  Extra information about the dispense that could not be conveyed in the
// other attributes.
List<Annotation> note;

//  Indicates how the medication is to be used by the patient.
List<Dosage> dosageInstruction;

//  Indicates whether or not substitution was made as part of the
// dispense.  In some cases, substitution will be expected but does not
// happen, in other cases substitution is not expected but does happen. 
// This block explains what substitution did or did not happen and why. 
// If nothing is specified, substitution was not done.
MedicationDispense_Substitution substitution;

//  Indicates an actual or potential clinical issue with or between one or
// more active or proposed clinical actions for a patient; e.g. drug-drug
// interaction, duplicate therapy, dosage alert etc.
List<Reference> detectedIssue;

//  A summary of the events of interest that have occurred, such as when
// the dispense was verified.
List<Reference> eventHistory;

MedicationDispense(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.partOf,
    this.status,
    this.element_status,
    this.statusReasonCodeableConcept,
    this.statusReasonReference,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    this.subject,
    this.context,
    this.supportingInformation,
    this.performer,
    this.location,
    this.authorizingPrescription,
    this.type,
    this.quantity,
    this.daysSupply,
    this.whenPrepared,
    this.element_whenPrepared,
    this.whenHandedOver,
    this.element_whenHandedOver,
    this.destination,
    this.receiver,
    this.note,
    this.dosageInstruction,
    this.substitution,
    this.detectedIssue,
    this.eventHistory
    });

  factory MedicationDispense.fromJson(Map<String, dynamic> json) => _$MedicationDispenseFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationDispenseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationDispense_Performer {

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

//  Distinguishes the type of performer in the dispense.  For example,
// date enterer, packager, final checker.
CodeableConcept function;

//  The device, practitioner, etc. who performed the action.  It should be
// assumed that the actor is the dispenser of the medication.
Reference actor;

MedicationDispense_Performer(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.function,
    this.actor
    });

  factory MedicationDispense_Performer.fromJson(Map<String, dynamic> json) => _$MedicationDispense_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationDispense_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationDispense_Substitution {

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

//  True if the dispenser dispensed a different drug or product from what
// was prescribed.
bool wasSubstituted;

//  Extensions for wasSubstituted
Element element_wasSubstituted;

//  A code signifying whether a different drug was dispensed from what was
// prescribed.
CodeableConcept type;

//  Indicates the reason for the substitution (or lack of substitution)
// from what was prescribed.
List<CodeableConcept> reason;

//  The person or organization that has primary responsibility for the
// substitution.
List<Reference> responsibleParty;

MedicationDispense_Substitution(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.wasSubstituted,
    this.element_wasSubstituted,
    this.type,
    this.reason,
    this.responsibleParty
    });

  factory MedicationDispense_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationDispense_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationDispense_SubstitutionToJson(this);
}

