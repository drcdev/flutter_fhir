part 'structureDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureDefinition {

StructureDefinition resourceType;
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
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
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
String fhirVersion; // <code> enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1;
Element _fhirVersion;
List<StructureDefinition_Mapping> mapping;
String kind; // <code> enum: primitive-type/complex-type/resource/logical;
Element _kind;
bool abstract;
Element _abstract;
List<StructureDefinition_Context> context;
List<String> contextInvariant;
List<Element> _contextInvariant;
String type;
Element _type;
String baseDefinition;
String derivation; // <code> enum: specialization/constraint;
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
      this.differential,
      });

  factory StructureDefinition.fromJson(Map<String, dynamic> json) => _$StructureDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$StructureDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Mapping {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String identity;
Element _identity;
String uri;
Element _uri;
String name;
Element _name;
String comment;
Element _comment;

StructureDefinition_Mapping(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identity,
      this._identity,
      this.uri,
      this._uri,
      this.name,
      this._name,
      this.comment,
      this._comment,
      });

  factory StructureDefinition_Mapping.fromJson(Map<String, dynamic> json) => _$StructureDefinition_MappingFromJson(json);
  Map<String, dynamic> toJson() _$StructureDefinition_MappingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Context {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: fhirpath/element/extension;
Element _type;
String expression;
Element _expression;

StructureDefinition_Context(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.expression,
      this._expression,
      });

  factory StructureDefinition_Context.fromJson(Map<String, dynamic> json) => _$StructureDefinition_ContextFromJson(json);
  Map<String, dynamic> toJson() _$StructureDefinition_ContextToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Snapshot {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<ElementDefinition> element;

StructureDefinition_Snapshot(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.element,
      });

  factory StructureDefinition_Snapshot.fromJson(Map<String, dynamic> json) => _$StructureDefinition_SnapshotFromJson(json);
  Map<String, dynamic> toJson() _$StructureDefinition_SnapshotToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Differential {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<ElementDefinition> element;

StructureDefinition_Differential(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.element,
      });

  factory StructureDefinition_Differential.fromJson(Map<String, dynamic> json) => _$StructureDefinition_DifferentialFromJson(json);
  Map<String, dynamic> toJson() _$StructureDefinition_DifferentialToJson(this);
}

