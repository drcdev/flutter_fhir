import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 258)
class ExampleScenario {

  //  This is a ExampleScenario resource
  @HiveField(0)
  final String resourceType= 'ExampleScenario';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  An absolute URI that is used to identify this example scenario when it
  // is referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this example scenario is (or will be) published. This URL can be the
  // target of a canonical reference. It SHALL remain the same when the
  // example scenario is stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  A formal identifier that is used to identify this example scenario
  // when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
  @HiveField(13)
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the example
  // scenario when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the example scenario
  // author and is not expected to be globally unique. For example, it might
  // be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  // There is also no expectation that versions can be placed in a
  // lexicographical sequence.
  @HiveField(14)
  String version;

  //  Extensions for version
  @HiveField(15)
  Element elementVersion;

  //  A natural language name identifying the example scenario. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  @HiveField(16)
  String name;

  //  Extensions for name
  @HiveField(17)
  Element elementName;

  //  The status of this example scenario. Enables tracking the life-cycle
  // of the content.
  @HiveField(18)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(19)
  Element elementStatus;

  //  A Boolean value to indicate that this example scenario is authored for
  // testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  @HiveField(20)
  bool experimental;

  //  Extensions for experimental
  @HiveField(21)
  Element elementExperimental;

  //  The date  (and optionally time) when the example scenario was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the example scenario changes.
  // (e.g. the 'content logical definition').
  @HiveField(22)
  DateTime date;

  //  Extensions for date
  @HiveField(23)
  Element elementDate;

  //  The name of the organization or individual that published the example
  // scenario.
  @HiveField(24)
  String publisher;

  //  Extensions for publisher
  @HiveField(25)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(26)
  List<ContactDetail> contact;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate example scenario instances.
  @HiveField(27)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the example scenario is intended
  // to be used.
  @HiveField(28)
  List<CodeableConcept> jurisdiction;

  //  A copyright statement relating to the example scenario and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the example scenario.
  @HiveField(29)
  String copyright;

  //  Extensions for copyright
  @HiveField(30)
  Element elementCopyright;

  //  What the example scenario resource is created for. This should not be
  // used to show the business purpose of the scenario itself, but the
  // purpose of documenting a scenario.
  @HiveField(31)
  String purpose;

  //  Extensions for purpose
  @HiveField(32)
  Element elementPurpose;

  //  Actor participating in the resource.
  @HiveField(33)
  List<ExampleScenario_Actor> actor;

  //  Each resource and each version that is present in the workflow.
  @HiveField(34)
  List<ExampleScenario_Instance> instance;

  //  Each major process - a group of operations.
  @HiveField(35)
  List<ExampleScenario_Process> process;

  //  Another nested workflow.
  @HiveField(36)
  List<String> workflow;

ExampleScenario(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.url,
    this.elementUrl,
    this.identifier,
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
    this.status,
    this.elementStatus,
    this.experimental,
    this.elementExperimental,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.elementCopyright,
    this.purpose,
    this.elementPurpose,
    this.actor,
    this.instance,
    this.process,
    this.workflow
    });

  factory ExampleScenario.fromJson(Map<String, dynamic> json) => _$ExampleScenarioFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenarioToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 259)
class ExampleScenario_Actor {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  ID or acronym of actor.
  @HiveField(3)
  String actorId;

  //  Extensions for actorId
  @HiveField(4)
  Element elementActorId;

  //  The type of actor - person or system.
  @HiveField(5)
  String type; // <code> enum: person/entity;

  //  Extensions for type
  @HiveField(6)
  Element elementType;

  //  The name of the actor as shown in the page.
  @HiveField(7)
  String name;

  //  Extensions for name
  @HiveField(8)
  Element elementName;

  //  The description of the actor.
  @HiveField(9)
  String description;

  //  Extensions for description
  @HiveField(10)
  Element elementDescription;

ExampleScenario_Actor(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.actorId,
    this.elementActorId,
    this.type,
    this.elementType,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription
    });

  factory ExampleScenario_Actor.fromJson(Map<String, dynamic> json) => _$ExampleScenario_ActorFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_ActorToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 260)
class ExampleScenario_Instance {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The id of the resource for referencing.
  @HiveField(3)
  String resourceId;

  //  Extensions for resourceId
  @HiveField(4)
  Element elementResourceId;

  //  The type of the resource.
  @HiveField(5)
  String resourceType;

