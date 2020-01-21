import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/resource.dart';

part 'diagnosticReport.g.dart';

@JsonSerializable(explicitToJson: true)
class DiagnosticReport {
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

  // Business identifier for report
  List<Identifier> identifier;

  // What was requested
  // Reference(CarePlan|ImmunizationRecommendation|
  //   MedicationRequest|NutritionOrder|ServiceRequest)
  List<Reference> basedOn;

  // R!  registered | partial | preliminary | final +
  String status;

  // Service category
  List<CodeableConcept> category;

  // R!  registered | partial | preliminary | final +
  CodeableConcept code;

  // The subject of the report - usually, but not always, the patient
  Reference subject;

  // Health care event when test ordered
  Reference encounter;

  // effective[x]: Clinically relevant time/time-period for report. One of these 2:
  DateTime effectiveDateTime;
  Period effectivePeriod;

  // DateTime this version was made
  DateTime issued;

  // Responsible Diagnostic Service
  // Reference(Practitioner|PractitionerRole|Organization|CareTeam)
  List<Reference> performer;

  // Primary result interpreter
  // Reference(Practitioner|PractitionerRole|Organization|CareTeam)
  List<Reference> resultsInterpreter;

  // Specimens this report is based on
  List<Reference> specimen;

  // Observations
  // Reference(Observation)
  List <Reference> result;

  // Reference to full details of imaging associated with the diagnostic report
  List<Reference> imagingStudy;

  // Key images associated with this report
  List<Media> media;

  // Clinical conclusion (interpretation) of test results
  String conclusion;

  // Codes for the clinical conclusion of test results
  List<CodeableConcept> conclusionCode;

  // Entire report as issued
  List<Attachment> presentedForm;

  DiagnosticReport(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.text,
        this.contained,
        this.identifier,
        this.basedOn,
        this.status,
        this.category,
        this.code,
        this.subject,
        this.encounter,
        this.effectiveDateTime,
        this.effectivePeriod,
        this.issued,
        this.performer,
        this.resultsInterpreter,
        this.specimen,
        this.result,
        this.imagingStudy,
        this.media,
        this.conclusion,
        this.conclusionCode,
        this.presentedForm});

  factory DiagnosticReport.fromJson(Map<String, dynamic> json) => _$DiagnosticReportFromJson(json);
  Map<String, dynamic> toJson() => _$DiagnosticReportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Media {

  // Comment about the image (e.g. explanation)
  String comment;

  // R!  Reference to the image source
  Reference link;

  Media({this.comment, this.link});

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
  Map<String, dynamic> toJson() => _$MediaToJson(this);
}