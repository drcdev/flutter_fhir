

part 'operationDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class OperationDefinition {

  This is a OperationDefinition resource resourceType;
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
  enum: draftactiveretiredunknown status;
  Element _status;
  enum: operationquery kind;
  Element _kind;
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
this.overload});

  factory OperationDefinition.fromJson(Map<String, dynamic> json) => _$OperationDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinitionToJson(this);
}