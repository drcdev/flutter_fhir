part 'auditEvent.g.dart';

@JsonSerializable(explicitToJson: true)
class AuditEvent {

AuditEvent resourceType;
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
String action; // <code> enum: C/R/U/D/E;
Element _action;
Period period;
DateTime recorded;
Element _recorded;
String outcome; // <code> enum: 0/4/8/12;
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
      this.entity,
      });

  factory AuditEvent.fromJson(Map<String, dynamic> json) => _$AuditEventFromJson(json);
  Map<String, dynamic> toJson() _$AuditEventToJson(this);
}

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
      this.purposeOfUse,
      });

  factory AuditEvent_Agent.fromJson(Map<String, dynamic> json) => _$AuditEvent_AgentFromJson(json);
  Map<String, dynamic> toJson() _$AuditEvent_AgentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Network {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String address;
Element _address;
String type; // <code> enum: 1/2/3/4/5;
Element _type;

AuditEvent_Network(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.address,
      this._address,
      this.type,
      this._type,
      });

  factory AuditEvent_Network.fromJson(Map<String, dynamic> json) => _$AuditEvent_NetworkFromJson(json);
  Map<String, dynamic> toJson() _$AuditEvent_NetworkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Source {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String site;
Element _site;
Reference observer;
List<Coding> type;

AuditEvent_Source(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.site,
      this._site,
      this.observer,
      this.type,
      });

  factory AuditEvent_Source.fromJson(Map<String, dynamic> json) => _$AuditEvent_SourceFromJson(json);
  Map<String, dynamic> toJson() _$AuditEvent_SourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Entity {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference what;
Coding type;
Coding role;
Coding lifecycle;
List<Coding> securityLabel;
String name;
Element _name;
String description;
Element _description;
String query;
Element _query;
List<AuditEvent_Detail> detail;

AuditEvent_Entity(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.what,
      this.type,
      this.role,
      this.lifecycle,
      this.securityLabel,
      this.name,
      this._name,
      this.description,
      this._description,
      this.query,
      this._query,
      this.detail,
      });

  factory AuditEvent_Entity.fromJson(Map<String, dynamic> json) => _$AuditEvent_EntityFromJson(json);
  Map<String, dynamic> toJson() _$AuditEvent_EntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Detail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type;
Element _type;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
Element _valueBase64Binary;

AuditEvent_Detail(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.valueString,
      this._valueString,
      this.valueBase64Binary,
      this._valueBase64Binary,
      });

  factory AuditEvent_Detail.fromJson(Map<String, dynamic> json) => _$AuditEvent_DetailFromJson(json);
  Map<String, dynamic> toJson() _$AuditEvent_DetailToJson(this);
}