  //  Extensions for resourceType
  @HiveField(6)
  Element elementResourceType;

  //  A short name for the resource instance.
  @HiveField(7)
  String name;

  //  Extensions for name
  @HiveField(8)
  Element elementName;

  //  Human-friendly description of the resource instance.
  @HiveField(9)
  String description;

  //  Extensions for description
  @HiveField(10)
  Element elementDescription;

  //  A specific version of the resource.
  @HiveField(11)
  List<ExampleScenario_Version> version;

  //  Resources contained in the instance (e.g. the observations contained
  // in a bundle).
  @HiveField(12)
  List<ExampleScenario_ContainedInstance> containedInstance;

ExampleScenario_Instance(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.resourceId,
    this.elementResourceId,
    this.elementResourceType,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription,
    this.version,
    this.containedInstance
    });

  factory ExampleScenario_Instance.fromJson(Map<String, dynamic> json) => _$ExampleScenario_InstanceFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_InstanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 261)
class ExampleScenario_Version {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The identifier of a specific version of a resource.
  @HiveField(3)
  String versionId;

  //  Extensions for versionId
  @HiveField(4)
  Element elementVersionId;

  //  The description of the resource version.
  @HiveField(5)
  String description;

  //  Extensions for description
  @HiveField(6)
  Element elementDescription;

ExampleScenario_Version(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.versionId,
    this.elementVersionId,
    this.description,
    this.elementDescription
    });

  factory ExampleScenario_Version.fromJson(Map<String, dynamic> json) => _$ExampleScenario_VersionFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_VersionToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 262)
class ExampleScenario_ContainedInstance {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Each resource contained in the instance.
  @HiveField(3)
  String resourceId;

  //  Extensions for resourceId
  @HiveField(4)
  Element elementResourceId;

  //  A specific version of a resource contained in the instance.
  @HiveField(5)
  String versionId;

  //  Extensions for versionId
  @HiveField(6)
  Element elementVersionId;

ExampleScenario_ContainedInstance(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.resourceId,
    this.elementResourceId,
    this.versionId,
    this.elementVersionId
    });

  factory ExampleScenario_ContainedInstance.fromJson(Map<String, dynamic> json) => _$ExampleScenario_ContainedInstanceFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_ContainedInstanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 263)
class ExampleScenario_Process {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The diagram title of the group of operations.
  @HiveField(3)
  String title;

  //  Extensions for title
  @HiveField(4)
  Element elementTitle;

  //  A longer description of the group of operations.
  @HiveField(5)
  String description;

  //  Extensions for description
  @HiveField(6)
  Element elementDescription;

  //  Description of initial status before the process starts.
  @HiveField(7)
  String preConditions;

  //  Extensions for preConditions
  @HiveField(8)
  Element elementPreConditions;

  //  Description of final status after the process ends.
  @HiveField(9)
  String postConditions;

  //  Extensions for postConditions
  @HiveField(10)
  Element elementPostConditions;

  //  Each step of the process.
  @HiveField(11)
  List<ExampleScenario_Step> step;

ExampleScenario_Process(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.title,
    this.elementTitle,
    this.description,
    this.elementDescription,
    this.preConditions,
    this.elementPreConditions,
    this.postConditions,
    this.elementPostConditions,
    this.step
    });

  factory ExampleScenario_Process.fromJson(Map<String, dynamic> json) => _$ExampleScenario_ProcessFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_ProcessToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 264)
class ExampleScenario_Step {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Nested process.
  @HiveField(3)
  List<ExampleScenario_Process> process;

  //  If there is a pause in the flow.
  @HiveField(4)
  bool pause;

  //  Extensions for pause
  @HiveField(5)
  Element elementPause;

  //  Each interaction or action.
  @HiveField(6)
  ExampleScenario_Operation operation;

  //  Indicates an alternative step that can be taken instead of the
  // operations on the base step in exceptional/atypical circumstances.
  @HiveField(7)
  List<ExampleScenario_Alternative> alternative;

ExampleScenario_Step(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.process,
    this.pause,
    this.elementPause,
    this.operation,
    this.alternative
    });

  factory ExampleScenario_Step.fromJson(Map<String, dynamic> json) => _$ExampleScenario_StepFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_StepToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 265)
class ExampleScenario_Operation {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The sequential number of the interaction, e.g. 1.2.5.
  @HiveField(3)
  String number;

