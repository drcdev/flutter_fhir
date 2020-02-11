import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 241)
class Encounter {

  //  This is a Encounter resource
  @HiveField(0)
  final String resourceType= 'Encounter';

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

  //  Identifier(s) by which this encounter is known.
  @HiveField(11)
  List<Identifier> identifier;

  //  planned | arrived | triaged | in-progress | onleave | finished |
  // cancelled +.
  @HiveField(12)
  String status; // <code> enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  The status history permits the encounter resource to contain the
  // status history without needing to read through the historical versions
  // of the resource, or even have the server store them.
  @HiveField(14)
  List<Encounter_StatusHistory> statusHistory;

  //  Concepts representing classification of patient encounter such as
  // ambulatory (outpatient), inpatient, emergency, home health or others
  // due to local variations.
  @HiveField(15)
  Coding classs;

  //  The class history permits the tracking of the encounters transitions
  // without needing to go  through the resource history.  This would be
  // used for a case where an admission starts of as an emergency encounter,
  // then transitions into an inpatient scenario. Doing this and not
  // restarting a new encounter ensures that any lab/diagnostic results can
  // more easily follow the patient and not require re-processing and not
  // get lost or cancelled during a kind of discharge from emergency to
  // inpatient.
  @HiveField(16)
  List<Encounter_ClassHistory> classHistory;

  //  Specific type of encounter (e.g. e-mail consultation, surgical
  // day-care, skilled nursing, rehabilitation).
  @HiveField(17)
  List<CodeableConcept> type;

  //  Broad categorization of the service that is to be provided (e.g.
  // cardiology).
  @HiveField(18)
  CodeableConcept serviceType;

  //  Indicates the urgency of the encounter.
  @HiveField(19)
  CodeableConcept priority;

  //  The patient or group present at the encounter.
  @HiveField(20)
  Reference subject;

  //  Where a specific encounter should be classified as a part of a
  // specific episode(s) of care this field should be used. This association
  // can facilitate grouping of related encounters together for a specific
  // purpose, such as government reporting, issue tracking, association via
  // a common problem.  The association is recorded on the encounter as
  // these are typically created after the episode of care and grouped on
  // entry rather than editing the episode of care to append another
  // encounter to it (the episode of care could span years).
  @HiveField(21)
  List<Reference> episodeOfCare;

  //  The request this encounter satisfies (e.g. incoming referral or
  // procedure request).
  @HiveField(22)
  List<Reference> basedOn;

  //  The list of people responsible for providing the service.
  @HiveField(23)
  List<Encounter_Participant> participant;

  //  The appointment that scheduled this encounter.
  @HiveField(24)
  List<Reference> appointment;

  //  The start and end time of the encounter.
  @HiveField(25)
  Period period;

  //  Quantity of time the encounter lasted. This excludes the time during
  // leaves of absence.
  @HiveField(26)
  Duration length;

  //  Reason the encounter takes place, expressed as a code. For admissions,
  // this can be used for a coded admission diagnosis.
  @HiveField(27)
  List<CodeableConcept> reasonCode;

  //  Reason the encounter takes place, expressed as a code. For admissions,
  // this can be used for a coded admission diagnosis.
  @HiveField(28)
  List<Reference> reasonReference;

  //  The list of diagnosis relevant to this encounter.
  @HiveField(29)
  List<Encounter_Diagnosis> diagnosis;

  //  The set of accounts that may be used for billing for this Encounter.
  @HiveField(30)
  List<Reference> account;

  //  Details about the admission to a healthcare service.
  @HiveField(31)
  Encounter_Hospitalization hospitalization;

  //  List of locations where  the patient has been during this encounter.
  @HiveField(32)
  List<Encounter_Location> location;

  //  The organization that is primarily responsible for this Encounter's
  // services. This MAY be the same as the organization on the Patient
  // record, however it could be different, such as if the actor performing
  // the services was from an external organization (which may be billed
  // seperately) for an external consultation.  Refer to the example bundle
  // showing an abbreviated set of Encounters for a colonoscopy.
  @HiveField(33)
  Reference serviceProvider;

