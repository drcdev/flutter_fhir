import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 601)
class Task {

  //  This is a Task resource
  @HiveField(0)
  final String resourceType= 'Task';

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

  //  The business identifier for this task.
  @HiveField(11)
  List<Identifier> identifier;

  //  The URL pointing to a *FHIR*-defined protocol, guideline, orderset or
  // other definition that is adhered to in whole or in part by this Task.
  @HiveField(12)
  String instantiatesCanonical;

  //  The URL pointing to an *externally* maintained  protocol, guideline,
  // orderset or other definition that is adhered to in whole or in part by
  // this Task.
  @HiveField(13)
  String instantiatesUri;

  //  Extensions for instantiatesUri
  @HiveField(14)
  Element elementInstantiatesUri;

  //  BasedOn refers to a higher-level authorization that triggered the
  // creation of the task.  It references a "request" resource such as a
  // ServiceRequest, MedicationRequest, ServiceRequest, CarePlan, etc. which
  // is distinct from the "request" resource the task is seeking to fulfill.
  //  This latter resource is referenced by FocusOn.  For example, based on
  // a ServiceRequest (= BasedOn), a task is created to fulfill a
  // procedureRequest ( = FocusOn ) to collect a specimen from a patient.
  @HiveField(15)
  List<Reference> basedOn;

  //  An identifier that links together multiple tasks and other requests
  // that were created in the same context.
  @HiveField(16)
  Identifier groupIdentifier;

  //  Task that this particular task is part of.
  @HiveField(17)
  List<Reference> partOf;

  //  The current status of the task.
  @HiveField(18)
  String status; // <code> enum: draft/requested/received/accepted/rejected/ready/cancelled/in-progress/on-hold/failed/completed/entered-in-error;

  //  Extensions for status
  @HiveField(19)
  Element elementStatus;

  //  An explanation as to why this task is held, failed, was refused, etc.
  @HiveField(20)
  CodeableConcept statusReason;

  //  Contains business-specific nuances of the business state.
  @HiveField(21)
  CodeableConcept businessStatus;

  //  Indicates the "level" of actionability associated with the Task, i.e.
  // i+R[9]Cs this a proposed task, a planned task, an actionable task, etc.
  @HiveField(22)
  String intent; // <code> enum: unknown/proposal/plan/order/original-order/reflex-order/filler-order/instance-order/option;

  //  Extensions for intent
  @HiveField(23)
  Element elementIntent;

  //  Indicates how quickly the Task should be addressed with respect to
  // other requests.
  @HiveField(24)
  String priority;

  //  Extensions for priority
  @HiveField(25)
  Element elementPriority;

  //  A name or code (or both) briefly describing what the task involves.
  @HiveField(26)
  CodeableConcept code;

  //  A free-text description of what is to be performed.
  @HiveField(27)
  String description;

  //  Extensions for description
  @HiveField(28)
  Element elementDescription;

  //  The request being actioned or the resource being manipulated by this
  // task.
  @HiveField(29)
  Reference focus;

  //  The entity who benefits from the performance of the service specified
  // in the task (e.g., the patient).
  @HiveField(30)
  Reference fore;

  //  The healthcare event  (e.g. a patient and healthcare provider
  // interaction) during which this task was created.
  @HiveField(31)
  Reference encounter;

  //  Identifies the time action was first taken against the task (start)
  // and/or the time final action was taken against the task prior to
  // marking it as completed (end).
  @HiveField(32)
  Period executionPeriod;

  //  The date and time this task was created.
  @HiveField(33)
  DateTime authoredOn;

  //  Extensions for authoredOn
  @HiveField(34)
  Element elementAuthoredOn;

  //  The date and time of last modification to this task.
  @HiveField(35)
  DateTime lastModified;

  //  Extensions for lastModified
  @HiveField(36)
  Element elementLastModified;

  //  The creator of the task.
  @HiveField(37)
  Reference requester;

  //  The kind of participant that should perform the task.
  @HiveField(38)
  List<CodeableConcept> performerType;

  //  Individual organization or Device currently responsible for task
  // execution.
  @HiveField(39)
  Reference owner;