  //  Extensions for number
  @HiveField(4)
  Element elementNumber;

  //  The type of operation - CRUD.
  @HiveField(5)
  String type;

  //  Extensions for type
  @HiveField(6)
  Element elementType;

  //  The human-friendly name of the interaction.
  @HiveField(7)
  String name;

  //  Extensions for name
  @HiveField(8)
  Element elementName;

  //  Who starts the transaction.
  @HiveField(9)
  String initiator;

  //  Extensions for initiator
  @HiveField(10)
  Element elementInitiator;

  //  Who receives the transaction.
  @HiveField(11)
  String receiver;

  //  Extensions for receiver
  @HiveField(12)
  Element elementReceiver;

  //  A comment to be inserted in the diagram.
  @HiveField(13)
  String description;

  //  Extensions for description
  @HiveField(14)
  Element elementDescription;

  //  Whether the initiator is deactivated right after the transaction.
  @HiveField(15)
  bool initiatorActive;

  //  Extensions for initiatorActive
  @HiveField(16)
  Element elementInitiatorActive;

  //  Whether the receiver is deactivated right after the transaction.
  @HiveField(17)
  bool receiverActive;

  //  Extensions for receiverActive
  @HiveField(18)
  Element elementReceiverActive;

  //  Each resource instance used by the initiator.
  @HiveField(19)
  ExampleScenario_ContainedInstance request;

  //  Each resource instance used by the responder.
  @HiveField(20)
  ExampleScenario_ContainedInstance response;

ExampleScenario_Operation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.number,
    this.elementNumber,
    this.type,
    this.elementType,
    this.name,
    this.elementName,
    this.initiator,
    this.elementInitiator,
    this.receiver,
    this.elementReceiver,
    this.description,
    this.elementDescription,
    this.initiatorActive,
    this.elementInitiatorActive,
    this.receiverActive,
    this.elementReceiverActive,
    this.request,
    this.response
    });

  factory ExampleScenario_Operation.fromJson(Map<String, dynamic> json) => _$ExampleScenario_OperationFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_OperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 266)
class ExampleScenario_Alternative {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The label to display for the alternative that gives a sense of the
  // circumstance in which the alternative should be invoked.
  @HiveField(3)
  String title;

  //  Extensions for title
  @HiveField(4)
  Element elementTitle;

  //  A human-readable description of the alternative explaining when the
  // alternative should occur rather than the base step.
  @HiveField(5)
  String description;

  //  Extensions for description
  @HiveField(6)
  Element elementDescription;

  //  What happens in each alternative option.
  @HiveField(7)
  List<ExampleScenario_Step> step;

ExampleScenario_Alternative(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.title,
    this.elementTitle,
    this.description,
    this.elementDescription,
    this.step
    });

  factory ExampleScenario_Alternative.fromJson(Map<String, dynamic> json) => _$ExampleScenario_AlternativeFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_AlternativeToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExampleScenarioAdapter extends TypeAdapter<ExampleScenario> {
  @override
  final typeId = 258;

  @override
  ExampleScenario read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExampleScenario(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      url: fields[11] as String,
      elementUrl: fields[12] as Element,
      identifier: (fields[13] as List)?.cast<Identifier>(),
      version: fields[14] as String,
      elementVersion: fields[15] as Element,
      name: fields[16] as String,
      elementName: fields[17] as Element,
      status: fields[18] as String,
      elementStatus: fields[19] as Element,
      experimental: fields[20] as bool,
      elementExperimental: fields[21] as Element,
      date: fields[22] as DateTime,
      elementDate: fields[23] as Element,
      publisher: fields[24] as String,
      elementPublisher: fields[25] as Element,
      contact: (fields[26] as List)?.cast<ContactDetail>(),
      useContext: (fields[27] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[28] as List)?.cast<CodeableConcept>(),
      copyright: fields[29] as String,
      elementCopyright: fields[30] as Element,
      purpose: fields[31] as String,
      elementPurpose: fields[32] as Element,
      actor: (fields[33] as List)?.cast<ExampleScenario_Actor>(),
      instance: (fields[34] as List)?.cast<ExampleScenario_Instance>(),
      process: (fields[35] as List)?.cast<ExampleScenario_Process>(),
      workflow: (fields[36] as List)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExampleScenario obj) {
    writer
      ..writeByte(37)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.url)
      ..writeByte(12)
      ..write(obj.elementUrl)
      ..writeByte(13)
      ..write(obj.identifier)
      ..writeByte(14)
      ..write(obj.version)
      ..writeByte(15)
      ..write(obj.elementVersion)
      ..writeByte(16)
      ..write(obj.name)
      ..writeByte(17)
      ..write(obj.elementName)
      ..writeByte(18)
      ..write(obj.status)
      ..writeByte(19)
      ..write(obj.elementStatus)
      ..writeByte(20)
      ..write(obj.experimental)
      ..writeByte(21)
      ..write(obj.elementExperimental)
      ..writeByte(22)
      ..write(obj.date)
      ..writeByte(23)
      ..write(obj.elementDate)
      ..writeByte(24)
      ..write(obj.publisher)
      ..writeByte(25)
      ..write(obj.elementPublisher)
      ..writeByte(26)
      ..write(obj.contact)
      ..writeByte(27)
      ..write(obj.useContext)
      ..writeByte(28)
      ..write(obj.jurisdiction)
      ..writeByte(29)
      ..write(obj.copyright)
      ..writeByte(30)
      ..write(obj.elementCopyright)
      ..writeByte(31)
      ..write(obj.purpose)
      ..writeByte(32)
      ..write(obj.elementPurpose)
      ..writeByte(33)
      ..write(obj.actor)
      ..writeByte(34)
      ..write(obj.instance)
      ..writeByte(35)
      ..write(obj.process)
      ..writeByte(36)
      ..write(obj.workflow);
  }
}

