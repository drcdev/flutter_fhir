

part 'auditEvent_Agent.g.dart';

@JsonSerializable(explicitToJson: true)
class AuditEvent_Agent {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<CodeableConcept> role;
  Reference who;
  String altId;
  Element _altId;
  String name;
  Element _name;
  bool requestor;
  Element _requestor;
  Reference location;
  List<String> policy;
  List<Element> _policy;
  Coding media;
  AuditEvent_Network network;
  List<CodeableConcept> purposeOfUse;


AuditEvent_Agent(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.role,
this.who,
this.altId,
this._altId,
this.name,
this._name,
this.requestor,
this._requestor,
this.location,
this.policy,
this._policy,
this.media,
this.network,
this.purposeOfUse});

  factory AuditEvent_Agent.fromJson(Map<String, dynamic> json) => _$AuditEvent_AgentFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_AgentToJson(this);
}