  //  Principal physical location where the this task is performed.
  @HiveField(40)
  Reference location;

  //  A description or code indicating why this task needs to be performed.
  @HiveField(41)
  CodeableConcept reasonCode;

  //  A resource reference indicating why this task needs to be performed.
  @HiveField(42)
  Reference reasonReference;

  //  Insurance plans, coverage extensions, pre-authorizations and/or
  // pre-determinations that may be relevant to the Task.
  @HiveField(43)
  List<Reference> insurance;

  //  Free-text information captured about the task as it progresses.
  @HiveField(44)
  List<Annotation> note;

  //  Links to Provenance records for past versions of this Task that
  // identify key state transitions or updates that are likely to be
  // relevant to a user looking at the current version of the task.
  @HiveField(45)
  List<Reference> relevantHistory;

  //  If the Task.focus is a request resource and the task is seeking
  // fulfillment (i.e. is asking for the request to be actioned), this
  // element identifies any limitations on what parts of the referenced
  // request should be actioned.
  @HiveField(46)
  Task_Restriction restriction;

  //  Additional information that may be needed in the execution of the
  // task.
  @HiveField(47)
  List<Task_Input> input;

  //  Outputs produced by the Task.
  @HiveField(48)
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
@HiveType(typeId: 602)
class Task_Restriction {

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

  //  Indicates the number of times the requested action should occur.
  @HiveField(3)
  int repetitions;

  //  Extensions for repetitions
  @HiveField(4)
  Element elementRepetitions;

  //  Over what time-period is fulfillment sought.
  @HiveField(5)
  Period period;

  //  For requests that are targeted to more than on potential
  // recipient/target, for whom is fulfillment sought?
  @HiveField(6)
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
@HiveType(typeId: 603)
class Task_Input {

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

  //  A code or description indicating how the input is intended to be used
  // as part of the task execution.
  @HiveField(3)
  CodeableConcept type;

  //  The value of the input parameter as a basic type.
  @HiveField(4)
  String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for valueBase64Binary
  @HiveField(5)
  Element elementValueBase64Binary;

  //  The value of the input parameter as a basic type.
  @HiveField(6)
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  @HiveField(7)
  Element elementValueBoolean;

  //  The value of the input parameter as a basic type.
  @HiveField(8)
  String valueCanonical; //  pattern: ^\S*$

  //  Extensions for valueCanonical
  @HiveField(9)
  Element elementValueCanonical;

  //  The value of the input parameter as a basic type.
  @HiveField(10)
  String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for valueCode
  @HiveField(11)
  Element elementValueCode;

  //  The value of the input parameter as a basic type.
  @HiveField(12)
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for valueDate
  @HiveField(13)
  Element elementValueDate;

  //  The value of the input parameter as a basic type.
  @HiveField(14)
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for valueDateTime
  @HiveField(15)
  Element elementValueDateTime;

  //  The value of the input parameter as a basic type.
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for valueDecimal
  @HiveField(17)
  Element elementValueDecimal;

  //  The value of the input parameter as a basic type.
  @HiveField(18)
  String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for valueId
  @HiveField(19)
  Element elementValueId;

  //  The value of the input parameter as a basic type.
  @HiveField(20)
  String valueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for valueInstant
  @HiveField(21)
  Element elementValueInstant;

  //  The value of the input parameter as a basic type.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  @HiveField(23)
  Element elementValueInteger;

  //  The value of the input parameter as a basic type.
  @HiveField(24)
  String valueMarkdown; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueMarkdown
  @HiveField(25)
  Element elementValueMarkdown;

  //  The value of the input parameter as a basic type.
  @HiveField(26)
  String valueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

  //  Extensions for valueOid
  @HiveField(27)
  Element elementValueOid;

  //  The value of the input parameter as a basic type.
  int valuePositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for valuePositiveInt
  @HiveField(29)
  Element elementValuePositiveInt;

  //  The value of the input parameter as a basic type.
  @HiveField(30)
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  @HiveField(31)
  Element elementValueString;

  //  The value of the input parameter as a basic type.
  @HiveField(32)
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for valueTime
  @HiveField(33)
  Element elementValueTime;