  //  Another Encounter of which this encounter is a part of
  // (administratively or in time).
  @HiveField(34)
  Reference partOf;

Encounter(
  this.classs,
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
    this.status,
    this.elementStatus,
    this.statusHistory,
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
@HiveType(typeId: 242)
class Encounter_StatusHistory {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  planned | arrived | triaged | in-progress | onleave | finished |
  // cancelled +.
  @HiveField(3)
  String status; // <code> enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown;

  //  Extensions for status
  @HiveField(4)
  Element elementStatus;

  //  The time that the episode was in the specified status.
  @HiveField(5)
  Period period;

Encounter_StatusHistory(
  this.period,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.status,
    this.elementStatus
    });

  factory Encounter_StatusHistory.fromJson(Map<String, dynamic> json) => _$Encounter_StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_StatusHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 243)
class Encounter_ClassHistory {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  inpatient | outpatient | ambulatory | emergency +.
  @HiveField(3)
  Coding classs;

  //  The time that the episode was in the specified class.
  @HiveField(4)
  Period period;

Encounter_ClassHistory(
  this.classs,
    this.period,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory Encounter_ClassHistory.fromJson(Map<String, dynamic> json) => _$Encounter_ClassHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_ClassHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 244)
class Encounter_Participant {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Role of participant in encounter.
  @HiveField(3)
  List<CodeableConcept> type;

  //  The period of time that the specified participant participated in the
  // encounter. These can overlap or be sub-sets of the overall encounter's
  // period.
  @HiveField(4)
  Period period;

  //  Persons involved in the encounter other than the patient.
  @HiveField(5)
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
@HiveType(typeId: 245)
class Encounter_Diagnosis {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Reason the encounter takes place, as specified using information from
  // another resource. For admissions, this is the admission diagnosis. The
  // indication will typically be a Condition (with other resources
  // referenced in the evidence.detail), or a Procedure.
  @HiveField(3)
  Reference condition;

  //  Role that this diagnosis has within the encounter (e.g. admission,
  // billing, discharge …).
  @HiveField(4)
  CodeableConcept use;

  //  Ranking of the diagnosis (for each role type).
  @HiveField(5)
  int rank;

  //  Extensions for rank
  @HiveField(6)
  Element elementRank;

Encounter_Diagnosis(
  this.condition,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.use,
    this.rank,
    this.elementRank
    });

  factory Encounter_Diagnosis.fromJson(Map<String, dynamic> json) => _$Encounter_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_DiagnosisToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 246)
class Encounter_Hospitalization {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Pre-admission identifier.
  @HiveField(3)
  Identifier preAdmissionIdentifier;

  //  The location/organization from which the patient came before
  // admission.
  @HiveField(4)
  Reference origin;

  //  From where patient was admitted (physician referral, transfer).
  @HiveField(5)
  CodeableConcept admitSource;

  //  Whether this hospitalization is a readmission and why if known.
  @HiveField(6)
  CodeableConcept reAdmission;

  //  Diet preferences reported by the patient.
  @HiveField(7)
  List<CodeableConcept> dietPreference;

  //  Special courtesies (VIP, board member).
  @HiveField(8)
  List<CodeableConcept> specialCourtesy;

  //  Any special requests that have been made for this hospitalization
  // encounter, such as the provision of specific equipment or other things.
  @HiveField(9)
  List<CodeableConcept> specialArrangement;

  //  Location/organization to which the patient is discharged.
  @HiveField(10)
  Reference destination;

  //  Category or kind of location after discharge.
  @HiveField(11)
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
@HiveType(typeId: 247)
class Encounter_Location {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The location where the encounter takes place.
  @HiveField(3)
  Reference location;

  //  The status of the participants' presence at the specified location
  // during the period specified. If the participant is no longer at the
  // location, then the period will have an end date/time.
  @HiveField(4)
  String status; // <code> enum: planned/active/reserved/completed;

  //  Extensions for status
  @HiveField(5)
  Element elementStatus;

  //  This will be used to specify the required levels (bed/ward/room/etc.)
  // desired to be recorded to simplify either messaging or query.
  @HiveField(6)
  CodeableConcept physicalType;

  //  Time period during which the patient was present at the location.
  @HiveField(7)
  Period period;

Encounter_Location(
  this.location,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.status,
    this.elementStatus,
    this.physicalType,
    this.period
    });

