import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/resource.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/reference.dart';

part 'immunization.g.dart';

@JsonSerializable(explicitToJson: true)
class Immunization {
  String resourceType;

  // Logical id of this artifact
  String id;

  // Metadata about the resource
  Meta meta;

  // A set of rules under which this content was created
  String implicitRules;

  // Language of the resource content
  String language;

  // Text summary of the resource, for human interpretation
  Narrative text;

  // Contained, inline Resources
  List<Resource> contained;

  // Business identifier
  List<Identifier> identifier;

  // R!  completed | entered-in-error | not-done
  String status;

  // Reason not done
  CodeableConcept statusReason;

  // R!  Vaccine product administered
  CodeableConcept vaccineCode;

  // R!  Who was immunized
  Reference patient;

  // Encounter immunization was part of
  Reference encounter;

  // occurrence[x]: Vaccine administration date. One of these 2:
  DateTime occurrenceDateTime;
  String occurrenceString;

  // When the immunization was first captured in the subject's record
  DateTime recorded;

  // Indicates context the data was recorded in
  bool primarySource;

  // Indicates the source of a secondarily reported record
  CodeableConcept reportOrigin;

  // Where immunization occurred
  Reference location;

  // Vaccine manufacturer
  Reference manufacturer;

  // Vaccine lot number
  String lotNumber;

  // Vaccine expiration date
  DateTime expirationDate;

  // Body site vaccine  was administered
  CodeableConcept site;

  // How vaccine entered body
  CodeableConcept route;

  // Amount of vaccine administered
  Quantity doseQuantity;

  // Who performed event
  List<Performer> performer;

  // Additional immunization notes
  List<Annotation> note;

  // Why immunization occurred
  List<CodeableConcept> reasonCode;

  // Why immunization occurred
  List<Reference> reasonReference;

  // Dose potency
  bool isSubpotent;

  // Reason for being subpotent
  List<CodeableConcept> subpotentReason;

  // Educational material presented to patient
  List<Education> education;

  // Patient eligibility for a vaccination program
  List<CodeableConcept> programEligibility;

  // Funding source for the vaccine
  CodeableConcept fundingSource;

  // Details of a reaction that follows immunization
  List<Reaction> reaction;

  // Protocol followed by the provider
  List<ProtocolApplied> protocolApplied;

  Immunization(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.text,
        this.contained,
        this.identifier,
        this.status,
        this.statusReason,
        this.vaccineCode,
        this.patient,
        this.encounter,
        this.occurrenceDateTime,
        this.occurrenceString,
        this.recorded,
        this.primarySource,
        this.reportOrigin,
        this.location,
        this.manufacturer,
        this.lotNumber,
        this.expirationDate,
        this.site,
        this.route,
        this.doseQuantity,
        this.performer,
        this.note,
        this.reasonCode,
        this.reasonReference,
        this.isSubpotent,
        this.subpotentReason,
        this.education,
        this.programEligibility,
        this.fundingSource,
        this.reaction,
        this.protocolApplied});

  factory Immunization.fromJson(Map<String, dynamic> json) => _$ImmunizationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Performer {

  // What type of performance was done
  CodeableConcept function;

  // R!  Individual or organization who was performing
  // Reference(Practitioner|PractitionerRole|Organization)
  Reference actor;

  Performer({this.function, this.actor});

  factory Performer.fromJson(Map<String, dynamic> json) => _$PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Education {

  // Educational material document identifier
  String documentType;

  // Educational material reference pointer
  String reference;

  // Educational material publication date
  DateTime publicationDate;

  // Educational material presentation date
  DateTime presentationDate;

  Education(
      {this.documentType,
        this.reference,
        this.publicationDate,
        this.presentationDate});

  factory Education.fromJson(Map<String, dynamic> json) => _$EducationFromJson(json);
  Map<String, dynamic> toJson() => _$EducationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Reaction {

  // When reaction started
  DateTime date;

  // Additional information on reaction
  Reference detail;

  // Indicates self-reported reaction
  bool reported;

  Reaction({this.date, this.detail, this.reported});

  factory Reaction.fromJson(Map<String, dynamic> json) => _$ReactionFromJson(json);
  Map<String, dynamic> toJson() => _$ReactionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProtocolApplied {

  // Name of vaccine series
  String series;

  // Who is responsible for publishing the recommendations
  // Reference(Organization)
  Reference authority;

  // Vaccine preventatable disease being targetted
  List<CodeableConcept> targetDisease;

  // doseNumber[x]: Dose number within series. One of these 2:
  int doseNumberPositiveInt;
  String doseNumberString;

  // seriesDoses[x]: Recommended number of doses for immunity. One of these 2:
  int seriesDosesPositiveInt;
  String seriesDosesString;

  ProtocolApplied(
      {this.series,
        this.authority,
        this.targetDisease,
        this.doseNumberPositiveInt,
        this.doseNumberString,
        this.seriesDosesPositiveInt,
        this.seriesDosesString});

  factory ProtocolApplied.fromJson(Map<String, dynamic> json) => _$ProtocolAppliedFromJson(json);
  Map<String, dynamic> toJson() => _$ProtocolAppliedToJson(this);
}