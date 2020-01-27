
part 'task.g.dart';

@JsonSerializable(explicitToJson: true)
class Task {
  
  // This is a Task 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The business identifier for this task.
  List<Identifier identifier;

  // The URL pointing to a *FHIR*-defined protocol, guideline, orderset or other
  //  definition that is adhered to in whole or in part by this Task.
  String instantiatesCanonical;

  // The URL pointing to an *externally* maintained  protocol, guideline,
  //  orderset or other definition that is adhered to in whole or in part by this Task.
  String instantiatesUri;

  // Extensions for instantiatesUri
  Element _instantiatesUri;

  // BasedOn refers to a higher-level authorization that triggered the creation
  //  of the task.  It references a "request" resource such as a ServiceRequest,
  //  MedicationRequest, ServiceRequest, CarePlan, etc. which is distinct from the
  //  "request" resource the task is seeking to fulfill.  This latter resource is
  //  referenced by FocusOn.  For example, based on a ServiceRequest (= BasedOn), a
  //  task is created to fulfill a procedureRequest ( = FocusOn ) to collect a
  //  specimen from a patient.
  List<Reference basedOn;

  // An identifier that links together multiple tasks and other requests that
  //  were created in the same context.
  Identifier groupIdentifier;

  // Task that this particular task is part of.
  List<Reference partOf;

  // The current status of the task.Enum enum; //
  //  draftrequestedreceivedacceptedrejectedreadycancelledin-progresson-holdfailedcompletedentered-in-error status;

  // Extensions for status
  Element _status;

  // An explanation as to why this task is held, failed, was refused, etc.
  CodeableConcept statusReason;

  // Contains business-specific nuances of the business state.
  CodeableConcept businessStatus;

  // Indicates the "level" of actionability associated with the Task, i.e.
  //  i+R[9]Cs this a proposed task, a planned task, an actionable task, etc.Enum
  //  enum; //
  //  unknownproposalplanorderoriginal-orderreflex-orderfiller-orderinstance-orderoption intent;

  // Extensions for intent
  Element _intent;

  // Indicates how quickly the Task should be addressed with respect to other
  //  requests.
  String priority;

  // Extensions for priority
  Element _priority;

  // A name or code (or both) briefly describing what the task involves.
  CodeableConcept code;

  // A free-text description of what is to be performed.
  String description;

  // Extensions for description
  Element _description;

  // The request being actioned or the resource being manipulated by this task.
  Reference focus;

  // The entity who benefits from the performance of the service specified in
  //  the task (e.g., the patient).
  Reference for;

  // The healthcare event  (e.g. a patient and healthcare provider interaction)
  //  during which this task was created.
  Reference encounter;

  // Identifies the time action was first taken against the task (start) and/or
  //  the time final action was taken against the task prior to marking it as
  //  completed (end).
  Period executionPeriod;

  // The date and time this task was created.
  StringTime authoredOn;

  // Extensions for authoredOn
  Element _authoredOn;

  // The date and time of last modification to this task.
  StringTime lastModified;

  // Extensions for lastModified
  Element _lastModified;

  // The creator of the task.
  Reference requester;

  // The kind of participant that should perform the task.
  List<CodeableConcept performerType;

  // Individual organization or Device currently responsible for task execution.
  Reference owner;

  // Principal physical location where the this task is performed.
  Reference location;

  // A description or code indicating why this task needs to be performed.
  CodeableConcept reasonCode;

  // A resource reference indicating why this task needs to be performed.
  Reference reasonReference;

  // Insurance plans, coverage extensions, pre-authorizations and/or
  //  pre-determinations that may be relevant to the Task.
  List<Reference insurance;

  // Free-text information captured about the task as it progresses.
  List<Annotation note;

  // Links to Provenance records for past versions of this Task that identify
  //  key state transitions or updates that are likely to be relevant to a user
  //  looking at the current version of the task.
  List<Reference relevantHistory;

  // If the Task.focus is a request resource and the task is seeking fulfillment
  //  (i.e. is asking for the request to be actioned), this element identifies any
  //  limitations on what parts of the referenced request should be actioned.
  Task_Restriction restriction;

  // Additional information that may be needed in the execution of the task.
  List<Task_Input input;