  factory Encounter_Location.fromJson(Map<String, dynamic> json) => _$Encounter_LocationFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_LocationToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EncounterAdapter extends TypeAdapter<Encounter> {
  @override
  final typeId = 241;

  @override
  Encounter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Encounter(
      fields[15] as Coding,
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
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      statusHistory: (fields[14] as List)?.cast<Encounter_StatusHistory>(),
      classHistory: (fields[16] as List)?.cast<Encounter_ClassHistory>(),
      type: (fields[17] as List)?.cast<CodeableConcept>(),
      serviceType: fields[18] as CodeableConcept,
      priority: fields[19] as CodeableConcept,
      subject: fields[20] as Reference,
      episodeOfCare: (fields[21] as List)?.cast<Reference>(),
      basedOn: (fields[22] as List)?.cast<Reference>(),
      participant: (fields[23] as List)?.cast<Encounter_Participant>(),
      appointment: (fields[24] as List)?.cast<Reference>(),
      period: fields[25] as Period,
      length: fields[26] as Duration,
      reasonCode: (fields[27] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[28] as List)?.cast<Reference>(),
      diagnosis: (fields[29] as List)?.cast<Encounter_Diagnosis>(),
      account: (fields[30] as List)?.cast<Reference>(),
      hospitalization: fields[31] as Encounter_Hospitalization,
      location: (fields[32] as List)?.cast<Encounter_Location>(),
      serviceProvider: fields[33] as Reference,
      partOf: fields[34] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Encounter obj) {
    writer
      ..writeByte(35)
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
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.statusHistory)
      ..writeByte(15)
      ..write(obj.classs)
      ..writeByte(16)
      ..write(obj.classHistory)
      ..writeByte(17)
      ..write(obj.type)
      ..writeByte(18)
      ..write(obj.serviceType)
      ..writeByte(19)
      ..write(obj.priority)
      ..writeByte(20)
      ..write(obj.subject)
      ..writeByte(21)
      ..write(obj.episodeOfCare)
      ..writeByte(22)
      ..write(obj.basedOn)
      ..writeByte(23)
      ..write(obj.participant)
      ..writeByte(24)
      ..write(obj.appointment)
      ..writeByte(25)
      ..write(obj.period)
      ..writeByte(26)
      ..write(obj.length)
      ..writeByte(27)
      ..write(obj.reasonCode)
      ..writeByte(28)
      ..write(obj.reasonReference)
      ..writeByte(29)
      ..write(obj.diagnosis)
      ..writeByte(30)
      ..write(obj.account)
      ..writeByte(31)
      ..write(obj.hospitalization)
      ..writeByte(32)
      ..write(obj.location)
      ..writeByte(33)
      ..write(obj.serviceProvider)
      ..writeByte(34)
      ..write(obj.partOf);
  }
}

class Encounter_StatusHistoryAdapter
    extends TypeAdapter<Encounter_StatusHistory> {
  @override
  final typeId = 242;

  @override
  Encounter_StatusHistory read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Encounter_StatusHistory(
      fields[5] as Period,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      status: fields[3] as String,
      elementStatus: fields[4] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Encounter_StatusHistory obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.elementStatus)
      ..writeByte(5)
      ..write(obj.period);
  }
}

class Encounter_ClassHistoryAdapter
    extends TypeAdapter<Encounter_ClassHistory> {
  @override
  final typeId = 243;

  @override
  Encounter_ClassHistory read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Encounter_ClassHistory(
      fields[3] as Coding,
      fields[4] as Period,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
    );
  }

  @override
  void write(BinaryWriter writer, Encounter_ClassHistory obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.classs)
      ..writeByte(4)
      ..write(obj.period);
  }
}

class Encounter_ParticipantAdapter extends TypeAdapter<Encounter_Participant> {
  @override
  final typeId = 244;

  @override
  Encounter_Participant read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Encounter_Participant(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: (fields[3] as List)?.cast<CodeableConcept>(),
      period: fields[4] as Period,
      individual: fields[5] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Encounter_Participant obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.period)
      ..writeByte(5)
      ..write(obj.individual);
  }
}

class Encounter_DiagnosisAdapter extends TypeAdapter<Encounter_Diagnosis> {
  @override
  final typeId = 245;

  @override
  Encounter_Diagnosis read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Encounter_Diagnosis(
      fields[3] as Reference,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      use: fields[4] as CodeableConcept,
      rank: fields[5] as int,
      elementRank: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Encounter_Diagnosis obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.condition)
      ..writeByte(4)
      ..write(obj.use)
      ..writeByte(5)
      ..write(obj.rank)
      ..writeByte(6)
      ..write(obj.elementRank);
  }
}

