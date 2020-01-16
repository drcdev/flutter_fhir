import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/encounter.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/location.dart';
import 'package:flutter_fhir/class/organization.dart';
import 'package:flutter_fhir/class/patient.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'immunization.g.dart';

@JsonSerializable(explicitToJson: true)
class Immunization {
  String resourceType;
  List<Identifier> identifier;
  String status;
  CodeableConcept statusReason;
  CodeableConcept vaccineCode;
  Reference patient;
  Reference encounter;
  DateTime occurrenceDateTime;
  String occurrenceString;
  DateTime recorded;
  bool primarySource;
  CodeableConcept reportOrigin;
  Reference location;
  Reference manufacturer;
  String lotNumber;
  DateTime expirationDate;
  CodeableConcept site;
  CodeableConcept route;
  Quantity doseQuantity;
  List<_Performer> performer;
  List<Annotation> note;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  bool isSubpotent;
  List<CodeableConcept> subpotentReason;
  List<Education> education;
  List<CodeableConcept> programEligibility;
  CodeableConcept fundingSource;
  List<Reaction> reaction;
  List<ProtocolApplied> protocolApplied;

  Immunization(
      {this.resourceType,
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
class Education {
  String documentType;
  String reference;
  DateTime publicationDate;
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
class _Performer {
  CodeableConcept function;
  Reference actor;

  _Performer({this.function, this.actor});

  factory _Performer.fromJson(Map<String, dynamic> json) => _$_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Reaction {
  DateTime date;
  Reference detail;
  bool reported;

  Reaction({this.date, this.detail, this.reported});

  factory Reaction.fromJson(Map<String, dynamic> json) => _$ReactionFromJson(json);
  Map<String, dynamic> toJson() => _$ReactionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProtocolApplied {
  String series;
  Reference authority;
  List<CodeableConcept> targetDisease;
  int doseNumberPositiveInt;
  String doseNumberString;
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