import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/resource.dart';

part 'clinicalImpression.g.dart';

@JsonSerializable(explicitToJson: true)
class ClinicalImpression {
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

  // R!  in-progress | completed | entered-in-error
  String status;

  // Reason for current status
  CodeableConcept statusReason;

  // R!  in-progress | completed | entered-in-error
  CodeableConcept code;

  // Why/how the assessment was performed
  String description;

  // R!  Patient or group assessed
  Reference subject;

  // Encounter created as part of
  Reference encounter;

  // effective[x]: Time of assessment. One of these 2:
  DateTime effectiveDateTime;
  Period effectivePeriod;

  // When the assessment was documented
  DateTime date;

  // The clinician performing the assessment
  Reference assessor;

  // Reference to last assessment
  Reference previous;

  // Relevant impressions of patient state
  List<Reference> problem;

  // One or more sets of investigations (signs, symptoms, etc.)
  List<Investigation> investigation;

  // Clinical Protocol followed
  List<String> protocol;

  // Summary of the assessment
  String summary;

  // Possible or likely findings and diagnoses
  List<Finding> finding;

  // Estimate of likely outcome
  List<CodeableConcept> prognosisCodeableConcept;

  // RiskAssessment expressing likely outcome
  List<Reference> prognosisReference;

  // Information supporting the clinical impression
  List<Reference> supportingInfo;

  // Comments made about the ClinicalImpression
  List<Annotation> note;

  ClinicalImpression(
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
        this.code,
        this.description,
        this.subject,
        this.encounter,
        this.effectiveDateTime,
        this.effectivePeriod,
        this.date,
        this.assessor,
        this.previous,
        this.problem,
        this.investigation,
        this.protocol,
        this.summary,
        this.finding,
        this.prognosisCodeableConcept,
        this.prognosisReference,
        this.supportingInfo,
        this.note});

  factory ClinicalImpression.fromJson(Map<String, dynamic> json) => _$ClinicalImpressionFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicalImpressionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Investigation {

  // R!  A name/code for the set
  CodeableConcept code;

  // Record of a specific investigation
  // Reference(Observation|QuestionnaireResponse|FamilyMemberHistory|
  //    DiagnosticReport|RiskAssessment|ImagingStudy|Media)
  List<Reference> item;

  Investigation({this.code, this.item});

  factory Investigation.fromJson(Map<String, dynamic> json) => _$InvestigationFromJson(json);
  Map<String, dynamic> toJson() => _$InvestigationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Finding {

  // What was found
  CodeableConcept itemCodeableConcept;

  // What was found
  // Reference(Condition|Observation|Media)
  Reference itemReference;

  // Which investigations support finding
  String basis;

  Finding({this.itemCodeableConcept, this.itemReference, this.basis});

  factory Finding.fromJson(Map<String, dynamic> json) => _$FindingFromJson(json);
  Map<String, dynamic> toJson() => _$FindingToJson(this);
}