class Encounter_HospitalizationAdapter
    extends TypeAdapter<Encounter_Hospitalization> {
  @override
  final typeId = 246;

  @override
  Encounter_Hospitalization read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Encounter_Hospitalization(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      preAdmissionIdentifier: fields[3] as Identifier,
      origin: fields[4] as Reference,
      admitSource: fields[5] as CodeableConcept,
      reAdmission: fields[6] as CodeableConcept,
      dietPreference: (fields[7] as List)?.cast<CodeableConcept>(),
      specialCourtesy: (fields[8] as List)?.cast<CodeableConcept>(),
      specialArrangement: (fields[9] as List)?.cast<CodeableConcept>(),
      destination: fields[10] as Reference,
      dischargeDisposition: fields[11] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, Encounter_Hospitalization obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.preAdmissionIdentifier)
      ..writeByte(4)
      ..write(obj.origin)
      ..writeByte(5)
      ..write(obj.admitSource)
      ..writeByte(6)
      ..write(obj.reAdmission)
      ..writeByte(7)
      ..write(obj.dietPreference)
      ..writeByte(8)
      ..write(obj.specialCourtesy)
      ..writeByte(9)
      ..write(obj.specialArrangement)
      ..writeByte(10)
      ..write(obj.destination)
      ..writeByte(11)
      ..write(obj.dischargeDisposition);
  }
}

class Encounter_LocationAdapter extends TypeAdapter<Encounter_Location> {
  @override
  final typeId = 247;

