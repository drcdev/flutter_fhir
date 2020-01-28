part 'elementDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ElementDefinition {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String path;
Element _path;
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
String defaultValueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
Element _defaultValueBase64Binary;
bool defaultValueBoolean; //  pattern: ^true|false$
Element _defaultValueBoolean;
String defaultValueCanonical; //  pattern: ^\S*$
Element _defaultValueCanonical;
String defaultValueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$
Element _defaultValueCode;
String defaultValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _defaultValueDate;
String defaultValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _defaultValueDateTime;
double defaultValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _defaultValueDecimal;
String defaultValueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$
Element _defaultValueId;
String defaultValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
Element _defaultValueInstant;
int defaultValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _defaultValueInteger;
String defaultValueMarkdown; //  pattern: ^[ \r\n\t\S]+$
Element _defaultValueMarkdown;
String defaultValueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
Element _defaultValueOid;
int defaultValuePositiveInt; //  pattern: ^[1-9][0-9]*$
Element _defaultValuePositiveInt;
String defaultValueString; //  pattern: ^[ \r\n\t\S]+$
Element _defaultValueString;
String defaultValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _defaultValueTime;
int defaultValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
Element _defaultValueUnsignedInt;
String defaultValueUri; //  pattern: ^\S*$
Element _defaultValueUri;
String defaultValueUrl; //  pattern: ^\S*$
Element _defaultValueUrl;
String defaultValueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
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
String fixedBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
Element _fixedBase64Binary;
bool fixedBoolean; //  pattern: ^true|false$
Element _fixedBoolean;
String fixedCanonical; //  pattern: ^\S*$
Element _fixedCanonical;
String fixedCode; //  pattern: ^[^\s]+(\s[^\s]+)*$
Element _fixedCode;
String fixedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _fixedDate;
String fixedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _fixedDateTime;
double fixedDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _fixedDecimal;
String fixedId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$
Element _fixedId;
String fixedInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
Element _fixedInstant;
int fixedInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _fixedInteger;
String fixedMarkdown; //  pattern: ^[ \r\n\t\S]+$
Element _fixedMarkdown;
String fixedOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
Element _fixedOid;
int fixedPositiveInt; //  pattern: ^[1-9][0-9]*$
Element _fixedPositiveInt;
String fixedString; //  pattern: ^[ \r\n\t\S]+$
Element _fixedString;
String fixedTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _fixedTime;
int fixedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
Element _fixedUnsignedInt;
String fixedUri; //  pattern: ^\S*$
Element _fixedUri;
String fixedUrl; //  pattern: ^\S*$
Element _fixedUrl;
String fixedUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
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
String patternBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
Element _patternBase64Binary;
bool patternBoolean; //  pattern: ^true|false$
Element _patternBoolean;
String patternCanonical; //  pattern: ^\S*$
Element _patternCanonical;
String patternCode; //  pattern: ^[^\s]+(\s[^\s]+)*$
Element _patternCode;
String patternDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _patternDate;
String patternDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _patternDateTime;
double patternDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _patternDecimal;
String patternId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$
Element _patternId;
String patternInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
Element _patternInstant;
int patternInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _patternInteger;
String patternMarkdown; //  pattern: ^[ \r\n\t\S]+$
Element _patternMarkdown;
String patternOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
Element _patternOid;
int patternPositiveInt; //  pattern: ^[1-9][0-9]*$
Element _patternPositiveInt;
String patternString; //  pattern: ^[ \r\n\t\S]+$
Element _patternString;
String patternTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _patternTime;
int patternUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
Element _patternUnsignedInt;
String patternUri; //  pattern: ^\S*$
Element _patternUri;
String patternUrl; //  pattern: ^\S*$
Element _patternUrl;
String patternUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
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
String minValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _minValueDate;
String minValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _minValueDateTime;
String minValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
Element _minValueInstant;
String minValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _minValueTime;
double minValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _minValueDecimal;
int minValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _minValueInteger;
int minValuePositiveInt; //  pattern: ^[1-9][0-9]*$
Element _minValuePositiveInt;
int minValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
Element _minValueUnsignedInt;
Quantity minValueQuantity;
String maxValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _maxValueDate;
String maxValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _maxValueDateTime;
String maxValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
Element _maxValueInstant;
String maxValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _maxValueTime;
double maxValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _maxValueDecimal;
int maxValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _maxValueInteger;
int maxValuePositiveInt; //  pattern: ^[1-9][0-9]*$
Element _maxValuePositiveInt;
int maxValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
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
      this.mapping,
      });

  factory ElementDefinition.fromJson(Map<String, dynamic> json) => _$ElementDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$ElementDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Slicing {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<ElementDefinition_Discriminator> discriminator;
String description;
Element _description;
bool ordered;
Element _ordered;
String rules; // <code> enum: closed/open/openAtEnd;
Element _rules;

ElementDefinition_Slicing(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.discriminator,
      this.description,
      this._description,
      this.ordered,
      this._ordered,
      this.rules,
      this._rules,
      });

  factory ElementDefinition_Slicing.fromJson(Map<String, dynamic> json) => _$ElementDefinition_SlicingFromJson(json);
  Map<String, dynamic> toJson() _$ElementDefinition_SlicingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Discriminator {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: value/exists/pattern/type/profile;
Element _type;
String path;
Element _path;

ElementDefinition_Discriminator(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.path,
      this._path,
      });

  factory ElementDefinition_Discriminator.fromJson(Map<String, dynamic> json) => _$ElementDefinition_DiscriminatorFromJson(json);
  Map<String, dynamic> toJson() _$ElementDefinition_DiscriminatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Base {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String path;
Element _path;
int min;
Element _min;
String max;
Element _max;

ElementDefinition_Base(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.path,
      this._path,
      this.min,
      this._min,
      this.max,
      this._max,
      });

  factory ElementDefinition_Base.fromJson(Map<String, dynamic> json) => _$ElementDefinition_BaseFromJson(json);
  Map<String, dynamic> toJson() _$ElementDefinition_BaseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Type {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
List<String> profile;
List<String> targetProfile;
List<Element> _aggregation;
String versioning; // <code> enum: either/independent/specific;
Element _versioning;

ElementDefinition_Type(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.profile,
      this.targetProfile,
      this.aggregation,
      this._aggregation,
      this.versioning,
      this._versioning,
      });

  factory ElementDefinition_Type.fromJson(Map<String, dynamic> json) => _$ElementDefinition_TypeFromJson(json);
  Map<String, dynamic> toJson() _$ElementDefinition_TypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Example {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String label;
Element _label;
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

ElementDefinition_Example(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.label,
      this._label,
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

  factory ElementDefinition_Example.fromJson(Map<String, dynamic> json) => _$ElementDefinition_ExampleFromJson(json);
  Map<String, dynamic> toJson() _$ElementDefinition_ExampleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Constraint {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String key;
Element _key;
String requirements;
Element _requirements;
String severity; // <code> enum: error/warning;
Element _severity;
String human;
Element _human;
String expression;
Element _expression;
String xpath;
Element _xpath;
String source;

ElementDefinition_Constraint(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.key,
      this._key,
      this.requirements,
      this._requirements,
      this.severity,
      this._severity,
      this.human,
      this._human,
      this.expression,
      this._expression,
      this.xpath,
      this._xpath,
      this.source,
      });

  factory ElementDefinition_Constraint.fromJson(Map<String, dynamic> json) => _$ElementDefinition_ConstraintFromJson(json);
  Map<String, dynamic> toJson() _$ElementDefinition_ConstraintToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Binding {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String strength; // <code> enum: required/extensible/preferred/example;
Element _strength;
String description;
Element _description;
String valueSet;

ElementDefinition_Binding(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.strength,
      this._strength,
      this.description,
      this._description,
      this.valueSet,
      });

  factory ElementDefinition_Binding.fromJson(Map<String, dynamic> json) => _$ElementDefinition_BindingFromJson(json);
  Map<String, dynamic> toJson() _$ElementDefinition_BindingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Mapping {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String identity;
Element _identity;
String language;
Element _language;
String map;
Element _map;
String comment;
Element _comment;

ElementDefinition_Mapping(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identity,
      this._identity,
      this.language,
      this._language,
      this.map,
      this._map,
      this.comment,
      this._comment,
      });

  factory ElementDefinition_Mapping.fromJson(Map<String, dynamic> json) => _$ElementDefinition_MappingFromJson(json);
  Map<String, dynamic> toJson() _$ElementDefinition_MappingToJson(this);
}