  //  The value of the input parameter as a basic type.
  int valueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for valueUnsignedInt
  @HiveField(35)
  Element elementValueUnsignedInt;

  //  The value of the input parameter as a basic type.
  @HiveField(36)
  String valueUri; //  pattern: ^\S*$

  //  Extensions for valueUri
  @HiveField(37)
  Element elementValueUri;

  //  The value of the input parameter as a basic type.
  @HiveField(38)
  String valueUrl; //  pattern: ^\S*$

  //  Extensions for valueUrl
  @HiveField(39)
  Element elementValueUrl;

  //  The value of the input parameter as a basic type.
  @HiveField(40)
  String valueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

  //  Extensions for valueUuid
  @HiveField(41)
  Element elementValueUuid;

  //  The value of the input parameter as a basic type.
  @HiveField(42)
  Address valueAddress;

  //  The value of the input parameter as a basic type.
  @HiveField(43)
  Age valueAge;

  //  The value of the input parameter as a basic type.
  @HiveField(44)
  Annotation valueAnnotation;

  //  The value of the input parameter as a basic type.
  @HiveField(45)
  Attachment valueAttachment;

  //  The value of the input parameter as a basic type.
  @HiveField(46)
  CodeableConcept valueCodeableConcept;

  //  The value of the input parameter as a basic type.
  @HiveField(47)
  Coding valueCoding;

  //  The value of the input parameter as a basic type.
  @HiveField(48)
  ContactPoint valueContactPoint;

  //  The value of the input parameter as a basic type.
  @HiveField(49)
  Count valueCount;

  //  The value of the input parameter as a basic type.
  @HiveField(50)
  Distance valueDistance;

  //  The value of the input parameter as a basic type.
  @HiveField(51)
  Duration valueDuration;

  //  The value of the input parameter as a basic type.
  @HiveField(52)
  HumanName valueHumanName;

  //  The value of the input parameter as a basic type.
  @HiveField(53)
  Identifier valueIdentifier;

  //  The value of the input parameter as a basic type.
  @HiveField(54)
  Money valueMoney;

  //  The value of the input parameter as a basic type.
  @HiveField(55)
  Period valuePeriod;

  //  The value of the input parameter as a basic type.
  @HiveField(56)
  Quantity valueQuantity;

  //  The value of the input parameter as a basic type.
  @HiveField(57)
  Range valueRange;

  //  The value of the input parameter as a basic type.
  @HiveField(58)
  Ratio valueRatio;

  //  The value of the input parameter as a basic type.
  @HiveField(59)
  Reference valueReference;

  //  The value of the input parameter as a basic type.
  @HiveField(60)
  SampledData valueSampledData;

  //  The value of the input parameter as a basic type.
  @HiveField(61)
  Signature valueSignature;

  //  The value of the input parameter as a basic type.
  @HiveField(62)
  Timing valueTiming;

  //  The value of the input parameter as a basic type.
  @HiveField(63)
  ContactDetail valueContactDetail;

  //  The value of the input parameter as a basic type.
  @HiveField(64)
  Contributor valueContributor;

  //  The value of the input parameter as a basic type.
  @HiveField(65)
  DataRequirement valueDataRequirement;

  //  The value of the input parameter as a basic type.
  @HiveField(66)
  Expression valueExpression;

  //  The value of the input parameter as a basic type.
  @HiveField(67)
  ParameterDefinition valueParameterDefinition;

  //  The value of the input parameter as a basic type.
  @HiveField(68)
  RelatedArtifact valueRelatedArtifact;

  //  The value of the input parameter as a basic type.
  @HiveField(69)
  TriggerDefinition valueTriggerDefinition;

  //  The value of the input parameter as a basic type.
  @HiveField(70)
  UsageContext valueUsageContext;

  //  The value of the input parameter as a basic type.
  @HiveField(71)
  Dosage valueDosage;