class ExampleScenario_ActorAdapter extends TypeAdapter<ExampleScenario_Actor> {
  @override
  final typeId = 259;

  @override
  ExampleScenario_Actor read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExampleScenario_Actor(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      actorId: fields[3] as String,
      elementActorId: fields[4] as Element,
      type: fields[5] as String,
      elementType: fields[6] as Element,
      name: fields[7] as String,
      elementName: fields[8] as Element,
      description: fields[9] as String,
      elementDescription: fields[10] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ExampleScenario_Actor obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.actorId)
      ..writeByte(4)
      ..write(obj.elementActorId)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.elementType)
      ..writeByte(7)
      ..write(obj.name)
      ..writeByte(8)
      ..write(obj.elementName)
      ..writeByte(9)
      ..write(obj.description)
      ..writeByte(10)
      ..write(obj.elementDescription);
  }
}

class ExampleScenario_InstanceAdapter
    extends TypeAdapter<ExampleScenario_Instance> {
  @override
  final typeId = 260;

  @override
  ExampleScenario_Instance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExampleScenario_Instance(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      resourceId: fields[3] as String,
      elementResourceId: fields[4] as Element,
      elementResourceType: fields[6] as Element,
      name: fields[7] as String,
      elementName: fields[8] as Element,
      description: fields[9] as String,
      elementDescription: fields[10] as Element,
      version: (fields[11] as List)?.cast<ExampleScenario_Version>(),
      containedInstance:
          (fields[12] as List)?.cast<ExampleScenario_ContainedInstance>(),
    )..resourceType = fields[5] as String;
  }

  @override
  void write(BinaryWriter writer, ExampleScenario_Instance obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.resourceId)
      ..writeByte(4)
      ..write(obj.elementResourceId)
      ..writeByte(5)
      ..write(obj.resourceType)
      ..writeByte(6)
      ..write(obj.elementResourceType)
      ..writeByte(7)
      ..write(obj.name)
      ..writeByte(8)
      ..write(obj.elementName)
      ..writeByte(9)
      ..write(obj.description)
      ..writeByte(10)
      ..write(obj.elementDescription)
      ..writeByte(11)
      ..write(obj.version)
      ..writeByte(12)
      ..write(obj.containedInstance);
  }
}

class ExampleScenario_VersionAdapter
    extends TypeAdapter<ExampleScenario_Version> {
  @override
  final typeId = 261;

  @override
  ExampleScenario_Version read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExampleScenario_Version(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      versionId: fields[3] as String,
      elementVersionId: fields[4] as Element,
      description: fields[5] as String,
      elementDescription: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ExampleScenario_Version obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.versionId)
      ..writeByte(4)
      ..write(obj.elementVersionId)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.elementDescription);
  }
}

