import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class ExampleScenario {
  static Future<ExampleScenario> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    Narrative text,
    List<dynamic> contained,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String url,
    Element elementUrl,
    List<Identifier> identifier,
    String version,
    Element elementVersion,
    String name,
    Element elementName,
    String status,
    Element elementStatus,
    bool experimental,
    Element elementExperimental,
    DateTime date,
    Element elementDate,
    String publisher,
    Element elementPublisher,
    List<ContactDetail> contact,
    List<UsageContext> useContext,
    List<CodeableConcept> jurisdiction,
    String copyright,
    Element elementCopyright,
    String purpose,
    Element elementPurpose,
    List<ExampleScenario_Actor> actor,
    List<ExampleScenario_Instance> instance,
    List<ExampleScenario_Process> process,
    List<String> workflow,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExampleScenario newExampleScenario = new ExampleScenario(
      resourceType: 'ExampleScenario',
      id: id ?? await fhirDb.newResourceId('ExampleScenario'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      url: url,
      elementUrl: elementUrl,
      identifier: identifier,
      version: version,
      elementVersion: elementVersion,
      name: name,
      elementName: elementName,
      status: status,
      elementStatus: elementStatus,
      experimental: experimental,
      elementExperimental: elementExperimental,
      date: date,
      elementDate: elementDate,
      publisher: publisher,
      elementPublisher: elementPublisher,
      contact: contact,
      useContext: useContext,
      jurisdiction: jurisdiction,
      copyright: copyright,
      elementCopyright: elementCopyright,
      purpose: purpose,
      elementPurpose: elementPurpose,
      actor: actor,
      instance: instance,
      process: process,
      workflow: workflow,
    );
    newExampleScenario.meta.createdAt = DateTime.now();
    newExampleScenario.meta.lastUpdated = newExampleScenario.meta.createdAt;
    int saved = await fhirDb.saveResource(newExampleScenario);
    return newExampleScenario;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'ExampleScenario';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  String url;
  @HiveField(12)
  Element elementUrl;
  @HiveField(13)
  List<Identifier> identifier;
  @HiveField(14)
  String version;
  @HiveField(15)
  Element elementVersion;
  @HiveField(16)
  String name;
  @HiveField(17)
  Element elementName;
  @HiveField(18)
  String status;
  @HiveField(19)
  Element elementStatus;
  @HiveField(20)
  bool experimental;
  @HiveField(21)
  Element elementExperimental;
  @HiveField(22)
  DateTime date;
  @HiveField(23)
  Element elementDate;
  @HiveField(24)
  String publisher;
  @HiveField(25)
  Element elementPublisher;
  @HiveField(26)
  List<ContactDetail> contact;
  @HiveField(27)
  List<UsageContext> useContext;
  @HiveField(28)
  List<CodeableConcept> jurisdiction;
  @HiveField(29)
  String copyright;
  @HiveField(30)
  Element elementCopyright;
  @HiveField(31)
  String purpose;
  @HiveField(32)
  Element elementPurpose;
  @HiveField(33)
  List<ExampleScenario_Actor> actor;
  @HiveField(34)
  List<ExampleScenario_Instance> instance;
  @HiveField(35)
  List<ExampleScenario_Process> process;
  @HiveField(36)
  List<String> workflow;

  ExampleScenario({
    @required this.resourceType,
    this.id,
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
    this.workflow,
  });

  factory ExampleScenario.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenarioFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenarioToJson(this);
}

class ExampleScenario_Actor {
  static Future<ExampleScenario_Actor> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String actorId,
    Element elementActorId,
    String type,
    Element elementType,
    String name,
    Element elementName,
    String description,
    Element elementDescription,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExampleScenario_Actor newExampleScenario_Actor = new ExampleScenario_Actor(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      actorId: actorId,
      elementActorId: elementActorId,
      type: type,
      elementType: elementType,
      name: name,
      elementName: elementName,
      description: description,
      elementDescription: elementDescription,
    );
    return newExampleScenario_Actor;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String actorId;
  @HiveField(4)
  Element elementActorId;
  @HiveField(5)
  String type;
  @HiveField(6)
  Element elementType;
  @HiveField(7)
  String name;
  @HiveField(8)
  Element elementName;
  @HiveField(9)
  String description;
  @HiveField(10)
  Element elementDescription;

  ExampleScenario_Actor({
    this.id,
    this.extension,
    this.modifierExtension,
    this.actorId,
    this.elementActorId,
    this.type,
    this.elementType,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription,
  });

  factory ExampleScenario_Actor.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenario_ActorFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_ActorToJson(this);
}

class ExampleScenario_Instance {
  static Future<ExampleScenario_Instance> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String resourceId,
    Element elementResourceId,
    String resourceType,
    Element elementResourceType,
    String name,
    Element elementName,
    String description,
    Element elementDescription,
    List<ExampleScenario_Version> version,
    List<ExampleScenario_ContainedInstance> containedInstance,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExampleScenario_Instance newExampleScenario_Instance =
        new ExampleScenario_Instance(
      id: id ?? await fhirDb.newResourceId('ExampleScenario_Instance'),
      extension: extension,
      modifierExtension: modifierExtension,
      resourceId: resourceId,
      elementResourceId: elementResourceId,
      resourceType: 'ExampleScenario_Instance',
      elementResourceType: elementResourceType,
      name: name,
      elementName: elementName,
      description: description,
      elementDescription: elementDescription,
      version: version,
      containedInstance: containedInstance,
    );
    return newExampleScenario_Instance;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String resourceId;
  @HiveField(4)
  Element elementResourceId;
  @HiveField(5)
  String resourceType = 'ExampleScenario_Instance';
  @HiveField(6)
  Element elementResourceType;
  @HiveField(7)
  String name;
  @HiveField(8)
  Element elementName;
  @HiveField(9)
  String description;
  @HiveField(10)
  Element elementDescription;
  @HiveField(11)
  List<ExampleScenario_Version> version;
  @HiveField(12)
  List<ExampleScenario_ContainedInstance> containedInstance;

  ExampleScenario_Instance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.resourceId,
    this.elementResourceId,
    this.resourceType,
    this.elementResourceType,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription,
    this.version,
    this.containedInstance,
  });

  factory ExampleScenario_Instance.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenario_InstanceFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_InstanceToJson(this);
}

