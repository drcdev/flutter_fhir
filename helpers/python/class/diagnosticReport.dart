part 'diagnosticReport.g.dart';

@JsonSerializable(explicitToJson: true)
class DiagnosticReport {

DiagnosticReport resourceType;
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
String status; // <code> enum: registered/partial/preliminary/final/amended/corrected/appended/cancelled/entered-in-error/unknown;
Element _status;
List<CodeableConcept> category;
CodeableConcept code;
Reference subject;
Reference encounter;
String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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
      this.presentedForm,
      });

  factory DiagnosticReport.fromJson(Map<String, dynamic> json) => _$DiagnosticReportFromJson(json);
  Map<String, dynamic> toJson() _$DiagnosticReportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DiagnosticReport_Media {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String comment;
Element _comment;
Reference link;

DiagnosticReport_Media(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.comment,
      this._comment,
      this.link,
      });

  factory DiagnosticReport_Media.fromJson(Map<String, dynamic> json) => _$DiagnosticReport_MediaFromJson(json);
  Map<String, dynamic> toJson() _$DiagnosticReport_MediaToJson(this);
}

