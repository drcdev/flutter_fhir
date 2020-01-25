

part 'structureDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureDefinition {

  This is a StructureDefinition resource resourceType;
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
  List<Coding> keyword;
  enum: 0.010.050.060.110.0.800.0.810.0.820.4.00.5.01.0.01.0.11.0.21.1.01.4.01.6.01.8.03.0.03.0.13.3.03.5.04.0.04.0.1 fhirVersion;
  Element _fhirVersion;
  List<StructureDefinition_Mapping> mapping;
  enum: primitive-typecomplex-typeresourcelogical kind;
  Element _kind;
  bool abstract;
  Element _abstract;
  List<StructureDefinition_Context> context;
  List<String> contextInvariant;
  List<Element> _contextInvariant;
  String type;
  Element _type;
  String baseDefinition;
  enum: specializationconstraint derivation;
  Element _derivation;
  StructureDefinition_Snapshot snapshot;
  StructureDefinition_Differential differential;


StructureDefinition(
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
this.keyword,
this.fhirVersion,
this._fhirVersion,
this.mapping,
this.kind,
this._kind,
this.abstract,
this._abstract,
this.context,
this.contextInvariant,
this._contextInvariant,
this.type,
this._type,
this.baseDefinition,
this.derivation,
this._derivation,
this.snapshot,
this.differential});

  factory StructureDefinition.fromJson(Map<String, dynamic> json) => _$StructureDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinitionToJson(this);
}