part 'detectedIssue.g.dart';

@JsonSerializable(explicitToJson: true)
class DetectedIssue {

DetectedIssue resourceType;
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
String status;
Element _status;
CodeableConcept code;
String severity; // <code> enum: high/moderate/low;
Element _severity;
Reference patient;
String identifiedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _identifiedDateTime;
Period identifiedPeriod;
Reference author;
List<Reference> implicated;
List<DetectedIssue_Evidence> evidence;
String detail;
Element _detail;
String reference;
Element _reference;
List<DetectedIssue_Mitigation> mitigation;

DetectedIssue(
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
      this.status,
      this._status,
      this.code,
      this.severity,
      this._severity,
      this.patient,
      this.identifiedDateTime,
      this._identifiedDateTime,
      this.identifiedPeriod,
      this.author,
      this.implicated,
      this.evidence,
      this.detail,
      this._detail,
      this.reference,
      this._reference,
      this.mitigation,
      });

  factory DetectedIssue.fromJson(Map<String, dynamic> json) => _$DetectedIssueFromJson(json);
  Map<String, dynamic> toJson() _$DetectedIssueToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetectedIssue_Evidence {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> code;
List<Reference> detail;

DetectedIssue_Evidence(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.detail,
      });

  factory DetectedIssue_Evidence.fromJson(Map<String, dynamic> json) => _$DetectedIssue_EvidenceFromJson(json);
  Map<String, dynamic> toJson() _$DetectedIssue_EvidenceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetectedIssue_Mitigation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept action;
DateTime date;
Element _date;
Reference author;

DetectedIssue_Mitigation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.action,
      this.date,
      this._date,
      this.author,
      });

  factory DetectedIssue_Mitigation.fromJson(Map<String, dynamic> json) => _$DetectedIssue_MitigationFromJson(json);
  Map<String, dynamic> toJson() _$DetectedIssue_MitigationToJson(this);
}

