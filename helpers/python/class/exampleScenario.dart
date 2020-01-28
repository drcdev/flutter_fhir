part 'exampleScenario.g.dart';

@JsonSerializable(explicitToJson: true)
class ExampleScenario {

ExampleScenario resourceType;
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
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String copyright;
Element _copyright;
String purpose;
Element _purpose;
List<ExampleScenario_Actor> actor;
List<ExampleScenario_Instance> instance;
List<ExampleScenario_Process> process;
List<String> workflow;

ExampleScenario(
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
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.useContext,
      this.jurisdiction,
      this.copyright,
      this._copyright,
      this.purpose,
      this._purpose,
      this.actor,
      this.instance,
      this.process,
      this.workflow,
      });

  factory ExampleScenario.fromJson(Map<String, dynamic> json) => _$ExampleScenarioFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenarioToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Actor {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String actorId;
Element _actorId;
String type; // <code> enum: person/entity;
Element _type;
String name;
Element _name;
String description;
Element _description;

ExampleScenario_Actor(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.actorId,
      this._actorId,
      this.type,
      this._type,
      this.name,
      this._name,
      this.description,
      this._description,
      });

  factory ExampleScenario_Actor.fromJson(Map<String, dynamic> json) => _$ExampleScenario_ActorFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_ActorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Instance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String resourceId;
Element _resourceId;
String resourceType;
Element _resourceType;
String name;
Element _name;
String description;
Element _description;
List<ExampleScenario_Version> version;
List<ExampleScenario_ContainedInstance> containedInstance;

ExampleScenario_Instance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.resourceId,
      this._resourceId,
      this.resourceType,
      this._resourceType,
      this.name,
      this._name,
      this.description,
      this._description,
      this.version,
      this.containedInstance,
      });

  factory ExampleScenario_Instance.fromJson(Map<String, dynamic> json) => _$ExampleScenario_InstanceFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_InstanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Version {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String versionId;
Element _versionId;
String description;
Element _description;

ExampleScenario_Version(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.versionId,
      this._versionId,
      this.description,
      this._description,
      });

  factory ExampleScenario_Version.fromJson(Map<String, dynamic> json) => _$ExampleScenario_VersionFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_VersionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_ContainedInstance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String resourceId;
Element _resourceId;
String versionId;
Element _versionId;

ExampleScenario_ContainedInstance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.resourceId,
      this._resourceId,
      this.versionId,
      this._versionId,
      });

  factory ExampleScenario_ContainedInstance.fromJson(Map<String, dynamic> json) => _$ExampleScenario_ContainedInstanceFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_ContainedInstanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Process {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String title;
Element _title;
String description;
Element _description;
String preConditions;
Element _preConditions;
String postConditions;
Element _postConditions;
List<ExampleScenario_Step> step;

ExampleScenario_Process(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.title,
      this._title,
      this.description,
      this._description,
      this.preConditions,
      this._preConditions,
      this.postConditions,
      this._postConditions,
      this.step,
      });

  factory ExampleScenario_Process.fromJson(Map<String, dynamic> json) => _$ExampleScenario_ProcessFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_ProcessToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Step {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<ExampleScenario_Process> process;
bool pause;
Element _pause;
ExampleScenario_Operation operation;
List<ExampleScenario_Alternative> alternative;

ExampleScenario_Step(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.process,
      this.pause,
      this._pause,
      this.operation,
      this.alternative,
      });

  factory ExampleScenario_Step.fromJson(Map<String, dynamic> json) => _$ExampleScenario_StepFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_StepToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Operation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String number;
Element _number;
String type;
Element _type;
String name;
Element _name;
String initiator;
Element _initiator;
String receiver;
Element _receiver;
String description;
Element _description;
bool initiatorActive;
Element _initiatorActive;
bool receiverActive;
Element _receiverActive;
ExampleScenario_ContainedInstance request;
ExampleScenario_ContainedInstance response;

ExampleScenario_Operation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.number,
      this._number,
      this.type,
      this._type,
      this.name,
      this._name,
      this.initiator,
      this._initiator,
      this.receiver,
      this._receiver,
      this.description,
      this._description,
      this.initiatorActive,
      this._initiatorActive,
      this.receiverActive,
      this._receiverActive,
      this.request,
      this.response,
      });

  factory ExampleScenario_Operation.fromJson(Map<String, dynamic> json) => _$ExampleScenario_OperationFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_OperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Alternative {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String title;
Element _title;
String description;
Element _description;
List<ExampleScenario_Step> step;

ExampleScenario_Alternative(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.title,
      this._title,
      this.description,
      this._description,
      this.step,
      });

  factory ExampleScenario_Alternative.fromJson(Map<String, dynamic> json) => _$ExampleScenario_AlternativeFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_AlternativeToJson(this);
}

