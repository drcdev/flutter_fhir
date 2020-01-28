import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/duration.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'encounter.g.dart';

@JsonSerializable(explicitToJson: true)
class Encounter {


// This is a Encounter resource
String resourceType;

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

// A human-readable narrative that contains a summary of the resource and can be
//  used to represent the content of the resource to a human. The narrative need
//  not encode all the structured data, but is required to contain sufficient
//  detail to make it "clinically safe" for a human to just read the narrative.
//  Resource definitions may define what content should be represented in the
//  narrative to ensure clinical safety.
Narrative text;

// These resources do not have an independent existence apart from the resource
//  that contains them - they cannot be identified independently, and nor can they
//  have their own independent transaction scope.
List<ResourceList> contained;

// May be used to represent additional information that is not part of the basic
//  definition of the resource. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the resource and that modifies the understanding of the element
//  that contains it and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer is allowed to define an extension, there is a set of requirements
//  that SHALL be met as part of the definition of the extension. Applications
//  processing a resource are required to check for modifier extensions.
// Modifier
//  extensions SHALL NOT change the meaning of any elements on Resource or
//  DomainResource (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Identifier(s) by which this encounter is known.
List<Identifier> identifier;

// planned | arrived | triaged | in-progress | onleave | finished | cancelled +.
String status; // <code> enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown;

// Extensions for status
Element _status;

// The status history permits the encounter resource to contain the status history
//  without needing to read through the historical versions of the resource, or
//  even have the server store them.
List<Encounter_StatusHistory> statusHistory;

// Concepts representing classification of patient encounter such as ambulatory
//  (outpatient), inpatient, emergency, home health or others due to local variations.
Coding class;

// The class history permits the tracking of the encounters transitions without
//  needing to go  through the resource history.  This would be used for a case
//  where an admission starts of as an emergency encounter, then transitions into
//  an inpatient scenario. Doing this and not restarting a new encounter ensures
//  that any lab/diagnostic results can more easily follow the patient and not
//  require re-processing and not get lost or cancelled during a kind of discharge
//  from emergency to inpatient.
List<Encounter_ClassHistory> classHistory;

// Specific type of encounter (e.g. e-mail consultation, surgical day-care, skilled
//  nursing, rehabilitation).
List<CodeableConcept> type;

// Broad categorization of the service that is to be provided (e.g. cardiology).
CodeableConcept serviceType;

// Indicates the urgency of the encounter.
CodeableConcept priority;

// The patient or group present at the encounter.
Reference subject;

// Where a specific encounter should be classified as a part of a specific
//  episode(s) of care this field should be used. This association can facilitate
//  grouping of related encounters together for a specific purpose, such as
//  government reporting, issue tracking, association via a common problem.  The
//  association is recorded on the encounter as these are typically created after
//  the episode of care and grouped on entry rather than editing the episode of
//  care to append another encounter to it (the episode of care could span years).
List<Reference> episodeOfCare;

// The request this encounter satisfies (e.g. incoming referral or procedure
//  request).
List<Reference> basedOn;

// The list of people responsible for providing the service.
List<Encounter_Participant> participant;

// The appointment that scheduled this encounter.
List<Reference> appointment;

// The start and end time of the encounter.
Period period;

// Quantity of time the encounter lasted. This excludes the time during leaves of
//  absence.
Duration length;

// Reason the encounter takes place, expressed as a code. For admissions, this can
//  be used for a coded admission diagnosis.
List<CodeableConcept> reasonCode;

// Reason the encounter takes place, expressed as a code. For admissions, this can
//  be used for a coded admission diagnosis.
List<Reference> reasonReference;

// The list of diagnosis relevant to this encounter.
List<Encounter_Diagnosis> diagnosis;

// The set of accounts that may be used for billing for this Encounter.
List<Reference> account;

// Details about the admission to a healthcare service.
Encounter_Hospitalization hospitalization;

// List of locations where  the patient has been during this encounter.
List<Encounter_Location> location;

// The organization that is primarily responsible for this Encounter's services.
//  This MAY be the same as the organization on the Patient record, however it
//  could be different, such as if the actor performing the services was from an
//  external organization (which may be billed seperately) for an external
//  consultation.  Refer to the example bundle showing an abbreviated set of
//  Encounters for a colonoscopy.
Reference serviceProvider;

// Another Encounter of which this encounter is a part of (administratively or in
//  time).
Reference partOf;

Encounter(
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
    this.statusHistory,
    this.class,
    this.classHistory,
    this.type,
    this.serviceType,
    this.priority,
    this.subject,
    this.episodeOfCare,
    this.basedOn,
    this.participant,
    this.appointment,
    this.period,
    this.length,
    this.reasonCode,
    this.reasonReference,
    this.diagnosis,
    this.account,
    this.hospitalization,
    this.location,
    this.serviceProvider,
    this.partOf
    });

  factory Encounter.fromJson(Map<String, dynamic> json) => _$EncounterFromJson(json);
  Map<String, dynamic> toJson() => _$EncounterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_StatusHistory {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// planned | arrived | triaged | in-progress | onleave | finished | cancelled +.
String status; // <code> enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown;

// Extensions for status
Element _status;

// The time that the episode was in the specified status.
Period period;

Encounter_StatusHistory(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.status,
    this._status,
    this.period
    });

  factory Encounter_StatusHistory.fromJson(Map<String, dynamic> json) => _$Encounter_StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_StatusHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_ClassHistory {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// inpatient | outpatient | ambulatory | emergency +.
Coding class;

// The time that the episode was in the specified class.
Period period;

Encounter_ClassHistory(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.class,
    this.period
    });

  factory Encounter_ClassHistory.fromJson(Map<String, dynamic> json) => _$Encounter_ClassHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_ClassHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_Participant {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Role of participant in encounter.
List<CodeableConcept> type;

// The period of time that the specified participant participated in the encounter.
//  These can overlap or be sub-sets of the overall encounter's period.
Period period;

// Persons involved in the encounter other than the patient.
Reference individual;

Encounter_Participant(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.period,
    this.individual
    });

  factory Encounter_Participant.fromJson(Map<String, dynamic> json) => _$Encounter_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_Diagnosis {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Reason the encounter takes place, as specified using information from another
//  resource. For admissions, this is the admission diagnosis. The indication will
//  typically be a Condition (with other resources referenced in the
//  evidence.detail), or a Procedure.
Reference condition;

// Role that this diagnosis has within the encounter (e.g. admission, billing,
//  discharge …).
CodeableConcept use;

// Ranking of the diagnosis (for each role type).
int rank;

// Extensions for rank
Element _rank;

Encounter_Diagnosis(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.condition,
    this.use,
    this.rank,
    this._rank
    });

  factory Encounter_Diagnosis.fromJson(Map<String, dynamic> json) => _$Encounter_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_DiagnosisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_Hospitalization {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Pre-admission identifier.
Identifier preAdmissionIdentifier;

// The location/organization from which the patient came before admission.
Reference origin;

// From where patient was admitted (physician referral, transfer).
CodeableConcept admitSource;

// Whether this hospitalization is a readmission and why if known.
CodeableConcept reAdmission;

// Diet preferences reported by the patient.
List<CodeableConcept> dietPreference;

// Special courtesies (VIP, board member).
List<CodeableConcept> specialCourtesy;

// Any special requests that have been made for this hospitalization encounter,
//  such as the provision of specific equipment or other things.
List<CodeableConcept> specialArrangement;

// Location/organization to which the patient is discharged.
Reference destination;

// Category or kind of location after discharge.
CodeableConcept dischargeDisposition;

Encounter_Hospitalization(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.preAdmissionIdentifier,
    this.origin,
    this.admitSource,
    this.reAdmission,
    this.dietPreference,
    this.specialCourtesy,
    this.specialArrangement,
    this.destination,
    this.dischargeDisposition
    });

  factory Encounter_Hospitalization.fromJson(Map<String, dynamic> json) => _$Encounter_HospitalizationFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_HospitalizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_Location {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// The location where the encounter takes place.
Reference location;

// The status of the participants' presence at the specified location during the
//  period specified. If the participant is no longer at the location, then the
//  period will have an end date/time.
String status; // <code> enum: planned/active/reserved/completed;

// Extensions for status
Element _status;

// This will be used to specify the required levels (bed/ward/room/etc.) desired to
//  be recorded to simplify either messaging or query.
CodeableConcept physicalType;

// Time period during which the patient was present at the location.
Period period;

Encounter_Location(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.location,
    this.status,
    this._status,
    this.physicalType,
    this.period
    });

  factory Encounter_Location.fromJson(Map<String, dynamic> json) => _$Encounter_LocationFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_LocationToJson(this);
}

