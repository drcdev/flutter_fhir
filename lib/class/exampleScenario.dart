import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/usageContext.dart';
import 'package:flutter_fhir/class/contactDetail.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'exampleScenario.g.dart';

@JsonSerializable(explicitToJson: true)
class ExampleScenario {

  //  This is a ExampleScenario resource
  final String resourceType= 'ExampleScenario';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
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
  List<Extension> modifierExtension;

  //  An absolute URI that is used to identify this example scenario when it
  // is referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this example scenario is (or will be) published. This URL can be the
  // target of a canonical reference. It SHALL remain the same when the
  // example scenario is stored on different servers.
  String url;

  //  Extensions for url
  Element elementUrl;

  //  A formal identifier that is used to identify this example scenario
  // when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the example
  // scenario when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the example scenario
  // author and is not expected to be globally unique. For example, it might
  // be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  // There is also no expectation that versions can be placed in a
  // lexicographical sequence.
  String version;

  //  Extensions for version
  Element elementVersion;

  //  A natural language name identifying the example scenario. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  String name;

  //  Extensions for name
  Element elementName;

  //  The status of this example scenario. Enables tracking the life-cycle
  // of the content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element elementStatus;

  //  A Boolean value to indicate that this example scenario is authored for
  // testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  bool experimental;

  //  Extensions for experimental
  Element elementExperimental;

  //  The date  (and optionally time) when the example scenario was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the example scenario changes.
  // (e.g. the 'content logical definition').
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  The name of the organization or individual that published the example
  // scenario.
  String publisher;

  //  Extensions for publisher
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate example scenario instances.
  List<UsageContext> useContext;

  //  A legal or geographic region in which the example scenario is intended
  // to be used.
  List<CodeableConcept> jurisdiction;

  //  A copyright statement relating to the example scenario and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the example scenario.
  String copyright;

  //  Extensions for copyright
  Element elementCopyright;

  //  What the example scenario resource is created for. This should not be
  // used to show the business purpose of the scenario itself, but the
  // purpose of documenting a scenario.
  String purpose;

  //  Extensions for purpose
  Element elementPurpose;

  //  Actor participating in the resource.
  List<ExampleScenario_Actor> actor;

  //  Each resource and each version that is present in the workflow.
  List<ExampleScenario_Instance> instance;

  //  Each major process - a group of operations.
  List<ExampleScenario_Process> process;

  //  Another nested workflow.
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
class ExampleScenario_Actor {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  ID or acronym of actor.
  String actorId;

  //  Extensions for actorId
  Element elementActorId;

  //  The type of actor - person or system.
  String type; // <code> enum: person/entity;

  //  Extensions for type
  Element elementType;

  //  The name of the actor as shown in the page.
  String name;

  //  Extensions for name
  Element elementName;

  //  The description of the actor.
  String description;

  //  Extensions for description
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
class ExampleScenario_Instance {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The id of the resource for referencing.
  String resourceId;

  //  Extensions for resourceId
  Element elementResourceId;

  //  The type of the resource.
  String resourceType;

  //  Extensions for resourceType
  Element elementResourceType;

  //  A short name for the resource instance.
  String name;

  //  Extensions for name
  Element elementName;

  //  Human-friendly description of the resource instance.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  A specific version of the resource.
  List<ExampleScenario_Version> version;

  //  Resources contained in the instance (e.g. the observations contained
  // in a bundle).
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
class ExampleScenario_Version {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The identifier of a specific version of a resource.
  String versionId;

  //  Extensions for versionId
  Element elementVersionId;

  //  The description of the resource version.
  String description;

  //  Extensions for description
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
class ExampleScenario_ContainedInstance {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Each resource contained in the instance.
  String resourceId;

  //  Extensions for resourceId
  Element elementResourceId;

  //  A specific version of a resource contained in the instance.
  String versionId;

  //  Extensions for versionId
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
class ExampleScenario_Process {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The diagram title of the group of operations.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  A longer description of the group of operations.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  Description of initial status before the process starts.
  String preConditions;

  //  Extensions for preConditions
  Element elementPreConditions;

  //  Description of final status after the process ends.
  String postConditions;

  //  Extensions for postConditions
  Element elementPostConditions;

  //  Each step of the process.
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
class ExampleScenario_Step {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Nested process.
  List<ExampleScenario_Process> process;

  //  If there is a pause in the flow.
  bool pause;

  //  Extensions for pause
  Element elementPause;

  //  Each interaction or action.
  ExampleScenario_Operation operation;

  //  Indicates an alternative step that can be taken instead of the
  // operations on the base step in exceptional/atypical circumstances.
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
class ExampleScenario_Operation {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The sequential number of the interaction, e.g. 1.2.5.
  String number;

  //  Extensions for number
  Element elementNumber;

  //  The type of operation - CRUD.
  String type;

  //  Extensions for type
  Element elementType;

  //  The human-friendly name of the interaction.
  String name;

  //  Extensions for name
  Element elementName;

  //  Who starts the transaction.
  String initiator;

  //  Extensions for initiator
  Element elementInitiator;

  //  Who receives the transaction.
  String receiver;

  //  Extensions for receiver
  Element elementReceiver;

  //  A comment to be inserted in the diagram.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  Whether the initiator is deactivated right after the transaction.
  bool initiatorActive;

  //  Extensions for initiatorActive
  Element elementInitiatorActive;

  //  Whether the receiver is deactivated right after the transaction.
  bool receiverActive;

  //  Extensions for receiverActive
  Element elementReceiverActive;

  //  Each resource instance used by the initiator.
  ExampleScenario_ContainedInstance request;

  //  Each resource instance used by the responder.
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
class ExampleScenario_Alternative {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The label to display for the alternative that gives a sense of the
  // circumstance in which the alternative should be invoked.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  A human-readable description of the alternative explaining when the
  // alternative should occur rather than the base step.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  What happens in each alternative option.
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

