

part 'elementDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ElementDefinition {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String path;
  Element _path;
  array representation;
  List<Element> _representation;
  String sliceName;
  Element _sliceName;
  bool sliceIsConstraining;
  Element _sliceIsConstraining;
  String label;
  Element _label;
  List<Coding> code;
  ElementDefinition_Slicing slicing;
  String short;
  Element _short;
  String definition;
  Element _definition;
  String comment;
  Element _comment;
  String requirements;
  Element _requirements;
  List<String> alias;
  List<Element> _alias;
  int min;
  Element _min;
  String max;
  Element _max;
  ElementDefinition_Base base;
  String contentReference;
  Element _contentReference;
  List<ElementDefinition_Type> type;
  String defaultValueBase64Binary;
  Element _defaultValueBase64Binary;
  bool defaultValueBoolean;
  Element _defaultValueBoolean;
  String defaultValueCanonical;
  Element _defaultValueCanonical;
  String defaultValueCode;
  Element _defaultValueCode;
  String defaultValueDate;
  Element _defaultValueDate;
  String defaultValueDateTime;
  Element _defaultValueDateTime;
  number defaultValueDecimal;
  Element _defaultValueDecimal;
  String defaultValueId;
  Element _defaultValueId;
  String defaultValueInstant;
  Element _defaultValueInstant;
  number defaultValueInteger;
  Element _defaultValueInteger;
  String defaultValueMarkdown;
  Element _defaultValueMarkdown;
  String defaultValueOid;
  Element _defaultValueOid;
  number defaultValuePositiveInt;
  Element _defaultValuePositiveInt;
  String defaultValueString;
  Element _defaultValueString;
  String defaultValueTime;
  Element _defaultValueTime;
  number defaultValueUnsignedInt;
  Element _defaultValueUnsignedInt;
  String defaultValueUri;
  Element _defaultValueUri;
  String defaultValueUrl;
  Element _defaultValueUrl;
  String defaultValueUuid;
  Element _defaultValueUuid;
  Address defaultValueAddress;
  Age defaultValueAge;
  Annotation defaultValueAnnotation;
  Attachment defaultValueAttachment;
  CodeableConcept defaultValueCodeableConcept;
  Coding defaultValueCoding;
  ContactPoint defaultValueContactPoint;
  Count defaultValueCount;
  Distance defaultValueDistance;
  Duration defaultValueDuration;
  HumanName defaultValueHumanName;
  Identifier defaultValueIdentifier;
  Money defaultValueMoney;
  Period defaultValuePeriod;
  Quantity defaultValueQuantity;
  Range defaultValueRange;
  Ratio defaultValueRatio;
  Reference defaultValueReference;
  SampledData defaultValueSampledData;
  Signature defaultValueSignature;
  Timing defaultValueTiming;
  ContactDetail defaultValueContactDetail;
  Contributor defaultValueContributor;
  DataRequirement defaultValueDataRequirement;
  Expression defaultValueExpression;
  ParameterDefinition defaultValueParameterDefinition;
  RelatedArtifact defaultValueRelatedArtifact;
  TriggerDefinition defaultValueTriggerDefinition;
  UsageContext defaultValueUsageContext;
  Dosage defaultValueDosage;
  Meta defaultValueMeta;
  String meaningWhenMissing;
  Element _meaningWhenMissing;
  String orderMeaning;
  Element _orderMeaning;
  String fixedBase64Binary;
  Element _fixedBase64Binary;
  bool fixedBoolean;
  Element _fixedBoolean;
  String fixedCanonical;
  Element _fixedCanonical;
  String fixedCode;
  Element _fixedCode;
  String fixedDate;
  Element _fixedDate;
  String fixedDateTime;
  Element _fixedDateTime;
  number fixedDecimal;
  Element _fixedDecimal;
  String fixedId;
  Element _fixedId;
  String fixedInstant;
  Element _fixedInstant;
  number fixedInteger;
  Element _fixedInteger;
  String fixedMarkdown;
  Element _fixedMarkdown;
  String fixedOid;
  Element _fixedOid;
  number fixedPositiveInt;
  Element _fixedPositiveInt;
  String fixedString;
  Element _fixedString;
  String fixedTime;
  Element _fixedTime;
  number fixedUnsignedInt;
  Element _fixedUnsignedInt;
  String fixedUri;
  Element _fixedUri;
  String fixedUrl;
  Element _fixedUrl;
  String fixedUuid;
  Element _fixedUuid;
  Address fixedAddress;
  Age fixedAge;
  Annotation fixedAnnotation;
  Attachment fixedAttachment;
  CodeableConcept fixedCodeableConcept;
  Coding fixedCoding;
  ContactPoint fixedContactPoint;
  Count fixedCount;
  Distance fixedDistance;
  Duration fixedDuration;
  HumanName fixedHumanName;
  Identifier fixedIdentifier;
  Money fixedMoney;
  Period fixedPeriod;
  Quantity fixedQuantity;
  Range fixedRange;
  Ratio fixedRatio;
  Reference fixedReference;
  SampledData fixedSampledData;
  Signature fixedSignature;
  Timing fixedTiming;
  ContactDetail fixedContactDetail;
  Contributor fixedContributor;
  DataRequirement fixedDataRequirement;
  Expression fixedExpression;
  ParameterDefinition fixedParameterDefinition;
  RelatedArtifact fixedRelatedArtifact;
  TriggerDefinition fixedTriggerDefinition;
  UsageContext fixedUsageContext;
  Dosage fixedDosage;
  Meta fixedMeta;
  String patternBase64Binary;
  Element _patternBase64Binary;
  bool patternBoolean;
  Element _patternBoolean;
  String patternCanonical;
  Element _patternCanonical;
  String patternCode;
  Element _patternCode;
  String patternDate;
  Element _patternDate;
  String patternDateTime;
  Element _patternDateTime;
  number patternDecimal;
  Element _patternDecimal;
  String patternId;
  Element _patternId;
  String patternInstant;
  Element _patternInstant;
  number patternInteger;
  Element _patternInteger;
  String patternMarkdown;
  Element _patternMarkdown;
  String patternOid;
  Element _patternOid;
  number patternPositiveInt;
  Element _patternPositiveInt;
  String patternString;
  Element _patternString;
  String patternTime;
  Element _patternTime;
  number patternUnsignedInt;
  Element _patternUnsignedInt;
  String patternUri;
  Element _patternUri;
  String patternUrl;
  Element _patternUrl;
  String patternUuid;
  Element _patternUuid;
  Address patternAddress;
  Age patternAge;
  Annotation patternAnnotation;
  Attachment patternAttachment;
  CodeableConcept patternCodeableConcept;
  Coding patternCoding;
  ContactPoint patternContactPoint;
  Count patternCount;
  Distance patternDistance;
  Duration patternDuration;
  HumanName patternHumanName;
  Identifier patternIdentifier;
  Money patternMoney;
  Period patternPeriod;
  Quantity patternQuantity;
  Range patternRange;
  Ratio patternRatio;
  Reference patternReference;
  SampledData patternSampledData;
  Signature patternSignature;
  Timing patternTiming;
  ContactDetail patternContactDetail;
  Contributor patternContributor;
  DataRequirement patternDataRequirement;
  Expression patternExpression;
  ParameterDefinition patternParameterDefinition;
  RelatedArtifact patternRelatedArtifact;
  TriggerDefinition patternTriggerDefinition;
  UsageContext patternUsageContext;
  Dosage patternDosage;
  Meta patternMeta;
  List<ElementDefinition_Example> example;
  String minValueDate;
  Element _minValueDate;
  String minValueDateTime;
  Element _minValueDateTime;
  String minValueInstant;
  Element _minValueInstant;
  String minValueTime;
  Element _minValueTime;
  number minValueDecimal;
  Element _minValueDecimal;
  number minValueInteger;
  Element _minValueInteger;
  number minValuePositiveInt;
  Element _minValuePositiveInt;
  number minValueUnsignedInt;
  Element _minValueUnsignedInt;
  Quantity minValueQuantity;
  String maxValueDate;
  Element _maxValueDate;
  String maxValueDateTime;
  Element _maxValueDateTime;
  String maxValueInstant;
  Element _maxValueInstant;
  String maxValueTime;
  Element _maxValueTime;
  number maxValueDecimal;
  Element _maxValueDecimal;
  number maxValueInteger;
  Element _maxValueInteger;
  number maxValuePositiveInt;
  Element _maxValuePositiveInt;
  number maxValueUnsignedInt;
  Element _maxValueUnsignedInt;
  Quantity maxValueQuantity;
  int maxLength;
  Element _maxLength;
  List<String> condition;
  List<Element> _condition;
  List<ElementDefinition_Constraint> constraint;
  bool mustSupport;
  Element _mustSupport;
  bool isModifier;
  Element _isModifier;
  String isModifierReason;
  Element _isModifierReason;
  bool isSummary;
  Element _isSummary;
  ElementDefinition_Binding binding;
  List<ElementDefinition_Mapping> mapping;


