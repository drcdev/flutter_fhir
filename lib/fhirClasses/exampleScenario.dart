import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class ExampleScenario {

	static Future<ExampleScenario> newInstance({
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
		List<String> workflow}) async {
	ExampleScenario newExampleScenario = new ExampleScenario(
			id: await newId('ExampleScenario'),
			meta: meta,
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
			workflow: workflow);
	var exampleScenarioBox = await Hive.openBox<ExampleScenario>('ExampleScenarioBox');
	exampleScenarioBox.put(newExampleScenario.id, newExampleScenario);
	return newExampleScenario;
}
  final String resourceType= 'ExampleScenario';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String url;
  Element elementUrl;
  List<Identifier> identifier;
  String version;
  Element elementVersion;
  String name;
  Element elementName;
  String status; // <code> enum: draft/active/retired/unknown;
  Element elementStatus;
  bool experimental;
  Element elementExperimental;
  DateTime date;
  Element elementDate;
  String publisher;
  Element elementPublisher;
  List<ContactDetail> contact;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String copyright;
  Element elementCopyright;
  String purpose;
  Element elementPurpose;
  List<ExampleScenario_Actor> actor;
  List<ExampleScenario_Instance> instance;
  List<ExampleScenario_Process> process;
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
		Element elementDescription}) async {
	ExampleScenario_Actor newExampleScenario_Actor = new ExampleScenario_Actor(
			id: await newId('ExampleScenario_Actor'),
			extension: extension,
			modifierExtension: modifierExtension,
			actorId: actorId,
			elementActorId: elementActorId,
			type: type,
			elementType: elementType,
			name: name,
			elementName: elementName,
			description: description,
			elementDescription: elementDescription);
	var exampleScenario_ActorBox = await Hive.openBox<ExampleScenario_Actor>('ExampleScenario_ActorBox');
	exampleScenario_ActorBox.put(newExampleScenario_Actor.id, newExampleScenario_Actor);
	return newExampleScenario_Actor;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String actorId;
  Element elementActorId;
  String type; // <code> enum: person/entity;
  Element elementType;
  String name;
  Element elementName;
  String description;
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
		List<ExampleScenario_ContainedInstance> containedInstance}) async {
	ExampleScenario_Instance newExampleScenario_Instance = new ExampleScenario_Instance(
			id: await newId('ExampleScenario_Instance'),
			extension: extension,
			modifierExtension: modifierExtension,
			resourceId: resourceId,
			elementResourceId: elementResourceId,
			elementResourceType: elementResourceType,
			name: name,
			elementName: elementName,
			description: description,
			elementDescription: elementDescription,
			version: version,
			containedInstance: containedInstance);
	var exampleScenario_InstanceBox = await Hive.openBox<ExampleScenario_Instance>('ExampleScenario_InstanceBox');
	exampleScenario_InstanceBox.put(newExampleScenario_Instance.id, newExampleScenario_Instance);
	return newExampleScenario_Instance;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String resourceId;
  Element elementResourceId;
  String resourceType;
  Element elementResourceType;
  String name;
  Element elementName;
  String description;
  Element elementDescription;
  List<ExampleScenario_Version> version;
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

	static Future<ExampleScenario_Version> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String versionId,
		Element elementVersionId,
		String description,
		Element elementDescription}) async {
	ExampleScenario_Version newExampleScenario_Version = new ExampleScenario_Version(
			id: await newId('ExampleScenario_Version'),
			extension: extension,
			modifierExtension: modifierExtension,
			versionId: versionId,
			elementVersionId: elementVersionId,
			description: description,
			elementDescription: elementDescription);
	var exampleScenario_VersionBox = await Hive.openBox<ExampleScenario_Version>('ExampleScenario_VersionBox');
	exampleScenario_VersionBox.put(newExampleScenario_Version.id, newExampleScenario_Version);
	return newExampleScenario_Version;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String versionId;
  Element elementVersionId;
  String description;
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

	static Future<ExampleScenario_ContainedInstance> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String resourceId,
		Element elementResourceId,
		String versionId,
		Element elementVersionId}) async {
	ExampleScenario_ContainedInstance newExampleScenario_ContainedInstance = new ExampleScenario_ContainedInstance(
			id: await newId('ExampleScenario_ContainedInstance'),
			extension: extension,
			modifierExtension: modifierExtension,
			resourceId: resourceId,
			elementResourceId: elementResourceId,
			versionId: versionId,
			elementVersionId: elementVersionId);
	var exampleScenario_ContainedInstanceBox = await Hive.openBox<ExampleScenario_ContainedInstance>('ExampleScenario_ContainedInstanceBox');
	exampleScenario_ContainedInstanceBox.put(newExampleScenario_ContainedInstance.id, newExampleScenario_ContainedInstance);
	return newExampleScenario_ContainedInstance;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String resourceId;
  Element elementResourceId;
  String versionId;
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
		List<ExampleScenario_Step> step}) async {
	ExampleScenario_Process newExampleScenario_Process = new ExampleScenario_Process(
			id: await newId('ExampleScenario_Process'),
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
			step: step);
	var exampleScenario_ProcessBox = await Hive.openBox<ExampleScenario_Process>('ExampleScenario_ProcessBox');
	exampleScenario_ProcessBox.put(newExampleScenario_Process.id, newExampleScenario_Process);
	return newExampleScenario_Process;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String title;
  Element elementTitle;
  String description;
  Element elementDescription;
  String preConditions;
  Element elementPreConditions;
  String postConditions;
  Element elementPostConditions;
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

	static Future<ExampleScenario_Step> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<ExampleScenario_Process> process,
		bool pause,
		Element elementPause,
		ExampleScenario_Operation operation,
		List<ExampleScenario_Alternative> alternative}) async {
	ExampleScenario_Step newExampleScenario_Step = new ExampleScenario_Step(
			id: await newId('ExampleScenario_Step'),
			extension: extension,
			modifierExtension: modifierExtension,
			process: process,
			pause: pause,
			elementPause: elementPause,
			operation: operation,
			alternative: alternative);
	var exampleScenario_StepBox = await Hive.openBox<ExampleScenario_Step>('ExampleScenario_StepBox');
	exampleScenario_StepBox.put(newExampleScenario_Step.id, newExampleScenario_Step);
	return newExampleScenario_Step;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<ExampleScenario_Process> process;
  bool pause;
  Element elementPause;
  ExampleScenario_Operation operation;
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
		ExampleScenario_ContainedInstance response}) async {
	ExampleScenario_Operation newExampleScenario_Operation = new ExampleScenario_Operation(
			id: await newId('ExampleScenario_Operation'),
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
			response: response);
	var exampleScenario_OperationBox = await Hive.openBox<ExampleScenario_Operation>('ExampleScenario_OperationBox');
	exampleScenario_OperationBox.put(newExampleScenario_Operation.id, newExampleScenario_Operation);
	return newExampleScenario_Operation;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String number;
  Element elementNumber;
  String type;
  Element elementType;
  String name;
  Element elementName;
  String initiator;
  Element elementInitiator;
  String receiver;
  Element elementReceiver;
  String description;
  Element elementDescription;
  bool initiatorActive;
  Element elementInitiatorActive;
  bool receiverActive;
  Element elementReceiverActive;
  ExampleScenario_ContainedInstance request;
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

	static Future<ExampleScenario_Alternative> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String title,
		Element elementTitle,
		String description,
		Element elementDescription,
		List<ExampleScenario_Step> step}) async {
	ExampleScenario_Alternative newExampleScenario_Alternative = new ExampleScenario_Alternative(
			id: await newId('ExampleScenario_Alternative'),
			extension: extension,
			modifierExtension: modifierExtension,
			title: title,
			elementTitle: elementTitle,
			description: description,
			elementDescription: elementDescription,
			step: step);
	var exampleScenario_AlternativeBox = await Hive.openBox<ExampleScenario_Alternative>('ExampleScenario_AlternativeBox');
	exampleScenario_AlternativeBox.put(newExampleScenario_Alternative.id, newExampleScenario_Alternative);
	return newExampleScenario_Alternative;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String title;
  Element elementTitle;
  String description;
  Element elementDescription;
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
