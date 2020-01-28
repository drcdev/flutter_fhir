part 'provenance.g.dart';

@JsonSerializable(explicitToJson: true)
class Provenance {

Provenance resourceType;
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
List<Reference> target;
Period occurredPeriod;
String occurredDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _occurredDateTime;
DateTime recorded;
Element _recorded;
List<String> policy;
List<Element> _policy;
Reference location;
List<CodeableConcept> reason;
CodeableConcept activity;
List<Provenance_Agent> agent;
List<Provenance_Entity> entity;
List<Signature> signature;

Provenance(
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
      this.target,
      this.occurredPeriod,
      this.occurredDateTime,
      this._occurredDateTime,
      this.recorded,
      this._recorded,
      this.policy,
      this._policy,
      this.location,
      this.reason,
      this.activity,
      this.agent,
      this.entity,
      this.signature,
      });

  factory Provenance.fromJson(Map<String, dynamic> json) => _$ProvenanceFromJson(json);
  Map<String, dynamic> toJson() _$ProvenanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Provenance_Agent {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<CodeableConcept> role;
Reference who;
Reference onBehalfOf;

Provenance_Agent(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.role,
      this.who,
      this.onBehalfOf,
      });

  factory Provenance_Agent.fromJson(Map<String, dynamic> json) => _$Provenance_AgentFromJson(json);
  Map<String, dynamic> toJson() _$Provenance_AgentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Provenance_Entity {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String role; // <code> enum: derivation/revision/quotation/source/removal;
Element _role;
Reference what;
List<Provenance_Agent> agent;

Provenance_Entity(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.role,
      this._role,
      this.what,
      this.agent,
      });

  factory Provenance_Entity.fromJson(Map<String, dynamic> json) => _$Provenance_EntityFromJson(json);
  Map<String, dynamic> toJson() _$Provenance_EntityToJson(this);
}

