part 'operationDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class OperationDefinition {

OperationDefinition resourceType;
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
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
String kind; // <code> enum: operation/query;
Element _kind;
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
bool affectsState;
Element _affectsState;
String code;
Element _code;
String comment;
Element _comment;
String base;
List<String> resource;
List<Element> _resource;
bool system;
Element _system;
bool type;
Element _type;
bool instance;
Element _instance;
String inputProfile;
String outputProfile;
List<OperationDefinition_Parameter> parameter;
List<OperationDefinition_Overload> overload;

OperationDefinition(
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
      this.title,
      this._title,
      this.status,
      this._status,
      this.kind,
      this._kind,
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
      this.affectsState,
      this._affectsState,
      this.code,
      this._code,
      this.comment,
      this._comment,
      this.base,
      this.resource,
      this._resource,
      this.system,
      this._system,
      this.type,
      this._type,
      this.instance,
      this._instance,
      this.inputProfile,
      this.outputProfile,
      this.parameter,
      this.overload,
      });

  factory OperationDefinition.fromJson(Map<String, dynamic> json) => _$OperationDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$OperationDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String use; // <code> enum: in/out;
Element _use;
int min;
Element _min;
String max;
Element _max;
String documentation;
Element _documentation;
String type;
Element _type;
List<String> targetProfile;
String searchType; // <code> enum: number/date/string/token/reference/composite/quantity/uri/special;
Element _searchType;
OperationDefinition_Binding binding;
List<OperationDefinition_ReferencedFrom> referencedFrom;
List<OperationDefinition_Parameter> part;

OperationDefinition_Parameter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.use,
      this._use,
      this.min,
      this._min,
      this.max,
      this._max,
      this.documentation,
      this._documentation,
      this.type,
      this._type,
      this.targetProfile,
      this.searchType,
      this._searchType,
      this.binding,
      this.referencedFrom,
      this.part,
      });

  factory OperationDefinition_Parameter.fromJson(Map<String, dynamic> json) => _$OperationDefinition_ParameterFromJson(json);
  Map<String, dynamic> toJson() _$OperationDefinition_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_Binding {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String strength; // <code> enum: required/extensible/preferred/example;
Element _strength;
String valueSet;

OperationDefinition_Binding(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.strength,
      this._strength,
      this.valueSet,
      });

  factory OperationDefinition_Binding.fromJson(Map<String, dynamic> json) => _$OperationDefinition_BindingFromJson(json);
  Map<String, dynamic> toJson() _$OperationDefinition_BindingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_ReferencedFrom {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String source;
Element _source;
String sourceId;
Element _sourceId;

OperationDefinition_ReferencedFrom(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.source,
      this._source,
      this.sourceId,
      this._sourceId,
      });

  factory OperationDefinition_ReferencedFrom.fromJson(Map<String, dynamic> json) => _$OperationDefinition_ReferencedFromFromJson(json);
  Map<String, dynamic> toJson() _$OperationDefinition_ReferencedFromToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_Overload {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<String> parameterName;
List<Element> _parameterName;
String comment;
Element _comment;

OperationDefinition_Overload(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.parameterName,
      this._parameterName,
      this.comment,
      this._comment,
      });

  factory OperationDefinition_Overload.fromJson(Map<String, dynamic> json) => _$OperationDefinition_OverloadFromJson(json);
  Map<String, dynamic> toJson() _$OperationDefinition_OverloadToJson(this);
}