class ExampleScenario_ContainedInstanceAdapter
    extends TypeAdapter<ExampleScenario_ContainedInstance> {
  @override
  final typeId = 262;

  @override
  ExampleScenario_ContainedInstance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExampleScenario_ContainedInstance(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      resourceId: fields[3] as String,
      elementResourceId: fields[4] as Element,
      versionId: fields[5] as String,
      elementVersionId: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ExampleScenario_ContainedInstance obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.resourceId)
      ..writeByte(4)
      ..write(obj.elementResourceId)
      ..writeByte(5)
      ..write(obj.versionId)
      ..writeByte(6)
      ..write(obj.elementVersionId);
  }
}

class ExampleScenario_ProcessAdapter
    extends TypeAdapter<ExampleScenario_Process> {
  @override
  final typeId = 263;

  @override
  ExampleScenario_Process read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExampleScenario_Process(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      title: fields[3] as String,
      elementTitle: fields[4] as Element,
      description: fields[5] as String,
      elementDescription: fields[6] as Element,
      preConditions: fields[7] as String,
      elementPreConditions: fields[8] as Element,
      postConditions: fields[9] as String,
      elementPostConditions: fields[10] as Element,
      step: (fields[11] as List)?.cast<ExampleScenario_Step>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExampleScenario_Process obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.elementTitle)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.elementDescription)
      ..writeByte(7)
      ..write(obj.preConditions)
      ..writeByte(8)
      ..write(obj.elementPreConditions)
      ..writeByte(9)
      ..write(obj.postConditions)
      ..writeByte(10)
      ..write(obj.elementPostConditions)
      ..writeByte(11)
      ..write(obj.step);
  }
}

class ExampleScenario_StepAdapter extends TypeAdapter<ExampleScenario_Step> {
  @override
  final typeId = 264;

  @override
  ExampleScenario_Step read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExampleScenario_Step(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      process: (fields[3] as List)?.cast<ExampleScenario_Process>(),
      pause: fields[4] as bool,
      elementPause: fields[5] as Element,
      operation: fields[6] as ExampleScenario_Operation,
      alternative: (fields[7] as List)?.cast<ExampleScenario_Alternative>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExampleScenario_Step obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.process)
      ..writeByte(4)
      ..write(obj.pause)
      ..writeByte(5)
      ..write(obj.elementPause)
      ..writeByte(6)
      ..write(obj.operation)
      ..writeByte(7)
      ..write(obj.alternative);
  }
}

class ExampleScenario_OperationAdapter
    extends TypeAdapter<ExampleScenario_Operation> {
  @override
  final typeId = 265;

  @override
  ExampleScenario_Operation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExampleScenario_Operation(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      number: fields[3] as String,
      elementNumber: fields[4] as Element,
      type: fields[5] as String,
      elementType: fields[6] as Element,
      name: fields[7] as String,
      elementName: fields[8] as Element,
      initiator: fields[9] as String,
      elementInitiator: fields[10] as Element,
      receiver: fields[11] as String,
      elementReceiver: fields[12] as Element,
      description: fields[13] as String,
      elementDescription: fields[14] as Element,
      initiatorActive: fields[15] as bool,
      elementInitiatorActive: fields[16] as Element,
      receiverActive: fields[17] as bool,
      elementReceiverActive: fields[18] as Element,
      request: fields[19] as ExampleScenario_ContainedInstance,
      response: fields[20] as ExampleScenario_ContainedInstance,
    );
  }

  @override
  void write(BinaryWriter writer, ExampleScenario_Operation obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.number)
      ..writeByte(4)
      ..write(obj.elementNumber)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.elementType)
      ..writeByte(7)
      ..write(obj.name)
      ..writeByte(8)
      ..write(obj.elementName)
      ..writeByte(9)
      ..write(obj.initiator)
      ..writeByte(10)
      ..write(obj.elementInitiator)
      ..writeByte(11)
      ..write(obj.receiver)
      ..writeByte(12)
      ..write(obj.elementReceiver)
      ..writeByte(13)
      ..write(obj.description)
      ..writeByte(14)
      ..write(obj.elementDescription)
      ..writeByte(15)
      ..write(obj.initiatorActive)
      ..writeByte(16)
      ..write(obj.elementInitiatorActive)
      ..writeByte(17)
      ..write(obj.receiverActive)
      ..writeByte(18)
      ..write(obj.elementReceiverActive)
      ..writeByte(19)
      ..write(obj.request)
      ..writeByte(20)
      ..write(obj.response);
  }
}