ElementDefinition(
      {this.id,
this.extension,
this.modifierExtension,
this.path,
this._path,
this.representation,
this._representation,
this.sliceName,
this._sliceName,
this.sliceIsConstraining,
this._sliceIsConstraining,
this.label,
this._label,
this.code,
this.slicing,
this.short,
this._short,
this.definition,
this._definition,
this.comment,
this._comment,
this.requirements,
this._requirements,
this.alias,
this._alias,
this.min,
this._min,
this.max,
this._max,
this.base,
this.contentReference,
this._contentReference,
this.type,
this.defaultValueBase64Binary,
this._defaultValueBase64Binary,
this.defaultValueBoolean,
this._defaultValueBoolean,
this.defaultValueCanonical,
this._defaultValueCanonical,
this.defaultValueCode,
this._defaultValueCode,
this.defaultValueDate,
this._defaultValueDate,
this.defaultValueDateTime,
this._defaultValueDateTime,
this.defaultValueDecimal,
this._defaultValueDecimal,
this.defaultValueId,
this._defaultValueId,
this.defaultValueInstant,
this._defaultValueInstant,
this.defaultValueInteger,
this._defaultValueInteger,
this.defaultValueMarkdown,
this._defaultValueMarkdown,
this.defaultValueOid,
this._defaultValueOid,
this.defaultValuePositiveInt,
this._defaultValuePositiveInt,
this.defaultValueString,
this._defaultValueString,
this.defaultValueTime,
this._defaultValueTime,
this.defaultValueUnsignedInt,
this._defaultValueUnsignedInt,
this.defaultValueUri,
this._defaultValueUri,
this.defaultValueUrl,
this._defaultValueUrl,
this.defaultValueUuid,
this._defaultValueUuid,
this.defaultValueAddress,
this.defaultValueAge,
this.defaultValueAnnotation,
this.defaultValueAttachment,
this.defaultValueCodeableConcept,
this.defaultValueCoding,
this.defaultValueContactPoint,
this.defaultValueCount,
this.defaultValueDistance,
this.defaultValueDuration,
this.defaultValueHumanName,
this.defaultValueIdentifier,
this.defaultValueMoney,
this.defaultValuePeriod,
this.defaultValueQuantity,
this.defaultValueRange,
this.defaultValueRatio,
this.defaultValueReference,
this.defaultValueSampledData,
this.defaultValueSignature,
this.defaultValueTiming,
this.defaultValueContactDetail,
this.defaultValueContributor,
this.defaultValueDataRequirement,
this.defaultValueExpression,
this.defaultValueParameterDefinition,
this.defaultValueRelatedArtifact,
this.defaultValueTriggerDefinition,
this.defaultValueUsageContext,
this.defaultValueDosage,
this.defaultValueMeta,
this.meaningWhenMissing,
this._meaningWhenMissing,
this.orderMeaning,
this._orderMeaning,
this.fixedBase64Binary,
this._fixedBase64Binary,
this.fixedBoolean,
this._fixedBoolean,
this.fixedCanonical,
this._fixedCanonical,
this.fixedCode,
this._fixedCode,
this.fixedDate,
this._fixedDate,
this.fixedDateTime,
this._fixedDateTime,
this.fixedDecimal,
this._fixedDecimal,
this.fixedId,
this._fixedId,
this.fixedInstant,
this._fixedInstant,
this.fixedInteger,
this._fixedInteger,
this.fixedMarkdown,
this._fixedMarkdown,
this.fixedOid,
this._fixedOid,
this.fixedPositiveInt,
this._fixedPositiveInt,
this.fixedString,
this._fixedString,
this.fixedTime,
this._fixedTime,
this.fixedUnsignedInt,
this._fixedUnsignedInt,
this.fixedUri,
this._fixedUri,
this.fixedUrl,
this._fixedUrl,
this.fixedUuid,
this._fixedUuid,
this.fixedAddress,
this.fixedAge,
this.fixedAnnotation,
this.fixedAttachment,
this.fixedCodeableConcept,
this.fixedCoding,
this.fixedContactPoint,
this.fixedCount,
this.fixedDistance,
this.fixedDuration,
this.fixedHumanName,
this.fixedIdentifier,
this.fixedMoney,
this.fixedPeriod,
this.fixedQuantity,
this.fixedRange,
this.fixedRatio,
this.fixedReference,
this.fixedSampledData,
this.fixedSignature,
this.fixedTiming,
this.fixedContactDetail,
this.fixedContributor,
this.fixedDataRequirement,
this.fixedExpression,
this.fixedParameterDefinition,
this.fixedRelatedArtifact,
this.fixedTriggerDefinition,
this.fixedUsageContext,
this.fixedDosage,
this.fixedMeta,
this.patternBase64Binary,
this._patternBase64Binary,
this.patternBoolean,
this._patternBoolean,
this.patternCanonical,
this._patternCanonical,
this.patternCode,
this._patternCode,
this.patternDate,
this._patternDate,
this.patternDateTime,
this._patternDateTime,
this.patternDecimal,
this._patternDecimal,
this.patternId,
this._patternId,
this.patternInstant,
this._patternInstant,
this.patternInteger,
this._patternInteger,
this.patternMarkdown,
this._patternMarkdown,
this.patternOid,
this._patternOid,
this.patternPositiveInt,
this._patternPositiveInt,
this.patternString,
this._patternString,
this.patternTime,
this._patternTime,
this.patternUnsignedInt,
this._patternUnsignedInt,
this.patternUri,
this._patternUri,
this.patternUrl,
this._patternUrl,
this.patternUuid,
this._patternUuid,
this.patternAddress,
this.patternAge,
this.patternAnnotation,
this.patternAttachment,
this.patternCodeableConcept,
this.patternCoding,
this.patternContactPoint,
this.patternCount,
this.patternDistance,
this.patternDuration,
this.patternHumanName,
this.patternIdentifier,
this.patternMoney,
this.patternPeriod,
this.patternQuantity,
this.patternRange,
this.patternRatio,
this.patternReference,
this.patternSampledData,
this.patternSignature,
this.patternTiming,
this.patternContactDetail,
this.patternContributor,
this.patternDataRequirement,
this.patternExpression,
this.patternParameterDefinition,
this.patternRelatedArtifact,
this.patternTriggerDefinition,
this.patternUsageContext,
this.patternDosage,
this.patternMeta,
this.example,
this.minValueDate,
this._minValueDate,
this.minValueDateTime,
this._minValueDateTime,
this.minValueInstant,
this._minValueInstant,
this.minValueTime,
this._minValueTime,
this.minValueDecimal,
this._minValueDecimal,
this.minValueInteger,
this._minValueInteger,
this.minValuePositiveInt,
this._minValuePositiveInt,
this.minValueUnsignedInt,
this._minValueUnsignedInt,
this.minValueQuantity,
this.maxValueDate,
this._maxValueDate,
this.maxValueDateTime,
this._maxValueDateTime,
this.maxValueInstant,
this._maxValueInstant,
this.maxValueTime,
this._maxValueTime,
this.maxValueDecimal,
this._maxValueDecimal,
this.maxValueInteger,
this._maxValueInteger,
this.maxValuePositiveInt,
this._maxValuePositiveInt,
this.maxValueUnsignedInt,
this._maxValueUnsignedInt,
this.maxValueQuantity,
this.maxLength,
this._maxLength,
this.condition,
this._condition,
this.constraint,
this.mustSupport,
this._mustSupport,
this.isModifier,
this._isModifier,
this.isModifierReason,
this._isModifierReason,
this.isSummary,
this._isSummary,
this.binding,
this.mapping});

  factory ElementDefinition.fromJson(Map<String, dynamic> json) => _$ElementDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinitionToJson(this);
}