class ExampleScenario_Version {
  static Future<ExampleScenario_Version> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String versionId,
    Element elementVersionId,
    String description,
    Element elementDescription,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExampleScenario_Version newExampleScenario_Version =
        new ExampleScenario_Version(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      versionId: versionId,
      elementVersionId: elementVersionId,
      description: description,
      elementDescription: elementDescription,
    );
    return newExampleScenario_Version;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String versionId;
  @HiveField(4)
  Element elementVersionId;
  @HiveField(5)
  String description;
  @HiveField(6)
  Element elementDescription;

  ExampleScenario_Version({
    this.id,
    this.extension,
    this.modifierExtension,
    this.versionId,
    this.elementVersionId,
    this.description,
    this.elementDescription,
  });

  factory ExampleScenario_Version.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenario_VersionFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_VersionToJson(this);
}

class ExampleScenario_ContainedInstance {
  static Future<ExampleScenario_ContainedInstance> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String resourceId,
    Element elementResourceId,
    String versionId,
    Element elementVersionId,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExampleScenario_ContainedInstance newExampleScenario_ContainedInstance =
        new ExampleScenario_ContainedInstance(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      resourceId: resourceId,
      elementResourceId: elementResourceId,
      versionId: versionId,
      elementVersionId: elementVersionId,
    );
    return newExampleScenario_ContainedInstance;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String resourceId;
  @HiveField(4)
  Element elementResourceId;
  @HiveField(5)
  String versionId;
  @HiveField(6)
  Element elementVersionId;

  ExampleScenario_ContainedInstance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.resourceId,
    this.elementResourceId,
    this.versionId,
    this.elementVersionId,
  });

  factory ExampleScenario_ContainedInstance.fromJson(
          Map<String, dynamic> json) =>
      _$ExampleScenario_ContainedInstanceFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ExampleScenario_ContainedInstanceToJson(this);
}

class ExampleScenario_Process {
  static Future<ExampleScenario_Process> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String title,
    Element elementTitle,
    String description,
    Element elementDescription,
    String preConditions,
    Element elementPreConditions,
    String postConditions,
    Element elementPostConditions,
    List<ExampleScenario_Step> step,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExampleScenario_Process newExampleScenario_Process =
        new ExampleScenario_Process(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      title: title,
      elementTitle: elementTitle,
      description: description,
      elementDescription: elementDescription,
      preConditions: preConditions,
      elementPreConditions: elementPreConditions,
      postConditions: postConditions,
      elementPostConditions: elementPostConditions,
      step: step,
    );
    return newExampleScenario_Process;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String title;
  @HiveField(4)
  Element elementTitle;
  @HiveField(5)
  String description;
  @HiveField(6)
  Element elementDescription;
  @HiveField(7)
  String preConditions;
  @HiveField(8)
  Element elementPreConditions;
  @HiveField(9)
  String postConditions;
  @HiveField(10)
  Element elementPostConditions;
  @HiveField(11)
  List<ExampleScenario_Step> step;

