

part 'task_Output.g.dart';

@JsonSerializable(explicitToJson: true)
class Task_Output {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String valueBase64Binary;
  Element _valueBase64Binary;
  bool valueBoolean;
  Element _valueBoolean;
  String valueCanonical;
  Element _valueCanonical;
  String valueCode;
  Element _valueCode;
  String valueDate;
  Element _valueDate;
  String valueDateTime;
  Element _valueDateTime;
  number valueDecimal;
  Element _valueDecimal;
  String valueId;
  Element _valueId;
  String valueInstant;
  Element _valueInstant;
  number valueInteger;
  Element _valueInteger;
  String valueMarkdown;
  Element _valueMarkdown;
  String valueOid;
  Element _valueOid;
  number valuePositiveInt;
  Element _valuePositiveInt;
  String valueString;
  Element _valueString;
  String valueTime;
  Element _valueTime;
  number valueUnsignedInt;
  Element _valueUnsignedInt;
  String valueUri;
  Element _valueUri;
  String valueUrl;
  Element _valueUrl;
  String valueUuid;
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
this.valueMeta});

  factory Task_Output.fromJson(Map<String, dynamic> json) => _$Task_OutputFromJson(json);
  Map<String, dynamic> toJson() => _$Task_OutputToJson(this);
}