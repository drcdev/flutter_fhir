import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/resource.dart';

part 'condition.g.dart';

@JsonSerializable(explicitToJson: true)
class Condition {
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

  // External Ids for this condition
  List<Identifier> identifier;

  // C? active | recurrence | relapse | inactive | remission | resolved
  CodeableConcept clinicalStatus;

  // C? unconfirmed | provisional | differential | confirmed | refuted | entered-in-error
  CodeableConcept verificationStatus;

  // problem-list-item | encounter-diagnosis
  List<CodeableConcept> category;

  // Subjective severity of condition
  CodeableConcept severity;

  // Identification of the condition, problem or diagnosis
  CodeableConcept code;

  // Anatomical location, if relevant
  List<CodeableConcept> bodySite;

  // R!  Who has the condition?
  // Reference(Patient|Group)
  Reference subject;

  // Encounter created as part of
  // Reference(Encounter)
  Reference encounter;

  // onset[x]: Estimated or actual date,  date-time, or age. One of these 5:
  DateTime onsetDateTime;
  int onsetAge;
  Period onsetPeriod;
  Range onsetRange;
  String onsetString;

  // abatement[x]: When in resolution/remission. One of these 5:
  DateTime abatementDateTime;
  int abatementAge;
  Period abatementPeriod;
  Range abatementRange;
  String abatementString;

  // Date record was first recorded
  DateTime recordedDate;

  // Who recorded the condition
  // Reference(Practitioner|PractitionerRole|Patient|RelatedPerson)
  Reference recorder;

  // Person who asserts this condition
  // Reference(Practitioner|PractitionerRole|Patient|RelatedPerson)
  Reference asserter;

  // Stage/grade, usually assessed formally
  List<Stage> stage;

  // Supporting evidence
  List<Evidence> evidence;

  // Additional information about the Condition
  List<Annotation> note;

  Condition(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.text,
        this.contained,
        this.identifier,
        this.clinicalStatus,
        this.verificationStatus,
        this.category,
        this.severity,
        this.code,
        this.bodySite,
        this.subject,
        this.encounter,
        this.onsetDateTime,
        this.onsetAge,
        this.onsetPeriod,
        this.onsetRange,
        this.onsetString,
        this.abatementDateTime,
        this.abatementAge,
        this.abatementPeriod,
        this.abatementRange,
        this.abatementString,
        this.recordedDate,
        this.recorder,
        this.asserter,
        this.stage,
        this.evidence,
        this.note});

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Stage {

  // C? Simple summary (disease specific)
  CodeableConcept summary;

  // C? Formal record of assessment
  // Reference(ClinicalImpression|DiagnosticReport|Observation)
  List<Reference> assessment;

  // Kind of staging
  CodeableConcept type;

  Stage({this.summary, this.assessment, this.type});

  factory Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);
  Map<String, dynamic> toJson() => _$StageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Evidence {

  // C? Manifestation/symptom
  List<CodeableConcept> code;

  // C? Supporting information found elsewhere
  List<Reference> detail;

  Evidence({this.code, this.detail});

  factory Evidence.fromJson(Map<String, dynamic> json) => _$EvidenceFromJson(json);
  Map<String, dynamic> toJson() => _$EvidenceToJson(this);
}