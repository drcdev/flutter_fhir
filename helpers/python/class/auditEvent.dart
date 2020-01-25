

part 'auditEvent.g.dart';

@JsonSerializable(explicitToJson: true)
class AuditEvent {

  This is a AuditEvent resource resourceType;
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
  Coding type;
  List<Coding> subtype;
  enum: CRUDE action;
  Element _action;
  Period period;
  DateTime recorded;
  Element _recorded;
  enum: 04812 outcome;
  Element _outcome;
  String outcomeDesc;
  Element _outcomeDesc;
  List<CodeableConcept> purposeOfEvent;
  List<AuditEvent_Agent> agent;
  AuditEvent_Source source;
  List<AuditEvent_Entity> entity;


AuditEvent(
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
this.type,
this.subtype,
this.action,
this._action,
this.period,
this.recorded,
this._recorded,
this.outcome,
this._outcome,
this.outcomeDesc,
this._outcomeDesc,
this.purposeOfEvent,
this.agent,
this.source,
this.entity});

  factory AuditEvent.fromJson(Map<String, dynamic> json) => _$AuditEventFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEventToJson(this);
}