  ExampleScenario_Process({
    this.id,
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
    this.step,
  });

  factory ExampleScenario_Process.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenario_ProcessFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_ProcessToJson(this);
}

class ExampleScenario_Step {
  static Future<ExampleScenario_Step> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<ExampleScenario_Process> process,
    bool pause,
    Element elementPause,
    ExampleScenario_Operation operation,
    List<ExampleScenario_Alternative> alternative,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExampleScenario_Step newExampleScenario_Step = new ExampleScenario_Step(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      process: process,
      pause: pause,
      elementPause: elementPause,
      operation: operation,
      alternative: alternative,
    );
    return newExampleScenario_Step;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<ExampleScenario_Process> process;
  @HiveField(4)
  bool pause;
  @HiveField(5)
  Element elementPause;
  @HiveField(6)
  ExampleScenario_Operation operation;
  @HiveField(7)
  List<ExampleScenario_Alternative> alternative;

  ExampleScenario_Step({
    this.id,
    this.extension,
    this.modifierExtension,
    this.process,
    this.pause,
    this.elementPause,
    this.operation,
    this.alternative,
  });

  factory ExampleScenario_Step.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenario_StepFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_StepToJson(this);
}

class ExampleScenario_Operation {
  static Future<ExampleScenario_Operation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String number,
    Element elementNumber,
    String type,
    Element elementType,
    String name,
    Element elementName,
    String initiator,
    Element elementInitiator,
    String receiver,
    Element elementReceiver,
    String description,
    Element elementDescription,
    bool initiatorActive,
    Element elementInitiatorActive,
    bool receiverActive,
    Element elementReceiverActive,
    ExampleScenario_ContainedInstance request,
    ExampleScenario_ContainedInstance response,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExampleScenario_Operation newExampleScenario_Operation =
        new ExampleScenario_Operation(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      number: number,
      elementNumber: elementNumber,
      type: type,
      elementType: elementType,
      name: name,
      elementName: elementName,
      initiator: initiator,
      elementInitiator: elementInitiator,
      receiver: receiver,
      elementReceiver: elementReceiver,
      description: description,
      elementDescription: elementDescription,
      initiatorActive: initiatorActive,
      elementInitiatorActive: elementInitiatorActive,
      receiverActive: receiverActive,
      elementReceiverActive: elementReceiverActive,
      request: request,
      response: response,
    );
    return newExampleScenario_Operation;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String number;
  @HiveField(4)
  Element elementNumber;
  @HiveField(5)
  String type;
  @HiveField(6)
  Element elementType;
  @HiveField(7)
  String name;
  @HiveField(8)
  Element elementName;
  @HiveField(9)
  String initiator;
  @HiveField(10)
  Element elementInitiator;
  @HiveField(11)
  String receiver;
  @HiveField(12)
  Element elementReceiver;
  @HiveField(13)
  String description;
  @HiveField(14)
  Element elementDescription;
  @HiveField(15)
  bool initiatorActive;
  @HiveField(16)
  Element elementInitiatorActive;
  @HiveField(17)
  bool receiverActive;
  @HiveField(18)
  Element elementReceiverActive;
  @HiveField(19)
  ExampleScenario_ContainedInstance request;
  @HiveField(20)
  ExampleScenario_ContainedInstance response;

  ExampleScenario_Operation({
    this.id,
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
    this.response,
  });

  factory ExampleScenario_Operation.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenario_OperationFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_OperationToJson(this);
}

class ExampleScenario_Alternative {
  static Future<ExampleScenario_Alternative> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String title,
    Element elementTitle,
    String description,
    Element elementDescription,
    List<ExampleScenario_Step> step,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExampleScenario_Alternative newExampleScenario_Alternative =
        new ExampleScenario_Alternative(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      title: title,
      elementTitle: elementTitle,
      description: description,
      elementDescription: elementDescription,
      step: step,
    );
    return newExampleScenario_Alternative;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String title;
  @HiveField(4)
  Element elementTitle;
  @HiveField(5)
  String description;
  @HiveField(6)
  Element elementDescription;
  @HiveField(7)
  List<ExampleScenario_Step> step;

