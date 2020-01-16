import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'clinicalImpression.g.dart';

@JsonSerializable(explicitToJson: true)
class ClinicalImpression {
  String resourceType;
  List<Identifier> identifier;
  String status;
  CodeableConcept statusReason;
  CodeableConcept code;
  String description;
  Reference subject;
  Reference encounter;
  DateTime effectiveDateTime;
  Period effectivePeriod;
  DateTime date;
  Reference assessor;
  Reference previous;
  List<Reference> problem;
  List<Investigation> investigation;
  List<String> protocol;
  String summary;
  List<Finding> finding;
  List<CodeableConcept> prognosisCodeableConcept;
  List<Reference> prognosisReference;
  List<Reference> supportingInfo;
  List<Annotation> note;

  ClinicalImpression(
      {this.resourceType,
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
  CodeableConcept code;
  List<Reference> item;

  Investigation({this.code, this.item});

  factory Investigation.fromJson(Map<String, dynamic> json) => _$InvestigationFromJson(json);
  Map<String, dynamic> toJson() => _$InvestigationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Finding {
  CodeableConcept itemCodeableConcept;
  Reference itemReference;
  String basis;

  Finding({this.itemCodeableConcept, this.itemReference, this.basis});

  factory Finding.fromJson(Map<String, dynamic> json) => _$FindingFromJson(json);
  Map<String, dynamic> toJson() => _$FindingToJson(this);
}