  @override
  Encounter_Location read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Encounter_Location(
      fields[3] as Reference,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      status: fields[4] as String,
      elementStatus: fields[5] as Element,
      physicalType: fields[6] as CodeableConcept,
      period: fields[7] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, Encounter_Location obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.location)
      ..writeByte(4)
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.elementStatus)
      ..writeByte(6)
      ..write(obj.physicalType)
      ..writeByte(7)
      ..write(obj.period);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Encounter _$EncounterFromJson(Map<String, dynamic> json) {
  return Encounter(
    json['classs'] == null
        ? null
        : Coding.fromJson(json['classs'] as Map<String, dynamic>),
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusHistory: (json['statusHistory'] as List)
        ?.map((e) => e == null
            ? null
            : Encounter_StatusHistory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    classHistory: (json['classHistory'] as List)
        ?.map((e) => e == null
            ? null
            : Encounter_ClassHistory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serviceType: json['serviceType'] == null
        ? null
        : CodeableConcept.fromJson(json['serviceType'] as Map<String, dynamic>),
    priority: json['priority'] == null
        ? null
        : CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    episodeOfCare: (json['episodeOfCare'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    participant: (json['participant'] as List)
        ?.map((e) => e == null
            ? null
            : Encounter_Participant.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    appointment: (json['appointment'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    length: json['length'] == null
        ? null
        : Duration.fromJson(json['length'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    diagnosis: (json['diagnosis'] as List)
        ?.map((e) => e == null
            ? null
            : Encounter_Diagnosis.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    account: (json['account'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    hospitalization: json['hospitalization'] == null
        ? null
        : Encounter_Hospitalization.fromJson(
            json['hospitalization'] as Map<String, dynamic>),
    location: (json['location'] as List)
        ?.map((e) => e == null
            ? null
            : Encounter_Location.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serviceProvider: json['serviceProvider'] == null
        ? null
        : Reference.fromJson(json['serviceProvider'] as Map<String, dynamic>),
    partOf: json['partOf'] == null
        ? null
        : Reference.fromJson(json['partOf'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EncounterToJson(Encounter instance) => <String, dynamic>{
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
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusHistory':
          instance.statusHistory?.map((e) => e?.toJson())?.toList(),
      'classs': instance.classs?.toJson(),
      'classHistory': instance.classHistory?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'serviceType': instance.serviceType?.toJson(),
      'priority': instance.priority?.toJson(),
      'subject': instance.subject?.toJson(),
      'episodeOfCare':
          instance.episodeOfCare?.map((e) => e?.toJson())?.toList(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'participant': instance.participant?.map((e) => e?.toJson())?.toList(),
      'appointment': instance.appointment?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'length': instance.length?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'diagnosis': instance.diagnosis?.map((e) => e?.toJson())?.toList(),
      'account': instance.account?.map((e) => e?.toJson())?.toList(),
      'hospitalization': instance.hospitalization?.toJson(),
      'location': instance.location?.map((e) => e?.toJson())?.toList(),
      'serviceProvider': instance.serviceProvider?.toJson(),
      'partOf': instance.partOf?.toJson(),
    };

Encounter_StatusHistory _$Encounter_StatusHistoryFromJson(
    Map<String, dynamic> json) {
  return Encounter_StatusHistory(
    json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Encounter_StatusHistoryToJson(
        Encounter_StatusHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'period': instance.period?.toJson(),
    };

Encounter_ClassHistory _$Encounter_ClassHistoryFromJson(
    Map<String, dynamic> json) {
  return Encounter_ClassHistory(
    json['classs'] == null
        ? null
        : Coding.fromJson(json['classs'] as Map<String, dynamic>),
    json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Encounter_ClassHistoryToJson(
        Encounter_ClassHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'classs': instance.classs?.toJson(),
      'period': instance.period?.toJson(),
    };

Encounter_Participant _$Encounter_ParticipantFromJson(
    Map<String, dynamic> json) {
  return Encounter_Participant(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    individual: json['individual'] == null
        ? null
        : Reference.fromJson(json['individual'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Encounter_ParticipantToJson(
        Encounter_Participant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'individual': instance.individual?.toJson(),
    };

Encounter_Diagnosis _$Encounter_DiagnosisFromJson(Map<String, dynamic> json) {
  return Encounter_Diagnosis(
    json['condition'] == null
        ? null
        : Reference.fromJson(json['condition'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    use: json['use'] == null
        ? null
        : CodeableConcept.fromJson(json['use'] as Map<String, dynamic>),
    rank: json['rank'] as int,
    elementRank: json['elementRank'] == null
        ? null
        : Element.fromJson(json['elementRank'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Encounter_DiagnosisToJson(
        Encounter_Diagnosis instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition?.toJson(),
      'use': instance.use?.toJson(),
      'rank': instance.rank,
      'elementRank': instance.elementRank?.toJson(),
    };

Encounter_Hospitalization _$Encounter_HospitalizationFromJson(
    Map<String, dynamic> json) {
  return Encounter_Hospitalization(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    preAdmissionIdentifier: json['preAdmissionIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['preAdmissionIdentifier'] as Map<String, dynamic>),
    origin: json['origin'] == null
        ? null
        : Reference.fromJson(json['origin'] as Map<String, dynamic>),
    admitSource: json['admitSource'] == null
        ? null
        : CodeableConcept.fromJson(json['admitSource'] as Map<String, dynamic>),
    reAdmission: json['reAdmission'] == null
        ? null
        : CodeableConcept.fromJson(json['reAdmission'] as Map<String, dynamic>),
    dietPreference: (json['dietPreference'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specialCourtesy: (json['specialCourtesy'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specialArrangement: (json['specialArrangement'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    destination: json['destination'] == null
        ? null
        : Reference.fromJson(json['destination'] as Map<String, dynamic>),
    dischargeDisposition: json['dischargeDisposition'] == null
        ? null
        : CodeableConcept.fromJson(
            json['dischargeDisposition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Encounter_HospitalizationToJson(
        Encounter_Hospitalization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'preAdmissionIdentifier': instance.preAdmissionIdentifier?.toJson(),
      'origin': instance.origin?.toJson(),
      'admitSource': instance.admitSource?.toJson(),
      'reAdmission': instance.reAdmission?.toJson(),
      'dietPreference':
          instance.dietPreference?.map((e) => e?.toJson())?.toList(),
      'specialCourtesy':
          instance.specialCourtesy?.map((e) => e?.toJson())?.toList(),
      'specialArrangement':
          instance.specialArrangement?.map((e) => e?.toJson())?.toList(),
      'destination': instance.destination?.toJson(),
      'dischargeDisposition': instance.dischargeDisposition?.toJson(),
    };

Encounter_Location _$Encounter_LocationFromJson(Map<String, dynamic> json) {
  return Encounter_Location(
    json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    physicalType: json['physicalType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['physicalType'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Encounter_LocationToJson(Encounter_Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'physicalType': instance.physicalType?.toJson(),
      'period': instance.period?.toJson(),
    };
