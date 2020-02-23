import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
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

class Task {
  static Future<Task> newInstance({
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
    List<Task_Output> output,
  }) async {
    var fhirDb = new DatabaseHelper();
    Task newTask = new Task(
      resourceType: 'Task',
      id: id ?? await fhirDb.newResourceId('Task'),
      meta: meta ?? await Meta.newInstance(),
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
      output: output,
    );
    newTask.meta.createdAt = DateTime.now();
    newTask.meta.lastUpdated = newTask.meta.createdAt;
    int saved = await fhirDb.saveResource(newTask);
    return newTask;
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
  String resourceType = 'Task';
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
  List<Identifier> identifier;
  @HiveField(12)
  String instantiatesCanonical;
  @HiveField(13)
  String instantiatesUri;
  @HiveField(14)
  Element elementInstantiatesUri;
  @HiveField(15)
  List<Reference> basedOn;
  @HiveField(16)
  Identifier groupIdentifier;
  @HiveField(17)
  List<Reference> partOf;
  @HiveField(18)
  String status;
  @HiveField(19)
  Element elementStatus;
  @HiveField(20)
  CodeableConcept statusReason;
  @HiveField(21)
  CodeableConcept businessStatus;
  @HiveField(22)
  String intent;
  @HiveField(23)
  Element elementIntent;
  @HiveField(24)
  String priority;
  @HiveField(25)
  Element elementPriority;
  @HiveField(26)
  CodeableConcept code;
  @HiveField(27)
  String description;
  @HiveField(28)
  Element elementDescription;
  @HiveField(29)
  Reference focus;
  @HiveField(30)
  Reference fore;
  @HiveField(31)
  Reference encounter;
  @HiveField(32)
  Period executionPeriod;
  @HiveField(33)
  DateTime authoredOn;
  @HiveField(34)
  Element elementAuthoredOn;
  @HiveField(35)
  DateTime lastModified;
  @HiveField(36)
  Element elementLastModified;
  @HiveField(37)
  Reference requester;
  @HiveField(38)
  List<CodeableConcept> performerType;
  @HiveField(39)
  Reference owner;
  @HiveField(40)
  Reference location;
  @HiveField(41)
  CodeableConcept reasonCode;
  @HiveField(42)
  Reference reasonReference;
  @HiveField(43)
  List<Reference> insurance;
  @HiveField(44)
  List<Annotation> note;
  @HiveField(45)
  List<Reference> relevantHistory;
  @HiveField(46)
  Task_Restriction restriction;
  @HiveField(47)
  List<Task_Input> input;
  @HiveField(48)
  List<Task_Output> output;

  Task({
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
    this.output,
  });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskToJson(this);
}

class Task_Restriction {
  static Future<Task_Restriction> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int repetitions,
    Element elementRepetitions,
    Period period,
    List<Reference> recipient,
  }) async {
    var fhirDb = new DatabaseHelper();
    Task_Restriction newTask_Restriction = new Task_Restriction(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      repetitions: repetitions,
      elementRepetitions: elementRepetitions,
      period: period,
      recipient: recipient,
    );
    return newTask_Restriction;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int repetitions;
  @HiveField(4)
  Element elementRepetitions;
  @HiveField(5)
  Period period;
  @HiveField(6)
  List<Reference> recipient;

  Task_Restriction({
    this.id,
    this.extension,
    this.modifierExtension,
    this.repetitions,
    this.elementRepetitions,
    this.period,
    this.recipient,
  });

  factory Task_Restriction.fromJson(Map<String, dynamic> json) =>
      _$Task_RestrictionFromJson(json);
  Map<String, dynamic> toJson() => _$Task_RestrictionToJson(this);
}

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
    Meta valueMeta,
  }) async {
    var fhirDb = new DatabaseHelper();
    Task_Input newTask_Input = new Task_Input(
      id: id,
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
      valueMeta: valueMeta,
    );
    return newTask_Input;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept type;
  @HiveField(4)
  String valueBase64Binary;
  @HiveField(5)
  Element elementValueBase64Binary;
  @HiveField(6)
  bool valueBoolean;
  @HiveField(7)
  Element elementValueBoolean;
  @HiveField(8)
  String valueCanonical;
  @HiveField(9)
  Element elementValueCanonical;
  @HiveField(10)
  String valueCode;
  @HiveField(11)
  Element elementValueCode;
  @HiveField(12)
  String valueDate;
  @HiveField(13)
  Element elementValueDate;
  @HiveField(14)
  String valueDateTime;
  @HiveField(15)
  Element elementValueDateTime;
  @HiveField(16)
  int valueDecimal;
  @HiveField(17)
  Element elementValueDecimal;
  @HiveField(18)
  String valueId;
  @HiveField(19)
  Element elementValueId;
  @HiveField(20)
  String valueInstant;
  @HiveField(21)
  Element elementValueInstant;
  @HiveField(22)
  int valueInteger;
  @HiveField(23)
  Element elementValueInteger;
  @HiveField(24)
  String valueMarkdown;
  @HiveField(25)
  Element elementValueMarkdown;
  @HiveField(26)
  String valueOid;
  @HiveField(27)
  Element elementValueOid;
  @HiveField(28)
  int valuePositiveInt;
  @HiveField(29)
  Element elementValuePositiveInt;
  @HiveField(30)
  String valueString;
  @HiveField(31)
  Element elementValueString;
  @HiveField(32)
  String valueTime;
  @HiveField(33)
  Element elementValueTime;
  @HiveField(34)
  int valueUnsignedInt;
  @HiveField(35)
  Element elementValueUnsignedInt;
  @HiveField(36)
  String valueUri;
  @HiveField(37)
  Element elementValueUri;
  @HiveField(38)
  String valueUrl;
  @HiveField(39)
  Element elementValueUrl;
  @HiveField(40)
  String valueUuid;
  @HiveField(41)
  Element elementValueUuid;
  @HiveField(42)
  Address valueAddress;
  @HiveField(43)
  Age valueAge;
  @HiveField(44)
  Annotation valueAnnotation;
  @HiveField(45)
  Attachment valueAttachment;
  @HiveField(46)
  CodeableConcept valueCodeableConcept;
  @HiveField(47)
  Coding valueCoding;
  @HiveField(48)
  ContactPoint valueContactPoint;
  @HiveField(49)
  Count valueCount;
  @HiveField(50)
  Distance valueDistance;
  @HiveField(51)
  Duration valueDuration;
  @HiveField(52)
  HumanName valueHumanName;
  @HiveField(53)
  Identifier valueIdentifier;
  @HiveField(54)
  Money valueMoney;
  @HiveField(55)
  Period valuePeriod;
  @HiveField(56)
  Quantity valueQuantity;
  @HiveField(57)
  Range valueRange;
  @HiveField(58)
  Ratio valueRatio;
  @HiveField(59)
  Reference valueReference;
  @HiveField(60)
  SampledData valueSampledData;
  @HiveField(61)
  Signature valueSignature;
  @HiveField(62)
  Timing valueTiming;
  @HiveField(63)
  ContactDetail valueContactDetail;
  @HiveField(64)
  Contributor valueContributor;
  @HiveField(65)
  DataRequirement valueDataRequirement;
  @HiveField(66)
  Expression valueExpression;
  @HiveField(67)
  ParameterDefinition valueParameterDefinition;
  @HiveField(68)
  RelatedArtifact valueRelatedArtifact;
  @HiveField(69)
  TriggerDefinition valueTriggerDefinition;
  @HiveField(70)
  UsageContext valueUsageContext;
  @HiveField(71)
  Dosage valueDosage;
  @HiveField(72)
  Meta valueMeta;

  Task_Input({
    this.id,
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
    this.valueMeta,
  });

  factory Task_Input.fromJson(Map<String, dynamic> json) =>
      _$Task_InputFromJson(json);
  Map<String, dynamic> toJson() => _$Task_InputToJson(this);
}

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
    Meta valueMeta,
  }) async {
    var fhirDb = new DatabaseHelper();
    Task_Output newTask_Output = new Task_Output(
      id: id,
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
      valueMeta: valueMeta,
    );
    return newTask_Output;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept type;
  @HiveField(4)
  String valueBase64Binary;
  @HiveField(5)
  Element elementValueBase64Binary;
  @HiveField(6)
  bool valueBoolean;
  @HiveField(7)
  Element elementValueBoolean;
  @HiveField(8)
  String valueCanonical;
  @HiveField(9)
  Element elementValueCanonical;
  @HiveField(10)
  String valueCode;
  @HiveField(11)
  Element elementValueCode;
  @HiveField(12)
  String valueDate;
  @HiveField(13)
  Element elementValueDate;
  @HiveField(14)
  String valueDateTime;
  @HiveField(15)
  Element elementValueDateTime;
  @HiveField(16)
  int valueDecimal;
  @HiveField(17)
  Element elementValueDecimal;
  @HiveField(18)
  String valueId;
  @HiveField(19)
  Element elementValueId;
  @HiveField(20)
  String valueInstant;
  @HiveField(21)
  Element elementValueInstant;
  @HiveField(22)
  int valueInteger;
  @HiveField(23)
  Element elementValueInteger;
  @HiveField(24)
  String valueMarkdown;
  @HiveField(25)
  Element elementValueMarkdown;
  @HiveField(26)
  String valueOid;
  @HiveField(27)
  Element elementValueOid;
  @HiveField(28)
  int valuePositiveInt;
  @HiveField(29)
  Element elementValuePositiveInt;
  @HiveField(30)
  String valueString;
  @HiveField(31)
  Element elementValueString;
  @HiveField(32)
  String valueTime;
  @HiveField(33)
  Element elementValueTime;
  @HiveField(34)
  int valueUnsignedInt;
  @HiveField(35)
  Element elementValueUnsignedInt;
  @HiveField(36)
  String valueUri;
  @HiveField(37)
  Element elementValueUri;
  @HiveField(38)
  String valueUrl;
  @HiveField(39)
  Element elementValueUrl;
  @HiveField(40)
  String valueUuid;
  @HiveField(41)
  Element elementValueUuid;
  @HiveField(42)
  Address valueAddress;
  @HiveField(43)
  Age valueAge;
  @HiveField(44)
  Annotation valueAnnotation;
  @HiveField(45)
  Attachment valueAttachment;
  @HiveField(46)
  CodeableConcept valueCodeableConcept;
  @HiveField(47)
  Coding valueCoding;
  @HiveField(48)
  ContactPoint valueContactPoint;
  @HiveField(49)
  Count valueCount;
  @HiveField(50)
  Distance valueDistance;
  @HiveField(51)
  Duration valueDuration;
  @HiveField(52)
  HumanName valueHumanName;
  @HiveField(53)
  Identifier valueIdentifier;
  @HiveField(54)
  Money valueMoney;
  @HiveField(55)
  Period valuePeriod;
  @HiveField(56)
  Quantity valueQuantity;
  @HiveField(57)
  Range valueRange;
  @HiveField(58)
  Ratio valueRatio;
  @HiveField(59)
  Reference valueReference;
  @HiveField(60)
  SampledData valueSampledData;
  @HiveField(61)
  Signature valueSignature;
  @HiveField(62)
  Timing valueTiming;
  @HiveField(63)
  ContactDetail valueContactDetail;
  @HiveField(64)
  Contributor valueContributor;
  @HiveField(65)
  DataRequirement valueDataRequirement;
  @HiveField(66)
  Expression valueExpression;
  @HiveField(67)
  ParameterDefinition valueParameterDefinition;
  @HiveField(68)
  RelatedArtifact valueRelatedArtifact;
  @HiveField(69)
  TriggerDefinition valueTriggerDefinition;
  @HiveField(70)
  UsageContext valueUsageContext;
  @HiveField(71)
  Dosage valueDosage;
  @HiveField(72)
  Meta valueMeta;

  Task_Output({
    this.id,
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
    this.valueMeta,
  });

  factory Task_Output.fromJson(Map<String, dynamic> json) =>
      _$Task_OutputFromJson(json);
  Map<String, dynamic> toJson() => _$Task_OutputToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) {
  return Task(
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

Map<String, dynamic> _$TaskToJson(Task instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('instantiatesCanonical', instance.instantiatesCanonical);
  writeNotNull('instantiatesUri', instance.instantiatesUri);
  writeNotNull(
      'elementInstantiatesUri', instance.elementInstantiatesUri?.toJson());
  writeNotNull('basedOn', instance.basedOn?.map((e) => e?.toJson())?.toList());
  writeNotNull('groupIdentifier', instance.groupIdentifier?.toJson());
  writeNotNull('partOf', instance.partOf?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('statusReason', instance.statusReason?.toJson());
  writeNotNull('businessStatus', instance.businessStatus?.toJson());
  writeNotNull('intent', instance.intent);
  writeNotNull('elementIntent', instance.elementIntent?.toJson());
  writeNotNull('priority', instance.priority);
  writeNotNull('elementPriority', instance.elementPriority?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('focus', instance.focus?.toJson());
  writeNotNull('fore', instance.fore?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('executionPeriod', instance.executionPeriod?.toJson());
  writeNotNull('authoredOn', instance.authoredOn?.toIso8601String());
  writeNotNull('elementAuthoredOn', instance.elementAuthoredOn?.toJson());
  writeNotNull('lastModified', instance.lastModified?.toIso8601String());
  writeNotNull('elementLastModified', instance.elementLastModified?.toJson());
  writeNotNull('requester', instance.requester?.toJson());
  writeNotNull('performerType',
      instance.performerType?.map((e) => e?.toJson())?.toList());
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('location', instance.location?.toJson());
  writeNotNull('reasonCode', instance.reasonCode?.toJson());
  writeNotNull('reasonReference', instance.reasonReference?.toJson());
  writeNotNull(
      'insurance', instance.insurance?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull('relevantHistory',
      instance.relevantHistory?.map((e) => e?.toJson())?.toList());
  writeNotNull('restriction', instance.restriction?.toJson());
  writeNotNull('input', instance.input?.map((e) => e?.toJson())?.toList());
  writeNotNull('output', instance.output?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$Task_RestrictionToJson(Task_Restriction instance) {
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
  writeNotNull('repetitions', instance.repetitions);
  writeNotNull('elementRepetitions', instance.elementRepetitions?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull(
      'recipient', instance.recipient?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$Task_InputToJson(Task_Input instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('valueBase64Binary', instance.valueBase64Binary);
  writeNotNull(
      'elementValueBase64Binary', instance.elementValueBase64Binary?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean);
  writeNotNull('elementValueBoolean', instance.elementValueBoolean?.toJson());
  writeNotNull('valueCanonical', instance.valueCanonical);
  writeNotNull(
      'elementValueCanonical', instance.elementValueCanonical?.toJson());
  writeNotNull('valueCode', instance.valueCode);
  writeNotNull('elementValueCode', instance.elementValueCode?.toJson());
  writeNotNull('valueDate', instance.valueDate);
  writeNotNull('elementValueDate', instance.elementValueDate?.toJson());
  writeNotNull('valueDateTime', instance.valueDateTime);
  writeNotNull('elementValueDateTime', instance.elementValueDateTime?.toJson());
  writeNotNull('valueDecimal', instance.valueDecimal);
  writeNotNull('elementValueDecimal', instance.elementValueDecimal?.toJson());
  writeNotNull('valueId', instance.valueId);
  writeNotNull('elementValueId', instance.elementValueId?.toJson());
  writeNotNull('valueInstant', instance.valueInstant);
  writeNotNull('elementValueInstant', instance.elementValueInstant?.toJson());
  writeNotNull('valueInteger', instance.valueInteger);
  writeNotNull('elementValueInteger', instance.elementValueInteger?.toJson());
  writeNotNull('valueMarkdown', instance.valueMarkdown);
  writeNotNull('elementValueMarkdown', instance.elementValueMarkdown?.toJson());
  writeNotNull('valueOid', instance.valueOid);
  writeNotNull('elementValueOid', instance.elementValueOid?.toJson());
  writeNotNull('valuePositiveInt', instance.valuePositiveInt);
  writeNotNull(
      'elementValuePositiveInt', instance.elementValuePositiveInt?.toJson());
  writeNotNull('valueString', instance.valueString);
  writeNotNull('elementValueString', instance.elementValueString?.toJson());
  writeNotNull('valueTime', instance.valueTime);
  writeNotNull('elementValueTime', instance.elementValueTime?.toJson());
  writeNotNull('valueUnsignedInt', instance.valueUnsignedInt);
  writeNotNull(
      'elementValueUnsignedInt', instance.elementValueUnsignedInt?.toJson());
  writeNotNull('valueUri', instance.valueUri);
  writeNotNull('elementValueUri', instance.elementValueUri?.toJson());
  writeNotNull('valueUrl', instance.valueUrl);
  writeNotNull('elementValueUrl', instance.elementValueUrl?.toJson());
  writeNotNull('valueUuid', instance.valueUuid);
  writeNotNull('elementValueUuid', instance.elementValueUuid?.toJson());
  writeNotNull('valueAddress', instance.valueAddress?.toJson());
  writeNotNull('valueAge', instance.valueAge?.toJson());
  writeNotNull('valueAnnotation', instance.valueAnnotation?.toJson());
  writeNotNull('valueAttachment', instance.valueAttachment?.toJson());
  writeNotNull('valueCodeableConcept', instance.valueCodeableConcept?.toJson());
  writeNotNull('valueCoding', instance.valueCoding?.toJson());
  writeNotNull('valueContactPoint', instance.valueContactPoint?.toJson());
  writeNotNull('valueCount', instance.valueCount?.toJson());
  writeNotNull('valueDistance', instance.valueDistance?.toJson());
  writeNotNull('valueDuration', instance.valueDuration?.toJson());
  writeNotNull('valueHumanName', instance.valueHumanName?.toJson());
  writeNotNull('valueIdentifier', instance.valueIdentifier?.toJson());
  writeNotNull('valueMoney', instance.valueMoney?.toJson());
  writeNotNull('valuePeriod', instance.valuePeriod?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueRange', instance.valueRange?.toJson());
  writeNotNull('valueRatio', instance.valueRatio?.toJson());
  writeNotNull('valueReference', instance.valueReference?.toJson());
  writeNotNull('valueSampledData', instance.valueSampledData?.toJson());
  writeNotNull('valueSignature', instance.valueSignature?.toJson());
  writeNotNull('valueTiming', instance.valueTiming?.toJson());
  writeNotNull('valueContactDetail', instance.valueContactDetail?.toJson());
  writeNotNull('valueContributor', instance.valueContributor?.toJson());
  writeNotNull('valueDataRequirement', instance.valueDataRequirement?.toJson());
  writeNotNull('valueExpression', instance.valueExpression?.toJson());
  writeNotNull(
      'valueParameterDefinition', instance.valueParameterDefinition?.toJson());
  writeNotNull('valueRelatedArtifact', instance.valueRelatedArtifact?.toJson());
  writeNotNull(
      'valueTriggerDefinition', instance.valueTriggerDefinition?.toJson());
  writeNotNull('valueUsageContext', instance.valueUsageContext?.toJson());
  writeNotNull('valueDosage', instance.valueDosage?.toJson());
  writeNotNull('valueMeta', instance.valueMeta?.toJson());
  return val;
}

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

Map<String, dynamic> _$Task_OutputToJson(Task_Output instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('valueBase64Binary', instance.valueBase64Binary);
  writeNotNull(
      'elementValueBase64Binary', instance.elementValueBase64Binary?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean);
  writeNotNull('elementValueBoolean', instance.elementValueBoolean?.toJson());
  writeNotNull('valueCanonical', instance.valueCanonical);
  writeNotNull(
      'elementValueCanonical', instance.elementValueCanonical?.toJson());
  writeNotNull('valueCode', instance.valueCode);
  writeNotNull('elementValueCode', instance.elementValueCode?.toJson());
  writeNotNull('valueDate', instance.valueDate);
  writeNotNull('elementValueDate', instance.elementValueDate?.toJson());
  writeNotNull('valueDateTime', instance.valueDateTime);
  writeNotNull('elementValueDateTime', instance.elementValueDateTime?.toJson());
  writeNotNull('valueDecimal', instance.valueDecimal);
  writeNotNull('elementValueDecimal', instance.elementValueDecimal?.toJson());
  writeNotNull('valueId', instance.valueId);
  writeNotNull('elementValueId', instance.elementValueId?.toJson());
  writeNotNull('valueInstant', instance.valueInstant);
  writeNotNull('elementValueInstant', instance.elementValueInstant?.toJson());
  writeNotNull('valueInteger', instance.valueInteger);
  writeNotNull('elementValueInteger', instance.elementValueInteger?.toJson());
  writeNotNull('valueMarkdown', instance.valueMarkdown);
  writeNotNull('elementValueMarkdown', instance.elementValueMarkdown?.toJson());
  writeNotNull('valueOid', instance.valueOid);
  writeNotNull('elementValueOid', instance.elementValueOid?.toJson());
  writeNotNull('valuePositiveInt', instance.valuePositiveInt);
  writeNotNull(
      'elementValuePositiveInt', instance.elementValuePositiveInt?.toJson());
  writeNotNull('valueString', instance.valueString);
  writeNotNull('elementValueString', instance.elementValueString?.toJson());
  writeNotNull('valueTime', instance.valueTime);
  writeNotNull('elementValueTime', instance.elementValueTime?.toJson());
  writeNotNull('valueUnsignedInt', instance.valueUnsignedInt);
  writeNotNull(
      'elementValueUnsignedInt', instance.elementValueUnsignedInt?.toJson());
  writeNotNull('valueUri', instance.valueUri);
  writeNotNull('elementValueUri', instance.elementValueUri?.toJson());
  writeNotNull('valueUrl', instance.valueUrl);
  writeNotNull('elementValueUrl', instance.elementValueUrl?.toJson());
  writeNotNull('valueUuid', instance.valueUuid);
  writeNotNull('elementValueUuid', instance.elementValueUuid?.toJson());
  writeNotNull('valueAddress', instance.valueAddress?.toJson());
  writeNotNull('valueAge', instance.valueAge?.toJson());
  writeNotNull('valueAnnotation', instance.valueAnnotation?.toJson());
  writeNotNull('valueAttachment', instance.valueAttachment?.toJson());
  writeNotNull('valueCodeableConcept', instance.valueCodeableConcept?.toJson());
  writeNotNull('valueCoding', instance.valueCoding?.toJson());
  writeNotNull('valueContactPoint', instance.valueContactPoint?.toJson());
  writeNotNull('valueCount', instance.valueCount?.toJson());
  writeNotNull('valueDistance', instance.valueDistance?.toJson());
  writeNotNull('valueDuration', instance.valueDuration?.toJson());
  writeNotNull('valueHumanName', instance.valueHumanName?.toJson());
  writeNotNull('valueIdentifier', instance.valueIdentifier?.toJson());
  writeNotNull('valueMoney', instance.valueMoney?.toJson());
  writeNotNull('valuePeriod', instance.valuePeriod?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueRange', instance.valueRange?.toJson());
  writeNotNull('valueRatio', instance.valueRatio?.toJson());
  writeNotNull('valueReference', instance.valueReference?.toJson());
  writeNotNull('valueSampledData', instance.valueSampledData?.toJson());
  writeNotNull('valueSignature', instance.valueSignature?.toJson());
  writeNotNull('valueTiming', instance.valueTiming?.toJson());
  writeNotNull('valueContactDetail', instance.valueContactDetail?.toJson());
  writeNotNull('valueContributor', instance.valueContributor?.toJson());
  writeNotNull('valueDataRequirement', instance.valueDataRequirement?.toJson());
  writeNotNull('valueExpression', instance.valueExpression?.toJson());
  writeNotNull(
      'valueParameterDefinition', instance.valueParameterDefinition?.toJson());
  writeNotNull('valueRelatedArtifact', instance.valueRelatedArtifact?.toJson());
  writeNotNull(
      'valueTriggerDefinition', instance.valueTriggerDefinition?.toJson());
  writeNotNull('valueUsageContext', instance.valueUsageContext?.toJson());
  writeNotNull('valueDosage', instance.valueDosage?.toJson());
  writeNotNull('valueMeta', instance.valueMeta?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskAdapter extends TypeAdapter<Task> {
  @override
  Task read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Task(
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
      identifier: (fields[11] as List)?.cast<Identifier>(),
      instantiatesCanonical: fields[12] as String,
      instantiatesUri: fields[13] as String,
      elementInstantiatesUri: fields[14] as Element,
      basedOn: (fields[15] as List)?.cast<Reference>(),
      groupIdentifier: fields[16] as Identifier,
      partOf: (fields[17] as List)?.cast<Reference>(),
      status: fields[18] as String,
      elementStatus: fields[19] as Element,
      statusReason: fields[20] as CodeableConcept,
      businessStatus: fields[21] as CodeableConcept,
      intent: fields[22] as String,
      elementIntent: fields[23] as Element,
      priority: fields[24] as String,
      elementPriority: fields[25] as Element,
      code: fields[26] as CodeableConcept,
      description: fields[27] as String,
      elementDescription: fields[28] as Element,
      focus: fields[29] as Reference,
      fore: fields[30] as Reference,
      encounter: fields[31] as Reference,
      executionPeriod: fields[32] as Period,
      authoredOn: fields[33] as DateTime,
      elementAuthoredOn: fields[34] as Element,
      lastModified: fields[35] as DateTime,
      elementLastModified: fields[36] as Element,
      requester: fields[37] as Reference,
      performerType: (fields[38] as List)?.cast<CodeableConcept>(),
      owner: fields[39] as Reference,
      location: fields[40] as Reference,
      reasonCode: fields[41] as CodeableConcept,
      reasonReference: fields[42] as Reference,
      insurance: (fields[43] as List)?.cast<Reference>(),
      note: (fields[44] as List)?.cast<Annotation>(),
      relevantHistory: (fields[45] as List)?.cast<Reference>(),
      restriction: fields[46] as Task_Restriction,
      input: (fields[47] as List)?.cast<Task_Input>(),
      output: (fields[48] as List)?.cast<Task_Output>(),
    );
  }

  @override
  void write(BinaryWriter writer, Task obj) {
    writer
      ..writeByte(49)
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
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.instantiatesCanonical)
      ..writeByte(13)
      ..write(obj.instantiatesUri)
      ..writeByte(14)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(15)
      ..write(obj.basedOn)
      ..writeByte(16)
      ..write(obj.groupIdentifier)
      ..writeByte(17)
      ..write(obj.partOf)
      ..writeByte(18)
      ..write(obj.status)
      ..writeByte(19)
      ..write(obj.elementStatus)
      ..writeByte(20)
      ..write(obj.statusReason)
      ..writeByte(21)
      ..write(obj.businessStatus)
      ..writeByte(22)
      ..write(obj.intent)
      ..writeByte(23)
      ..write(obj.elementIntent)
      ..writeByte(24)
      ..write(obj.priority)
      ..writeByte(25)
      ..write(obj.elementPriority)
      ..writeByte(26)
      ..write(obj.code)
      ..writeByte(27)
      ..write(obj.description)
      ..writeByte(28)
      ..write(obj.elementDescription)
      ..writeByte(29)
      ..write(obj.focus)
      ..writeByte(30)
      ..write(obj.fore)
      ..writeByte(31)
      ..write(obj.encounter)
      ..writeByte(32)
      ..write(obj.executionPeriod)
      ..writeByte(33)
      ..write(obj.authoredOn)
      ..writeByte(34)
      ..write(obj.elementAuthoredOn)
      ..writeByte(35)
      ..write(obj.lastModified)
      ..writeByte(36)
      ..write(obj.elementLastModified)
      ..writeByte(37)
      ..write(obj.requester)
      ..writeByte(38)
      ..write(obj.performerType)
      ..writeByte(39)
      ..write(obj.owner)
      ..writeByte(40)
      ..write(obj.location)
      ..writeByte(41)
      ..write(obj.reasonCode)
      ..writeByte(42)
      ..write(obj.reasonReference)
      ..writeByte(43)
      ..write(obj.insurance)
      ..writeByte(44)
      ..write(obj.note)
      ..writeByte(45)
      ..write(obj.relevantHistory)
      ..writeByte(46)
      ..write(obj.restriction)
      ..writeByte(47)
      ..write(obj.input)
      ..writeByte(48)
      ..write(obj.output);
  }
}

class Task_RestrictionAdapter extends TypeAdapter<Task_Restriction> {
  @override
  Task_Restriction read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Task_Restriction(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      repetitions: fields[3] as int,
      elementRepetitions: fields[4] as Element,
      period: fields[5] as Period,
      recipient: (fields[6] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, Task_Restriction obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.repetitions)
      ..writeByte(4)
      ..write(obj.elementRepetitions)
      ..writeByte(5)
      ..write(obj.period)
      ..writeByte(6)
      ..write(obj.recipient);
  }
}

class Task_InputAdapter extends TypeAdapter<Task_Input> {
  @override
  Task_Input read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Task_Input(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      valueBase64Binary: fields[4] as String,
      elementValueBase64Binary: fields[5] as Element,
      valueBoolean: fields[6] as bool,
      elementValueBoolean: fields[7] as Element,
      valueCanonical: fields[8] as String,
      elementValueCanonical: fields[9] as Element,
      valueCode: fields[10] as String,
      elementValueCode: fields[11] as Element,
      valueDate: fields[12] as String,
      elementValueDate: fields[13] as Element,
      valueDateTime: fields[14] as String,
      elementValueDateTime: fields[15] as Element,
      valueDecimal: fields[16] as int,
      elementValueDecimal: fields[17] as Element,
      valueId: fields[18] as String,
      elementValueId: fields[19] as Element,
      valueInstant: fields[20] as String,
      elementValueInstant: fields[21] as Element,
      valueInteger: fields[22] as int,
      elementValueInteger: fields[23] as Element,
      valueMarkdown: fields[24] as String,
      elementValueMarkdown: fields[25] as Element,
      valueOid: fields[26] as String,
      elementValueOid: fields[27] as Element,
      valuePositiveInt: fields[28] as int,
      elementValuePositiveInt: fields[29] as Element,
      valueString: fields[30] as String,
      elementValueString: fields[31] as Element,
      valueTime: fields[32] as String,
      elementValueTime: fields[33] as Element,
      valueUnsignedInt: fields[34] as int,
      elementValueUnsignedInt: fields[35] as Element,
      valueUri: fields[36] as String,
      elementValueUri: fields[37] as Element,
      valueUrl: fields[38] as String,
      elementValueUrl: fields[39] as Element,
      valueUuid: fields[40] as String,
      elementValueUuid: fields[41] as Element,
      valueAddress: fields[42] as Address,
      valueAge: fields[43] as Age,
      valueAnnotation: fields[44] as Annotation,
      valueAttachment: fields[45] as Attachment,
      valueCodeableConcept: fields[46] as CodeableConcept,
      valueCoding: fields[47] as Coding,
      valueContactPoint: fields[48] as ContactPoint,
      valueCount: fields[49] as Count,
      valueDistance: fields[50] as Distance,
      valueDuration: fields[51] as Duration,
      valueHumanName: fields[52] as HumanName,
      valueIdentifier: fields[53] as Identifier,
      valueMoney: fields[54] as Money,
      valuePeriod: fields[55] as Period,
      valueQuantity: fields[56] as Quantity,
      valueRange: fields[57] as Range,
      valueRatio: fields[58] as Ratio,
      valueReference: fields[59] as Reference,
      valueSampledData: fields[60] as SampledData,
      valueSignature: fields[61] as Signature,
      valueTiming: fields[62] as Timing,
      valueContactDetail: fields[63] as ContactDetail,
      valueContributor: fields[64] as Contributor,
      valueDataRequirement: fields[65] as DataRequirement,
      valueExpression: fields[66] as Expression,
      valueParameterDefinition: fields[67] as ParameterDefinition,
      valueRelatedArtifact: fields[68] as RelatedArtifact,
      valueTriggerDefinition: fields[69] as TriggerDefinition,
      valueUsageContext: fields[70] as UsageContext,
      valueDosage: fields[71] as Dosage,
      valueMeta: fields[72] as Meta,
    );
  }

  @override
  void write(BinaryWriter writer, Task_Input obj) {
    writer
      ..writeByte(73)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.valueBase64Binary)
      ..writeByte(5)
      ..write(obj.elementValueBase64Binary)
      ..writeByte(6)
      ..write(obj.valueBoolean)
      ..writeByte(7)
      ..write(obj.elementValueBoolean)
      ..writeByte(8)
      ..write(obj.valueCanonical)
      ..writeByte(9)
      ..write(obj.elementValueCanonical)
      ..writeByte(10)
      ..write(obj.valueCode)
      ..writeByte(11)
      ..write(obj.elementValueCode)
      ..writeByte(12)
      ..write(obj.valueDate)
      ..writeByte(13)
      ..write(obj.elementValueDate)
      ..writeByte(14)
      ..write(obj.valueDateTime)
      ..writeByte(15)
      ..write(obj.elementValueDateTime)
      ..writeByte(16)
      ..write(obj.valueDecimal)
      ..writeByte(17)
      ..write(obj.elementValueDecimal)
      ..writeByte(18)
      ..write(obj.valueId)
      ..writeByte(19)
      ..write(obj.elementValueId)
      ..writeByte(20)
      ..write(obj.valueInstant)
      ..writeByte(21)
      ..write(obj.elementValueInstant)
      ..writeByte(22)
      ..write(obj.valueInteger)
      ..writeByte(23)
      ..write(obj.elementValueInteger)
      ..writeByte(24)
      ..write(obj.valueMarkdown)
      ..writeByte(25)
      ..write(obj.elementValueMarkdown)
      ..writeByte(26)
      ..write(obj.valueOid)
      ..writeByte(27)
      ..write(obj.elementValueOid)
      ..writeByte(28)
      ..write(obj.valuePositiveInt)
      ..writeByte(29)
      ..write(obj.elementValuePositiveInt)
      ..writeByte(30)
      ..write(obj.valueString)
      ..writeByte(31)
      ..write(obj.elementValueString)
      ..writeByte(32)
      ..write(obj.valueTime)
      ..writeByte(33)
      ..write(obj.elementValueTime)
      ..writeByte(34)
      ..write(obj.valueUnsignedInt)
      ..writeByte(35)
      ..write(obj.elementValueUnsignedInt)
      ..writeByte(36)
      ..write(obj.valueUri)
      ..writeByte(37)
      ..write(obj.elementValueUri)
      ..writeByte(38)
      ..write(obj.valueUrl)
      ..writeByte(39)
      ..write(obj.elementValueUrl)
      ..writeByte(40)
      ..write(obj.valueUuid)
      ..writeByte(41)
      ..write(obj.elementValueUuid)
      ..writeByte(42)
      ..write(obj.valueAddress)
      ..writeByte(43)
      ..write(obj.valueAge)
      ..writeByte(44)
      ..write(obj.valueAnnotation)
      ..writeByte(45)
      ..write(obj.valueAttachment)
      ..writeByte(46)
      ..write(obj.valueCodeableConcept)
      ..writeByte(47)
      ..write(obj.valueCoding)
      ..writeByte(48)
      ..write(obj.valueContactPoint)
      ..writeByte(49)
      ..write(obj.valueCount)
      ..writeByte(50)
      ..write(obj.valueDistance)
      ..writeByte(51)
      ..write(obj.valueDuration)
      ..writeByte(52)
      ..write(obj.valueHumanName)
      ..writeByte(53)
      ..write(obj.valueIdentifier)
      ..writeByte(54)
      ..write(obj.valueMoney)
      ..writeByte(55)
      ..write(obj.valuePeriod)
      ..writeByte(56)
      ..write(obj.valueQuantity)
      ..writeByte(57)
      ..write(obj.valueRange)
      ..writeByte(58)
      ..write(obj.valueRatio)
      ..writeByte(59)
      ..write(obj.valueReference)
      ..writeByte(60)
      ..write(obj.valueSampledData)
      ..writeByte(61)
      ..write(obj.valueSignature)
      ..writeByte(62)
      ..write(obj.valueTiming)
      ..writeByte(63)
      ..write(obj.valueContactDetail)
      ..writeByte(64)
      ..write(obj.valueContributor)
      ..writeByte(65)
      ..write(obj.valueDataRequirement)
      ..writeByte(66)
      ..write(obj.valueExpression)
      ..writeByte(67)
      ..write(obj.valueParameterDefinition)
      ..writeByte(68)
      ..write(obj.valueRelatedArtifact)
      ..writeByte(69)
      ..write(obj.valueTriggerDefinition)
      ..writeByte(70)
      ..write(obj.valueUsageContext)
      ..writeByte(71)
      ..write(obj.valueDosage)
      ..writeByte(72)
      ..write(obj.valueMeta);
  }
}

class Task_OutputAdapter extends TypeAdapter<Task_Output> {
  @override
  Task_Output read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Task_Output(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      valueBase64Binary: fields[4] as String,
      elementValueBase64Binary: fields[5] as Element,
      valueBoolean: fields[6] as bool,
      elementValueBoolean: fields[7] as Element,
      valueCanonical: fields[8] as String,
      elementValueCanonical: fields[9] as Element,
      valueCode: fields[10] as String,
      elementValueCode: fields[11] as Element,
      valueDate: fields[12] as String,
      elementValueDate: fields[13] as Element,
      valueDateTime: fields[14] as String,
      elementValueDateTime: fields[15] as Element,
      valueDecimal: fields[16] as int,
      elementValueDecimal: fields[17] as Element,
      valueId: fields[18] as String,
      elementValueId: fields[19] as Element,
      valueInstant: fields[20] as String,
      elementValueInstant: fields[21] as Element,
      valueInteger: fields[22] as int,
      elementValueInteger: fields[23] as Element,
      valueMarkdown: fields[24] as String,
      elementValueMarkdown: fields[25] as Element,
      valueOid: fields[26] as String,
      elementValueOid: fields[27] as Element,
      valuePositiveInt: fields[28] as int,
      elementValuePositiveInt: fields[29] as Element,
      valueString: fields[30] as String,
      elementValueString: fields[31] as Element,
      valueTime: fields[32] as String,
      elementValueTime: fields[33] as Element,
      valueUnsignedInt: fields[34] as int,
      elementValueUnsignedInt: fields[35] as Element,
      valueUri: fields[36] as String,
      elementValueUri: fields[37] as Element,
      valueUrl: fields[38] as String,
      elementValueUrl: fields[39] as Element,
      valueUuid: fields[40] as String,
      elementValueUuid: fields[41] as Element,
      valueAddress: fields[42] as Address,
      valueAge: fields[43] as Age,
      valueAnnotation: fields[44] as Annotation,
      valueAttachment: fields[45] as Attachment,
      valueCodeableConcept: fields[46] as CodeableConcept,
      valueCoding: fields[47] as Coding,
      valueContactPoint: fields[48] as ContactPoint,
      valueCount: fields[49] as Count,
      valueDistance: fields[50] as Distance,
      valueDuration: fields[51] as Duration,
      valueHumanName: fields[52] as HumanName,
      valueIdentifier: fields[53] as Identifier,
      valueMoney: fields[54] as Money,
      valuePeriod: fields[55] as Period,
      valueQuantity: fields[56] as Quantity,
      valueRange: fields[57] as Range,
      valueRatio: fields[58] as Ratio,
      valueReference: fields[59] as Reference,
      valueSampledData: fields[60] as SampledData,
      valueSignature: fields[61] as Signature,
      valueTiming: fields[62] as Timing,
      valueContactDetail: fields[63] as ContactDetail,
      valueContributor: fields[64] as Contributor,
      valueDataRequirement: fields[65] as DataRequirement,
      valueExpression: fields[66] as Expression,
      valueParameterDefinition: fields[67] as ParameterDefinition,
      valueRelatedArtifact: fields[68] as RelatedArtifact,
      valueTriggerDefinition: fields[69] as TriggerDefinition,
      valueUsageContext: fields[70] as UsageContext,
      valueDosage: fields[71] as Dosage,
      valueMeta: fields[72] as Meta,
    );
  }

  @override
  void write(BinaryWriter writer, Task_Output obj) {
    writer
      ..writeByte(73)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.valueBase64Binary)
      ..writeByte(5)
      ..write(obj.elementValueBase64Binary)
      ..writeByte(6)
      ..write(obj.valueBoolean)
      ..writeByte(7)
      ..write(obj.elementValueBoolean)
      ..writeByte(8)
      ..write(obj.valueCanonical)
      ..writeByte(9)
      ..write(obj.elementValueCanonical)
      ..writeByte(10)
      ..write(obj.valueCode)
      ..writeByte(11)
      ..write(obj.elementValueCode)
      ..writeByte(12)
      ..write(obj.valueDate)
      ..writeByte(13)
      ..write(obj.elementValueDate)
      ..writeByte(14)
      ..write(obj.valueDateTime)
      ..writeByte(15)
      ..write(obj.elementValueDateTime)
      ..writeByte(16)
      ..write(obj.valueDecimal)
      ..writeByte(17)
      ..write(obj.elementValueDecimal)
      ..writeByte(18)
      ..write(obj.valueId)
      ..writeByte(19)
      ..write(obj.elementValueId)
      ..writeByte(20)
      ..write(obj.valueInstant)
      ..writeByte(21)
      ..write(obj.elementValueInstant)
      ..writeByte(22)
      ..write(obj.valueInteger)
      ..writeByte(23)
      ..write(obj.elementValueInteger)
      ..writeByte(24)
      ..write(obj.valueMarkdown)
      ..writeByte(25)
      ..write(obj.elementValueMarkdown)
      ..writeByte(26)
      ..write(obj.valueOid)
      ..writeByte(27)
      ..write(obj.elementValueOid)
      ..writeByte(28)
      ..write(obj.valuePositiveInt)
      ..writeByte(29)
      ..write(obj.elementValuePositiveInt)
      ..writeByte(30)
      ..write(obj.valueString)
      ..writeByte(31)
      ..write(obj.elementValueString)
      ..writeByte(32)
      ..write(obj.valueTime)
      ..writeByte(33)
      ..write(obj.elementValueTime)
      ..writeByte(34)
      ..write(obj.valueUnsignedInt)
      ..writeByte(35)
      ..write(obj.elementValueUnsignedInt)
      ..writeByte(36)
      ..write(obj.valueUri)
      ..writeByte(37)
      ..write(obj.elementValueUri)
      ..writeByte(38)
      ..write(obj.valueUrl)
      ..writeByte(39)
      ..write(obj.elementValueUrl)
      ..writeByte(40)
      ..write(obj.valueUuid)
      ..writeByte(41)
      ..write(obj.elementValueUuid)
      ..writeByte(42)
      ..write(obj.valueAddress)
      ..writeByte(43)
      ..write(obj.valueAge)
      ..writeByte(44)
      ..write(obj.valueAnnotation)
      ..writeByte(45)
      ..write(obj.valueAttachment)
      ..writeByte(46)
      ..write(obj.valueCodeableConcept)
      ..writeByte(47)
      ..write(obj.valueCoding)
      ..writeByte(48)
      ..write(obj.valueContactPoint)
      ..writeByte(49)
      ..write(obj.valueCount)
      ..writeByte(50)
      ..write(obj.valueDistance)
      ..writeByte(51)
      ..write(obj.valueDuration)
      ..writeByte(52)
      ..write(obj.valueHumanName)
      ..writeByte(53)
      ..write(obj.valueIdentifier)
      ..writeByte(54)
      ..write(obj.valueMoney)
      ..writeByte(55)
      ..write(obj.valuePeriod)
      ..writeByte(56)
      ..write(obj.valueQuantity)
      ..writeByte(57)
      ..write(obj.valueRange)
      ..writeByte(58)
      ..write(obj.valueRatio)
      ..writeByte(59)
      ..write(obj.valueReference)
      ..writeByte(60)
      ..write(obj.valueSampledData)
      ..writeByte(61)
      ..write(obj.valueSignature)
      ..writeByte(62)
      ..write(obj.valueTiming)
      ..writeByte(63)
      ..write(obj.valueContactDetail)
      ..writeByte(64)
      ..write(obj.valueContributor)
      ..writeByte(65)
      ..write(obj.valueDataRequirement)
      ..writeByte(66)
      ..write(obj.valueExpression)
      ..writeByte(67)
      ..write(obj.valueParameterDefinition)
      ..writeByte(68)
      ..write(obj.valueRelatedArtifact)
      ..writeByte(69)
      ..write(obj.valueTriggerDefinition)
      ..writeByte(70)
      ..write(obj.valueUsageContext)
      ..writeByte(71)
      ..write(obj.valueDosage)
      ..writeByte(72)
      ..write(obj.valueMeta);
  }
}
