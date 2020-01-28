part 'graphDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class GraphDefinition {

GraphDefinition resourceType;
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
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String start;
Element _start;
String profile;
List<GraphDefinition_Link> link;

GraphDefinition(
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
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.start,
      this._start,
      this.profile,
      this.link,
      });

  factory GraphDefinition.fromJson(Map<String, dynamic> json) => _$GraphDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$GraphDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GraphDefinition_Link {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String path;
Element _path;
String sliceName;
Element _sliceName;
int min;
Element _min;
String max;
Element _max;
String description;
Element _description;
List<GraphDefinition_Target> target;

GraphDefinition_Link(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.path,
      this._path,
      this.sliceName,
      this._sliceName,
      this.min,
      this._min,
      this.max,
      this._max,
      this.description,
      this._description,
      this.target,
      });

  factory GraphDefinition_Link.fromJson(Map<String, dynamic> json) => _$GraphDefinition_LinkFromJson(json);
  Map<String, dynamic> toJson() _$GraphDefinition_LinkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GraphDefinition_Target {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type;
Element _type;
String params;
Element _params;
String profile;
List<GraphDefinition_Compartment> compartment;
List<GraphDefinition_Link> link;

GraphDefinition_Target(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.params,
      this._params,
      this.profile,
      this.compartment,
      this.link,
      });

  factory GraphDefinition_Target.fromJson(Map<String, dynamic> json) => _$GraphDefinition_TargetFromJson(json);
  Map<String, dynamic> toJson() _$GraphDefinition_TargetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GraphDefinition_Compartment {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String use; // <code> enum: condition/requirement;
Element _use;
String code;
Element _code;
String rule; // <code> enum: identical/matching/different/custom;
Element _rule;
String expression;
Element _expression;
String description;
Element _description;

GraphDefinition_Compartment(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.use,
      this._use,
      this.code,
      this._code,
      this.rule,
      this._rule,
      this.expression,
      this._expression,
      this.description,
      this._description,
      });

  factory GraphDefinition_Compartment.fromJson(Map<String, dynamic> json) => _$GraphDefinition_CompartmentFromJson(json);
  Map<String, dynamic> toJson() _$GraphDefinition_CompartmentToJson(this);
}

