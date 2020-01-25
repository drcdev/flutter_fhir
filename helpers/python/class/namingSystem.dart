

part 'namingSystem.g.dart';

@JsonSerializable(explicitToJson: true)
class NamingSystem {

  This is a NamingSystem resource resourceType;
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
  enum: draftactiveretiredunknown status;
  Element _status;
  enum: codesystemidentifierroot kind;
  Element _kind;
  StringTime date;
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
this.uniqueId});

  factory NamingSystem.fromJson(Map<String, dynamic> json) => _$NamingSystemFromJson(json);
  Map<String, dynamic> toJson() => _$NamingSystemToJson(this);
}