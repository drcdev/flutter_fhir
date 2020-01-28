part 'task.g.dart';

@JsonSerializable(explicitToJson: true)
class Task {

Task resourceType;
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
List<Identifier> identifier;
String instantiatesCanonical;
String instantiatesUri;
Element _instantiatesUri;
List<Reference> basedOn;
Identifier groupIdentifier;
List<Reference> partOf;
String status; // <code> enum: draft/requested/received/accepted/rejected/ready/cancelled/in-progress/on-hold/failed/completed/entered-in-error;
Element _status;
CodeableConcept statusReason;
CodeableConcept businessStatus;
String intent; // <code> enum: unknown/proposal/plan/order/original-order/reflex-order/filler-order/instance-order/option;
Element _intent;
String priority;
Element _priority;
CodeableConcept code;
String description;
Element _description;
Reference focus;
Reference for;
Reference encounter;
Period executionPeriod;
DateTime authoredOn;
Element _authoredOn;
DateTime lastModified;
Element _lastModified;
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
      this.output,
      });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() _$TaskToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Task_Restriction {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int repetitions;
Element _repetitions;
Period period;
List<Reference> recipient;

Task_Restriction(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.repetitions,
      this._repetitions,
      this.period,
      this.recipient,
      });

  factory Task_Restriction.fromJson(Map<String, dynamic> json) => _$Task_RestrictionFromJson(json);
  Map<String, dynamic> toJson() _$Task_RestrictionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Task_Input {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
Element _valueBase64Binary;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
String valueCanonical; //  pattern: ^\S*$
Element _valueCanonical;
String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$
Element _valueCode;
String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _valueDate;
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _valueDateTime;
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _valueDecimal;
String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$
Element _valueId;
String valueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
Element _valueInstant;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
String valueMarkdown; //  pattern: ^[ \r\n\t\S]+$
Element _valueMarkdown;
String valueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
Element _valueOid;
int valuePositiveInt; //  pattern: ^[1-9][0-9]*$
Element _valuePositiveInt;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _valueTime;
int valueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
Element _valueUnsignedInt;
String valueUri; //  pattern: ^\S*$
Element _valueUri;
String valueUrl; //  pattern: ^\S*$
Element _valueUrl;
String valueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
Element _valueUuid;
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
      this.valueMeta,
      });

  factory Task_Input.fromJson(Map<String, dynamic> json) => _$Task_InputFromJson(json);
  Map<String, dynamic> toJson() _$Task_InputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Task_Output {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
Element _valueBase64Binary;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
String valueCanonical; //  pattern: ^\S*$
Element _valueCanonical;
String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$
Element _valueCode;
String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _valueDate;
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _valueDateTime;
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _valueDecimal;
String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$
Element _valueId;
String valueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
Element _valueInstant;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
String valueMarkdown; //  pattern: ^[ \r\n\t\S]+$
Element _valueMarkdown;
String valueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
Element _valueOid;
int valuePositiveInt; //  pattern: ^[1-9][0-9]*$
Element _valuePositiveInt;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _valueTime;
int valueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
Element _valueUnsignedInt;
String valueUri; //  pattern: ^\S*$
Element _valueUri;
String valueUrl; //  pattern: ^\S*$
Element _valueUrl;
String valueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
Element _valueUuid;
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
      this.valueMeta,
      });

  factory Task_Output.fromJson(Map<String, dynamic> json) => _$Task_OutputFromJson(json);
  Map<String, dynamic> toJson() _$Task_OutputToJson(this);
}

