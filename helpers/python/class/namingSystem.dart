part 'namingSystem.g.dart';

@JsonSerializable(explicitToJson: true)
class NamingSystem {

NamingSystem resourceType;
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
String name;
Element _name;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
String kind; // <code> enum: codesystem/identifier/root;
Element _kind;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String responsible;
Element _responsible;
CodeableConcept type;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String usage;
Element _usage;
List<NamingSystem_UniqueId> uniqueId;

NamingSystem(
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
      this.name,
      this._name,
      this.status,
      this._status,
      this.kind,
      this._kind,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.responsible,
      this._responsible,
      this.type,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.usage,
      this._usage,
      this.uniqueId,
      });

  factory NamingSystem.fromJson(Map<String, dynamic> json) => _$NamingSystemFromJson(json);
  Map<String, dynamic> toJson() _$NamingSystemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NamingSystem_UniqueId {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: oid/uuid/uri/other;
Element _type;
String value;
Element _value;
bool preferred;
Element _preferred;
String comment;
Element _comment;
Period period;

NamingSystem_UniqueId(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.value,
      this._value,
      this.preferred,
      this._preferred,
      this.comment,
      this._comment,
      this.period,
      });

  factory NamingSystem_UniqueId.fromJson(Map<String, dynamic> json) => _$NamingSystem_UniqueIdFromJson(json);
  Map<String, dynamic> toJson() _$NamingSystem_UniqueIdToJson(this);
}

