

part 'careTeam.g.dart';

@JsonSerializable(explicitToJson: true)
class CareTeam {

  This is a CareTeam resource resourceType;
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
  enum: proposedactivesuspendedinactiveentered-in-error status;
  Element _status;
  List<CodeableConcept> category;
  String name;
  Element _name;
  Reference subject;
  Reference encounter;
  Period period;
  List<CareTeam_Participant> participant;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Reference> managingOrganization;
  List<ContactPoint> telecom;
  List<Annotation> note;


CareTeam(
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
this.category,
this.name,
this._name,
this.subject,
this.encounter,
this.period,
this.participant,
this.reasonCode,
this.reasonReference,
this.managingOrganization,
this.telecom,
this.note});

  factory CareTeam.fromJson(Map<String, dynamic> json) => _$CareTeamFromJson(json);
  Map<String, dynamic> toJson() => _$CareTeamToJson(this);
}