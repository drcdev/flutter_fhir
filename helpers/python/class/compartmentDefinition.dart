part 'compartmentDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class CompartmentDefinition {

CompartmentDefinition resourceType;
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
String version;
Element _version;
String name;
Element _name;
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
String purpose;
Element _purpose;
String code; // <code> enum: Patient/Encounter/RelatedPerson/Practitioner/Device;
Element _code;
bool search;
Element _search;
List<CompartmentDefinition_Resource> resource;

CompartmentDefinition(
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
      this.version,
      this._version,
      this.name,
      this._name,
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
      this.purpose,
      this._purpose,
      this.code,
      this._code,
      this.search,
      this._search,
      this.resource,
      });

  factory CompartmentDefinition.fromJson(Map<String, dynamic> json) => _$CompartmentDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$CompartmentDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompartmentDefinition_Resource {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
List<String> param;
List<Element> _param;
String documentation;
Element _documentation;

CompartmentDefinition_Resource(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.param,
      this._param,
      this.documentation,
      this._documentation,
      });

  factory CompartmentDefinition_Resource.fromJson(Map<String, dynamic> json) => _$CompartmentDefinition_ResourceFromJson(json);
  Map<String, dynamic> toJson() _$CompartmentDefinition_ResourceToJson(this);
}