  // Outputs produced by the Task.
  List<Task_Output output
Task(
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
this.identifier,
this.instantiatesCanonical,
this.instantiatesUri,
this._instantiatesUri,
this.basedOn,
this.groupIdentifier,
this.partOf,
this.status,
this._status,
this.statusReason,
this.businessStatus,
this.intent,
this._intent,
this.priority,
this._priority,
this.code,
this.description,
this._description,
this.focus,
this.for,
this.encounter,
this.executionPeriod,
this.authoredOn,
this._authoredOn,
this.lastModified,
this._lastModified,
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
this.output});

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Task_Input {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A code or description indicating how the input is intended to be used as
  //  part of the task execution.
  CodeableConcept type;

  // The value of the input parameter as a basic type. string valueBase64Binary;

  // Extensions for valueBase64Binary
  Element _valueBase64Binary;

  // The value of the input parameter as a basic type. boolean valueBoolean;

  // Extensions for valueBoolean
  Element _valueBoolean;

  // The value of the input parameter as a basic type. string valueCanonical;

  // Extensions for valueCanonical
  Element _valueCanonical;

  // The value of the input parameter as a basic type. string valueCode;

  // Extensions for valueCode
  Element _valueCode;

  // The value of the input parameter as a basic type. string valueDate;

  // Extensions for valueDate
  Element _valueDate;

  // The value of the input parameter as a basic type. string valueDateTime;

  // Extensions for valueDateTime
  Element _valueDateTime;

  // The value of the input parameter as a basic type. number valueDecimal;

  // Extensions for valueDecimal
  Element _valueDecimal;

  // The value of the input parameter as a basic type. string valueId;

  // Extensions for valueId
  Element _valueId;

  // The value of the input parameter as a basic type. string valueInstant;

  // Extensions for valueInstant
  Element _valueInstant;

  // The value of the input parameter as a basic type. number valueInteger;

  // Extensions for valueInteger
  Element _valueInteger;

  // The value of the input parameter as a basic type. string valueMarkdown;

  // Extensions for valueMarkdown
  Element _valueMarkdown;

  // The value of the input parameter as a basic type. string valueOid;

  // Extensions for valueOid
  Element _valueOid;

  // The value of the input parameter as a basic type. number valuePositiveInt;

  // Extensions for valuePositiveInt
  Element _valuePositiveInt;

  // The value of the input parameter as a basic type. string valueString;

  // Extensions for valueString
  Element _valueString;

  // The value of the input parameter as a basic type. string valueTime;

  // Extensions for valueTime
  Element _valueTime;

  // The value of the input parameter as a basic type. number valueUnsignedInt;

  // Extensions for valueUnsignedInt
  Element _valueUnsignedInt;

  // The value of the input parameter as a basic type. string valueUri;

  // Extensions for valueUri
  Element _valueUri;

  // The value of the input parameter as a basic type. string valueUrl;

  // Extensions for valueUrl
  Element _valueUrl;

  // The value of the input parameter as a basic type. string valueUuid;

  // Extensions for valueUuid
  Element _valueUuid;

  // The value of the input parameter as a basic type.
  Address valueAddress;

  // The value of the input parameter as a basic type.
  Age valueAge;

  // The value of the input parameter as a basic type.
  Annotation valueAnnotation;

  // The value of the input parameter as a basic type.
  Attachment valueAttachment;

  // The value of the input parameter as a basic type.
  CodeableConcept valueCodeableConcept;

  // The value of the input parameter as a basic type.
  Coding valueCoding;

  // The value of the input parameter as a basic type.
  ContactPoint valueContactPoint;

  // The value of the input parameter as a basic type.
  Count valueCount;

  // The value of the input parameter as a basic type.
  Distance valueDistance;

  // The value of the input parameter as a basic type.
  Duration valueDuration;

  // The value of the input parameter as a basic type.
  HumanName valueHumanName;

  // The value of the input parameter as a basic type.
  Identifier valueIdentifier;

  // The value of the input parameter as a basic type.
  Money valueMoney;

  // The value of the input parameter as a basic type.
  Period valuePeriod;

  // The value of the input parameter as a basic type.
  Quantity valueQuantity;

  // The value of the input parameter as a basic type.
  Range valueRange;

  // The value of the input parameter as a basic type.
  Ratio valueRatio;

  // The value of the input parameter as a basic type.
  Reference valueReference;

  // The value of the input parameter as a basic type.
  SampledData valueSampledData;

  // The value of the input parameter as a basic type.
  Signature valueSignature;

  // The value of the input parameter as a basic type.
  Timing valueTiming;

  // The value of the input parameter as a basic type.
  ContactDetail valueContactDetail;

  // The value of the input parameter as a basic type.
  Contributor valueContributor;

  // The value of the input parameter as a basic type.
  DataRequirement valueDataRequirement;

  // The value of the input parameter as a basic type.
  Expression valueExpression;

  // The value of the input parameter as a basic type.
  ParameterDefinition valueParameterDefinition;

  // The value of the input parameter as a basic type.
  RelatedArtifact valueRelatedArtifact;

  // The value of the input parameter as a basic type.
  TriggerDefinition valueTriggerDefinition;

  // The value of the input parameter as a basic type.
  UsageContext valueUsageContext;

  // The value of the input parameter as a basic type.
  Dosage valueDosage;

  // The value of the input parameter as a basic type.
  Meta valueMeta
Task_Input(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.valueBase64Binary,
this._valueBase64Binary,
this.valueBoolean,
this._valueBoolean,
this.valueCanonical,
this._valueCanonical,
this.valueCode,
this._valueCode,
this.valueDate,
this._valueDate,
this.valueDateTime,
this._valueDateTime,
this.valueDecimal,
this._valueDecimal,
this.valueId,
this._valueId,
this.valueInstant,
this._valueInstant,
this.valueInteger,
this._valueInteger,
this.valueMarkdown,
this._valueMarkdown,
this.valueOid,
this._valueOid,
this.valuePositiveInt,
this._valuePositiveInt,
this.valueString,
this._valueString,
this.valueTime,
this._valueTime,
this.valueUnsignedInt,
this._valueUnsignedInt,
this.valueUri,
this._valueUri,
this.valueUrl,
this._valueUrl,
this.valueUuid,
this._valueUuid,
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
this.valueMeta});

  factory Task_Input.fromJson(Map<String, dynamic> json) => _$Task_InputFromJson(json);
  Map<String, dynamic> toJson() => _$Task_InputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Task_Output {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The name of the Output parameter.
  CodeableConcept type;

  // The value of the Output parameter as a basic type. string
  //  valueBase64Binary;

  // Extensions for valueBase64Binary
  Element _valueBase64Binary;

  // The value of the Output parameter as a basic type. boolean valueBoolean;

  // Extensions for valueBoolean
  Element _valueBoolean;

  // The value of the Output parameter as a basic type. string valueCanonical;

  // Extensions for valueCanonical
  Element _valueCanonical;

  // The value of the Output parameter as a basic type. string valueCode;

  // Extensions for valueCode
  Element _valueCode;

  // The value of the Output parameter as a basic type. string valueDate;

  // Extensions for valueDate
  Element _valueDate;

  // The value of the Output parameter as a basic type. string valueDateTime;

  // Extensions for valueDateTime
  Element _valueDateTime;

  // The value of the Output parameter as a basic type. number valueDecimal;

  // Extensions for valueDecimal
  Element _valueDecimal;

  // The value of the Output parameter as a basic type. string valueId;

  // Extensions for valueId
  Element _valueId;

  // The value of the Output parameter as a basic type. string valueInstant;

  // Extensions for valueInstant
  Element _valueInstant;

  // The value of the Output parameter as a basic type. number valueInteger;

  // Extensions for valueInteger
  Element _valueInteger;

  // The value of the Output parameter as a basic type. string valueMarkdown;

  // Extensions for valueMarkdown
  Element _valueMarkdown;

  // The value of the Output parameter as a basic type. string valueOid;

  // Extensions for valueOid
  Element _valueOid;

  // The value of the Output parameter as a basic type. number valuePositiveInt;

  // Extensions for valuePositiveInt
  Element _valuePositiveInt;

  // The value of the Output parameter as a basic type. string valueString;

  // Extensions for valueString
  Element _valueString;

  // The value of the Output parameter as a basic type. string valueTime;

  // Extensions for valueTime
  Element _valueTime;

  // The value of the Output parameter as a basic type. number valueUnsignedInt;

  // Extensions for valueUnsignedInt
  Element _valueUnsignedInt;

  // The value of the Output parameter as a basic type. string valueUri;

  // Extensions for valueUri
  Element _valueUri;

  // The value of the Output parameter as a basic type. string valueUrl;

  // Extensions for valueUrl
  Element _valueUrl;

  // The value of the Output parameter as a basic type. string valueUuid;

  // Extensions for valueUuid
  Element _valueUuid;

  // The value of the Output parameter as a basic type.
  Address valueAddress;

  // The value of the Output parameter as a basic type.
  Age valueAge;

  // The value of the Output parameter as a basic type.
  Annotation valueAnnotation;

  // The value of the Output parameter as a basic type.
  Attachment valueAttachment;

  // The value of the Output parameter as a basic type.
  CodeableConcept valueCodeableConcept;

  // The value of the Output parameter as a basic type.
  Coding valueCoding;

  // The value of the Output parameter as a basic type.
  ContactPoint valueContactPoint;

  // The value of the Output parameter as a basic type.
  Count valueCount;

  // The value of the Output parameter as a basic type.
  Distance valueDistance;

  // The value of the Output parameter as a basic type.
  Duration valueDuration;

  // The value of the Output parameter as a basic type.
  HumanName valueHumanName;

  // The value of the Output parameter as a basic type.
  Identifier valueIdentifier;

  // The value of the Output parameter as a basic type.
  Money valueMoney;

  // The value of the Output parameter as a basic type.
  Period valuePeriod;

  // The value of the Output parameter as a basic type.
  Quantity valueQuantity;

  // The value of the Output parameter as a basic type.
  Range valueRange;

  // The value of the Output parameter as a basic type.
  Ratio valueRatio;

  // The value of the Output parameter as a basic type.
  Reference valueReference;

  // The value of the Output parameter as a basic type.
  SampledData valueSampledData;

  // The value of the Output parameter as a basic type.
  Signature valueSignature;

  // The value of the Output parameter as a basic type.
  Timing valueTiming;

  // The value of the Output parameter as a basic type.
  ContactDetail valueContactDetail;

  // The value of the Output parameter as a basic type.
  Contributor valueContributor;

  // The value of the Output parameter as a basic type.
  DataRequirement valueDataRequirement;

  // The value of the Output parameter as a basic type.
  Expression valueExpression;

  // The value of the Output parameter as a basic type.
  ParameterDefinition valueParameterDefinition;

  // The value of the Output parameter as a basic type.
  RelatedArtifact valueRelatedArtifact;

  // The value of the Output parameter as a basic type.
  TriggerDefinition valueTriggerDefinition;

  // The value of the Output parameter as a basic type.
  UsageContext valueUsageContext;

  // The value of the Output parameter as a basic type.
  Dosage valueDosage;

  // The value of the Output parameter as a basic type.
  Meta valueMeta
Task_Output(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.valueBase64Binary,
this._valueBase64Binary,
this.valueBoolean,
this._valueBoolean,
this.valueCanonical,
this._valueCanonical,
this.valueCode,
this._valueCode,
this.valueDate,
this._valueDate,
this.valueDateTime,
this._valueDateTime,
this.valueDecimal,
this._valueDecimal,
this.valueId,
this._valueId,
this.valueInstant,
this._valueInstant,
this.valueInteger,
this._valueInteger,
this.valueMarkdown,
this._valueMarkdown,
this.valueOid,
this._valueOid,
this.valuePositiveInt,
this._valuePositiveInt,
this.valueString,
this._valueString,
this.valueTime,
this._valueTime,
this.valueUnsignedInt,
this._valueUnsignedInt,
this.valueUri,
this._valueUri,
this.valueUrl,
this._valueUrl,
this.valueUuid,
this._valueUuid,
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
this.valueMeta});

  factory Task_Output.fromJson(Map<String, dynamic> json) => _$Task_OutputFromJson(json);
  Map<String, dynamic> toJson() => _$Task_OutputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Task_Restriction {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Indicates the number of times the requested action should occur.
  int repetitions;

  // Extensions for repetitions
  Element _repetitions;

  // Over what time-period is fulfillment sought.
  Period period;

  // For requests that are targeted to more than on potential recipient/target,
  //  for whom is fulfillment sought?
  List<Reference recipient
Task_Restriction(
      {this.id,
this.extension,
this.modifierExtension,
this.repetitions,
this._repetitions,
this.period,
this.recipient});

  factory Task_Restriction.fromJson(Map<String, dynamic> json) => _$Task_RestrictionFromJson(json);
  Map<String, dynamic> toJson() => _$Task_RestrictionToJson(this);
}
