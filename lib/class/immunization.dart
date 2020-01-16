import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/education.dart';
import 'package:flutter_fhir/class/encounter.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/location.dart';
import 'package:flutter_fhir/class/organization.dart';
import 'package:flutter_fhir/class/patient.dart';
import 'package:flutter_fhir/class/performer.dart';
import 'package:flutter_fhir/class/protocolApplied.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/reaction.dart';
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
  Patient patient; //reference
  Encounter encounter; //reference
  DateTime occurrenceDateTime;
  String occurrenceString;
  DateTime recorded;
  bool primarySource;
  CodeableConcept reportOrigin;
  Location location; //reference
  Organization manufacturer; //reference
  String lotNumber;
  DateTime expirationDate;
  CodeableConcept site;
  CodeableConcept route;
  Quantity doseQuantity;
  List<Performer> performer;
  List<Annotation> note;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
    //(Condition|Observation|DiagnosticReport) // Why immunization occurred
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