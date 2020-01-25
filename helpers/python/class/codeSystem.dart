

part 'codeSystem.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeSystem {

  This is a CodeSystem resource resourceType;
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
  String url;
  Element _url;
  List<Identifier> identifier;
  String version;
  Element _version;
  String name;
  Element _name;
  String title;
  Element _title;
  enum: draftactiveretiredunknown status;
  Element _status;
  bool experimental;
  Element _experimental;
  StringTime date;
  Element _date;
  String publisher;
  Element _publisher;
  List<ContactDetail> contact;
  String description;
  Element _description;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String purpose;
  Element _purpose;
  String copyright;
  Element _copyright;
  bool caseSensitive;
  Element _caseSensitive;
  String valueSet;
  enum: grouped-byis-apart-ofclassified-with hierarchyMeaning;
  Element _hierarchyMeaning;
  bool compositional;
  Element _compositional;
  bool versionNeeded;
  Element _versionNeeded;
  enum: not-presentexamplefragmentcompletesupplement content;
  Element _content;
  String supplements;
  int count;
  Element _count;
  List<CodeSystem_Filter> filter;
  List<CodeSystem_Property> property;
  List<CodeSystem_Concept> concept;


CodeSystem(
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
this.url,
this._url,
this.identifier,
this.version,
this._version,
this.name,
this._name,
this.title,
this._title,
this.status,
this._status,
this.experimental,
this._experimental,
this.date,
this._date,
this.publisher,
this._publisher,
this.contact,
this.description,
this._description,
this.useContext,
this.jurisdiction,
this.purpose,
this._purpose,
this.copyright,
this._copyright,
this.caseSensitive,
this._caseSensitive,
this.valueSet,
this.hierarchyMeaning,
this._hierarchyMeaning,
this.compositional,
this._compositional,
this.versionNeeded,
this._versionNeeded,
this.content,
this._content,
this.supplements,
this.count,
this._count,
this.filter,
this.property,
this.concept});

  factory CodeSystem.fromJson(Map<String, dynamic> json) => _$CodeSystemFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystemToJson(this);
}