  ExampleScenario_Alternative({
    this.id,
    this.extension,
    this.modifierExtension,
    this.title,
    this.elementTitle,
    this.description,
    this.elementDescription,
    this.step,
  });

  factory ExampleScenario_Alternative.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenario_AlternativeFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_AlternativeToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleScenario _$ExampleScenarioFromJson(Map<String, dynamic> json) {
  return ExampleScenario(
    resourceType: json['resourceType'] as String,
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExampleScenarioToJson(ExampleScenario instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('experimental', instance.experimental);
  writeNotNull('elementExperimental', instance.elementExperimental?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('publisher', instance.publisher);
  writeNotNull('elementPublisher', instance.elementPublisher?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e?.toJson())?.toList());
  writeNotNull('copyright', instance.copyright);
  writeNotNull('elementCopyright', instance.elementCopyright?.toJson());
  writeNotNull('purpose', instance.purpose);
  writeNotNull('elementPurpose', instance.elementPurpose?.toJson());
  writeNotNull('actor', instance.actor?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'instance', instance.instance?.map((e) => e?.toJson())?.toList());
  writeNotNull('process', instance.process?.map((e) => e?.toJson())?.toList());
  writeNotNull('workflow', instance.workflow);
  return val;
}

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
    ExampleScenario_Actor instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('actorId', instance.actorId);
  writeNotNull('elementActorId', instance.elementActorId?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  return val;
}

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
    resourceType: json['resourceType'] as String,
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
  );
}

Map<String, dynamic> _$ExampleScenario_InstanceToJson(
    ExampleScenario_Instance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('resourceId', instance.resourceId);
  writeNotNull('elementResourceId', instance.elementResourceId?.toJson());
  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('elementResourceType', instance.elementResourceType?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('version', instance.version?.map((e) => e?.toJson())?.toList());
  writeNotNull('containedInstance',
      instance.containedInstance?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    ExampleScenario_Version instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('versionId', instance.versionId);
  writeNotNull('elementVersionId', instance.elementVersionId?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  return val;
}

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
    ExampleScenario_ContainedInstance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('resourceId', instance.resourceId);
  writeNotNull('elementResourceId', instance.elementResourceId?.toJson());
  writeNotNull('versionId', instance.versionId);
  writeNotNull('elementVersionId', instance.elementVersionId?.toJson());
  return val;
}

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
    ExampleScenario_Process instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('preConditions', instance.preConditions);
  writeNotNull('elementPreConditions', instance.elementPreConditions?.toJson());
  writeNotNull('postConditions', instance.postConditions);
  writeNotNull(
      'elementPostConditions', instance.elementPostConditions?.toJson());
  writeNotNull('step', instance.step?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    ExampleScenario_Step instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('process', instance.process?.map((e) => e?.toJson())?.toList());
  writeNotNull('pause', instance.pause);
  writeNotNull('elementPause', instance.elementPause?.toJson());
  writeNotNull('operation', instance.operation?.toJson());
  writeNotNull(
      'alternative', instance.alternative?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    ExampleScenario_Operation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('number', instance.number);
  writeNotNull('elementNumber', instance.elementNumber?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('initiator', instance.initiator);
  writeNotNull('elementInitiator', instance.elementInitiator?.toJson());
  writeNotNull('receiver', instance.receiver);
  writeNotNull('elementReceiver', instance.elementReceiver?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('initiatorActive', instance.initiatorActive);
  writeNotNull(
      'elementInitiatorActive', instance.elementInitiatorActive?.toJson());
  writeNotNull('receiverActive', instance.receiverActive);
  writeNotNull(
      'elementReceiverActive', instance.elementReceiverActive?.toJson());
  writeNotNull('request', instance.request?.toJson());
  writeNotNull('response', instance.response?.toJson());
  return val;
}

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
    ExampleScenario_Alternative instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('step', instance.step?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExampleScenarioAdapter extends TypeAdapter<ExampleScenario> {
  @override
  ExampleScenario read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExampleScenario(
      resourceType: fields[0] as String,
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
      resourceType: fields[5] as String,
      elementResourceType: fields[6] as Element,
      name: fields[7] as String,
      elementName: fields[8] as Element,
      description: fields[9] as String,
      elementDescription: fields[10] as Element,
      version: (fields[11] as List)?.cast<ExampleScenario_Version>(),
      containedInstance:
          (fields[12] as List)?.cast<ExampleScenario_ContainedInstance>(),
    );
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
