

part 'diagnosticReport.g.dart';

@JsonSerializable(explicitToJson: true)
class DiagnosticReport {

  This is a DiagnosticReport resource resourceType;
  String id;
  Meta meta;
  String implicitRules;
  Element _implicitRules;
  String language;
  Element _language;
  Narrative text;
  List<ResourceList> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  List<Reference> basedOn;
  enum: registeredpartialpreliminaryfinalamendedcorrectedappendedcancelledentered-in-errorunknown status;
  Element _status;
  List<CodeableConcept> category;
  CodeableConcept code;
  Reference subject;
  Reference encounter;
  String effectiveDateTime;
  Element _effectiveDateTime;
  Period effectivePeriod;
  DateTime issued;
  Element _issued;
  List<Reference> performer;
  List<Reference> resultsInterpreter;
  List<Reference> specimen;
  List<Reference> result;
  List<Reference> imagingStudy;
  List<DiagnosticReport_Media> media;
  String conclusion;
  Element _conclusion;
  List<CodeableConcept> conclusionCode;
  List<Attachment> presentedForm;


DiagnosticReport(
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
this.basedOn,
this.status,
this._status,
this.category,
this.code,
this.subject,
this.encounter,
this.effectiveDateTime,
this._effectiveDateTime,
this.effectivePeriod,
this.issued,
this._issued,
this.performer,
this.resultsInterpreter,
this.specimen,
this.result,
this.imagingStudy,
this.media,
this.conclusion,
this._conclusion,
this.conclusionCode,
this.presentedForm});

  factory DiagnosticReport.fromJson(Map<String, dynamic> json) => _$DiagnosticReportFromJson(json);
  Map<String, dynamic> toJson() => _$DiagnosticReportToJson(this);
}