class ExampleScenario_AlternativeAdapter
    extends TypeAdapter<ExampleScenario_Alternative> {
  @override
  final typeId = 266;

  @override
  ExampleScenario_Alternative read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExampleScenario_Alternative(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      title: fields[3] as String,
      elementTitle: fields[4] as Element,
      description: fields[5] as String,
      elementDescription: fields[6] as Element,
      step: (fields[7] as List)?.cast<ExampleScenario_Step>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExampleScenario_Alternative obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.elementTitle)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.elementDescription)
      ..writeByte(7)
      ..write(obj.step);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleScenario _$ExampleScenarioFromJson(Map<String, dynamic> json) {
  return ExampleScenario(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    elementExperimental: json['elementExperimental'] == null
        ? null
        : Element.fromJson(json['elementExperimental'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    publisher: json['publisher'] as String,
    elementPublisher: json['elementPublisher'] == null
        ? null
        : Element.fromJson(json['elementPublisher'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    actor: (json['actor'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Actor.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instance: (json['instance'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Instance.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    process: (json['process'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Process.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    workflow: (json['workflow'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ExampleScenarioToJson(ExampleScenario instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'experimental': instance.experimental,
      'elementExperimental': instance.elementExperimental?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'purpose': instance.purpose,
      'elementPurpose': instance.elementPurpose?.toJson(),
      'actor': instance.actor?.map((e) => e?.toJson())?.toList(),
      'instance': instance.instance?.map((e) => e?.toJson())?.toList(),
      'process': instance.process?.map((e) => e?.toJson())?.toList(),
      'workflow': instance.workflow,
    };

ExampleScenario_Actor _$ExampleScenario_ActorFromJson(
    Map<String, dynamic> json) {
  return ExampleScenario_Actor(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    actorId: json['actorId'] as String,
    elementActorId: json['elementActorId'] == null
        ? null
        : Element.fromJson(json['elementActorId'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExampleScenario_ActorToJson(
        ExampleScenario_Actor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'actorId': instance.actorId,
      'elementActorId': instance.elementActorId?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
    };

ExampleScenario_Instance _$ExampleScenario_InstanceFromJson(
    Map<String, dynamic> json) {
  return ExampleScenario_Instance(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    resourceId: json['resourceId'] as String,
    elementResourceId: json['elementResourceId'] == null
        ? null
        : Element.fromJson(json['elementResourceId'] as Map<String, dynamic>),
    elementResourceType: json['elementResourceType'] == null
        ? null
        : Element.fromJson(json['elementResourceType'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    version: (json['version'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Version.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    containedInstance: (json['containedInstance'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_ContainedInstance.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  )..resourceType = json['resourceType'] as String;
}

Map<String, dynamic> _$ExampleScenario_InstanceToJson(
        ExampleScenario_Instance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'resourceId': instance.resourceId,
      'elementResourceId': instance.elementResourceId?.toJson(),
      'resourceType': instance.resourceType,
      'elementResourceType': instance.elementResourceType?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'version': instance.version?.map((e) => e?.toJson())?.toList(),
      'containedInstance':
          instance.containedInstance?.map((e) => e?.toJson())?.toList(),
    };

ExampleScenario_Version _$ExampleScenario_VersionFromJson(
    Map<String, dynamic> json) {
  return ExampleScenario_Version(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    versionId: json['versionId'] as String,
    elementVersionId: json['elementVersionId'] == null
        ? null
        : Element.fromJson(json['elementVersionId'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExampleScenario_VersionToJson(
        ExampleScenario_Version instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'versionId': instance.versionId,
      'elementVersionId': instance.elementVersionId?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
    };

ExampleScenario_ContainedInstance _$ExampleScenario_ContainedInstanceFromJson(
    Map<String, dynamic> json) {
  return ExampleScenario_ContainedInstance(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    resourceId: json['resourceId'] as String,
    elementResourceId: json['elementResourceId'] == null
        ? null
        : Element.fromJson(json['elementResourceId'] as Map<String, dynamic>),
    versionId: json['versionId'] as String,
    elementVersionId: json['elementVersionId'] == null
        ? null
        : Element.fromJson(json['elementVersionId'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExampleScenario_ContainedInstanceToJson(
        ExampleScenario_ContainedInstance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'resourceId': instance.resourceId,
      'elementResourceId': instance.elementResourceId?.toJson(),
      'versionId': instance.versionId,
      'elementVersionId': instance.elementVersionId?.toJson(),
    };

ExampleScenario_Process _$ExampleScenario_ProcessFromJson(
    Map<String, dynamic> json) {
  return ExampleScenario_Process(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    preConditions: json['preConditions'] as String,
    elementPreConditions: json['elementPreConditions'] == null
        ? null
        : Element.fromJson(
            json['elementPreConditions'] as Map<String, dynamic>),
    postConditions: json['postConditions'] as String,
    elementPostConditions: json['elementPostConditions'] == null
        ? null
        : Element.fromJson(
            json['elementPostConditions'] as Map<String, dynamic>),
    step: (json['step'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Step.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExampleScenario_ProcessToJson(
        ExampleScenario_Process instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'preConditions': instance.preConditions,
      'elementPreConditions': instance.elementPreConditions?.toJson(),
      'postConditions': instance.postConditions,
      'elementPostConditions': instance.elementPostConditions?.toJson(),
      'step': instance.step?.map((e) => e?.toJson())?.toList(),
    };

ExampleScenario_Step _$ExampleScenario_StepFromJson(Map<String, dynamic> json) {
  return ExampleScenario_Step(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    process: (json['process'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Process.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    pause: json['pause'] as bool,
    elementPause: json['elementPause'] == null
        ? null
        : Element.fromJson(json['elementPause'] as Map<String, dynamic>),
    operation: json['operation'] == null
        ? null
        : ExampleScenario_Operation.fromJson(
            json['operation'] as Map<String, dynamic>),
    alternative: (json['alternative'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Alternative.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExampleScenario_StepToJson(
        ExampleScenario_Step instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'process': instance.process?.map((e) => e?.toJson())?.toList(),
      'pause': instance.pause,
      'elementPause': instance.elementPause?.toJson(),
      'operation': instance.operation?.toJson(),
      'alternative': instance.alternative?.map((e) => e?.toJson())?.toList(),
    };

ExampleScenario_Operation _$ExampleScenario_OperationFromJson(
    Map<String, dynamic> json) {
  return ExampleScenario_Operation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    number: json['number'] as String,
    elementNumber: json['elementNumber'] == null
        ? null
        : Element.fromJson(json['elementNumber'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    initiator: json['initiator'] as String,
    elementInitiator: json['elementInitiator'] == null
        ? null
        : Element.fromJson(json['elementInitiator'] as Map<String, dynamic>),
    receiver: json['receiver'] as String,
    elementReceiver: json['elementReceiver'] == null
        ? null
        : Element.fromJson(json['elementReceiver'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    initiatorActive: json['initiatorActive'] as bool,
    elementInitiatorActive: json['elementInitiatorActive'] == null
        ? null
        : Element.fromJson(
            json['elementInitiatorActive'] as Map<String, dynamic>),
    receiverActive: json['receiverActive'] as bool,
    elementReceiverActive: json['elementReceiverActive'] == null
        ? null
        : Element.fromJson(
            json['elementReceiverActive'] as Map<String, dynamic>),
    request: json['request'] == null
        ? null
        : ExampleScenario_ContainedInstance.fromJson(
            json['request'] as Map<String, dynamic>),
    response: json['response'] == null
        ? null
        : ExampleScenario_ContainedInstance.fromJson(
            json['response'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExampleScenario_OperationToJson(
        ExampleScenario_Operation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'number': instance.number,
      'elementNumber': instance.elementNumber?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'initiator': instance.initiator,
      'elementInitiator': instance.elementInitiator?.toJson(),
      'receiver': instance.receiver,
      'elementReceiver': instance.elementReceiver?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'initiatorActive': instance.initiatorActive,
      'elementInitiatorActive': instance.elementInitiatorActive?.toJson(),
      'receiverActive': instance.receiverActive,
      'elementReceiverActive': instance.elementReceiverActive?.toJson(),
      'request': instance.request?.toJson(),
      'response': instance.response?.toJson(),
    };

ExampleScenario_Alternative _$ExampleScenario_AlternativeFromJson(
    Map<String, dynamic> json) {
  return ExampleScenario_Alternative(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    step: (json['step'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Step.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExampleScenario_AlternativeToJson(
        ExampleScenario_Alternative instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'step': instance.step?.map((e) => e?.toJson())?.toList(),
    };
