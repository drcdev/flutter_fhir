

part 'detectedIssue.g.dart';

@JsonSerializable(explicitToJson: true)
class DetectedIssue {

  This is a DetectedIssue resource resourceType;
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
  enum: highmoderatelow severity;
  Element _severity;
  Reference patient;
  String identifiedDateTime;
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
this.mitigation});

  factory DetectedIssue.fromJson(Map<String, dynamic> json) => _$DetectedIssueFromJson(json);
  Map<String, dynamic> toJson() => _$DetectedIssueToJson(this);
}