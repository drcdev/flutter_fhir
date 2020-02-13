import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/triggerDefinition.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/parameterDefinition.dart';
import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/contributor.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/signature.dart';
import 'package:flutter_fhir/fhirClasses/sampledData.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/distance.dart';
import 'package:flutter_fhir/fhirClasses/count.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class Task {

	static Future<Task> newInstance({
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
		List<Identifier> identifier,
		String instantiatesCanonical,
		String instantiatesUri,
		Element elementInstantiatesUri,
		List<Reference> basedOn,
		Identifier groupIdentifier,
		List<Reference> partOf,
		String status,
		Element elementStatus,
		CodeableConcept statusReason,
		CodeableConcept businessStatus,
		String intent,
		Element elementIntent,
		String priority,
		Element elementPriority,
		CodeableConcept code,
		String description,
		Element elementDescription,
		Reference focus,
		Reference fore,
		Reference encounter,
		Period executionPeriod,
		DateTime authoredOn,
		Element elementAuthoredOn,
		DateTime lastModified,
		Element elementLastModified,
		Reference requester,
		List<CodeableConcept> performerType,
		Reference owner,
		Reference location,
		CodeableConcept reasonCode,
		Reference reasonReference,
		List<Reference> insurance,
		List<Annotation> note,
		List<Reference> relevantHistory,
		Task_Restriction restriction,
		List<Task_Input> input,
		List<Task_Output> output}) async {
	Task newTask = new Task(
			id: await newId('Task'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			instantiatesCanonical: instantiatesCanonical,
			instantiatesUri: instantiatesUri,
			elementInstantiatesUri: elementInstantiatesUri,
			basedOn: basedOn,
			groupIdentifier: groupIdentifier,
			partOf: partOf,
			status: status,
			elementStatus: elementStatus,
			statusReason: statusReason,
			businessStatus: businessStatus,
			intent: intent,
			elementIntent: elementIntent,
			priority: priority,
			elementPriority: elementPriority,
			code: code,
			description: description,
			elementDescription: elementDescription,
			focus: focus,
			fore: fore,
			encounter: encounter,
			executionPeriod: executionPeriod,
			authoredOn: authoredOn,
			elementAuthoredOn: elementAuthoredOn,
			lastModified: lastModified,
			elementLastModified: elementLastModified,
			requester: requester,
			performerType: performerType,
			owner: owner,
			location: location,
			reasonCode: reasonCode,
			reasonReference: reasonReference,
			insurance: insurance,
			note: note,
			relevantHistory: relevantHistory,
			restriction: restriction,
			input: input,
			output: output);
	var taskBox = await Hive.openBox<Task>('TaskBox');
	taskBox.put(newTask.id, newTask);
	return newTask;
}
  final String resourceType= 'Task';
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
  List<Identifier> identifier;
  String instantiatesCanonical;
  String instantiatesUri;
  Element elementInstantiatesUri;
  List<Reference> basedOn;
  Identifier groupIdentifier;
  List<Reference> partOf;
  String status; // <code> enum: draft/requested/received/accepted/rejected/ready/cancelled/in-progress/on-hold/failed/completed/entered-in-error;
  Element elementStatus;
  CodeableConcept statusReason;
  CodeableConcept businessStatus;
  String intent; // <code> enum: unknown/proposal/plan/order/original-order/reflex-order/filler-order/instance-order/option;
  Element elementIntent;
  String priority;
  Element elementPriority;
  CodeableConcept code;
  String description;
  Element elementDescription;
  Reference focus;
  Reference fore;
  Reference encounter;
  Period executionPeriod;
  DateTime authoredOn;
  Element elementAuthoredOn;
  DateTime lastModified;
  Element elementLastModified;
  Reference requester;
  List<CodeableConcept> performerType;
  Reference owner;
  Reference location;
  CodeableConcept reasonCode;
  Reference reasonReference;
  List<Reference> insurance;
  List<Annotation> note;
  List<Reference> relevantHistory;
  Task_Restriction restriction;
  List<Task_Input> input;
  List<Task_Output> output;

Task(
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
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.basedOn,
    this.groupIdentifier,
    this.partOf,
    this.status,
    this.elementStatus,
    this.statusReason,
    this.businessStatus,
    this.intent,
    this.elementIntent,
    this.priority,
    this.elementPriority,
    this.code,
    this.description,
    this.elementDescription,
    this.focus,
    this.fore,
    this.encounter,
    this.executionPeriod,
    this.authoredOn,
    this.elementAuthoredOn,
    this.lastModified,
    this.elementLastModified,
    this.requester,
    this.performerType,
    this.owner,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.insurance,
    this.note,
    this.relevantHistory,
    this.restriction,
    this.input,
    this.output
    });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Task_Restriction {

	static Future<Task_Restriction> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		int repetitions,
		Element elementRepetitions,
		Period period,
		List<Reference> recipient}) async {
	Task_Restriction newTask_Restriction = new Task_Restriction(
			id: await newId('Task_Restriction'),
			extension: extension,
			modifierExtension: modifierExtension,
			repetitions: repetitions,
			elementRepetitions: elementRepetitions,
			period: period,
			recipient: recipient);
	var task_RestrictionBox = await Hive.openBox<Task_Restriction>('Task_RestrictionBox');
	task_RestrictionBox.put(newTask_Restriction.id, newTask_Restriction);
	return newTask_Restriction;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int repetitions;
  Element elementRepetitions;
  Period period;
  List<Reference> recipient;

Task_Restriction(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.repetitions,
    this.elementRepetitions,
    this.period,
    this.recipient
    });

  factory Task_Restriction.fromJson(Map<String, dynamic> json) => _$Task_RestrictionFromJson(json);
  Map<String, dynamic> toJson() => _$Task_RestrictionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Task_Input {

	static Future<Task_Input> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		String valueBase64Binary,
		Element elementValueBase64Binary,
		bool valueBoolean,
		Element elementValueBoolean,
		String valueCanonical,
		Element elementValueCanonical,
		String valueCode,
		Element elementValueCode,
		String valueDate,
		Element elementValueDate,
		String valueDateTime,
		Element elementValueDateTime,
		int valueDecimal,
		Element elementValueDecimal,
		String valueId,
		Element elementValueId,
		String valueInstant,
		Element elementValueInstant,
		int valueInteger,
		Element elementValueInteger,
		String valueMarkdown,
		Element elementValueMarkdown,
		String valueOid,
		Element elementValueOid,
		int valuePositiveInt,
		Element elementValuePositiveInt,
		String valueString,
		Element elementValueString,
		String valueTime,
		Element elementValueTime,
		int valueUnsignedInt,
		Element elementValueUnsignedInt,
		String valueUri,
		Element elementValueUri,
		String valueUrl,
		Element elementValueUrl,
		String valueUuid,
		Element elementValueUuid,
		Address valueAddress,
		Age valueAge,
		Annotation valueAnnotation,
		Attachment valueAttachment,
		CodeableConcept valueCodeableConcept,
		Coding valueCoding,
		ContactPoint valueContactPoint,
		Count valueCount,
		Distance valueDistance,
		Duration valueDuration,
		HumanName valueHumanName,
		Identifier valueIdentifier,
		Money valueMoney,
		Period valuePeriod,
		Quantity valueQuantity,
		Range valueRange,
		Ratio valueRatio,
		Reference valueReference,
		SampledData valueSampledData,
		Signature valueSignature,
		Timing valueTiming,
		ContactDetail valueContactDetail,
		Contributor valueContributor,
		DataRequirement valueDataRequirement,
		Expression valueExpression,
		ParameterDefinition valueParameterDefinition,
		RelatedArtifact valueRelatedArtifact,
		TriggerDefinition valueTriggerDefinition,
		UsageContext valueUsageContext,
		Dosage valueDosage,
		Meta valueMeta}) async {
	Task_Input newTask_Input = new Task_Input(
			id: await newId('Task_Input'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			valueBase64Binary: valueBase64Binary,
			elementValueBase64Binary: elementValueBase64Binary,
			valueBoolean: valueBoolean,
			elementValueBoolean: elementValueBoolean,
			valueCanonical: valueCanonical,
			elementValueCanonical: elementValueCanonical,
			valueCode: valueCode,
			elementValueCode: elementValueCode,
			valueDate: valueDate,
			elementValueDate: elementValueDate,
			valueDateTime: valueDateTime,
			elementValueDateTime: elementValueDateTime,
			valueDecimal: valueDecimal,
			elementValueDecimal: elementValueDecimal,
			valueId: valueId,
			elementValueId: elementValueId,
			valueInstant: valueInstant,
			elementValueInstant: elementValueInstant,
			valueInteger: valueInteger,
			elementValueInteger: elementValueInteger,
			valueMarkdown: valueMarkdown,
			elementValueMarkdown: elementValueMarkdown,
			valueOid: valueOid,
			elementValueOid: elementValueOid,
			valuePositiveInt: valuePositiveInt,
			elementValuePositiveInt: elementValuePositiveInt,
			valueString: valueString,
			elementValueString: elementValueString,
			valueTime: valueTime,
			elementValueTime: elementValueTime,
			valueUnsignedInt: valueUnsignedInt,
			elementValueUnsignedInt: elementValueUnsignedInt,
			valueUri: valueUri,
			elementValueUri: elementValueUri,
			valueUrl: valueUrl,
			elementValueUrl: elementValueUrl,
			valueUuid: valueUuid,
			elementValueUuid: elementValueUuid,
			valueAddress: valueAddress,
			valueAge: valueAge,
			valueAnnotation: valueAnnotation,
			valueAttachment: valueAttachment,
			valueCodeableConcept: valueCodeableConcept,
			valueCoding: valueCoding,
			valueContactPoint: valueContactPoint,
			valueCount: valueCount,
			valueDistance: valueDistance,
			valueDuration: valueDuration,
			valueHumanName: valueHumanName,
			valueIdentifier: valueIdentifier,
			valueMoney: valueMoney,
			valuePeriod: valuePeriod,
			valueQuantity: valueQuantity,
			valueRange: valueRange,
			valueRatio: valueRatio,
			valueReference: valueReference,
			valueSampledData: valueSampledData,
			valueSignature: valueSignature,
			valueTiming: valueTiming,
			valueContactDetail: valueContactDetail,
			valueContributor: valueContributor,
			valueDataRequirement: valueDataRequirement,
			valueExpression: valueExpression,
			valueParameterDefinition: valueParameterDefinition,
			valueRelatedArtifact: valueRelatedArtifact,
			valueTriggerDefinition: valueTriggerDefinition,
			valueUsageContext: valueUsageContext,
			valueDosage: valueDosage,
			valueMeta: valueMeta);
	var task_InputBox = await Hive.openBox<Task_Input>('Task_InputBox');
	task_InputBox.put(newTask_Input.id, newTask_Input);
	return newTask_Input;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
  Element elementValueBase64Binary;
  bool valueBoolean; //  pattern: ^true|false$
  Element elementValueBoolean;
  String valueCanonical; //  pattern: ^\S*$
  Element elementValueCanonical;
  String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$
  Element elementValueCode;
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
  Element elementValueDate;
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementValueDateTime;
  int valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
  Element elementValueDecimal;
  String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$
  Element elementValueId;
  String valueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
  Element elementValueInstant;
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
  Element elementValueInteger;
  String valueMarkdown; //  pattern: ^[ \r\n\t\S]+$
  Element elementValueMarkdown;
  String valueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
  Element elementValueOid;
  int valuePositiveInt; //  pattern: ^[1-9][0-9]*$
  Element elementValuePositiveInt;
  String valueString; //  pattern: ^[ \r\n\t\S]+$
  Element elementValueString;
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
  Element elementValueTime;
  int valueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
  Element elementValueUnsignedInt;
  String valueUri; //  pattern: ^\S*$
  Element elementValueUri;
  String valueUrl; //  pattern: ^\S*$
  Element elementValueUrl;
  String valueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
  Element elementValueUuid;
  Address valueAddress;
  Age valueAge;
  Annotation valueAnnotation;
  Attachment valueAttachment;
  CodeableConcept valueCodeableConcept;
  Coding valueCoding;
  ContactPoint valueContactPoint;
  Count valueCount;
  Distance valueDistance;
  Duration valueDuration;
  HumanName valueHumanName;
  Identifier valueIdentifier;
  Money valueMoney;
  Period valuePeriod;
  Quantity valueQuantity;
  Range valueRange;
  Ratio valueRatio;
  Reference valueReference;
  SampledData valueSampledData;
  Signature valueSignature;
  Timing valueTiming;
  ContactDetail valueContactDetail;
  Contributor valueContributor;
  DataRequirement valueDataRequirement;
  Expression valueExpression;
  ParameterDefinition valueParameterDefinition;
  RelatedArtifact valueRelatedArtifact;
  TriggerDefinition valueTriggerDefinition;
  UsageContext valueUsageContext;
  Dosage valueDosage;
  Meta valueMeta;

Task_Input(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.valueBase64Binary,
    this.elementValueBase64Binary,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueCanonical,
    this.elementValueCanonical,
    this.valueCode,
    this.elementValueCode,
    this.valueDate,
    this.elementValueDate,
    this.valueDateTime,
    this.elementValueDateTime,
    this.valueDecimal,
    this.elementValueDecimal,
    this.valueId,
    this.elementValueId,
    this.valueInstant,
    this.elementValueInstant,
    this.valueInteger,
    this.elementValueInteger,
    this.valueMarkdown,
    this.elementValueMarkdown,
    this.valueOid,
    this.elementValueOid,
    this.valuePositiveInt,
    this.elementValuePositiveInt,
    this.valueString,
    this.elementValueString,
    this.valueTime,
    this.elementValueTime,
    this.valueUnsignedInt,
    this.elementValueUnsignedInt,
    this.valueUri,
    this.elementValueUri,
    this.valueUrl,
    this.elementValueUrl,
    this.valueUuid,
    this.elementValueUuid,
    this.valueAddress,
    this.valueAge,
    this.valueAnnotation,
    this.valueAttachment,
    this.valueCodeableConcept,
    this.valueCoding,
    this.valueContactPoint,
    this.valueCount,
    this.valueDistance,
    this.valueDuration,
    this.valueHumanName,
    this.valueIdentifier,
    this.valueMoney,
    this.valuePeriod,
    this.valueQuantity,
    this.valueRange,
    this.valueRatio,
    this.valueReference,
    this.valueSampledData,
    this.valueSignature,
    this.valueTiming,
    this.valueContactDetail,
    this.valueContributor,
    this.valueDataRequirement,
    this.valueExpression,
    this.valueParameterDefinition,
    this.valueRelatedArtifact,
    this.valueTriggerDefinition,
    this.valueUsageContext,
    this.valueDosage,
    this.valueMeta
    });

  factory Task_Input.fromJson(Map<String, dynamic> json) => _$Task_InputFromJson(json);
  Map<String, dynamic> toJson() => _$Task_InputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Task_Output {

	static Future<Task_Output> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		String valueBase64Binary,
		Element elementValueBase64Binary,
		bool valueBoolean,
		Element elementValueBoolean,
		String valueCanonical,
		Element elementValueCanonical,
		String valueCode,
		Element elementValueCode,
		String valueDate,
		Element elementValueDate,
		String valueDateTime,
		Element elementValueDateTime,
		int valueDecimal,
		Element elementValueDecimal,
		String valueId,
		Element elementValueId,
		String valueInstant,
		Element elementValueInstant,
		int valueInteger,
		Element elementValueInteger,
		String valueMarkdown,
		Element elementValueMarkdown,
		String valueOid,
		Element elementValueOid,
		int valuePositiveInt,
		Element elementValuePositiveInt,
		String valueString,
		Element elementValueString,
		String valueTime,
		Element elementValueTime,
		int valueUnsignedInt,
		Element elementValueUnsignedInt,
		String valueUri,
		Element elementValueUri,
		String valueUrl,
		Element elementValueUrl,
		String valueUuid,
		Element elementValueUuid,
		Address valueAddress,
		Age valueAge,
		Annotation valueAnnotation,
		Attachment valueAttachment,
		CodeableConcept valueCodeableConcept,
		Coding valueCoding,
		ContactPoint valueContactPoint,
		Count valueCount,
		Distance valueDistance,
		Duration valueDuration,
		HumanName valueHumanName,
		Identifier valueIdentifier,
		Money valueMoney,
		Period valuePeriod,
		Quantity valueQuantity,
		Range valueRange,
		Ratio valueRatio,
		Reference valueReference,
		SampledData valueSampledData,
		Signature valueSignature,
		Timing valueTiming,
		ContactDetail valueContactDetail,
		Contributor valueContributor,
		DataRequirement valueDataRequirement,
		Expression valueExpression,
		ParameterDefinition valueParameterDefinition,
		RelatedArtifact valueRelatedArtifact,
		TriggerDefinition valueTriggerDefinition,
		UsageContext valueUsageContext,
		Dosage valueDosage,
		Meta valueMeta}) async {
	Task_Output newTask_Output = new Task_Output(
			id: await newId('Task_Output'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			valueBase64Binary: valueBase64Binary,
			elementValueBase64Binary: elementValueBase64Binary,
			valueBoolean: valueBoolean,
			elementValueBoolean: elementValueBoolean,
			valueCanonical: valueCanonical,
			elementValueCanonical: elementValueCanonical,
			valueCode: valueCode,
			elementValueCode: elementValueCode,
			valueDate: valueDate,
			elementValueDate: elementValueDate,
			valueDateTime: valueDateTime,
			elementValueDateTime: elementValueDateTime,
			valueDecimal: valueDecimal,
			elementValueDecimal: elementValueDecimal,
			valueId: valueId,
			elementValueId: elementValueId,
			valueInstant: valueInstant,
			elementValueInstant: elementValueInstant,
			valueInteger: valueInteger,
			elementValueInteger: elementValueInteger,
			valueMarkdown: valueMarkdown,
			elementValueMarkdown: elementValueMarkdown,
			valueOid: valueOid,
			elementValueOid: elementValueOid,
			valuePositiveInt: valuePositiveInt,
			elementValuePositiveInt: elementValuePositiveInt,
			valueString: valueString,
			elementValueString: elementValueString,
			valueTime: valueTime,
			elementValueTime: elementValueTime,
			valueUnsignedInt: valueUnsignedInt,
			elementValueUnsignedInt: elementValueUnsignedInt,
			valueUri: valueUri,
			elementValueUri: elementValueUri,
			valueUrl: valueUrl,
			elementValueUrl: elementValueUrl,
			valueUuid: valueUuid,
			elementValueUuid: elementValueUuid,
			valueAddress: valueAddress,
			valueAge: valueAge,
			valueAnnotation: valueAnnotation,
			valueAttachment: valueAttachment,
			valueCodeableConcept: valueCodeableConcept,
			valueCoding: valueCoding,
			valueContactPoint: valueContactPoint,
			valueCount: valueCount,
			valueDistance: valueDistance,
			valueDuration: valueDuration,
			valueHumanName: valueHumanName,
			valueIdentifier: valueIdentifier,
			valueMoney: valueMoney,
			valuePeriod: valuePeriod,
			valueQuantity: valueQuantity,
			valueRange: valueRange,
			valueRatio: valueRatio,
			valueReference: valueReference,
			valueSampledData: valueSampledData,
			valueSignature: valueSignature,
			valueTiming: valueTiming,
			valueContactDetail: valueContactDetail,
			valueContributor: valueContributor,
			valueDataRequirement: valueDataRequirement,
			valueExpression: valueExpression,
			valueParameterDefinition: valueParameterDefinition,
			valueRelatedArtifact: valueRelatedArtifact,
			valueTriggerDefinition: valueTriggerDefinition,
			valueUsageContext: valueUsageContext,
			valueDosage: valueDosage,
			valueMeta: valueMeta);
	var task_OutputBox = await Hive.openBox<Task_Output>('Task_OutputBox');
	task_OutputBox.put(newTask_Output.id, newTask_Output);
	return newTask_Output;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
  Element elementValueBase64Binary;
  bool valueBoolean; //  pattern: ^true|false$
  Element elementValueBoolean;
  String valueCanonical; //  pattern: ^\S*$
  Element elementValueCanonical;
  String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$
  Element elementValueCode;
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
  Element elementValueDate;
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementValueDateTime;
  int valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
  Element elementValueDecimal;
  String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$
  Element elementValueId;
  String valueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
  Element elementValueInstant;
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
  Element elementValueInteger;
  String valueMarkdown; //  pattern: ^[ \r\n\t\S]+$
  Element elementValueMarkdown;
  String valueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
  Element elementValueOid;
  int valuePositiveInt; //  pattern: ^[1-9][0-9]*$
  Element elementValuePositiveInt;
  String valueString; //  pattern: ^[ \r\n\t\S]+$
  Element elementValueString;
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
  Element elementValueTime;
  int valueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
  Element elementValueUnsignedInt;
  String valueUri; //  pattern: ^\S*$
  Element elementValueUri;
  String valueUrl; //  pattern: ^\S*$
  Element elementValueUrl;
  String valueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
  Element elementValueUuid;
  Address valueAddress;
  Age valueAge;
  Annotation valueAnnotation;
  Attachment valueAttachment;
  CodeableConcept valueCodeableConcept;
  Coding valueCoding;
  ContactPoint valueContactPoint;
  Count valueCount;
  Distance valueDistance;
  Duration valueDuration;
  HumanName valueHumanName;
  Identifier valueIdentifier;
  Money valueMoney;
  Period valuePeriod;
  Quantity valueQuantity;
  Range valueRange;
  Ratio valueRatio;
  Reference valueReference;
  SampledData valueSampledData;
  Signature valueSignature;
  Timing valueTiming;
  ContactDetail valueContactDetail;
  Contributor valueContributor;
  DataRequirement valueDataRequirement;
  Expression valueExpression;
  ParameterDefinition valueParameterDefinition;
  RelatedArtifact valueRelatedArtifact;
  TriggerDefinition valueTriggerDefinition;
  UsageContext valueUsageContext;
  Dosage valueDosage;
  Meta valueMeta;

Task_Output(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.valueBase64Binary,
    this.elementValueBase64Binary,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueCanonical,
    this.elementValueCanonical,
    this.valueCode,
    this.elementValueCode,
    this.valueDate,
    this.elementValueDate,
    this.valueDateTime,
    this.elementValueDateTime,
    this.valueDecimal,
    this.elementValueDecimal,
    this.valueId,
    this.elementValueId,
    this.valueInstant,
    this.elementValueInstant,
    this.valueInteger,
    this.elementValueInteger,
    this.valueMarkdown,
    this.elementValueMarkdown,
    this.valueOid,
    this.elementValueOid,
    this.valuePositiveInt,
    this.elementValuePositiveInt,
    this.valueString,
    this.elementValueString,
    this.valueTime,
    this.elementValueTime,
    this.valueUnsignedInt,
    this.elementValueUnsignedInt,
    this.valueUri,
    this.elementValueUri,
    this.valueUrl,
    this.elementValueUrl,
    this.valueUuid,
    this.elementValueUuid,
    this.valueAddress,
    this.valueAge,
    this.valueAnnotation,
    this.valueAttachment,
    this.valueCodeableConcept,
    this.valueCoding,
    this.valueContactPoint,
    this.valueCount,
    this.valueDistance,
    this.valueDuration,
    this.valueHumanName,
    this.valueIdentifier,
    this.valueMoney,
    this.valuePeriod,
    this.valueQuantity,
    this.valueRange,
    this.valueRatio,
    this.valueReference,
    this.valueSampledData,
    this.valueSignature,
    this.valueTiming,
    this.valueContactDetail,
    this.valueContributor,
    this.valueDataRequirement,
    this.valueExpression,
    this.valueParameterDefinition,
    this.valueRelatedArtifact,
    this.valueTriggerDefinition,
    this.valueUsageContext,
    this.valueDosage,
    this.valueMeta
    });

  factory Task_Output.fromJson(Map<String, dynamic> json) => _$Task_OutputFromJson(json);
  Map<String, dynamic> toJson() => _$Task_OutputToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) {
  return Task(
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instantiatesCanonical: json['instantiatesCanonical'] as String,
    instantiatesUri: json['instantiatesUri'] as String,
    elementInstantiatesUri: json['elementInstantiatesUri'] == null
        ? null
        : Element.fromJson(
            json['elementInstantiatesUri'] as Map<String, dynamic>),
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    groupIdentifier: json['groupIdentifier'] == null
        ? null
        : Identifier.fromJson(json['groupIdentifier'] as Map<String, dynamic>),
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusReason: json['statusReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReason'] as Map<String, dynamic>),
    businessStatus: json['businessStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['businessStatus'] as Map<String, dynamic>),
    intent: json['intent'] as String,
    elementIntent: json['elementIntent'] == null
        ? null
        : Element.fromJson(json['elementIntent'] as Map<String, dynamic>),
    priority: json['priority'] as String,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    focus: json['focus'] == null
        ? null
        : Reference.fromJson(json['focus'] as Map<String, dynamic>),
    fore: json['fore'] == null
        ? null
        : Reference.fromJson(json['fore'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    executionPeriod: json['executionPeriod'] == null
        ? null
        : Period.fromJson(json['executionPeriod'] as Map<String, dynamic>),
    authoredOn: json['authoredOn'] == null
        ? null
        : DateTime.parse(json['authoredOn'] as String),
    elementAuthoredOn: json['elementAuthoredOn'] == null
        ? null
        : Element.fromJson(json['elementAuthoredOn'] as Map<String, dynamic>),
    lastModified: json['lastModified'] == null
        ? null
        : DateTime.parse(json['lastModified'] as String),
    elementLastModified: json['elementLastModified'] == null
        ? null
        : Element.fromJson(json['elementLastModified'] as Map<String, dynamic>),
    requester: json['requester'] == null
        ? null
        : Reference.fromJson(json['requester'] as Map<String, dynamic>),
    performerType: (json['performerType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    owner: json['owner'] == null
        ? null
        : Reference.fromJson(json['owner'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    reasonCode: json['reasonCode'] == null
        ? null
        : CodeableConcept.fromJson(json['reasonCode'] as Map<String, dynamic>),
    reasonReference: json['reasonReference'] == null
        ? null
        : Reference.fromJson(json['reasonReference'] as Map<String, dynamic>),
    insurance: (json['insurance'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relevantHistory: (json['relevantHistory'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    restriction: json['restriction'] == null
        ? null
        : Task_Restriction.fromJson(
            json['restriction'] as Map<String, dynamic>),
    input: (json['input'] as List)
        ?.map((e) =>
            e == null ? null : Task_Input.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    output: (json['output'] as List)
        ?.map((e) =>
            e == null ? null : Task_Output.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'instantiatesCanonical': instance.instantiatesCanonical,
      'instantiatesUri': instance.instantiatesUri,
      'elementInstantiatesUri': instance.elementInstantiatesUri?.toJson(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'groupIdentifier': instance.groupIdentifier?.toJson(),
      'partOf': instance.partOf?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusReason': instance.statusReason?.toJson(),
      'businessStatus': instance.businessStatus?.toJson(),
      'intent': instance.intent,
      'elementIntent': instance.elementIntent?.toJson(),
      'priority': instance.priority,
      'elementPriority': instance.elementPriority?.toJson(),
      'code': instance.code?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'focus': instance.focus?.toJson(),
      'fore': instance.fore?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'executionPeriod': instance.executionPeriod?.toJson(),
      'authoredOn': instance.authoredOn?.toIso8601String(),
      'elementAuthoredOn': instance.elementAuthoredOn?.toJson(),
      'lastModified': instance.lastModified?.toIso8601String(),
      'elementLastModified': instance.elementLastModified?.toJson(),
      'requester': instance.requester?.toJson(),
      'performerType':
          instance.performerType?.map((e) => e?.toJson())?.toList(),
      'owner': instance.owner?.toJson(),
      'location': instance.location?.toJson(),
      'reasonCode': instance.reasonCode?.toJson(),
      'reasonReference': instance.reasonReference?.toJson(),
      'insurance': instance.insurance?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'relevantHistory':
          instance.relevantHistory?.map((e) => e?.toJson())?.toList(),
      'restriction': instance.restriction?.toJson(),
      'input': instance.input?.map((e) => e?.toJson())?.toList(),
      'output': instance.output?.map((e) => e?.toJson())?.toList(),
    };

Task_Restriction _$Task_RestrictionFromJson(Map<String, dynamic> json) {
  return Task_Restriction(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    repetitions: json['repetitions'] as int,
    elementRepetitions: json['elementRepetitions'] == null
        ? null
        : Element.fromJson(json['elementRepetitions'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    recipient: (json['recipient'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Task_RestrictionToJson(Task_Restriction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'repetitions': instance.repetitions,
      'elementRepetitions': instance.elementRepetitions?.toJson(),
      'period': instance.period?.toJson(),
      'recipient': instance.recipient?.map((e) => e?.toJson())?.toList(),
    };

Task_Input _$Task_InputFromJson(Map<String, dynamic> json) {
  return Task_Input(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    valueBase64Binary: json['valueBase64Binary'] as String,
    elementValueBase64Binary: json['elementValueBase64Binary'] == null
        ? null
        : Element.fromJson(
            json['elementValueBase64Binary'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueCanonical: json['valueCanonical'] as String,
    elementValueCanonical: json['elementValueCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementValueCanonical'] as Map<String, dynamic>),
    valueCode: json['valueCode'] as String,
    elementValueCode: json['elementValueCode'] == null
        ? null
        : Element.fromJson(json['elementValueCode'] as Map<String, dynamic>),
    valueDate: json['valueDate'] as String,
    elementValueDate: json['elementValueDate'] == null
        ? null
        : Element.fromJson(json['elementValueDate'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
    valueDecimal: json['valueDecimal'] as int,
    elementValueDecimal: json['elementValueDecimal'] == null
        ? null
        : Element.fromJson(json['elementValueDecimal'] as Map<String, dynamic>),
    valueId: json['valueId'] as String,
    elementValueId: json['elementValueId'] == null
        ? null
        : Element.fromJson(json['elementValueId'] as Map<String, dynamic>),
    valueInstant: json['valueInstant'] as String,
    elementValueInstant: json['elementValueInstant'] == null
        ? null
        : Element.fromJson(json['elementValueInstant'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueMarkdown: json['valueMarkdown'] as String,
    elementValueMarkdown: json['elementValueMarkdown'] == null
        ? null
        : Element.fromJson(
            json['elementValueMarkdown'] as Map<String, dynamic>),
    valueOid: json['valueOid'] as String,
    elementValueOid: json['elementValueOid'] == null
        ? null
        : Element.fromJson(json['elementValueOid'] as Map<String, dynamic>),
    valuePositiveInt: json['valuePositiveInt'] as int,
    elementValuePositiveInt: json['elementValuePositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementValuePositiveInt'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    elementValueTime: json['elementValueTime'] == null
        ? null
        : Element.fromJson(json['elementValueTime'] as Map<String, dynamic>),
    valueUnsignedInt: json['valueUnsignedInt'] as int,
    elementValueUnsignedInt: json['elementValueUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementValueUnsignedInt'] as Map<String, dynamic>),
    valueUri: json['valueUri'] as String,
    elementValueUri: json['elementValueUri'] == null
        ? null
        : Element.fromJson(json['elementValueUri'] as Map<String, dynamic>),
    valueUrl: json['valueUrl'] as String,
    elementValueUrl: json['elementValueUrl'] == null
        ? null
        : Element.fromJson(json['elementValueUrl'] as Map<String, dynamic>),
    valueUuid: json['valueUuid'] as String,
    elementValueUuid: json['elementValueUuid'] == null
        ? null
        : Element.fromJson(json['elementValueUuid'] as Map<String, dynamic>),
    valueAddress: json['valueAddress'] == null
        ? null
        : Address.fromJson(json['valueAddress'] as Map<String, dynamic>),
    valueAge: json['valueAge'] == null
        ? null
        : Age.fromJson(json['valueAge'] as Map<String, dynamic>),
    valueAnnotation: json['valueAnnotation'] == null
        ? null
        : Annotation.fromJson(json['valueAnnotation'] as Map<String, dynamic>),
    valueAttachment: json['valueAttachment'] == null
        ? null
        : Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>),
    valueCodeableConcept: json['valueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['valueCodeableConcept'] as Map<String, dynamic>),
    valueCoding: json['valueCoding'] == null
        ? null
        : Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
    valueContactPoint: json['valueContactPoint'] == null
        ? null
        : ContactPoint.fromJson(
            json['valueContactPoint'] as Map<String, dynamic>),
    valueCount: json['valueCount'] == null
        ? null
        : Count.fromJson(json['valueCount'] as Map<String, dynamic>),
    valueDistance: json['valueDistance'] == null
        ? null
        : Distance.fromJson(json['valueDistance'] as Map<String, dynamic>),
    valueDuration: json['valueDuration'] == null
        ? null
        : Duration.fromJson(json['valueDuration'] as Map<String, dynamic>),
    valueHumanName: json['valueHumanName'] == null
        ? null
        : HumanName.fromJson(json['valueHumanName'] as Map<String, dynamic>),
    valueIdentifier: json['valueIdentifier'] == null
        ? null
        : Identifier.fromJson(json['valueIdentifier'] as Map<String, dynamic>),
    valueMoney: json['valueMoney'] == null
        ? null
        : Money.fromJson(json['valueMoney'] as Map<String, dynamic>),
    valuePeriod: json['valuePeriod'] == null
        ? null
        : Period.fromJson(json['valuePeriod'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueRange: json['valueRange'] == null
        ? null
        : Range.fromJson(json['valueRange'] as Map<String, dynamic>),
    valueRatio: json['valueRatio'] == null
        ? null
        : Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
    valueSampledData: json['valueSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['valueSampledData'] as Map<String, dynamic>),
    valueSignature: json['valueSignature'] == null
        ? null
        : Signature.fromJson(json['valueSignature'] as Map<String, dynamic>),
    valueTiming: json['valueTiming'] == null
        ? null
        : Timing.fromJson(json['valueTiming'] as Map<String, dynamic>),
    valueContactDetail: json['valueContactDetail'] == null
        ? null
        : ContactDetail.fromJson(
            json['valueContactDetail'] as Map<String, dynamic>),
    valueContributor: json['valueContributor'] == null
        ? null
        : Contributor.fromJson(
            json['valueContributor'] as Map<String, dynamic>),
    valueDataRequirement: json['valueDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['valueDataRequirement'] as Map<String, dynamic>),
    valueExpression: json['valueExpression'] == null
        ? null
        : Expression.fromJson(json['valueExpression'] as Map<String, dynamic>),
    valueParameterDefinition: json['valueParameterDefinition'] == null
        ? null
        : ParameterDefinition.fromJson(
            json['valueParameterDefinition'] as Map<String, dynamic>),
    valueRelatedArtifact: json['valueRelatedArtifact'] == null
        ? null
        : RelatedArtifact.fromJson(
            json['valueRelatedArtifact'] as Map<String, dynamic>),
    valueTriggerDefinition: json['valueTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['valueTriggerDefinition'] as Map<String, dynamic>),
    valueUsageContext: json['valueUsageContext'] == null
        ? null
        : UsageContext.fromJson(
            json['valueUsageContext'] as Map<String, dynamic>),
    valueDosage: json['valueDosage'] == null
        ? null
        : Dosage.fromJson(json['valueDosage'] as Map<String, dynamic>),
    valueMeta: json['valueMeta'] == null
        ? null
        : Meta.fromJson(json['valueMeta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Task_InputToJson(Task_Input instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'valueBase64Binary': instance.valueBase64Binary,
      'elementValueBase64Binary': instance.elementValueBase64Binary?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueCanonical': instance.valueCanonical,
      'elementValueCanonical': instance.elementValueCanonical?.toJson(),
      'valueCode': instance.valueCode,
      'elementValueCode': instance.elementValueCode?.toJson(),
      'valueDate': instance.valueDate,
      'elementValueDate': instance.elementValueDate?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'elementValueDateTime': instance.elementValueDateTime?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'elementValueDecimal': instance.elementValueDecimal?.toJson(),
      'valueId': instance.valueId,
      'elementValueId': instance.elementValueId?.toJson(),
      'valueInstant': instance.valueInstant,
      'elementValueInstant': instance.elementValueInstant?.toJson(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueMarkdown': instance.valueMarkdown,
      'elementValueMarkdown': instance.elementValueMarkdown?.toJson(),
      'valueOid': instance.valueOid,
      'elementValueOid': instance.elementValueOid?.toJson(),
      'valuePositiveInt': instance.valuePositiveInt,
      'elementValuePositiveInt': instance.elementValuePositiveInt?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueTime': instance.valueTime,
      'elementValueTime': instance.elementValueTime?.toJson(),
      'valueUnsignedInt': instance.valueUnsignedInt,
      'elementValueUnsignedInt': instance.elementValueUnsignedInt?.toJson(),
      'valueUri': instance.valueUri,
      'elementValueUri': instance.elementValueUri?.toJson(),
      'valueUrl': instance.valueUrl,
      'elementValueUrl': instance.elementValueUrl?.toJson(),
      'valueUuid': instance.valueUuid,
      'elementValueUuid': instance.elementValueUuid?.toJson(),
      'valueAddress': instance.valueAddress?.toJson(),
      'valueAge': instance.valueAge?.toJson(),
      'valueAnnotation': instance.valueAnnotation?.toJson(),
      'valueAttachment': instance.valueAttachment?.toJson(),
      'valueCodeableConcept': instance.valueCodeableConcept?.toJson(),
      'valueCoding': instance.valueCoding?.toJson(),
      'valueContactPoint': instance.valueContactPoint?.toJson(),
      'valueCount': instance.valueCount?.toJson(),
      'valueDistance': instance.valueDistance?.toJson(),
      'valueDuration': instance.valueDuration?.toJson(),
      'valueHumanName': instance.valueHumanName?.toJson(),
      'valueIdentifier': instance.valueIdentifier?.toJson(),
      'valueMoney': instance.valueMoney?.toJson(),
      'valuePeriod': instance.valuePeriod?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueRange': instance.valueRange?.toJson(),
      'valueRatio': instance.valueRatio?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
      'valueSampledData': instance.valueSampledData?.toJson(),
      'valueSignature': instance.valueSignature?.toJson(),
      'valueTiming': instance.valueTiming?.toJson(),
      'valueContactDetail': instance.valueContactDetail?.toJson(),
      'valueContributor': instance.valueContributor?.toJson(),
      'valueDataRequirement': instance.valueDataRequirement?.toJson(),
      'valueExpression': instance.valueExpression?.toJson(),
      'valueParameterDefinition': instance.valueParameterDefinition?.toJson(),
      'valueRelatedArtifact': instance.valueRelatedArtifact?.toJson(),
      'valueTriggerDefinition': instance.valueTriggerDefinition?.toJson(),
      'valueUsageContext': instance.valueUsageContext?.toJson(),
      'valueDosage': instance.valueDosage?.toJson(),
      'valueMeta': instance.valueMeta?.toJson(),
    };

Task_Output _$Task_OutputFromJson(Map<String, dynamic> json) {
  return Task_Output(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    valueBase64Binary: json['valueBase64Binary'] as String,
    elementValueBase64Binary: json['elementValueBase64Binary'] == null
        ? null
        : Element.fromJson(
            json['elementValueBase64Binary'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueCanonical: json['valueCanonical'] as String,
    elementValueCanonical: json['elementValueCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementValueCanonical'] as Map<String, dynamic>),
    valueCode: json['valueCode'] as String,
    elementValueCode: json['elementValueCode'] == null
        ? null
        : Element.fromJson(json['elementValueCode'] as Map<String, dynamic>),
    valueDate: json['valueDate'] as String,
    elementValueDate: json['elementValueDate'] == null
        ? null
        : Element.fromJson(json['elementValueDate'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
    valueDecimal: json['valueDecimal'] as int,
    elementValueDecimal: json['elementValueDecimal'] == null
        ? null
        : Element.fromJson(json['elementValueDecimal'] as Map<String, dynamic>),
    valueId: json['valueId'] as String,
    elementValueId: json['elementValueId'] == null
        ? null
        : Element.fromJson(json['elementValueId'] as Map<String, dynamic>),
    valueInstant: json['valueInstant'] as String,
    elementValueInstant: json['elementValueInstant'] == null
        ? null
        : Element.fromJson(json['elementValueInstant'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueMarkdown: json['valueMarkdown'] as String,
    elementValueMarkdown: json['elementValueMarkdown'] == null
        ? null
        : Element.fromJson(
            json['elementValueMarkdown'] as Map<String, dynamic>),
    valueOid: json['valueOid'] as String,
    elementValueOid: json['elementValueOid'] == null
        ? null
        : Element.fromJson(json['elementValueOid'] as Map<String, dynamic>),
    valuePositiveInt: json['valuePositiveInt'] as int,
    elementValuePositiveInt: json['elementValuePositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementValuePositiveInt'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    elementValueTime: json['elementValueTime'] == null
        ? null
        : Element.fromJson(json['elementValueTime'] as Map<String, dynamic>),
    valueUnsignedInt: json['valueUnsignedInt'] as int,
    elementValueUnsignedInt: json['elementValueUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementValueUnsignedInt'] as Map<String, dynamic>),
    valueUri: json['valueUri'] as String,
    elementValueUri: json['elementValueUri'] == null
        ? null
        : Element.fromJson(json['elementValueUri'] as Map<String, dynamic>),
    valueUrl: json['valueUrl'] as String,
    elementValueUrl: json['elementValueUrl'] == null
        ? null
        : Element.fromJson(json['elementValueUrl'] as Map<String, dynamic>),
    valueUuid: json['valueUuid'] as String,
    elementValueUuid: json['elementValueUuid'] == null
        ? null
        : Element.fromJson(json['elementValueUuid'] as Map<String, dynamic>),
    valueAddress: json['valueAddress'] == null
        ? null
        : Address.fromJson(json['valueAddress'] as Map<String, dynamic>),
    valueAge: json['valueAge'] == null
        ? null
        : Age.fromJson(json['valueAge'] as Map<String, dynamic>),
    valueAnnotation: json['valueAnnotation'] == null
        ? null
        : Annotation.fromJson(json['valueAnnotation'] as Map<String, dynamic>),
    valueAttachment: json['valueAttachment'] == null
        ? null
        : Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>),
    valueCodeableConcept: json['valueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['valueCodeableConcept'] as Map<String, dynamic>),
    valueCoding: json['valueCoding'] == null
        ? null
        : Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
    valueContactPoint: json['valueContactPoint'] == null
        ? null
        : ContactPoint.fromJson(
            json['valueContactPoint'] as Map<String, dynamic>),
    valueCount: json['valueCount'] == null
        ? null
        : Count.fromJson(json['valueCount'] as Map<String, dynamic>),
    valueDistance: json['valueDistance'] == null
        ? null
        : Distance.fromJson(json['valueDistance'] as Map<String, dynamic>),
    valueDuration: json['valueDuration'] == null
        ? null
        : Duration.fromJson(json['valueDuration'] as Map<String, dynamic>),
    valueHumanName: json['valueHumanName'] == null
        ? null
        : HumanName.fromJson(json['valueHumanName'] as Map<String, dynamic>),
    valueIdentifier: json['valueIdentifier'] == null
        ? null
        : Identifier.fromJson(json['valueIdentifier'] as Map<String, dynamic>),
    valueMoney: json['valueMoney'] == null
        ? null
        : Money.fromJson(json['valueMoney'] as Map<String, dynamic>),
    valuePeriod: json['valuePeriod'] == null
        ? null
        : Period.fromJson(json['valuePeriod'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueRange: json['valueRange'] == null
        ? null
        : Range.fromJson(json['valueRange'] as Map<String, dynamic>),
    valueRatio: json['valueRatio'] == null
        ? null
        : Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
    valueSampledData: json['valueSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['valueSampledData'] as Map<String, dynamic>),
    valueSignature: json['valueSignature'] == null
        ? null
        : Signature.fromJson(json['valueSignature'] as Map<String, dynamic>),
    valueTiming: json['valueTiming'] == null
        ? null
        : Timing.fromJson(json['valueTiming'] as Map<String, dynamic>),
    valueContactDetail: json['valueContactDetail'] == null
        ? null
        : ContactDetail.fromJson(
            json['valueContactDetail'] as Map<String, dynamic>),
    valueContributor: json['valueContributor'] == null
        ? null
        : Contributor.fromJson(
            json['valueContributor'] as Map<String, dynamic>),
    valueDataRequirement: json['valueDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['valueDataRequirement'] as Map<String, dynamic>),
    valueExpression: json['valueExpression'] == null
        ? null
        : Expression.fromJson(json['valueExpression'] as Map<String, dynamic>),
    valueParameterDefinition: json['valueParameterDefinition'] == null
        ? null
        : ParameterDefinition.fromJson(
            json['valueParameterDefinition'] as Map<String, dynamic>),
    valueRelatedArtifact: json['valueRelatedArtifact'] == null
        ? null
        : RelatedArtifact.fromJson(
            json['valueRelatedArtifact'] as Map<String, dynamic>),
    valueTriggerDefinition: json['valueTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['valueTriggerDefinition'] as Map<String, dynamic>),
    valueUsageContext: json['valueUsageContext'] == null
        ? null
        : UsageContext.fromJson(
            json['valueUsageContext'] as Map<String, dynamic>),
    valueDosage: json['valueDosage'] == null
        ? null
        : Dosage.fromJson(json['valueDosage'] as Map<String, dynamic>),
    valueMeta: json['valueMeta'] == null
        ? null
        : Meta.fromJson(json['valueMeta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Task_OutputToJson(Task_Output instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'valueBase64Binary': instance.valueBase64Binary,
      'elementValueBase64Binary': instance.elementValueBase64Binary?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueCanonical': instance.valueCanonical,
      'elementValueCanonical': instance.elementValueCanonical?.toJson(),
      'valueCode': instance.valueCode,
      'elementValueCode': instance.elementValueCode?.toJson(),
      'valueDate': instance.valueDate,
      'elementValueDate': instance.elementValueDate?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'elementValueDateTime': instance.elementValueDateTime?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'elementValueDecimal': instance.elementValueDecimal?.toJson(),
      'valueId': instance.valueId,
      'elementValueId': instance.elementValueId?.toJson(),
      'valueInstant': instance.valueInstant,
      'elementValueInstant': instance.elementValueInstant?.toJson(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueMarkdown': instance.valueMarkdown,
      'elementValueMarkdown': instance.elementValueMarkdown?.toJson(),
      'valueOid': instance.valueOid,
      'elementValueOid': instance.elementValueOid?.toJson(),
      'valuePositiveInt': instance.valuePositiveInt,
      'elementValuePositiveInt': instance.elementValuePositiveInt?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueTime': instance.valueTime,
      'elementValueTime': instance.elementValueTime?.toJson(),
      'valueUnsignedInt': instance.valueUnsignedInt,
      'elementValueUnsignedInt': instance.elementValueUnsignedInt?.toJson(),
      'valueUri': instance.valueUri,
      'elementValueUri': instance.elementValueUri?.toJson(),
      'valueUrl': instance.valueUrl,
      'elementValueUrl': instance.elementValueUrl?.toJson(),
      'valueUuid': instance.valueUuid,
      'elementValueUuid': instance.elementValueUuid?.toJson(),
      'valueAddress': instance.valueAddress?.toJson(),
      'valueAge': instance.valueAge?.toJson(),
      'valueAnnotation': instance.valueAnnotation?.toJson(),
      'valueAttachment': instance.valueAttachment?.toJson(),
      'valueCodeableConcept': instance.valueCodeableConcept?.toJson(),
      'valueCoding': instance.valueCoding?.toJson(),
      'valueContactPoint': instance.valueContactPoint?.toJson(),
      'valueCount': instance.valueCount?.toJson(),
      'valueDistance': instance.valueDistance?.toJson(),
      'valueDuration': instance.valueDuration?.toJson(),
      'valueHumanName': instance.valueHumanName?.toJson(),
      'valueIdentifier': instance.valueIdentifier?.toJson(),
      'valueMoney': instance.valueMoney?.toJson(),
      'valuePeriod': instance.valuePeriod?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueRange': instance.valueRange?.toJson(),
      'valueRatio': instance.valueRatio?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
      'valueSampledData': instance.valueSampledData?.toJson(),
      'valueSignature': instance.valueSignature?.toJson(),
      'valueTiming': instance.valueTiming?.toJson(),
      'valueContactDetail': instance.valueContactDetail?.toJson(),
      'valueContributor': instance.valueContributor?.toJson(),
      'valueDataRequirement': instance.valueDataRequirement?.toJson(),
      'valueExpression': instance.valueExpression?.toJson(),
      'valueParameterDefinition': instance.valueParameterDefinition?.toJson(),
      'valueRelatedArtifact': instance.valueRelatedArtifact?.toJson(),
      'valueTriggerDefinition': instance.valueTriggerDefinition?.toJson(),
      'valueUsageContext': instance.valueUsageContext?.toJson(),
      'valueDosage': instance.valueDosage?.toJson(),
      'valueMeta': instance.valueMeta?.toJson(),
    };