  //  The value of the input parameter as a basic type.
  @HiveField(72)
  Meta valueMeta;

Task_Input(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
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
@HiveType(typeId: 604)
class Task_Output {

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

  //  The name of the Output parameter.
  @HiveField(3)
  CodeableConcept type;

  //  The value of the Output parameter as a basic type.
  @HiveField(4)
  String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for valueBase64Binary
  @HiveField(5)
  Element elementValueBase64Binary;

  //  The value of the Output parameter as a basic type.
  @HiveField(6)
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  @HiveField(7)
  Element elementValueBoolean;

  //  The value of the Output parameter as a basic type.
  @HiveField(8)
  String valueCanonical; //  pattern: ^\S*$

  //  Extensions for valueCanonical
  @HiveField(9)
  Element elementValueCanonical;

  //  The value of the Output parameter as a basic type.
  @HiveField(10)
  String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for valueCode
  @HiveField(11)
  Element elementValueCode;

  //  The value of the Output parameter as a basic type.
  @HiveField(12)
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for valueDate
  @HiveField(13)
  Element elementValueDate;

  //  The value of the Output parameter as a basic type.
  @HiveField(14)
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for valueDateTime
  @HiveField(15)
  Element elementValueDateTime;

  //  The value of the Output parameter as a basic type.
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for valueDecimal
  @HiveField(17)
  Element elementValueDecimal;

  //  The value of the Output parameter as a basic type.
  @HiveField(18)
  String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for valueId
  @HiveField(19)
  Element elementValueId;

  //  The value of the Output parameter as a basic type.
  @HiveField(20)
  String valueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for valueInstant
  @HiveField(21)
  Element elementValueInstant;

  //  The value of the Output parameter as a basic type.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  @HiveField(23)
  Element elementValueInteger;

  //  The value of the Output parameter as a basic type.
  @HiveField(24)
  String valueMarkdown; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueMarkdown
  @HiveField(25)
  Element elementValueMarkdown;

  //  The value of the Output parameter as a basic type.
  @HiveField(26)
  String valueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

  //  Extensions for valueOid
  @HiveField(27)
  Element elementValueOid;

  //  The value of the Output parameter as a basic type.
  int valuePositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for valuePositiveInt
  @HiveField(29)
  Element elementValuePositiveInt;

  //  The value of the Output parameter as a basic type.
  @HiveField(30)
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  @HiveField(31)
  Element elementValueString;

  //  The value of the Output parameter as a basic type.
  @HiveField(32)
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for valueTime
  @HiveField(33)
  Element elementValueTime;

  //  The value of the Output parameter as a basic type.
  int valueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for valueUnsignedInt
  @HiveField(35)
  Element elementValueUnsignedInt;

  //  The value of the Output parameter as a basic type.
  @HiveField(36)
  String valueUri; //  pattern: ^\S*$

  //  Extensions for valueUri
  @HiveField(37)
  Element elementValueUri;

  //  The value of the Output parameter as a basic type.
  @HiveField(38)
  String valueUrl; //  pattern: ^\S*$

  //  Extensions for valueUrl
  @HiveField(39)
  Element elementValueUrl;

  //  The value of the Output parameter as a basic type.
  @HiveField(40)
  String valueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

  //  Extensions for valueUuid
  @HiveField(41)
  Element elementValueUuid;

  //  The value of the Output parameter as a basic type.
  @HiveField(42)
  Address valueAddress;

  //  The value of the Output parameter as a basic type.
  @HiveField(43)
  Age valueAge;

  //  The value of the Output parameter as a basic type.
  @HiveField(44)
  Annotation valueAnnotation;

  //  The value of the Output parameter as a basic type.
  @HiveField(45)
  Attachment valueAttachment;

  //  The value of the Output parameter as a basic type.
  @HiveField(46)
  CodeableConcept valueCodeableConcept;

  //  The value of the Output parameter as a basic type.
  @HiveField(47)
  Coding valueCoding;

  //  The value of the Output parameter as a basic type.
  @HiveField(48)
  ContactPoint valueContactPoint;

  //  The value of the Output parameter as a basic type.
  @HiveField(49)
  Count valueCount;

  //  The value of the Output parameter as a basic type.
  @HiveField(50)
  Distance valueDistance;

  //  The value of the Output parameter as a basic type.
  @HiveField(51)
  Duration valueDuration;

  //  The value of the Output parameter as a basic type.
  @HiveField(52)
  HumanName valueHumanName;

  //  The value of the Output parameter as a basic type.
  @HiveField(53)
  Identifier valueIdentifier;

  //  The value of the Output parameter as a basic type.
  @HiveField(54)
  Money valueMoney;

  //  The value of the Output parameter as a basic type.
  @HiveField(55)
  Period valuePeriod;

  //  The value of the Output parameter as a basic type.
  @HiveField(56)
  Quantity valueQuantity;

  //  The value of the Output parameter as a basic type.
  @HiveField(57)
  Range valueRange;

  //  The value of the Output parameter as a basic type.
  @HiveField(58)
  Ratio valueRatio;

  //  The value of the Output parameter as a basic type.
  @HiveField(59)
  Reference valueReference;

  //  The value of the Output parameter as a basic type.
  @HiveField(60)
  SampledData valueSampledData;

  //  The value of the Output parameter as a basic type.
  @HiveField(61)
  Signature valueSignature;

  //  The value of the Output parameter as a basic type.
  @HiveField(62)
  Timing valueTiming;

  //  The value of the Output parameter as a basic type.
  @HiveField(63)
  ContactDetail valueContactDetail;

  //  The value of the Output parameter as a basic type.
  @HiveField(64)
  Contributor valueContributor;

  //  The value of the Output parameter as a basic type.
  @HiveField(65)
  DataRequirement valueDataRequirement;

  //  The value of the Output parameter as a basic type.
  @HiveField(66)
  Expression valueExpression;

  //  The value of the Output parameter as a basic type.
  @HiveField(67)
  ParameterDefinition valueParameterDefinition;

  //  The value of the Output parameter as a basic type.
  @HiveField(68)
  RelatedArtifact valueRelatedArtifact;

  //  The value of the Output parameter as a basic type.
  @HiveField(69)
  TriggerDefinition valueTriggerDefinition;

  //  The value of the Output parameter as a basic type.
  @HiveField(70)
  UsageContext valueUsageContext;

  //  The value of the Output parameter as a basic type.
  @HiveField(71)
  Dosage valueDosage;

  //  The value of the Output parameter as a basic type.
  @HiveField(72)
  Meta valueMeta;

Task_Output(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
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
// TypeAdapterGenerator
// **************************************************************************

class TaskAdapter extends TypeAdapter<Task> {
  @override
  final typeId = 601;

  @override
  Task read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Task(
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
  final typeId = 602;

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
  final typeId = 603;

  @override
  Task_Input read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Task_Input(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
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
      elementValueDecimal: fields[17] as Element,
      valueId: fields[18] as String,
      elementValueId: fields[19] as Element,
      valueInstant: fields[20] as String,
      elementValueInstant: fields[21] as Element,
      elementValueInteger: fields[23] as Element,
      valueMarkdown: fields[24] as String,
      elementValueMarkdown: fields[25] as Element,
      valueOid: fields[26] as String,
      elementValueOid: fields[27] as Element,
      elementValuePositiveInt: fields[29] as Element,
      valueString: fields[30] as String,
      elementValueString: fields[31] as Element,
      valueTime: fields[32] as String,
      elementValueTime: fields[33] as Element,
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
      ..writeByte(69)
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
  final typeId = 604;

  @override
  Task_Output read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Task_Output(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
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
      elementValueDecimal: fields[17] as Element,
      valueId: fields[18] as String,
      elementValueId: fields[19] as Element,
      valueInstant: fields[20] as String,
      elementValueInstant: fields[21] as Element,
      elementValueInteger: fields[23] as Element,
      valueMarkdown: fields[24] as String,
      elementValueMarkdown: fields[25] as Element,
      valueOid: fields[26] as String,
      elementValueOid: fields[27] as Element,
      elementValuePositiveInt: fields[29] as Element,
      valueString: fields[30] as String,
      elementValueString: fields[31] as Element,
      valueTime: fields[32] as String,
      elementValueTime: fields[33] as Element,
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
      ..writeByte(69)
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
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
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
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
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
