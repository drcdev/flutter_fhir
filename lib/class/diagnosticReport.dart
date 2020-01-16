import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'diagnosticReport.g.dart';

@JsonSerializable(explicitToJson: true)
class DiagnosticReport {
  String resourceType;
  List<Identifier> identifier;
  List<Reference> basedOn;
  String status;
  List<CodeableConcept> category;
  CodeableConcept code;
  Reference subject;
  Reference encounter;
  DateTime effectiveDateTime;
  Period effectivePeriod;
  DateTime issued;
  List<Reference> performer;
  List<Reference> resultsInterpreter;
  List<Reference> specimen;
  List<Reference> result;
  List<Reference> imagingStudy;
  List<Media> media;
  String conclusion;
  List<CodeableConcept> conclusionCode;
  List<Attachment> presentedForm;

  DiagnosticReport(
      {this.resourceType,
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
  String comment;
  Reference link;

  Media({this.comment, this.link});

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
  Map<String, dynamic> toJson() => _$MediaToJson(this);
}