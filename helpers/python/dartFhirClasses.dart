part 'element.g.dart';

@JsonSerializable(explicitToJson: true)
class Element {

String id;
List<Extension> extension;

}

part 'extension.g.dart';

@JsonSerializable(explicitToJson: true)
class Extension {

String id;
List<Extension> extension;
String url;
Element _url;
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

}

part 'narrative.g.dart';

@JsonSerializable(explicitToJson: true)
class Narrative {

String id;
List<Extension> extension;
String status; // <code> enum: generated/extensions/additional/empty;
Element _status;
xhtml div;

}

part 'annotation.g.dart';

@JsonSerializable(explicitToJson: true)
class Annotation {

String id;
List<Extension> extension;
Reference authorReference;
String authorString;
Element _authorString;
DateTime time;
Element _time;
String text;
Element _text;

}

part 'attachment.g.dart';

@JsonSerializable(explicitToJson: true)
class Attachment {

String id;
List<Extension> extension;
String contentType;
Element _contentType;
String language;
Element _language;
String data;
Element _data;
String url;
Element _url;
int size;
Element _size;
String hash;
Element _hash;
String title;
Element _title;
DateTime creation;
Element _creation;

}

part 'identifier.g.dart';

@JsonSerializable(explicitToJson: true)
class Identifier {

String id;
List<Extension> extension;
String use; // <code> enum: usual/official/temp/secondary/old;
Element _use;
CodeableConcept type;
String system;
Element _system;
String value;
Element _value;
Period period;
Reference assigner;

}

part 'codeableConcept.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeableConcept {

String id;
List<Extension> extension;
List<Coding> coding;
String text;
Element _text;

}

part 'coding.g.dart';

@JsonSerializable(explicitToJson: true)
class Coding {

String id;
List<Extension> extension;
String system;
Element _system;
String version;
Element _version;
String code;
Element _code;
String display;
Element _display;
bool userSelected;
Element _userSelected;

}

part 'quantity.g.dart';

@JsonSerializable(explicitToJson: true)
class Quantity {

String id;
List<Extension> extension;
double value;
Element _value;
String comparator; // <code> enum: </<=/>=/>;
Element _comparator;
String unit;
Element _unit;
String system;
Element _system;
String code;
Element _code;

}

part 'duration.g.dart';

@JsonSerializable(explicitToJson: true)
class Duration {

String id;
List<Extension> extension;
double value;
Element _value;
String comparator; // <code> enum: </<=/>=/>;
Element _comparator;
String unit;
Element _unit;
String system;
Element _system;
String code;
Element _code;

}

part 'distance.g.dart';

@JsonSerializable(explicitToJson: true)
class Distance {

String id;
List<Extension> extension;
double value;
Element _value;
String comparator; // <code> enum: </<=/>=/>;
Element _comparator;
String unit;
Element _unit;
String system;
Element _system;
String code;
Element _code;

}

part 'count.g.dart';

@JsonSerializable(explicitToJson: true)
class Count {

String id;
List<Extension> extension;
double value;
Element _value;
String comparator; // <code> enum: </<=/>=/>;
Element _comparator;
String unit;
Element _unit;
String system;
Element _system;
String code;
Element _code;

}

part 'money.g.dart';

@JsonSerializable(explicitToJson: true)
class Money {

String id;
List<Extension> extension;
double value;
Element _value;
String currency;
Element _currency;

}

part 'age.g.dart';

@JsonSerializable(explicitToJson: true)
class Age {

String id;
List<Extension> extension;
double value;
Element _value;
String comparator; // <code> enum: </<=/>=/>;
Element _comparator;
String unit;
Element _unit;
String system;
Element _system;
String code;
Element _code;

}

part 'range.g.dart';

@JsonSerializable(explicitToJson: true)
class Range {

String id;
List<Extension> extension;
Quantity low;
Quantity high;

}

part 'period.g.dart';

@JsonSerializable(explicitToJson: true)
class Period {

String id;
List<Extension> extension;
DateTime start;
Element _start;
DateTime end;
Element _end;

}

part 'ratio.g.dart';

@JsonSerializable(explicitToJson: true)
class Ratio {

String id;
List<Extension> extension;
Quantity numerator;
Quantity denominator;

}

part 'reference.g.dart';

@JsonSerializable(explicitToJson: true)
class Reference {

String id;
List<Extension> extension;
String reference;
Element _reference;
String type;
Element _type;
Identifier identifier;
String display;
Element _display;

}

part 'sampledData.g.dart';

@JsonSerializable(explicitToJson: true)
class SampledData {

String id;
List<Extension> extension;
Quantity origin;
double period;
Element _period;
double factor;
Element _factor;
double lowerLimit;
Element _lowerLimit;
double upperLimit;
Element _upperLimit;
int dimensions;
Element _dimensions;
String data;
Element _data;

}

part 'signature.g.dart';

@JsonSerializable(explicitToJson: true)
class Signature {

String id;
List<Extension> extension;
List<Coding> type;
DateTime when;
Element _when;
Reference who;
Reference onBehalfOf;
String targetFormat;
Element _targetFormat;
String sigFormat;
Element _sigFormat;
String data;
Element _data;

}

part 'humanName.g.dart';

@JsonSerializable(explicitToJson: true)
class HumanName {

String id;
List<Extension> extension;
String use; // <code> enum: usual/official/temp/nickname/anonymous/old/maiden;
Element _use;
String text;
Element _text;
String family;
Element _family;
List<String> given;
List<Element> _given;
List<String> prefix;
List<Element> _prefix;
List<String> suffix;
List<Element> _suffix;
Period period;

}

part 'address.g.dart';

@JsonSerializable(explicitToJson: true)
class Address {

String id;
List<Extension> extension;
String use; // <code> enum: home/work/temp/old/billing;
Element _use;
String type; // <code> enum: postal/physical/both;
Element _type;
String text;
Element _text;
List<String> line;
List<Element> _line;
String city;
Element _city;
String district;
Element _district;
String state;
Element _state;
String postalCode;
Element _postalCode;
String country;
Element _country;
Period period;

}

part 'contactPoint.g.dart';

@JsonSerializable(explicitToJson: true)
class ContactPoint {

String id;
List<Extension> extension;
String system; // <code> enum: phone/fax/email/pager/url/sms/other;
Element _system;
String value;
Element _value;
String use; // <code> enum: home/work/temp/old/mobile;
Element _use;
int rank;
Element _rank;
Period period;

}

part 'timing.g.dart';

@JsonSerializable(explicitToJson: true)
class Timing {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<DateTime> event;
List<Element> _event;
Timing_Repeat repeat;
CodeableConcept code;

}

@JsonSerializable(explicitToJson: true)
class Timing_Repeat {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Duration boundsDuration;
Range boundsRange;
Period boundsPeriod;
int count;
Element _count;
int countMax;
Element _countMax;
double duration;
Element _duration;
double durationMax;
Element _durationMax;
String durationUnit; // <code> enum: s/min/h/d/wk/mo/a;
Element _durationUnit;
int frequency;
Element _frequency;
int frequencyMax;
Element _frequencyMax;
double period;
Element _period;
double periodMax;
Element _periodMax;
String periodUnit; // <code> enum: s/min/h/d/wk/mo/a;
Element _periodUnit;
List<String> dayOfWeek;
List<Element> _dayOfWeek;
List<String> timeOfDay;
List<Element> _timeOfDay;
List<Element> _when;
int offset;
Element _offset;

}

part 'meta.g.dart';

@JsonSerializable(explicitToJson: true)
class Meta {

String id;
List<Extension> extension;
String versionId;
Element _versionId;
DateTime lastUpdated;
Element _lastUpdated;
String source;
Element _source;
List<String> profile;
List<Coding> security;
List<Coding> tag;

}

part 'contactDetail.g.dart';

@JsonSerializable(explicitToJson: true)
class ContactDetail {

String id;
List<Extension> extension;
String name;
Element _name;
List<ContactPoint> telecom;

}

part 'contributor.g.dart';

@JsonSerializable(explicitToJson: true)
class Contributor {

String id;
List<Extension> extension;
String type; // <code> enum: author/editor/reviewer/endorser;
Element _type;
String name;
Element _name;
List<ContactDetail> contact;

}

part 'dataRequirement.g.dart';

@JsonSerializable(explicitToJson: true)
class DataRequirement {

String id;
List<Extension> extension;
String type;
Element _type;
List<String> profile;
CodeableConcept subjectCodeableConcept;
Reference subjectReference;
List<String> mustSupport;
List<Element> _mustSupport;
List<DataRequirement_CodeFilter> codeFilter;
List<DataRequirement_DateFilter> dateFilter;
int limit;
Element _limit;
List<DataRequirement_Sort> sort;

}

@JsonSerializable(explicitToJson: true)
class DataRequirement_CodeFilter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String path;
Element _path;
String searchParam;
Element _searchParam;
String valueSet;
List<Coding> code;

}

@JsonSerializable(explicitToJson: true)
class DataRequirement_DateFilter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String path;
Element _path;
String searchParam;
Element _searchParam;
String valueDateTime;
Element _valueDateTime;
Period valuePeriod;
Duration valueDuration;

}

@JsonSerializable(explicitToJson: true)
class DataRequirement_Sort {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String path;
Element _path;
String direction; // <code> enum: ascending/descending;
Element _direction;

}

part 'parameterDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ParameterDefinition {

String id;
List<Extension> extension;
String name;
Element _name;
String use;
Element _use;
int min;
Element _min;
String max;
Element _max;
String documentation;
Element _documentation;
String type;
Element _type;
String profile;

}

part 'relatedArtifact.g.dart';

@JsonSerializable(explicitToJson: true)
class RelatedArtifact {

String id;
List<Extension> extension;
String type; // <code> enum: documentation/justification/citation/predecessor/successor/derived-from/depends-on/composed-of;
Element _type;
String label;
Element _label;
String display;
Element _display;
String citation;
Element _citation;
String url;
Element _url;
Attachment document;
String resource;

}

part 'triggerDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class TriggerDefinition {

String id;
List<Extension> extension;
String type; // <code> enum: named-event/periodic/data-changed/data-added/data-modified/data-removed/data-accessed/data-access-ended;
Element _type;
String name;
Element _name;
Timing timingTiming;
Reference timingReference;
String timingDate;
Element _timingDate;
String timingDateTime;
Element _timingDateTime;
List<DataRequirement> data;
Expression condition;

}

part 'usageContext.g.dart';

@JsonSerializable(explicitToJson: true)
class UsageContext {

String id;
List<Extension> extension;
Coding code;
CodeableConcept valueCodeableConcept;
Quantity valueQuantity;
Range valueRange;
Reference valueReference;

}

part 'dosage.g.dart';

@JsonSerializable(explicitToJson: true)
class Dosage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
String text;
Element _text;
List<CodeableConcept> additionalInstruction;
String patientInstruction;
Element _patientInstruction;
Timing timing;
bool asNeededBoolean;
Element _asNeededBoolean;
CodeableConcept asNeededCodeableConcept;
CodeableConcept site;
CodeableConcept route;
CodeableConcept method;
List<Dosage_DoseAndRate> doseAndRate;
Ratio maxDosePerPeriod;
Quantity maxDosePerAdministration;
Quantity maxDosePerLifetime;

}

@JsonSerializable(explicitToJson: true)
class Dosage_DoseAndRate {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Range doseRange;
Quantity doseQuantity;
Ratio rateRatio;
Range rateRange;
Quantity rateQuantity;

}

part 'population.g.dart';

@JsonSerializable(explicitToJson: true)
class Population {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Range ageRange;
CodeableConcept ageCodeableConcept;
CodeableConcept gender;
CodeableConcept race;
CodeableConcept physiologicalCondition;

}

part 'productShelfLife.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductShelfLife {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier identifier;
CodeableConcept type;
Quantity period;
List<CodeableConcept> specialPrecautionsForStorage;

}

part 'prodCharacteristic.g.dart';

@JsonSerializable(explicitToJson: true)
class ProdCharacteristic {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity height;
Quantity width;
Quantity depth;
Quantity weight;
Quantity nominalVolume;
Quantity externalDiameter;
String shape;
Element _shape;
List<String> color;
List<Element> _color;
List<String> imprint;
List<Element> _imprint;
List<Attachment> image;
CodeableConcept scoring;

}

part 'marketingStatus.g.dart';

@JsonSerializable(explicitToJson: true)
class MarketingStatus {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept country;
CodeableConcept jurisdiction;
CodeableConcept status;
Period dateRange;
DateTime restoreDate;
Element _restoreDate;

}

part 'substanceAmount.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceAmount {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity amountQuantity;
Range amountRange;
String amountString;
Element _amountString;
CodeableConcept amountType;
String amountText;
Element _amountText;
SubstanceAmount_ReferenceRange referenceRange;

}

@JsonSerializable(explicitToJson: true)
class SubstanceAmount_ReferenceRange {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity lowLimit;
Quantity highLimit;

}

part 'expression.g.dart';

@JsonSerializable(explicitToJson: true)
class Expression {

String id;
List<Extension> extension;
String description;
Element _description;
String name;
Element _name;
String language; // <code> enum: text/cql/text/fhirpath/application/x-fhir-query;
Element _language;
String expression;
Element _expression;
String reference;
Element _reference;

}

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

}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Example {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String label;
Element _label;
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

}

part 'account.g.dart';

@JsonSerializable(explicitToJson: true)
class Account {

Account resourceType;
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
String status; // <code> enum: active/inactive/entered-in-error/on-hold/unknown;
Element _status;
CodeableConcept type;
String name;
Element _name;
List<Reference> subject;
Period servicePeriod;
List<Account_Coverage> coverage;
Reference owner;
String description;
Element _description;
List<Account_Guarantor> guarantor;
Reference partOf;

}

@JsonSerializable(explicitToJson: true)
class Account_Coverage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference coverage;
int priority;
Element _priority;

}

@JsonSerializable(explicitToJson: true)
class Account_Guarantor {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference party;
bool onHold;
Element _onHold;
Period period;

}

part 'activityDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ActivityDefinition {

ActivityDefinition resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String subtitle;
Element _subtitle;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
CodeableConcept subjectCodeableConcept;
Reference subjectReference;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String usage;
Element _usage;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
List<CodeableConcept> topic;
List<ContactDetail> author;
List<ContactDetail> editor;
List<ContactDetail> reviewer;
List<ContactDetail> endorser;
List<RelatedArtifact> relatedArtifact;
List<String> library;
String kind;
Element _kind;
String profile;
CodeableConcept code;
String intent;
Element _intent;
String priority;
Element _priority;
bool doNotPerform;
Element _doNotPerform;
Timing timingTiming;
String timingDateTime;
Element _timingDateTime;
Age timingAge;
Period timingPeriod;
Range timingRange;
Duration timingDuration;
Reference location;
List<ActivityDefinition_Participant> participant;
Reference productReference;
CodeableConcept productCodeableConcept;
Quantity quantity;
List<Dosage> dosage;
List<CodeableConcept> bodySite;
List<Reference> specimenRequirement;
List<Reference> observationRequirement;
List<Reference> observationResultRequirement;
String transform;
List<ActivityDefinition_DynamicValue> dynamicValue;

}

@JsonSerializable(explicitToJson: true)
class ActivityDefinition_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type;
Element _type;
CodeableConcept role;

}

@JsonSerializable(explicitToJson: true)
class ActivityDefinition_DynamicValue {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String path;
Element _path;
Expression expression;

}

part 'adverseEvent.g.dart';

@JsonSerializable(explicitToJson: true)
class AdverseEvent {

AdverseEvent resourceType;
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
Identifier identifier;
String actuality; // <code> enum: actual/potential;
Element _actuality;
List<CodeableConcept> category;
CodeableConcept event;
Reference subject;
Reference encounter;
DateTime date;
Element _date;
DateTime detected;
Element _detected;
DateTime recordedDate;
Element _recordedDate;
List<Reference> resultingCondition;
Reference location;
CodeableConcept seriousness;
CodeableConcept severity;
CodeableConcept outcome;
Reference recorder;
List<Reference> contributor;
List<AdverseEvent_SuspectEntity> suspectEntity;
List<Reference> subjectMedicalHistory;
List<Reference> referenceDocument;
List<Reference> study;

}

@JsonSerializable(explicitToJson: true)
class AdverseEvent_SuspectEntity {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference instance;
List<AdverseEvent_Causality> causality;

}

@JsonSerializable(explicitToJson: true)
class AdverseEvent_Causality {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept assessment;
String productRelatedness;
Element _productRelatedness;
Reference author;
CodeableConcept method;

}

part 'allergyIntolerance.g.dart';

@JsonSerializable(explicitToJson: true)
class AllergyIntolerance {

AllergyIntolerance resourceType;
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
CodeableConcept clinicalStatus;
CodeableConcept verificationStatus;
String type; // <code> enum: allergy/intolerance;
Element _type;
List<Element> _category;
String criticality; // <code> enum: low/high/unable-to-assess;
Element _criticality;
CodeableConcept code;
Reference patient;
Reference encounter;
String onsetDateTime;
Element _onsetDateTime;
Age onsetAge;
Period onsetPeriod;
Range onsetRange;
String onsetString;
Element _onsetString;
DateTime recordedDate;
Element _recordedDate;
Reference recorder;
Reference asserter;
DateTime lastOccurrence;
Element _lastOccurrence;
List<Annotation> note;
List<AllergyIntolerance_Reaction> reaction;

}

@JsonSerializable(explicitToJson: true)
class AllergyIntolerance_Reaction {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept substance;
List<CodeableConcept> manifestation;
String description;
Element _description;
DateTime onset;
Element _onset;
String severity; // <code> enum: mild/moderate/severe;
Element _severity;
CodeableConcept exposureRoute;
List<Annotation> note;

}

part 'appointment.g.dart';

@JsonSerializable(explicitToJson: true)
class Appointment {

Appointment resourceType;
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
String status; // <code> enum: proposed/pending/booked/arrived/fulfilled/cancelled/noshow/entered-in-error/checked-in/waitlist;
Element _status;
CodeableConcept cancelationReason;
List<CodeableConcept> serviceCategory;
List<CodeableConcept> serviceType;
List<CodeableConcept> specialty;
CodeableConcept appointmentType;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
int priority;
Element _priority;
String description;
Element _description;
List<Reference> supportingInformation;
DateTime start;
Element _start;
DateTime end;
Element _end;
int minutesDuration;
Element _minutesDuration;
List<Reference> slot;
DateTime created;
Element _created;
String comment;
Element _comment;
String patientInstruction;
Element _patientInstruction;
List<Reference> basedOn;
List<Appointment_Participant> participant;
List<Period> requestedPeriod;

}

@JsonSerializable(explicitToJson: true)
class Appointment_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> type;
Reference actor;
String required; // <code> enum: required/optional/information-only;
Element _required;
String status; // <code> enum: accepted/declined/tentative/needs-action;
Element _status;
Period period;

}

part 'appointmentResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class AppointmentResponse {

AppointmentResponse resourceType;
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
Reference appointment;
DateTime start;
Element _start;
DateTime end;
Element _end;
List<CodeableConcept> participantType;
Reference actor;
String participantStatus;
Element _participantStatus;
String comment;
Element _comment;

}

part 'auditEvent.g.dart';

@JsonSerializable(explicitToJson: true)
class AuditEvent {

AuditEvent resourceType;
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
Coding type;
List<Coding> subtype;
String action; // <code> enum: C/R/U/D/E;
Element _action;
Period period;
DateTime recorded;
Element _recorded;
String outcome; // <code> enum: 0/4/8/12;
Element _outcome;
String outcomeDesc;
Element _outcomeDesc;
List<CodeableConcept> purposeOfEvent;
List<AuditEvent_Agent> agent;
AuditEvent_Source source;
List<AuditEvent_Entity> entity;

}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Agent {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<CodeableConcept> role;
Reference who;
String altId;
Element _altId;
String name;
Element _name;
bool requestor;
Element _requestor;
Reference location;
List<String> policy;
List<Element> _policy;
Coding media;
AuditEvent_Network network;
List<CodeableConcept> purposeOfUse;

}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Network {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String address;
Element _address;
String type; // <code> enum: 1/2/3/4/5;
Element _type;

}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Source {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String site;
Element _site;
Reference observer;
List<Coding> type;

}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Entity {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference what;
Coding type;
Coding role;
Coding lifecycle;
List<Coding> securityLabel;
String name;
Element _name;
String description;
Element _description;
String query;
Element _query;
List<AuditEvent_Detail> detail;

}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Detail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type;
Element _type;
String valueString;
Element _valueString;
String valueBase64Binary;
Element _valueBase64Binary;

}

part 'basic.g.dart';

@JsonSerializable(explicitToJson: true)
class Basic {

Basic resourceType;
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
CodeableConcept code;
Reference subject;
String created;
Element _created;
Reference author;

}

part 'binary.g.dart';

@JsonSerializable(explicitToJson: true)
class Binary {

Binary resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
String contentType;
Element _contentType;
Reference securityContext;
String data;
Element _data;

}

part 'biologicallyDerivedProduct.g.dart';

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct {

BiologicallyDerivedProduct resourceType;
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
String productCategory; // <code> enum: organ/tissue/fluid/cells/biologicalAgent;
Element _productCategory;
CodeableConcept productCode;
String status; // <code> enum: available/unavailable;
Element _status;
List<Reference> request;
int quantity;
Element _quantity;
List<Reference> parent;
BiologicallyDerivedProduct_Collection collection;
List<BiologicallyDerivedProduct_Processing> processing;
BiologicallyDerivedProduct_Manipulation manipulation;
List<BiologicallyDerivedProduct_Storage> storage;

}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Collection {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference collector;
Reference source;
String collectedDateTime;
Element _collectedDateTime;
Period collectedPeriod;

}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Processing {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
CodeableConcept procedure;
Reference additive;
String timeDateTime;
Element _timeDateTime;
Period timePeriod;

}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Manipulation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
String timeDateTime;
Element _timeDateTime;
Period timePeriod;

}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Storage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
double temperature;
Element _temperature;
String scale; // <code> enum: farenheit/celsius/kelvin;
Element _scale;
Period duration;

}

part 'bodyStructure.g.dart';

@JsonSerializable(explicitToJson: true)
class BodyStructure {

BodyStructure resourceType;
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
bool active;
Element _active;
CodeableConcept morphology;
CodeableConcept location;
List<CodeableConcept> locationQualifier;
String description;
Element _description;
List<Attachment> image;
Reference patient;

}

part 'bundle.g.dart';

@JsonSerializable(explicitToJson: true)
class Bundle {

Bundle resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Identifier identifier;
String type; // <code> enum: document/message/transaction/transaction-response/batch/batch-response/history/searchset/collection;
Element _type;
DateTime timestamp;
Element _timestamp;
int total;
Element _total;
List<Bundle_Link> link;
List<Bundle_Entry> entry;
Signature signature;

}

@JsonSerializable(explicitToJson: true)
class Bundle_Link {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String relation;
Element _relation;
String url;
Element _url;

}

@JsonSerializable(explicitToJson: true)
class Bundle_Entry {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Bundle_Link> link;
String fullUrl;
Element _fullUrl;
ResourceList resource;
Bundle_Search search;
Bundle_Request request;
Bundle_Response response;

}

@JsonSerializable(explicitToJson: true)
class Bundle_Search {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String mode; // <code> enum: match/include/outcome;
Element _mode;
double score;
Element _score;

}

@JsonSerializable(explicitToJson: true)
class Bundle_Request {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String method; // <code> enum: GET/HEAD/POST/PUT/DELETE/PATCH;
Element _method;
String url;
Element _url;
String ifNoneMatch;
Element _ifNoneMatch;
DateTime ifModifiedSince;
Element _ifModifiedSince;
String ifMatch;
Element _ifMatch;
String ifNoneExist;
Element _ifNoneExist;

}

@JsonSerializable(explicitToJson: true)
class Bundle_Response {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String status;
Element _status;
String location;
Element _location;
String etag;
Element _etag;
DateTime lastModified;
Element _lastModified;
ResourceList outcome;

}

part 'capabilityStatement.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement {

CapabilityStatement resourceType;
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
String url;
Element _url;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
String kind; // <code> enum: instance/capability/requirements;
Element _kind;
List<String> instantiates;
List<String> imports;
CapabilityStatement_Software software;
CapabilityStatement_Implementation implementation;
String fhirVersion; // <code> enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1;
Element _fhirVersion;
List<String> format;
List<Element> _format;
List<String> patchFormat;
List<Element> _patchFormat;
List<String> implementationGuide;
List<CapabilityStatement_Rest> rest;
List<CapabilityStatement_Messaging> messaging;
List<CapabilityStatement_Document> document;

}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Software {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String version;
Element _version;
DateTime releaseDate;
Element _releaseDate;

}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Implementation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
String url;
Element _url;
Reference custodian;

}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Rest {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String mode; // <code> enum: client/server;
Element _mode;
String documentation;
Element _documentation;
CapabilityStatement_Security security;
List<CapabilityStatement_Resource> resource;
List<CapabilityStatement_Interaction1> interaction;
List<CapabilityStatement_SearchParam> searchParam;
List<CapabilityStatement_Operation> operation;
List<String> compartment;

}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Security {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool cors;
Element _cors;
List<CodeableConcept> service;
String description;
Element _description;

}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Resource {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type;
Element _type;
String profile;
List<String> supportedProfile;
String documentation;
Element _documentation;
List<CapabilityStatement_Interaction> interaction;
String versioning; // <code> enum: no-version/versioned/versioned-update;
Element _versioning;
bool readHistory;
Element _readHistory;
bool updateCreate;
Element _updateCreate;
bool conditionalCreate;
Element _conditionalCreate;
String conditionalRead; // <code> enum: not-supported/modified-since/not-match/full-support;
Element _conditionalRead;
bool conditionalUpdate;
Element _conditionalUpdate;
String conditionalDelete; // <code> enum: not-supported/single/multiple;
Element _conditionalDelete;
List<Element> _referencePolicy;
List<String> searchInclude;
List<Element> _searchInclude;
List<String> searchRevInclude;
List<Element> _searchRevInclude;
List<CapabilityStatement_SearchParam> searchParam;
List<CapabilityStatement_Operation> operation;

}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Interaction {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code; // <code> enum: read/vread/update/patch/delete/history-instance/history-type/create/search-type;
Element _code;
String documentation;
Element _documentation;

}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_SearchParam {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String definition;
String type; // <code> enum: number/date/string/token/reference/composite/quantity/uri/special;
Element _type;
String documentation;
Element _documentation;

}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Operation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String definition;
String documentation;
Element _documentation;

}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Interaction1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code; // <code> enum: transaction/batch/search-system/history-system;
Element _code;
String documentation;
Element _documentation;

}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Messaging {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CapabilityStatement_Endpoint> endpoint;
int reliableCache;
Element _reliableCache;
String documentation;
Element _documentation;
List<CapabilityStatement_SupportedMessage> supportedMessage;

}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Endpoint {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Coding protocol;
String address;
Element _address;

}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_SupportedMessage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String mode; // <code> enum: sender/receiver;
Element _mode;
String definition;

}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Document {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String mode; // <code> enum: producer/consumer;
Element _mode;
String documentation;
Element _documentation;
String profile;

}

part 'carePlan.g.dart';

@JsonSerializable(explicitToJson: true)
class CarePlan {

CarePlan resourceType;
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
List<String> instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
List<Reference> basedOn;
List<Reference> replaces;
List<Reference> partOf;
String status;
Element _status;
String intent;
Element _intent;
List<CodeableConcept> category;
String title;
Element _title;
String description;
Element _description;
Reference subject;
Reference encounter;
Period period;
DateTime created;
Element _created;
Reference author;
List<Reference> contributor;
List<Reference> careTeam;
List<Reference> addresses;
List<Reference> supportingInfo;
List<Reference> goal;
List<CarePlan_Activity> activity;
List<Annotation> note;

}

@JsonSerializable(explicitToJson: true)
class CarePlan_Activity {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> outcomeCodeableConcept;
List<Reference> outcomeReference;
List<Annotation> progress;
Reference reference;
CarePlan_Detail detail;

}

@JsonSerializable(explicitToJson: true)
class CarePlan_Detail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String kind;
Element _kind;
List<String> instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
CodeableConcept code;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Reference> goal;
String status; // <code> enum: not-started/scheduled/in-progress/on-hold/completed/cancelled/stopped/unknown/entered-in-error;
Element _status;
CodeableConcept statusReason;
bool doNotPerform;
Element _doNotPerform;
Timing scheduledTiming;
Period scheduledPeriod;
String scheduledString;
Element _scheduledString;
Reference location;
List<Reference> performer;
CodeableConcept productCodeableConcept;
Reference productReference;
Quantity dailyAmount;
Quantity quantity;
String description;
Element _description;

}

part 'careTeam.g.dart';

@JsonSerializable(explicitToJson: true)
class CareTeam {

CareTeam resourceType;
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
String status; // <code> enum: proposed/active/suspended/inactive/entered-in-error;
Element _status;
List<CodeableConcept> category;
String name;
Element _name;
Reference subject;
Reference encounter;
Period period;
List<CareTeam_Participant> participant;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Reference> managingOrganization;
List<ContactPoint> telecom;
List<Annotation> note;

}

@JsonSerializable(explicitToJson: true)
class CareTeam_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> role;
Reference member;
Reference onBehalfOf;
Period period;

}

part 'catalogEntry.g.dart';

@JsonSerializable(explicitToJson: true)
class CatalogEntry {

CatalogEntry resourceType;
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
CodeableConcept type;
bool orderable;
Element _orderable;
Reference referencedItem;
List<Identifier> additionalIdentifier;
List<CodeableConcept> classification;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
Period validityPeriod;
DateTime validTo;
Element _validTo;
DateTime lastUpdated;
Element _lastUpdated;
List<CodeableConcept> additionalCharacteristic;
List<CodeableConcept> additionalClassification;
List<CatalogEntry_RelatedEntry> relatedEntry;

}

@JsonSerializable(explicitToJson: true)
class CatalogEntry_RelatedEntry {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String relationtype; // <code> enum: triggers/is-replaced-by;
Element _relationtype;
Reference item;

}

part 'chargeItem.g.dart';

@JsonSerializable(explicitToJson: true)
class ChargeItem {

ChargeItem resourceType;
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
List<String> definitionUri;
List<Element> _definitionUri;
List<String> definitionCanonical;
String status; // <code> enum: planned/billable/not-billable/aborted/billed/entered-in-error/unknown;
Element _status;
List<Reference> partOf;
CodeableConcept code;
Reference subject;
Reference context;
String occurrenceDateTime;
Element _occurrenceDateTime;
Period occurrencePeriod;
Timing occurrenceTiming;
List<ChargeItem_Performer> performer;
Reference performingOrganization;
Reference requestingOrganization;
Reference costCenter;
Quantity quantity;
List<CodeableConcept> bodysite;
double factorOverride;
Element _factorOverride;
Money priceOverride;
String overrideReason;
Element _overrideReason;
Reference enterer;
DateTime enteredDate;
Element _enteredDate;
List<CodeableConcept> reason;
List<Reference> service;
Reference productReference;
CodeableConcept productCodeableConcept;
List<Reference> account;
List<Annotation> note;
List<Reference> supportingInformation;

}

@JsonSerializable(explicitToJson: true)
class ChargeItem_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;

}

part 'chargeItemDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition {

ChargeItemDefinition resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String title;
Element _title;
List<String> derivedFromUri;
List<Element> _derivedFromUri;
List<String> partOf;
List<String> replaces;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
CodeableConcept code;
List<Reference> instance;
List<ChargeItemDefinition_Applicability> applicability;
List<ChargeItemDefinition_PropertyGroup> propertyGroup;

}

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition_Applicability {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
String language;
Element _language;
String expression;
Element _expression;

}

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition_PropertyGroup {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<ChargeItemDefinition_Applicability> applicability;
List<ChargeItemDefinition_PriceComponent> priceComponent;

}

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition_PriceComponent {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type;
Element _type;
CodeableConcept code;
double factor;
Element _factor;
Money amount;

}

part 'claim.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim {

Claim resourceType;
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
String status;
Element _status;
CodeableConcept type;
CodeableConcept subType;
String use; // <code> enum: claim/preauthorization/predetermination;
Element _use;
Reference patient;
Period billablePeriod;
DateTime created;
Element _created;
Reference enterer;
Reference insurer;
Reference provider;
CodeableConcept priority;
CodeableConcept fundsReserve;
List<Claim_Related> related;
Reference prescription;
Reference originalPrescription;
Claim_Payee payee;
Reference referral;
Reference facility;
List<Claim_CareTeam> careTeam;
List<Claim_SupportingInfo> supportingInfo;
List<Claim_Diagnosis> diagnosis;
List<Claim_Procedure> procedure;
List<Claim_Insurance> insurance;
Claim_Accident accident;
List<Claim_Item> item;
Money total;

}

@JsonSerializable(explicitToJson: true)
class Claim_Related {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference claim;
CodeableConcept relationship;
Identifier reference;

}

@JsonSerializable(explicitToJson: true)
class Claim_Payee {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Reference party;

}

@JsonSerializable(explicitToJson: true)
class Claim_CareTeam {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
Reference provider;
bool responsible;
Element _responsible;
CodeableConcept role;
CodeableConcept qualification;

}

@JsonSerializable(explicitToJson: true)
class Claim_SupportingInfo {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
CodeableConcept category;
CodeableConcept code;
String timingDate;
Element _timingDate;
Period timingPeriod;
bool valueBoolean;
Element _valueBoolean;
String valueString;
Element _valueString;
Quantity valueQuantity;
Attachment valueAttachment;
Reference valueReference;
CodeableConcept reason;

}

@JsonSerializable(explicitToJson: true)
class Claim_Diagnosis {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
CodeableConcept diagnosisCodeableConcept;
Reference diagnosisReference;
List<CodeableConcept> type;
CodeableConcept onAdmission;
CodeableConcept packageCode;

}

@JsonSerializable(explicitToJson: true)
class Claim_Procedure {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
List<CodeableConcept> type;
DateTime date;
Element _date;
CodeableConcept procedureCodeableConcept;
Reference procedureReference;
List<Reference> udi;

}

@JsonSerializable(explicitToJson: true)
class Claim_Insurance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
bool focal;
Element _focal;
Identifier identifier;
Reference coverage;
String businessArrangement;
Element _businessArrangement;
List<String> preAuthRef;
List<Element> _preAuthRef;
Reference claimResponse;

}

@JsonSerializable(explicitToJson: true)
class Claim_Accident {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String date;
Element _date;
CodeableConcept type;
Address locationAddress;
Reference locationReference;

}

@JsonSerializable(explicitToJson: true)
class Claim_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
List<int> careTeamSequence;
List<Element> _careTeamSequence;
List<int> diagnosisSequence;
List<Element> _diagnosisSequence;
List<int> procedureSequence;
List<Element> _procedureSequence;
List<int> informationSequence;
List<Element> _informationSequence;
CodeableConcept revenue;
CodeableConcept category;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
List<CodeableConcept> programCode;
String servicedDate;
Element _servicedDate;
Period servicedPeriod;
CodeableConcept locationCodeableConcept;
Address locationAddress;
Reference locationReference;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
List<Reference> udi;
CodeableConcept bodySite;
List<CodeableConcept> subSite;
List<Reference> encounter;
List<Claim_Detail> detail;

}

@JsonSerializable(explicitToJson: true)
class Claim_Detail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
CodeableConcept revenue;
CodeableConcept category;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
List<CodeableConcept> programCode;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
List<Reference> udi;
List<Claim_SubDetail> subDetail;

}

@JsonSerializable(explicitToJson: true)
class Claim_SubDetail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
CodeableConcept revenue;
CodeableConcept category;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
List<CodeableConcept> programCode;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
List<Reference> udi;

}

part 'claimResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class ClaimResponse {

ClaimResponse resourceType;
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
String status;
Element _status;
CodeableConcept type;
CodeableConcept subType;
String use;
Element _use;
Reference patient;
DateTime created;
Element _created;
Reference insurer;
Reference requestor;
Reference request;
String outcome;
Element _outcome;
String disposition;
Element _disposition;
String preAuthRef;
Element _preAuthRef;
Period preAuthPeriod;
CodeableConcept payeeType;
List<ClaimResponse_Item> item;
List<ClaimResponse_AddItem> addItem;
List<ClaimResponse_Adjudication> adjudication;
List<ClaimResponse_Total> total;
ClaimResponse_Payment payment;
CodeableConcept fundsReserve;
CodeableConcept formCode;
Attachment form;
List<ClaimResponse_ProcessNote> processNote;
List<Reference> communicationRequest;
List<ClaimResponse_Insurance> insurance;
List<ClaimResponse_Error> error;

}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int itemSequence;
Element _itemSequence;
List<int> noteNumber;
List<Element> _noteNumber;
List<ClaimResponse_Adjudication> adjudication;
List<ClaimResponse_Detail> detail;

}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Adjudication {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
CodeableConcept reason;
Money amount;
double value;
Element _value;

}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Detail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int detailSequence;
Element _detailSequence;
List<int> noteNumber;
List<Element> _noteNumber;
List<ClaimResponse_Adjudication> adjudication;
List<ClaimResponse_SubDetail> subDetail;

}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_SubDetail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int subDetailSequence;
Element _subDetailSequence;
List<int> noteNumber;
List<Element> _noteNumber;
List<ClaimResponse_Adjudication> adjudication;

}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_AddItem {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<int> itemSequence;
List<Element> _itemSequence;
List<int> detailSequence;
List<Element> _detailSequence;
List<int> subdetailSequence;
List<Element> _subdetailSequence;
List<Reference> provider;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
List<CodeableConcept> programCode;
String servicedDate;
Element _servicedDate;
Period servicedPeriod;
CodeableConcept locationCodeableConcept;
Address locationAddress;
Reference locationReference;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
CodeableConcept bodySite;
List<CodeableConcept> subSite;
List<int> noteNumber;
List<Element> _noteNumber;
List<ClaimResponse_Adjudication> adjudication;
List<ClaimResponse_Detail1> detail;

}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Detail1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
List<int> noteNumber;
List<Element> _noteNumber;
List<ClaimResponse_Adjudication> adjudication;
List<ClaimResponse_SubDetail1> subDetail;

}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_SubDetail1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
List<int> noteNumber;
List<Element> _noteNumber;
List<ClaimResponse_Adjudication> adjudication;

}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Total {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
Money amount;

}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Payment {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Money adjustment;
CodeableConcept adjustmentReason;
String date;
Element _date;
Money amount;
Identifier identifier;

}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_ProcessNote {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int number;
Element _number;
String type; // <code> enum: display/print/printoper;
Element _type;
String text;
Element _text;
CodeableConcept language;

}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Insurance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
bool focal;
Element _focal;
Reference coverage;
String businessArrangement;
Element _businessArrangement;
Reference claimResponse;

}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Error {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int itemSequence;
Element _itemSequence;
int detailSequence;
Element _detailSequence;
int subDetailSequence;
Element _subDetailSequence;
CodeableConcept code;

}

part 'clinicalImpression.g.dart';

@JsonSerializable(explicitToJson: true)
class ClinicalImpression {

ClinicalImpression resourceType;
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
String status;
Element _status;
CodeableConcept statusReason;
CodeableConcept code;
String description;
Element _description;
Reference subject;
Reference encounter;
String effectiveDateTime;
Element _effectiveDateTime;
Period effectivePeriod;
DateTime date;
Element _date;
Reference assessor;
Reference previous;
List<Reference> problem;
List<ClinicalImpression_Investigation> investigation;
List<String> protocol;
List<Element> _protocol;
String summary;
Element _summary;
List<ClinicalImpression_Finding> finding;
List<CodeableConcept> prognosisCodeableConcept;
List<Reference> prognosisReference;
List<Reference> supportingInfo;
List<Annotation> note;

}

@JsonSerializable(explicitToJson: true)
class ClinicalImpression_Investigation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
List<Reference> item;

}

@JsonSerializable(explicitToJson: true)
class ClinicalImpression_Finding {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept itemCodeableConcept;
Reference itemReference;
String basis;
Element _basis;

}

part 'codeSystem.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeSystem {

CodeSystem resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
bool caseSensitive;
Element _caseSensitive;
String valueSet;
String hierarchyMeaning; // <code> enum: grouped-by/is-a/part-of/classified-with;
Element _hierarchyMeaning;
bool compositional;
Element _compositional;
bool versionNeeded;
Element _versionNeeded;
String content; // <code> enum: not-present/example/fragment/complete/supplement;
Element _content;
String supplements;
int count;
Element _count;
List<CodeSystem_Filter> filter;
List<CodeSystem_Property> property;
List<CodeSystem_Concept> concept;

}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Filter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String description;
Element _description;
List<String> operator;
List<Element> _operator;
String value;
Element _value;

}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Property {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String uri;
Element _uri;
String description;
Element _description;
String type; // <code> enum: code/Coding/string/integer/boolean/dateTime/decimal;
Element _type;

}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Concept {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String display;
Element _display;
String definition;
Element _definition;
List<CodeSystem_Designation> designation;
List<CodeSystem_Property1> property;
List<CodeSystem_Concept> concept;

}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Designation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String language;
Element _language;
Coding use;
String value;
Element _value;

}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Property1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String valueCode;
Element _valueCode;
Coding valueCoding;
String valueString;
Element _valueString;
number valueInteger;
Element _valueInteger;
bool valueBoolean;
Element _valueBoolean;
String valueDateTime;
Element _valueDateTime;
number valueDecimal;
Element _valueDecimal;

}

part 'communication.g.dart';

@JsonSerializable(explicitToJson: true)
class Communication {

Communication resourceType;
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
List<String> instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
List<Reference> basedOn;
List<Reference> partOf;
List<Reference> inResponseTo;
String status;
Element _status;
CodeableConcept statusReason;
List<CodeableConcept> category;
String priority;
Element _priority;
List<CodeableConcept> medium;
Reference subject;
CodeableConcept topic;
List<Reference> about;
Reference encounter;
DateTime sent;
Element _sent;
DateTime received;
Element _received;
List<Reference> recipient;
Reference sender;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Communication_Payload> payload;
List<Annotation> note;

}

@JsonSerializable(explicitToJson: true)
class Communication_Payload {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String contentString;
Element _contentString;
Attachment contentAttachment;
Reference contentReference;

}

part 'communicationRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class CommunicationRequest {

CommunicationRequest resourceType;
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
List<Reference> basedOn;
List<Reference> replaces;
Identifier groupIdentifier;
String status;
Element _status;
CodeableConcept statusReason;
List<CodeableConcept> category;
String priority;
Element _priority;
bool doNotPerform;
Element _doNotPerform;
List<CodeableConcept> medium;
Reference subject;
List<Reference> about;
Reference encounter;
List<CommunicationRequest_Payload> payload;
String occurrenceDateTime;
Element _occurrenceDateTime;
Period occurrencePeriod;
DateTime authoredOn;
Element _authoredOn;
Reference requester;
List<Reference> recipient;
Reference sender;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Annotation> note;

}

@JsonSerializable(explicitToJson: true)
class CommunicationRequest_Payload {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String contentString;
Element _contentString;
Attachment contentAttachment;
Reference contentReference;

}

part 'compartmentDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class CompartmentDefinition {

CompartmentDefinition resourceType;
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
String url;
Element _url;
String version;
Element _version;
String name;
Element _name;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
String purpose;
Element _purpose;
String code; // <code> enum: Patient/Encounter/RelatedPerson/Practitioner/Device;
Element _code;
bool search;
Element _search;
List<CompartmentDefinition_Resource> resource;

}

@JsonSerializable(explicitToJson: true)
class CompartmentDefinition_Resource {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
List<String> param;
List<Element> _param;
String documentation;
Element _documentation;

}

part 'composition.g.dart';

@JsonSerializable(explicitToJson: true)
class Composition {

Composition resourceType;
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
Identifier identifier;
String status; // <code> enum: preliminary/final/amended/entered-in-error;
Element _status;
CodeableConcept type;
List<CodeableConcept> category;
Reference subject;
Reference encounter;
DateTime date;
Element _date;
List<Reference> author;
String title;
Element _title;
String confidentiality;
Element _confidentiality;
List<Composition_Attester> attester;
Reference custodian;
List<Composition_RelatesTo> relatesTo;
List<Composition_Event> event;
List<Composition_Section> section;

}

@JsonSerializable(explicitToJson: true)
class Composition_Attester {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String mode; // <code> enum: personal/professional/legal/official;
Element _mode;
DateTime time;
Element _time;
Reference party;

}

@JsonSerializable(explicitToJson: true)
class Composition_RelatesTo {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
Identifier targetIdentifier;
Reference targetReference;

}

@JsonSerializable(explicitToJson: true)
class Composition_Event {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> code;
Period period;
List<Reference> detail;

}

@JsonSerializable(explicitToJson: true)
class Composition_Section {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String title;
Element _title;
CodeableConcept code;
List<Reference> author;
Reference focus;
Narrative text;
String mode;
Element _mode;
CodeableConcept orderedBy;
List<Reference> entry;
CodeableConcept emptyReason;
List<Composition_Section> section;

}

part 'conceptMap.g.dart';

@JsonSerializable(explicitToJson: true)
class ConceptMap {

ConceptMap resourceType;
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
String url;
Element _url;
Identifier identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
String sourceUri;
Element _sourceUri;
String sourceCanonical;
Element _sourceCanonical;
String targetUri;
Element _targetUri;
String targetCanonical;
Element _targetCanonical;
List<ConceptMap_Group> group;

}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Group {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String source;
Element _source;
String sourceVersion;
Element _sourceVersion;
String target;
Element _target;
String targetVersion;
Element _targetVersion;
List<ConceptMap_Element> element;
ConceptMap_Unmapped unmapped;

}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Element {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String display;
Element _display;
List<ConceptMap_Target> target;

}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Target {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String display;
Element _display;
String equivalence; // <code> enum: relatedto/equivalent/equal/wider/subsumes/narrower/specializes/inexact/unmatched/disjoint;
Element _equivalence;
String comment;
Element _comment;
List<ConceptMap_DependsOn> dependsOn;
List<ConceptMap_DependsOn> product;

}

@JsonSerializable(explicitToJson: true)
class ConceptMap_DependsOn {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String property;
Element _property;
String system;
String value;
Element _value;
String display;
Element _display;

}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Unmapped {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String mode; // <code> enum: provided/fixed/other-map;
Element _mode;
String code;
Element _code;
String display;
Element _display;
String url;

}

part 'condition.g.dart';

@JsonSerializable(explicitToJson: true)
class Condition {

Condition resourceType;
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
CodeableConcept clinicalStatus;
CodeableConcept verificationStatus;
List<CodeableConcept> category;
CodeableConcept severity;
CodeableConcept code;
List<CodeableConcept> bodySite;
Reference subject;
Reference encounter;
String onsetDateTime;
Element _onsetDateTime;
Age onsetAge;
Period onsetPeriod;
Range onsetRange;
String onsetString;
Element _onsetString;
String abatementDateTime;
Element _abatementDateTime;
Age abatementAge;
Period abatementPeriod;
Range abatementRange;
String abatementString;
Element _abatementString;
DateTime recordedDate;
Element _recordedDate;
Reference recorder;
Reference asserter;
List<Condition_Stage> stage;
List<Condition_Evidence> evidence;
List<Annotation> note;

}

@JsonSerializable(explicitToJson: true)
class Condition_Stage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept summary;
List<Reference> assessment;
CodeableConcept type;

}

@JsonSerializable(explicitToJson: true)
class Condition_Evidence {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> code;
List<Reference> detail;

}

part 'consent.g.dart';

@JsonSerializable(explicitToJson: true)
class Consent {

Consent resourceType;
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
String status; // <code> enum: draft/proposed/active/rejected/inactive/entered-in-error;
Element _status;
CodeableConcept scope;
List<CodeableConcept> category;
Reference patient;
DateTime dateTime;
Element _dateTime;
List<Reference> performer;
List<Reference> organization;
Attachment sourceAttachment;
Reference sourceReference;
List<Consent_Policy> policy;
CodeableConcept policyRule;
List<Consent_Verification> verification;
Consent_Provision provision;

}

@JsonSerializable(explicitToJson: true)
class Consent_Policy {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String authority;
Element _authority;
String uri;
Element _uri;

}

@JsonSerializable(explicitToJson: true)
class Consent_Verification {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool verified;
Element _verified;
Reference verifiedWith;
DateTime verificationDate;
Element _verificationDate;

}

@JsonSerializable(explicitToJson: true)
class Consent_Provision {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: deny/permit;
Element _type;
Period period;
List<Consent_Actor> actor;
List<CodeableConcept> action;
List<Coding> securityLabel;
List<Coding> purpose;
List<Coding> class;
List<CodeableConcept> code;
Period dataPeriod;
List<Consent_Data> data;
List<Consent_Provision> provision;

}

@JsonSerializable(explicitToJson: true)
class Consent_Actor {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept role;
Reference reference;

}

@JsonSerializable(explicitToJson: true)
class Consent_Data {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String meaning; // <code> enum: instance/related/dependents/authoredby;
Element _meaning;
Reference reference;

}

part 'contract.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract {

Contract resourceType;
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
String url;
Element _url;
String version;
Element _version;
String status;
Element _status;
CodeableConcept legalState;
Reference instantiatesCanonical;
String instantiatesUri;
Element _instantiatesUri;
CodeableConcept contentDerivative;
DateTime issued;
Element _issued;
Period applies;
CodeableConcept expirationType;
List<Reference> subject;
List<Reference> authority;
List<Reference> domain;
List<Reference> site;
String name;
Element _name;
String title;
Element _title;
String subtitle;
Element _subtitle;
List<String> alias;
List<Element> _alias;
Reference author;
CodeableConcept scope;
CodeableConcept topicCodeableConcept;
Reference topicReference;
CodeableConcept type;
List<CodeableConcept> subType;
Contract_ContentDefinition contentDefinition;
List<Contract_Term> term;
List<Reference> supportingInfo;
List<Reference> relevantHistory;
List<Contract_Signer> signer;
List<Contract_Friendly> friendly;
List<Contract_Legal> legal;
List<Contract_Rule> rule;
Attachment legallyBindingAttachment;
Reference legallyBindingReference;

}

@JsonSerializable(explicitToJson: true)
class Contract_ContentDefinition {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
CodeableConcept subType;
Reference publisher;
DateTime publicationDate;
Element _publicationDate;
String publicationStatus;
Element _publicationStatus;
String copyright;
Element _copyright;

}

@JsonSerializable(explicitToJson: true)
class Contract_Term {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier identifier;
DateTime issued;
Element _issued;
Period applies;
CodeableConcept topicCodeableConcept;
Reference topicReference;
CodeableConcept type;
CodeableConcept subType;
String text;
Element _text;
List<Contract_SecurityLabel> securityLabel;
Contract_Offer offer;
List<Contract_Asset> asset;
List<Contract_Action> action;
List<Contract_Term> group;

}

@JsonSerializable(explicitToJson: true)
class Contract_SecurityLabel {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<int> number;
List<Element> _number;
Coding classification;
List<Coding> category;
List<Coding> control;

}

@JsonSerializable(explicitToJson: true)
class Contract_Offer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
List<Contract_Party> party;
Reference topic;
CodeableConcept type;
CodeableConcept decision;
List<CodeableConcept> decisionMode;
List<Contract_Answer> answer;
String text;
Element _text;
List<String> linkId;
List<Element> _linkId;
List<int> securityLabelNumber;
List<Element> _securityLabelNumber;

}

@JsonSerializable(explicitToJson: true)
class Contract_Party {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Reference> reference;
CodeableConcept role;

}

@JsonSerializable(explicitToJson: true)
class Contract_Answer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool valueBoolean;
Element _valueBoolean;
number valueDecimal;
Element _valueDecimal;
number valueInteger;
Element _valueInteger;
String valueDate;
Element _valueDate;
String valueDateTime;
Element _valueDateTime;
String valueTime;
Element _valueTime;
String valueString;
Element _valueString;
String valueUri;
Element _valueUri;
Attachment valueAttachment;
Coding valueCoding;
Quantity valueQuantity;
Reference valueReference;

}

@JsonSerializable(explicitToJson: true)
class Contract_Asset {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept scope;
List<CodeableConcept> type;
List<Reference> typeReference;
List<CodeableConcept> subtype;
Coding relationship;
List<Contract_Context> context;
String condition;
Element _condition;
List<CodeableConcept> periodType;
List<Period> period;
List<Period> usePeriod;
String text;
Element _text;
List<String> linkId;
List<Element> _linkId;
List<Contract_Answer> answer;
List<int> securityLabelNumber;
List<Element> _securityLabelNumber;
List<Contract_ValuedItem> valuedItem;

}

@JsonSerializable(explicitToJson: true)
class Contract_Context {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference reference;
List<CodeableConcept> code;
String text;
Element _text;

}

@JsonSerializable(explicitToJson: true)
class Contract_ValuedItem {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept entityCodeableConcept;
Reference entityReference;
Identifier identifier;
DateTime effectiveTime;
Element _effectiveTime;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
double points;
Element _points;
Money net;
String payment;
Element _payment;
DateTime paymentDate;
Element _paymentDate;
Reference responsible;
Reference recipient;
List<String> linkId;
List<Element> _linkId;
List<int> securityLabelNumber;
List<Element> _securityLabelNumber;

}

@JsonSerializable(explicitToJson: true)
class Contract_Action {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool doNotPerform;
Element _doNotPerform;
CodeableConcept type;
List<Contract_Subject> subject;
CodeableConcept intent;
List<String> linkId;
List<Element> _linkId;
CodeableConcept status;
Reference context;
List<String> contextLinkId;
List<Element> _contextLinkId;
String occurrenceDateTime;
Element _occurrenceDateTime;
Period occurrencePeriod;
Timing occurrenceTiming;
List<Reference> requester;
List<String> requesterLinkId;
List<Element> _requesterLinkId;
List<CodeableConcept> performerType;
CodeableConcept performerRole;
Reference performer;
List<String> performerLinkId;
List<Element> _performerLinkId;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<String> reason;
List<Element> _reason;
List<String> reasonLinkId;
List<Element> _reasonLinkId;
List<Annotation> note;
List<int> securityLabelNumber;
List<Element> _securityLabelNumber;

}

@JsonSerializable(explicitToJson: true)
class Contract_Subject {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Reference> reference;
CodeableConcept role;

}

@JsonSerializable(explicitToJson: true)
class Contract_Signer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Coding type;
Reference party;
List<Signature> signature;

}

@JsonSerializable(explicitToJson: true)
class Contract_Friendly {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Attachment contentAttachment;
Reference contentReference;

}

@JsonSerializable(explicitToJson: true)
class Contract_Legal {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Attachment contentAttachment;
Reference contentReference;

}

@JsonSerializable(explicitToJson: true)
class Contract_Rule {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Attachment contentAttachment;
Reference contentReference;

}

part 'coverage.g.dart';

@JsonSerializable(explicitToJson: true)
class Coverage {

Coverage resourceType;
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
String status;
Element _status;
CodeableConcept type;
Reference policyHolder;
Reference subscriber;
String subscriberId;
Element _subscriberId;
Reference beneficiary;
String dependent;
Element _dependent;
CodeableConcept relationship;
Period period;
List<Reference> payor;
List<Coverage_Class> class;
int order;
Element _order;
String network;
Element _network;
List<Coverage_CostToBeneficiary> costToBeneficiary;
bool subrogation;
Element _subrogation;
List<Reference> contract;

}

@JsonSerializable(explicitToJson: true)
class Coverage_Class {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String value;
Element _value;
String name;
Element _name;

}

@JsonSerializable(explicitToJson: true)
class Coverage_CostToBeneficiary {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Quantity valueQuantity;
Money valueMoney;
List<Coverage_Exception> exception;

}

@JsonSerializable(explicitToJson: true)
class Coverage_Exception {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Period period;

}

part 'coverageEligibilityRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest {

CoverageEligibilityRequest resourceType;
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
String status;
Element _status;
CodeableConcept priority;
List<Element> _purpose;
Reference patient;
String servicedDate;
Element _servicedDate;
Period servicedPeriod;
DateTime created;
Element _created;
Reference enterer;
Reference provider;
Reference insurer;
Reference facility;
List<CoverageEligibilityRequest_SupportingInfo> supportingInfo;
List<CoverageEligibilityRequest_Insurance> insurance;
List<CoverageEligibilityRequest_Item> item;

}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_SupportingInfo {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
Reference information;
bool appliesToAll;
Element _appliesToAll;

}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Insurance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool focal;
Element _focal;
Reference coverage;
String businessArrangement;
Element _businessArrangement;

}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<int> supportingInfoSequence;
List<Element> _supportingInfoSequence;
CodeableConcept category;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
Reference provider;
Quantity quantity;
Money unitPrice;
Reference facility;
List<CoverageEligibilityRequest_Diagnosis> diagnosis;
List<Reference> detail;

}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Diagnosis {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept diagnosisCodeableConcept;
Reference diagnosisReference;

}

part 'coverageEligibilityResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse {

CoverageEligibilityResponse resourceType;
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
String status;
Element _status;
List<Element> _purpose;
Reference patient;
String servicedDate;
Element _servicedDate;
Period servicedPeriod;
DateTime created;
Element _created;
Reference requestor;
Reference request;
String outcome; // <code> enum: queued/complete/error/partial;
Element _outcome;
String disposition;
Element _disposition;
Reference insurer;
List<CoverageEligibilityResponse_Insurance> insurance;
String preAuthRef;
Element _preAuthRef;
CodeableConcept form;
List<CoverageEligibilityResponse_Error> error;

}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Insurance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference coverage;
bool inforce;
Element _inforce;
Period benefitPeriod;
List<CoverageEligibilityResponse_Item> item;

}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
Reference provider;
bool excluded;
Element _excluded;
String name;
Element _name;
String description;
Element _description;
CodeableConcept network;
CodeableConcept unit;
CodeableConcept term;
List<CoverageEligibilityResponse_Benefit> benefit;
bool authorizationRequired;
Element _authorizationRequired;
List<CodeableConcept> authorizationSupporting;
String authorizationUrl;
Element _authorizationUrl;

}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Benefit {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
number allowedUnsignedInt;
Element _allowedUnsignedInt;
String allowedString;
Element _allowedString;
Money allowedMoney;
number usedUnsignedInt;
Element _usedUnsignedInt;
String usedString;
Element _usedString;
Money usedMoney;

}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Error {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;

}

part 'detectedIssue.g.dart';

@JsonSerializable(explicitToJson: true)
class DetectedIssue {

DetectedIssue resourceType;
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
String status;
Element _status;
CodeableConcept code;
String severity; // <code> enum: high/moderate/low;
Element _severity;
Reference patient;
String identifiedDateTime;
Element _identifiedDateTime;
Period identifiedPeriod;
Reference author;
List<Reference> implicated;
List<DetectedIssue_Evidence> evidence;
String detail;
Element _detail;
String reference;
Element _reference;
List<DetectedIssue_Mitigation> mitigation;

}

@JsonSerializable(explicitToJson: true)
class DetectedIssue_Evidence {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> code;
List<Reference> detail;

}

@JsonSerializable(explicitToJson: true)
class DetectedIssue_Mitigation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept action;
DateTime date;
Element _date;
Reference author;

}

part 'device.g.dart';

@JsonSerializable(explicitToJson: true)
class Device {

Device resourceType;
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
Reference definition;
List<Device_UdiCarrier> udiCarrier;
String status; // <code> enum: active/inactive/entered-in-error/unknown;
Element _status;
List<CodeableConcept> statusReason;
String distinctIdentifier;
Element _distinctIdentifier;
String manufacturer;
Element _manufacturer;
DateTime manufactureDate;
Element _manufactureDate;
DateTime expirationDate;
Element _expirationDate;
String lotNumber;
Element _lotNumber;
String serialNumber;
Element _serialNumber;
List<Device_DeviceName> deviceName;
String modelNumber;
Element _modelNumber;
String partNumber;
Element _partNumber;
CodeableConcept type;
List<Device_Specialization> specialization;
List<Device_Version> version;
List<Device_Property> property;
Reference patient;
Reference owner;
List<ContactPoint> contact;
Reference location;
String url;
Element _url;
List<Annotation> note;
List<CodeableConcept> safety;
Reference parent;

}

@JsonSerializable(explicitToJson: true)
class Device_UdiCarrier {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String deviceIdentifier;
Element _deviceIdentifier;
String issuer;
Element _issuer;
String jurisdiction;
Element _jurisdiction;
String carrierAIDC;
Element _carrierAIDC;
String carrierHRF;
Element _carrierHRF;
String entryType; // <code> enum: barcode/rfid/manual/card/self-reported/unknown;
Element _entryType;

}

@JsonSerializable(explicitToJson: true)
class Device_DeviceName {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String type; // <code> enum: udi-label-name/user-friendly-name/patient-reported-name/manufacturer-name/model-name/other;
Element _type;

}

@JsonSerializable(explicitToJson: true)
class Device_Specialization {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept systemType;
String version;
Element _version;

}

@JsonSerializable(explicitToJson: true)
class Device_Version {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Identifier component;
String value;
Element _value;

}

@JsonSerializable(explicitToJson: true)
class Device_Property {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<Quantity> valueQuantity;
List<CodeableConcept> valueCode;

}

part 'deviceDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceDefinition {

DeviceDefinition resourceType;
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
List<DeviceDefinition_UdiDeviceIdentifier> udiDeviceIdentifier;
String manufacturerString;
Element _manufacturerString;
Reference manufacturerReference;
List<DeviceDefinition_DeviceName> deviceName;
String modelNumber;
Element _modelNumber;
CodeableConcept type;
List<DeviceDefinition_Specialization> specialization;
List<String> version;
List<Element> _version;
List<CodeableConcept> safety;
List<ProductShelfLife> shelfLifeStorage;
ProdCharacteristic physicalCharacteristics;
List<CodeableConcept> languageCode;
List<DeviceDefinition_Capability> capability;
List<DeviceDefinition_Property> property;
Reference owner;
List<ContactPoint> contact;
String url;
Element _url;
String onlineInformation;
Element _onlineInformation;
List<Annotation> note;
Quantity quantity;
Reference parentDevice;
List<DeviceDefinition_Material> material;

}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_UdiDeviceIdentifier {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String deviceIdentifier;
Element _deviceIdentifier;
String issuer;
Element _issuer;
String jurisdiction;
Element _jurisdiction;

}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_DeviceName {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String type; // <code> enum: udi-label-name/user-friendly-name/patient-reported-name/manufacturer-name/model-name/other;
Element _type;

}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Specialization {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String systemType;
Element _systemType;
String version;
Element _version;

}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Capability {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<CodeableConcept> description;

}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Property {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<Quantity> valueQuantity;
List<CodeableConcept> valueCode;

}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Material {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept substance;
bool alternate;
Element _alternate;
bool allergenicIndicator;
Element _allergenicIndicator;

}

part 'deviceMetric.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceMetric {

DeviceMetric resourceType;
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
CodeableConcept type;
CodeableConcept unit;
Reference source;
Reference parent;
String operationalStatus; // <code> enum: on/off/standby/entered-in-error;
Element _operationalStatus;
String color; // <code> enum: black/red/green/yellow/blue/magenta/cyan/white;
Element _color;
String category; // <code> enum: measurement/setting/calculation/unspecified;
Element _category;
Timing measurementPeriod;
List<DeviceMetric_Calibration> calibration;

}

@JsonSerializable(explicitToJson: true)
class DeviceMetric_Calibration {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: unspecified/offset/gain/two-point;
Element _type;
String state; // <code> enum: not-calibrated/calibration-required/calibrated/unspecified;
Element _state;
DateTime time;
Element _time;

}

part 'deviceRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceRequest {

DeviceRequest resourceType;
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
List<String> instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
List<Reference> basedOn;
List<Reference> priorRequest;
Identifier groupIdentifier;
String status;
Element _status;
String intent;
Element _intent;
String priority;
Element _priority;
Reference codeReference;
CodeableConcept codeCodeableConcept;
List<DeviceRequest_Parameter> parameter;
Reference subject;
Reference encounter;
String occurrenceDateTime;
Element _occurrenceDateTime;
Period occurrencePeriod;
Timing occurrenceTiming;
DateTime authoredOn;
Element _authoredOn;
Reference requester;
CodeableConcept performerType;
Reference performer;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Reference> insurance;
List<Reference> supportingInfo;
List<Annotation> note;
List<Reference> relevantHistory;

}

@JsonSerializable(explicitToJson: true)
class DeviceRequest_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept valueCodeableConcept;
Quantity valueQuantity;
Range valueRange;
bool valueBoolean;
Element _valueBoolean;

}

part 'deviceUseStatement.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceUseStatement {

DeviceUseStatement resourceType;
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
List<Reference> basedOn;
String status; // <code> enum: active/completed/entered-in-error/intended/stopped/on-hold;
Element _status;
Reference subject;
List<Reference> derivedFrom;
Timing timingTiming;
Period timingPeriod;
String timingDateTime;
Element _timingDateTime;
DateTime recordedOn;
Element _recordedOn;
Reference source;
Reference device;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
CodeableConcept bodySite;
List<Annotation> note;

}

part 'diagnosticReport.g.dart';

@JsonSerializable(explicitToJson: true)
class DiagnosticReport {

DiagnosticReport resourceType;
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
List<Reference> basedOn;
String status; // <code> enum: registered/partial/preliminary/final/amended/corrected/appended/cancelled/entered-in-error/unknown;
Element _status;
List<CodeableConcept> category;
CodeableConcept code;
Reference subject;
Reference encounter;
String effectiveDateTime;
Element _effectiveDateTime;
Period effectivePeriod;
DateTime issued;
Element _issued;
List<Reference> performer;
List<Reference> resultsInterpreter;
List<Reference> specimen;
List<Reference> result;
List<Reference> imagingStudy;
List<DiagnosticReport_Media> media;
String conclusion;
Element _conclusion;
List<CodeableConcept> conclusionCode;
List<Attachment> presentedForm;

}

@JsonSerializable(explicitToJson: true)
class DiagnosticReport_Media {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String comment;
Element _comment;
Reference link;

}

part 'documentManifest.g.dart';

@JsonSerializable(explicitToJson: true)
class DocumentManifest {

DocumentManifest resourceType;
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
Identifier masterIdentifier;
List<Identifier> identifier;
String status; // <code> enum: current/superseded/entered-in-error;
Element _status;
CodeableConcept type;
Reference subject;
DateTime created;
Element _created;
List<Reference> author;
List<Reference> recipient;
String source;
Element _source;
String description;
Element _description;
List<Reference> content;
List<DocumentManifest_Related> related;

}

@JsonSerializable(explicitToJson: true)
class DocumentManifest_Related {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier identifier;
Reference ref;

}

part 'documentReference.g.dart';

@JsonSerializable(explicitToJson: true)
class DocumentReference {

DocumentReference resourceType;
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
Identifier masterIdentifier;
List<Identifier> identifier;
String status; // <code> enum: current/superseded/entered-in-error;
Element _status;
String docStatus;
Element _docStatus;
CodeableConcept type;
List<CodeableConcept> category;
Reference subject;
DateTime date;
Element _date;
List<Reference> author;
Reference authenticator;
Reference custodian;
List<DocumentReference_RelatesTo> relatesTo;
String description;
Element _description;
List<CodeableConcept> securityLabel;
List<DocumentReference_Content> content;
DocumentReference_Context context;

}

@JsonSerializable(explicitToJson: true)
class DocumentReference_RelatesTo {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code; // <code> enum: replaces/transforms/signs/appends;
Element _code;
Reference target;

}

@JsonSerializable(explicitToJson: true)
class DocumentReference_Content {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Attachment attachment;
Coding format;

}

@JsonSerializable(explicitToJson: true)
class DocumentReference_Context {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Reference> encounter;
List<CodeableConcept> event;
Period period;
CodeableConcept facilityType;
CodeableConcept practiceSetting;
Reference sourcePatientInfo;
List<Reference> related;

}

part 'effectEvidenceSynthesis.g.dart';

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis {

EffectEvidenceSynthesis resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<Annotation> note;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
List<CodeableConcept> topic;
List<ContactDetail> author;
List<ContactDetail> editor;
List<ContactDetail> reviewer;
List<ContactDetail> endorser;
List<RelatedArtifact> relatedArtifact;
CodeableConcept synthesisType;
CodeableConcept studyType;
Reference population;
Reference exposure;
Reference exposureAlternative;
Reference outcome;
EffectEvidenceSynthesis_SampleSize sampleSize;
List<EffectEvidenceSynthesis_ResultsByExposure> resultsByExposure;
List<EffectEvidenceSynthesis_EffectEstimate> effectEstimate;
List<EffectEvidenceSynthesis_Certainty> certainty;

}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_SampleSize {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
int numberOfStudies;
Element _numberOfStudies;
int numberOfParticipants;
Element _numberOfParticipants;

}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_ResultsByExposure {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
String exposureState; // <code> enum: exposure/exposure-alternative;
Element _exposureState;
CodeableConcept variantState;
Reference riskEvidenceSynthesis;

}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_EffectEstimate {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
CodeableConcept type;
CodeableConcept variantState;
double value;
Element _value;
CodeableConcept unitOfMeasure;
List<EffectEvidenceSynthesis_PrecisionEstimate> precisionEstimate;

}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_PrecisionEstimate {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
double level;
Element _level;
double from;
Element _from;
double to;
Element _to;

}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_Certainty {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> rating;
List<Annotation> note;
List<EffectEvidenceSynthesis_CertaintySubcomponent> certaintySubcomponent;

}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_CertaintySubcomponent {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<CodeableConcept> rating;
List<Annotation> note;

}

part 'encounter.g.dart';

@JsonSerializable(explicitToJson: true)
class Encounter {

Encounter resourceType;
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
String status; // <code> enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown;
Element _status;
List<Encounter_StatusHistory> statusHistory;
Coding class;
List<Encounter_ClassHistory> classHistory;
List<CodeableConcept> type;
CodeableConcept serviceType;
CodeableConcept priority;
Reference subject;
List<Reference> episodeOfCare;
List<Reference> basedOn;
List<Encounter_Participant> participant;
List<Reference> appointment;
Period period;
Duration length;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Encounter_Diagnosis> diagnosis;
List<Reference> account;
Encounter_Hospitalization hospitalization;
List<Encounter_Location> location;
Reference serviceProvider;
Reference partOf;

}

@JsonSerializable(explicitToJson: true)
class Encounter_StatusHistory {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String status; // <code> enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown;
Element _status;
Period period;

}

@JsonSerializable(explicitToJson: true)
class Encounter_ClassHistory {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Coding class;
Period period;

}

@JsonSerializable(explicitToJson: true)
class Encounter_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> type;
Period period;
Reference individual;

}

@JsonSerializable(explicitToJson: true)
class Encounter_Diagnosis {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference condition;
CodeableConcept use;
int rank;
Element _rank;

}

@JsonSerializable(explicitToJson: true)
class Encounter_Hospitalization {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier preAdmissionIdentifier;
Reference origin;
CodeableConcept admitSource;
CodeableConcept reAdmission;
List<CodeableConcept> dietPreference;
List<CodeableConcept> specialCourtesy;
List<CodeableConcept> specialArrangement;
Reference destination;
CodeableConcept dischargeDisposition;

}

@JsonSerializable(explicitToJson: true)
class Encounter_Location {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference location;
String status; // <code> enum: planned/active/reserved/completed;
Element _status;
CodeableConcept physicalType;
Period period;

}

part 'endpoint.g.dart';

@JsonSerializable(explicitToJson: true)
class Endpoint {

Endpoint resourceType;
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
String status; // <code> enum: active/suspended/error/off/entered-in-error/test;
Element _status;
Coding connectionType;
String name;
Element _name;
Reference managingOrganization;
List<ContactPoint> contact;
Period period;
List<CodeableConcept> payloadType;
List<String> payloadMimeType;
List<Element> _payloadMimeType;
String address;
Element _address;
List<String> header;
List<Element> _header;

}

part 'enrollmentRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class EnrollmentRequest {

EnrollmentRequest resourceType;
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
String status;
Element _status;
DateTime created;
Element _created;
Reference insurer;
Reference provider;
Reference candidate;
Reference coverage;

}

part 'enrollmentResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class EnrollmentResponse {

EnrollmentResponse resourceType;
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
String status;
Element _status;
Reference request;
String outcome; // <code> enum: queued/complete/error/partial;
Element _outcome;
String disposition;
Element _disposition;
DateTime created;
Element _created;
Reference organization;
Reference requestProvider;

}

part 'episodeOfCare.g.dart';

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare {

EpisodeOfCare resourceType;
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
String status; // <code> enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error;
Element _status;
List<EpisodeOfCare_StatusHistory> statusHistory;
List<CodeableConcept> type;
List<EpisodeOfCare_Diagnosis> diagnosis;
Reference patient;
Reference managingOrganization;
Period period;
List<Reference> referralRequest;
Reference careManager;
List<Reference> team;
List<Reference> account;

}

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare_StatusHistory {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String status; // <code> enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error;
Element _status;
Period period;

}

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare_Diagnosis {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference condition;
CodeableConcept role;
int rank;
Element _rank;

}

part 'eventDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class EventDefinition {

EventDefinition resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String subtitle;
Element _subtitle;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
CodeableConcept subjectCodeableConcept;
Reference subjectReference;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String usage;
Element _usage;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
List<CodeableConcept> topic;
List<ContactDetail> author;
List<ContactDetail> editor;
List<ContactDetail> reviewer;
List<ContactDetail> endorser;
List<RelatedArtifact> relatedArtifact;
List<TriggerDefinition> trigger;

}

part 'evidence.g.dart';

@JsonSerializable(explicitToJson: true)
class Evidence {

Evidence resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String shortTitle;
Element _shortTitle;
String subtitle;
Element _subtitle;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<Annotation> note;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
List<CodeableConcept> topic;
List<ContactDetail> author;
List<ContactDetail> editor;
List<ContactDetail> reviewer;
List<ContactDetail> endorser;
List<RelatedArtifact> relatedArtifact;
Reference exposureBackground;
List<Reference> exposureVariant;
List<Reference> outcome;

}

part 'evidenceVariable.g.dart';

@JsonSerializable(explicitToJson: true)
class EvidenceVariable {

EvidenceVariable resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String shortTitle;
Element _shortTitle;
String subtitle;
Element _subtitle;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<Annotation> note;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
List<CodeableConcept> topic;
List<ContactDetail> author;
List<ContactDetail> editor;
List<ContactDetail> reviewer;
List<ContactDetail> endorser;
List<RelatedArtifact> relatedArtifact;
String type; // <code> enum: dichotomous/continuous/descriptive;
Element _type;
List<EvidenceVariable_Characteristic> characteristic;

}

@JsonSerializable(explicitToJson: true)
class EvidenceVariable_Characteristic {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
Reference definitionReference;
String definitionCanonical;
Element _definitionCanonical;
CodeableConcept definitionCodeableConcept;
Expression definitionExpression;
DataRequirement definitionDataRequirement;
TriggerDefinition definitionTriggerDefinition;
List<UsageContext> usageContext;
bool exclude;
Element _exclude;
String participantEffectiveDateTime;
Element _participantEffectiveDateTime;
Period participantEffectivePeriod;
Duration participantEffectiveDuration;
Timing participantEffectiveTiming;
Duration timeFromStart;
String groupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;
Element _groupMeasure;

}

part 'exampleScenario.g.dart';

@JsonSerializable(explicitToJson: true)
class ExampleScenario {

ExampleScenario resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String copyright;
Element _copyright;
String purpose;
Element _purpose;
List<ExampleScenario_Actor> actor;
List<ExampleScenario_Instance> instance;
List<ExampleScenario_Process> process;
List<String> workflow;

}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Actor {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String actorId;
Element _actorId;
String type; // <code> enum: person/entity;
Element _type;
String name;
Element _name;
String description;
Element _description;

}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Instance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String resourceId;
Element _resourceId;
String resourceType;
Element _resourceType;
String name;
Element _name;
String description;
Element _description;
List<ExampleScenario_Version> version;
List<ExampleScenario_ContainedInstance> containedInstance;

}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Version {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String versionId;
Element _versionId;
String description;
Element _description;

}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_ContainedInstance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String resourceId;
Element _resourceId;
String versionId;
Element _versionId;

}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Process {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String title;
Element _title;
String description;
Element _description;
String preConditions;
Element _preConditions;
String postConditions;
Element _postConditions;
List<ExampleScenario_Step> step;

}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Step {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<ExampleScenario_Process> process;
bool pause;
Element _pause;
ExampleScenario_Operation operation;
List<ExampleScenario_Alternative> alternative;

}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Operation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String number;
Element _number;
String type;
Element _type;
String name;
Element _name;
String initiator;
Element _initiator;
String receiver;
Element _receiver;
String description;
Element _description;
bool initiatorActive;
Element _initiatorActive;
bool receiverActive;
Element _receiverActive;
ExampleScenario_ContainedInstance request;
ExampleScenario_ContainedInstance response;

}

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Alternative {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String title;
Element _title;
String description;
Element _description;
List<ExampleScenario_Step> step;

}

part 'explanationOfBenefit.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit {

ExplanationOfBenefit resourceType;
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
String status; // <code> enum: active/cancelled/draft/entered-in-error;
Element _status;
CodeableConcept type;
CodeableConcept subType;
String use;
Element _use;
Reference patient;
Period billablePeriod;
DateTime created;
Element _created;
Reference enterer;
Reference insurer;
Reference provider;
CodeableConcept priority;
CodeableConcept fundsReserveRequested;
CodeableConcept fundsReserve;
List<ExplanationOfBenefit_Related> related;
Reference prescription;
Reference originalPrescription;
ExplanationOfBenefit_Payee payee;
Reference referral;
Reference facility;
Reference claim;
Reference claimResponse;
String outcome;
Element _outcome;
String disposition;
Element _disposition;
List<String> preAuthRef;
List<Element> _preAuthRef;
List<Period> preAuthRefPeriod;
List<ExplanationOfBenefit_CareTeam> careTeam;
List<ExplanationOfBenefit_SupportingInfo> supportingInfo;
List<ExplanationOfBenefit_Diagnosis> diagnosis;
List<ExplanationOfBenefit_Procedure> procedure;
int precedence;
Element _precedence;
List<ExplanationOfBenefit_Insurance> insurance;
ExplanationOfBenefit_Accident accident;
List<ExplanationOfBenefit_Item> item;
List<ExplanationOfBenefit_AddItem> addItem;
List<ExplanationOfBenefit_Adjudication> adjudication;
List<ExplanationOfBenefit_Total> total;
ExplanationOfBenefit_Payment payment;
CodeableConcept formCode;
Attachment form;
List<ExplanationOfBenefit_ProcessNote> processNote;
Period benefitPeriod;
List<ExplanationOfBenefit_BenefitBalance> benefitBalance;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Related {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference claim;
CodeableConcept relationship;
Identifier reference;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Payee {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Reference party;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_CareTeam {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
Reference provider;
bool responsible;
Element _responsible;
CodeableConcept role;
CodeableConcept qualification;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_SupportingInfo {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
CodeableConcept category;
CodeableConcept code;
String timingDate;
Element _timingDate;
Period timingPeriod;
bool valueBoolean;
Element _valueBoolean;
String valueString;
Element _valueString;
Quantity valueQuantity;
Attachment valueAttachment;
Reference valueReference;
Coding reason;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Diagnosis {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
CodeableConcept diagnosisCodeableConcept;
Reference diagnosisReference;
List<CodeableConcept> type;
CodeableConcept onAdmission;
CodeableConcept packageCode;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Procedure {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
List<CodeableConcept> type;
DateTime date;
Element _date;
CodeableConcept procedureCodeableConcept;
Reference procedureReference;
List<Reference> udi;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Insurance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool focal;
Element _focal;
Reference coverage;
List<String> preAuthRef;
List<Element> _preAuthRef;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Accident {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String date;
Element _date;
CodeableConcept type;
Address locationAddress;
Reference locationReference;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
List<int> careTeamSequence;
List<Element> _careTeamSequence;
List<int> diagnosisSequence;
List<Element> _diagnosisSequence;
List<int> procedureSequence;
List<Element> _procedureSequence;
List<int> informationSequence;
List<Element> _informationSequence;
CodeableConcept revenue;
CodeableConcept category;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
List<CodeableConcept> programCode;
String servicedDate;
Element _servicedDate;
Period servicedPeriod;
CodeableConcept locationCodeableConcept;
Address locationAddress;
Reference locationReference;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
List<Reference> udi;
CodeableConcept bodySite;
List<CodeableConcept> subSite;
List<Reference> encounter;
List<int> noteNumber;
List<Element> _noteNumber;
List<ExplanationOfBenefit_Adjudication> adjudication;
List<ExplanationOfBenefit_Detail> detail;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Adjudication {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
CodeableConcept reason;
Money amount;
double value;
Element _value;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Detail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
CodeableConcept revenue;
CodeableConcept category;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
List<CodeableConcept> programCode;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
List<Reference> udi;
List<int> noteNumber;
List<Element> _noteNumber;
List<ExplanationOfBenefit_Adjudication> adjudication;
List<ExplanationOfBenefit_SubDetail> subDetail;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_SubDetail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
CodeableConcept revenue;
CodeableConcept category;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
List<CodeableConcept> programCode;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
List<Reference> udi;
List<int> noteNumber;
List<Element> _noteNumber;
List<ExplanationOfBenefit_Adjudication> adjudication;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_AddItem {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<int> itemSequence;
List<Element> _itemSequence;
List<int> detailSequence;
List<Element> _detailSequence;
List<int> subDetailSequence;
List<Element> _subDetailSequence;
List<Reference> provider;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
List<CodeableConcept> programCode;
String servicedDate;
Element _servicedDate;
Period servicedPeriod;
CodeableConcept locationCodeableConcept;
Address locationAddress;
Reference locationReference;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
CodeableConcept bodySite;
List<CodeableConcept> subSite;
List<int> noteNumber;
List<Element> _noteNumber;
List<ExplanationOfBenefit_Adjudication> adjudication;
List<ExplanationOfBenefit_Detail1> detail;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Detail1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
List<int> noteNumber;
List<Element> _noteNumber;
List<ExplanationOfBenefit_Adjudication> adjudication;
List<ExplanationOfBenefit_SubDetail1> subDetail;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_SubDetail1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
List<int> noteNumber;
List<Element> _noteNumber;
List<ExplanationOfBenefit_Adjudication> adjudication;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Total {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
Money amount;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Payment {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Money adjustment;
CodeableConcept adjustmentReason;
String date;
Element _date;
Money amount;
Identifier identifier;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_ProcessNote {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int number;
Element _number;
String type; // <code> enum: display/print/printoper;
Element _type;
String text;
Element _text;
CodeableConcept language;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_BenefitBalance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
bool excluded;
Element _excluded;
String name;
Element _name;
String description;
Element _description;
CodeableConcept network;
CodeableConcept unit;
CodeableConcept term;
List<ExplanationOfBenefit_Financial> financial;

}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Financial {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
number allowedUnsignedInt;
Element _allowedUnsignedInt;
String allowedString;
Element _allowedString;
Money allowedMoney;
number usedUnsignedInt;
Element _usedUnsignedInt;
Money usedMoney;

}

part 'familyMemberHistory.g.dart';

@JsonSerializable(explicitToJson: true)
class FamilyMemberHistory {

FamilyMemberHistory resourceType;
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
List<String> instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
String status; // <code> enum: partial/completed/entered-in-error/health-unknown;
Element _status;
CodeableConcept dataAbsentReason;
Reference patient;
DateTime date;
Element _date;
String name;
Element _name;
CodeableConcept relationship;
CodeableConcept sex;
Period bornPeriod;
String bornDate;
Element _bornDate;
String bornString;
Element _bornString;
Age ageAge;
Range ageRange;
String ageString;
Element _ageString;
bool estimatedAge;
Element _estimatedAge;
bool deceasedBoolean;
Element _deceasedBoolean;
Age deceasedAge;
Range deceasedRange;
String deceasedDate;
Element _deceasedDate;
String deceasedString;
Element _deceasedString;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Annotation> note;
List<FamilyMemberHistory_Condition> condition;

}

@JsonSerializable(explicitToJson: true)
class FamilyMemberHistory_Condition {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept outcome;
bool contributedToDeath;
Element _contributedToDeath;
Age onsetAge;
Range onsetRange;
Period onsetPeriod;
String onsetString;
Element _onsetString;
List<Annotation> note;

}

part 'flag.g.dart';

@JsonSerializable(explicitToJson: true)
class Flag {

Flag resourceType;
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
String status; // <code> enum: active/inactive/entered-in-error;
Element _status;
List<CodeableConcept> category;
CodeableConcept code;
Reference subject;
Period period;
Reference encounter;
Reference author;

}

part 'goal.g.dart';

@JsonSerializable(explicitToJson: true)
class Goal {

Goal resourceType;
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
String lifecycleStatus; // <code> enum: proposed/planned/accepted/active/on-hold/completed/cancelled/entered-in-error/rejected;
Element _lifecycleStatus;
CodeableConcept achievementStatus;
List<CodeableConcept> category;
CodeableConcept priority;
CodeableConcept description;
Reference subject;
String startDate;
Element _startDate;
CodeableConcept startCodeableConcept;
List<Goal_Target> target;
String statusDate;
Element _statusDate;
String statusReason;
Element _statusReason;
Reference expressedBy;
List<Reference> addresses;
List<Annotation> note;
List<CodeableConcept> outcomeCode;
List<Reference> outcomeReference;

}

@JsonSerializable(explicitToJson: true)
class Goal_Target {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept measure;
Quantity detailQuantity;
Range detailRange;
CodeableConcept detailCodeableConcept;
String detailString;
Element _detailString;
bool detailBoolean;
Element _detailBoolean;
number detailInteger;
Element _detailInteger;
Ratio detailRatio;
String dueDate;
Element _dueDate;
Duration dueDuration;

}

part 'graphDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class GraphDefinition {

GraphDefinition resourceType;
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
String url;
Element _url;
String version;
Element _version;
String name;
Element _name;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String start;
Element _start;
String profile;
List<GraphDefinition_Link> link;

}

@JsonSerializable(explicitToJson: true)
class GraphDefinition_Link {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String path;
Element _path;
String sliceName;
Element _sliceName;
int min;
Element _min;
String max;
Element _max;
String description;
Element _description;
List<GraphDefinition_Target> target;

}

@JsonSerializable(explicitToJson: true)
class GraphDefinition_Target {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type;
Element _type;
String params;
Element _params;
String profile;
List<GraphDefinition_Compartment> compartment;
List<GraphDefinition_Link> link;

}

@JsonSerializable(explicitToJson: true)
class GraphDefinition_Compartment {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String use; // <code> enum: condition/requirement;
Element _use;
String code;
Element _code;
String rule; // <code> enum: identical/matching/different/custom;
Element _rule;
String expression;
Element _expression;
String description;
Element _description;

}

part 'group.g.dart';

@JsonSerializable(explicitToJson: true)
class Group {

Group resourceType;
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
bool active;
Element _active;
String type; // <code> enum: person/animal/practitioner/device/medication/substance;
Element _type;
bool actual;
Element _actual;
CodeableConcept code;
String name;
Element _name;
int quantity;
Element _quantity;
Reference managingEntity;
List<Group_Characteristic> characteristic;
List<Group_Member> member;

}

@JsonSerializable(explicitToJson: true)
class Group_Characteristic {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept valueCodeableConcept;
bool valueBoolean;
Element _valueBoolean;
Quantity valueQuantity;
Range valueRange;
Reference valueReference;
bool exclude;
Element _exclude;
Period period;

}

@JsonSerializable(explicitToJson: true)
class Group_Member {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference entity;
Period period;
bool inactive;
Element _inactive;

}

part 'guidanceResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class GuidanceResponse {

GuidanceResponse resourceType;
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
Identifier requestIdentifier;
List<Identifier> identifier;
String moduleUri;
Element _moduleUri;
String moduleCanonical;
Element _moduleCanonical;
CodeableConcept moduleCodeableConcept;
String status; // <code> enum: success/data-requested/data-required/in-progress/failure/entered-in-error;
Element _status;
Reference subject;
Reference encounter;
DateTime occurrenceDateTime;
Element _occurrenceDateTime;
Reference performer;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Annotation> note;
List<Reference> evaluationMessage;
Reference outputParameters;
Reference result;
List<DataRequirement> dataRequirement;

}

part 'healthcareService.g.dart';

@JsonSerializable(explicitToJson: true)
class HealthcareService {

HealthcareService resourceType;
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
bool active;
Element _active;
Reference providedBy;
List<CodeableConcept> category;
List<CodeableConcept> type;
List<CodeableConcept> specialty;
List<Reference> location;
String name;
Element _name;
String comment;
Element _comment;
String extraDetails;
Element _extraDetails;
Attachment photo;
List<ContactPoint> telecom;
List<Reference> coverageArea;
List<CodeableConcept> serviceProvisionCode;
List<HealthcareService_Eligibility> eligibility;
List<CodeableConcept> program;
List<CodeableConcept> characteristic;
List<CodeableConcept> communication;
List<CodeableConcept> referralMethod;
bool appointmentRequired;
Element _appointmentRequired;
List<HealthcareService_AvailableTime> availableTime;
List<HealthcareService_NotAvailable> notAvailable;
String availabilityExceptions;
Element _availabilityExceptions;
List<Reference> endpoint;

}

@JsonSerializable(explicitToJson: true)
class HealthcareService_Eligibility {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
String comment;
Element _comment;

}

@JsonSerializable(explicitToJson: true)
class HealthcareService_AvailableTime {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Element> _daysOfWeek;
bool allDay;
Element _allDay;
String availableStartTime;
Element _availableStartTime;
String availableEndTime;
Element _availableEndTime;

}

@JsonSerializable(explicitToJson: true)
class HealthcareService_NotAvailable {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
Period during;

}

part 'imagingStudy.g.dart';

@JsonSerializable(explicitToJson: true)
class ImagingStudy {

ImagingStudy resourceType;
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
String status; // <code> enum: registered/available/cancelled/entered-in-error/unknown;
Element _status;
List<Coding> modality;
Reference subject;
Reference encounter;
DateTime started;
Element _started;
List<Reference> basedOn;
Reference referrer;
List<Reference> interpreter;
List<Reference> endpoint;
int numberOfSeries;
Element _numberOfSeries;
int numberOfInstances;
Element _numberOfInstances;
Reference procedureReference;
List<CodeableConcept> procedureCode;
Reference location;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Annotation> note;
String description;
Element _description;
List<ImagingStudy_Series> series;

}

@JsonSerializable(explicitToJson: true)
class ImagingStudy_Series {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String uid;
Element _uid;
int number;
Element _number;
Coding modality;
String description;
Element _description;
int numberOfInstances;
Element _numberOfInstances;
List<Reference> endpoint;
Coding bodySite;
Coding laterality;
List<Reference> specimen;
DateTime started;
Element _started;
List<ImagingStudy_Performer> performer;
List<ImagingStudy_Instance> instance;

}

@JsonSerializable(explicitToJson: true)
class ImagingStudy_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;

}

@JsonSerializable(explicitToJson: true)
class ImagingStudy_Instance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String uid;
Element _uid;
Coding sopClass;
int number;
Element _number;
String title;
Element _title;

}

part 'immunization.g.dart';

@JsonSerializable(explicitToJson: true)
class Immunization {

Immunization resourceType;
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
String status;
Element _status;
CodeableConcept statusReason;
CodeableConcept vaccineCode;
Reference patient;
Reference encounter;
String occurrenceDateTime;
Element _occurrenceDateTime;
String occurrenceString;
Element _occurrenceString;
DateTime recorded;
Element _recorded;
bool primarySource;
Element _primarySource;
CodeableConcept reportOrigin;
Reference location;
Reference manufacturer;
String lotNumber;
Element _lotNumber;
String expirationDate;
Element _expirationDate;
CodeableConcept site;
CodeableConcept route;
Quantity doseQuantity;
List<Immunization_Performer> performer;
List<Annotation> note;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
bool isSubpotent;
Element _isSubpotent;
List<CodeableConcept> subpotentReason;
List<Immunization_Education> education;
List<CodeableConcept> programEligibility;
CodeableConcept fundingSource;
List<Immunization_Reaction> reaction;
List<Immunization_ProtocolApplied> protocolApplied;

}

@JsonSerializable(explicitToJson: true)
class Immunization_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;

}

@JsonSerializable(explicitToJson: true)
class Immunization_Education {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String documentType;
Element _documentType;
String reference;
Element _reference;
DateTime publicationDate;
Element _publicationDate;
DateTime presentationDate;
Element _presentationDate;

}

@JsonSerializable(explicitToJson: true)
class Immunization_Reaction {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
DateTime date;
Element _date;
Reference detail;
bool reported;
Element _reported;

}

@JsonSerializable(explicitToJson: true)
class Immunization_ProtocolApplied {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String series;
Element _series;
Reference authority;
List<CodeableConcept> targetDisease;
number doseNumberPositiveInt;
Element _doseNumberPositiveInt;
String doseNumberString;
Element _doseNumberString;
number seriesDosesPositiveInt;
Element _seriesDosesPositiveInt;
String seriesDosesString;
Element _seriesDosesString;

}

part 'immunizationEvaluation.g.dart';

@JsonSerializable(explicitToJson: true)
class ImmunizationEvaluation {

ImmunizationEvaluation resourceType;
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
String status;
Element _status;
Reference patient;
DateTime date;
Element _date;
Reference authority;
CodeableConcept targetDisease;
Reference immunizationEvent;
CodeableConcept doseStatus;
List<CodeableConcept> doseStatusReason;
String description;
Element _description;
String series;
Element _series;
number doseNumberPositiveInt;
Element _doseNumberPositiveInt;
String doseNumberString;
Element _doseNumberString;
number seriesDosesPositiveInt;
Element _seriesDosesPositiveInt;
String seriesDosesString;
Element _seriesDosesString;

}

part 'immunizationRecommendation.g.dart';

@JsonSerializable(explicitToJson: true)
class ImmunizationRecommendation {

ImmunizationRecommendation resourceType;
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
Reference patient;
DateTime date;
Element _date;
Reference authority;
List<ImmunizationRecommendation_Recommendation> recommendation;

}

@JsonSerializable(explicitToJson: true)
class ImmunizationRecommendation_Recommendation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> vaccineCode;
CodeableConcept targetDisease;
List<CodeableConcept> contraindicatedVaccineCode;
CodeableConcept forecastStatus;
List<CodeableConcept> forecastReason;
List<ImmunizationRecommendation_DateCriterion> dateCriterion;
String description;
Element _description;
String series;
Element _series;
number doseNumberPositiveInt;
Element _doseNumberPositiveInt;
String doseNumberString;
Element _doseNumberString;
number seriesDosesPositiveInt;
Element _seriesDosesPositiveInt;
String seriesDosesString;
Element _seriesDosesString;
List<Reference> supportingImmunization;
List<Reference> supportingPatientInformation;

}

@JsonSerializable(explicitToJson: true)
class ImmunizationRecommendation_DateCriterion {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
DateTime value;
Element _value;

}

part 'implementationGuide.g.dart';

@JsonSerializable(explicitToJson: true)
class ImplementationGuide {

ImplementationGuide resourceType;
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
String url;
Element _url;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String copyright;
Element _copyright;
String packageId;
Element _packageId;
String license; // <code> enum: not-open-source/0BSD/AAL/Abstyles/Adobe-2006/Adobe-Glyph/ADSL/AFL-1.1/AFL-1.2/AFL-2.0/AFL-2.1/AFL-3.0/Afmparse/AGPL-1.0-only/AGPL-1.0-or-later/AGPL-3.0-only/AGPL-3.0-or-later/Aladdin/AMDPLPA/AML/AMPAS/ANTLR-PD/Apache-1.0/Apache-1.1/Apache-2.0/APAFML/APL-1.0/APSL-1.0/APSL-1.1/APSL-1.2/APSL-2.0/Artistic-1.0-cl8/Artistic-1.0-Perl/Artistic-1.0/Artistic-2.0/Bahyph/Barr/Beerware/BitTorrent-1.0/BitTorrent-1.1/Borceux/BSD-1-Clause/BSD-2-Clause-FreeBSD/BSD-2-Clause-NetBSD/BSD-2-Clause-Patent/BSD-2-Clause/BSD-3-Clause-Attribution/BSD-3-Clause-Clear/BSD-3-Clause-LBNL/BSD-3-Clause-No-Nuclear-License-2014/BSD-3-Clause-No-Nuclear-License/BSD-3-Clause-No-Nuclear-Warranty/BSD-3-Clause/BSD-4-Clause-UC/BSD-4-Clause/BSD-Protection/BSD-Source-Code/BSL-1.0/bzip2-1.0.5/bzip2-1.0.6/Caldera/CATOSL-1.1/CC-BY-1.0/CC-BY-2.0/CC-BY-2.5/CC-BY-3.0/CC-BY-4.0/CC-BY-NC-1.0/CC-BY-NC-2.0/CC-BY-NC-2.5/CC-BY-NC-3.0/CC-BY-NC-4.0/CC-BY-NC-ND-1.0/CC-BY-NC-ND-2.0/CC-BY-NC-ND-2.5/CC-BY-NC-ND-3.0/CC-BY-NC-ND-4.0/CC-BY-NC-SA-1.0/CC-BY-NC-SA-2.0/CC-BY-NC-SA-2.5/CC-BY-NC-SA-3.0/CC-BY-NC-SA-4.0/CC-BY-ND-1.0/CC-BY-ND-2.0/CC-BY-ND-2.5/CC-BY-ND-3.0/CC-BY-ND-4.0/CC-BY-SA-1.0/CC-BY-SA-2.0/CC-BY-SA-2.5/CC-BY-SA-3.0/CC-BY-SA-4.0/CC0-1.0/CDDL-1.0/CDDL-1.1/CDLA-Permissive-1.0/CDLA-Sharing-1.0/CECILL-1.0/CECILL-1.1/CECILL-2.0/CECILL-2.1/CECILL-B/CECILL-C/ClArtistic/CNRI-Jython/CNRI-Python-GPL-Compatible/CNRI-Python/Condor-1.1/CPAL-1.0/CPL-1.0/CPOL-1.02/Crossword/CrystalStacker/CUA-OPL-1.0/Cube/curl/D-FSL-1.0/diffmark/DOC/Dotseqn/DSDP/dvipdfm/ECL-1.0/ECL-2.0/EFL-1.0/EFL-2.0/eGenix/Entessa/EPL-1.0/EPL-2.0/ErlPL-1.1/EUDatagrid/EUPL-1.0/EUPL-1.1/EUPL-1.2/Eurosym/Fair/Frameworx-1.0/FreeImage/FSFAP/FSFUL/FSFULLR/FTL/GFDL-1.1-only/GFDL-1.1-or-later/GFDL-1.2-only/GFDL-1.2-or-later/GFDL-1.3-only/GFDL-1.3-or-later/Giftware/GL2PS/Glide/Glulxe/gnuplot/GPL-1.0-only/GPL-1.0-or-later/GPL-2.0-only/GPL-2.0-or-later/GPL-3.0-only/GPL-3.0-or-later/gSOAP-1.3b/HaskellReport/HPND/IBM-pibs/ICU/IJG/ImageMagick/iMatix/Imlib2/Info-ZIP/Intel-ACPI/Intel/Interbase-1.0/IPA/IPL-1.0/ISC/JasPer-2.0/JSON/LAL-1.2/LAL-1.3/Latex2e/Leptonica/LGPL-2.0-only/LGPL-2.0-or-later/LGPL-2.1-only/LGPL-2.1-or-later/LGPL-3.0-only/LGPL-3.0-or-later/LGPLLR/Libpng/libtiff/LiLiQ-P-1.1/LiLiQ-R-1.1/LiLiQ-Rplus-1.1/Linux-OpenIB/LPL-1.0/LPL-1.02/LPPL-1.0/LPPL-1.1/LPPL-1.2/LPPL-1.3a/LPPL-1.3c/MakeIndex/MirOS/MIT-0/MIT-advertising/MIT-CMU/MIT-enna/MIT-feh/MIT/MITNFA/Motosoto/mpich2/MPL-1.0/MPL-1.1/MPL-2.0-no-copyleft-exception/MPL-2.0/MS-PL/MS-RL/MTLL/Multics/Mup/NASA-1.3/Naumen/NBPL-1.0/NCSA/Net-SNMP/NetCDF/Newsletr/NGPL/NLOD-1.0/NLPL/Nokia/NOSL/Noweb/NPL-1.0/NPL-1.1/NPOSL-3.0/NRL/NTP/OCCT-PL/OCLC-2.0/ODbL-1.0/OFL-1.0/OFL-1.1/OGTSL/OLDAP-1.1/OLDAP-1.2/OLDAP-1.3/OLDAP-1.4/OLDAP-2.0.1/OLDAP-2.0/OLDAP-2.1/OLDAP-2.2.1/OLDAP-2.2.2/OLDAP-2.2/OLDAP-2.3/OLDAP-2.4/OLDAP-2.5/OLDAP-2.6/OLDAP-2.7/OLDAP-2.8/OML/OpenSSL/OPL-1.0/OSET-PL-2.1/OSL-1.0/OSL-1.1/OSL-2.0/OSL-2.1/OSL-3.0/PDDL-1.0/PHP-3.0/PHP-3.01/Plexus/PostgreSQL/psfrag/psutils/Python-2.0/Qhull/QPL-1.0/Rdisc/RHeCos-1.1/RPL-1.1/RPL-1.5/RPSL-1.0/RSA-MD/RSCPL/Ruby/SAX-PD/Saxpath/SCEA/Sendmail/SGI-B-1.0/SGI-B-1.1/SGI-B-2.0/SimPL-2.0/SISSL-1.2/SISSL/Sleepycat/SMLNJ/SMPPL/SNIA/Spencer-86/Spencer-94/Spencer-99/SPL-1.0/SugarCRM-1.1.3/SWL/TCL/TCP-wrappers/TMate/TORQUE-1.1/TOSL/Unicode-DFS-2015/Unicode-DFS-2016/Unicode-TOU/Unlicense/UPL-1.0/Vim/VOSTROM/VSL-1.0/W3C-19980720/W3C-20150513/W3C/Watcom-1.0/Wsuipa/WTFPL/X11/Xerox/XFree86-1.1/xinetd/Xnet/xpp/XSkat/YPL-1.0/YPL-1.1/Zed/Zend-2.0/Zimbra-1.3/Zimbra-1.4/zlib-acknowledgement/Zlib/ZPL-1.1/ZPL-2.0/ZPL-2.1;
Element _license;
List<Element> _fhirVersion;
List<ImplementationGuide_DependsOn> dependsOn;
List<ImplementationGuide_Global> global;
ImplementationGuide_Definition definition;
ImplementationGuide_Manifest manifest;

}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_DependsOn {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String uri;
String packageId;
Element _packageId;
String version;
Element _version;

}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Global {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type;
Element _type;
String profile;

}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Definition {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<ImplementationGuide_Grouping> grouping;
List<ImplementationGuide_Resource> resource;
ImplementationGuide_Page page;
List<ImplementationGuide_Parameter> parameter;
List<ImplementationGuide_Template> template;

}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Grouping {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String description;
Element _description;

}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Resource {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference reference;
List<Element> _fhirVersion;
String name;
Element _name;
String description;
Element _description;
bool exampleBoolean;
Element _exampleBoolean;
String exampleCanonical;
Element _exampleCanonical;
String groupingId;
Element _groupingId;

}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Page {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String nameUrl;
Element _nameUrl;
Reference nameReference;
String title;
Element _title;
String generation; // <code> enum: html/markdown/xml/generated;
Element _generation;
List<ImplementationGuide_Page> page;

}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code; // <code> enum: apply/path-resource/path-pages/path-tx-cache/expansion-parameter/rule-broken-links/generate-xml/generate-json/generate-turtle/html-template;
Element _code;
String value;
Element _value;

}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Template {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String source;
Element _source;
String scope;
Element _scope;

}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Manifest {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String rendering;
Element _rendering;
List<ImplementationGuide_Resource1> resource;
List<ImplementationGuide_Page1> page;
List<String> image;
List<Element> _image;
List<String> other;
List<Element> _other;

}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Resource1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference reference;
bool exampleBoolean;
Element _exampleBoolean;
String exampleCanonical;
Element _exampleCanonical;
String relativePath;
Element _relativePath;

}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Page1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String title;
Element _title;
List<String> anchor;
List<Element> _anchor;

}

part 'insurancePlan.g.dart';

@JsonSerializable(explicitToJson: true)
class InsurancePlan {

InsurancePlan resourceType;
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
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
List<CodeableConcept> type;
String name;
Element _name;
List<String> alias;
List<Element> _alias;
Period period;
Reference ownedBy;
Reference administeredBy;
List<Reference> coverageArea;
List<InsurancePlan_Contact> contact;
List<Reference> endpoint;
List<Reference> network;
List<InsurancePlan_Coverage> coverage;
List<InsurancePlan_Plan> plan;

}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Contact {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept purpose;
HumanName name;
List<ContactPoint> telecom;
Address address;

}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Coverage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<Reference> network;
List<InsurancePlan_Benefit> benefit;

}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Benefit {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String requirement;
Element _requirement;
List<InsurancePlan_Limit> limit;

}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Limit {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity value;
CodeableConcept code;

}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Plan {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
CodeableConcept type;
List<Reference> coverageArea;
List<Reference> network;
List<InsurancePlan_GeneralCost> generalCost;
List<InsurancePlan_SpecificCost> specificCost;

}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_GeneralCost {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
int groupSize;
Element _groupSize;
Money cost;
String comment;
Element _comment;

}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_SpecificCost {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
List<InsurancePlan_Benefit1> benefit;

}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Benefit1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<InsurancePlan_Cost> cost;

}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Cost {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
CodeableConcept applicability;
List<CodeableConcept> qualifiers;
Quantity value;

}

part 'invoice.g.dart';

@JsonSerializable(explicitToJson: true)
class Invoice {

Invoice resourceType;
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
String status; // <code> enum: draft/issued/balanced/cancelled/entered-in-error;
Element _status;
String cancelledReason;
Element _cancelledReason;
CodeableConcept type;
Reference subject;
Reference recipient;
DateTime date;
Element _date;
List<Invoice_Participant> participant;
Reference issuer;
Reference account;
List<Invoice_LineItem> lineItem;
List<Invoice_PriceComponent> totalPriceComponent;
Money totalNet;
Money totalGross;
String paymentTerms;
Element _paymentTerms;
List<Annotation> note;

}

@JsonSerializable(explicitToJson: true)
class Invoice_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept role;
Reference actor;

}

@JsonSerializable(explicitToJson: true)
class Invoice_LineItem {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
Reference chargeItemReference;
CodeableConcept chargeItemCodeableConcept;
List<Invoice_PriceComponent> priceComponent;

}

@JsonSerializable(explicitToJson: true)
class Invoice_PriceComponent {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: base/surcharge/deduction/discount/tax/informational;
Element _type;
CodeableConcept code;
double factor;
Element _factor;
Money amount;

}

part 'library.g.dart';

@JsonSerializable(explicitToJson: true)
class Library {

Library resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String subtitle;
Element _subtitle;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
CodeableConcept type;
CodeableConcept subjectCodeableConcept;
Reference subjectReference;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String usage;
Element _usage;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
List<CodeableConcept> topic;
List<ContactDetail> author;
List<ContactDetail> editor;
List<ContactDetail> reviewer;
List<ContactDetail> endorser;
List<RelatedArtifact> relatedArtifact;
List<ParameterDefinition> parameter;
List<DataRequirement> dataRequirement;
List<Attachment> content;

}

part 'linkage.g.dart';

@JsonSerializable(explicitToJson: true)
class Linkage {

Linkage resourceType;
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
bool active;
Element _active;
Reference author;
List<Linkage_Item> item;

}

@JsonSerializable(explicitToJson: true)
class Linkage_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: source/alternate/historical;
Element _type;
Reference resource;

}

part 'list.g.dart';

@JsonSerializable(explicitToJson: true)
class List {

List resourceType;
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
String status; // <code> enum: current/retired/entered-in-error;
Element _status;
String mode; // <code> enum: working/snapshot/changes;
Element _mode;
String title;
Element _title;
CodeableConcept code;
Reference subject;
Reference encounter;
DateTime date;
Element _date;
Reference source;
CodeableConcept orderedBy;
List<Annotation> note;
List<List_Entry> entry;
CodeableConcept emptyReason;

}

@JsonSerializable(explicitToJson: true)
class List_Entry {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept flag;
bool deleted;
Element _deleted;
DateTime date;
Element _date;
Reference item;

}

part 'location.g.dart';

@JsonSerializable(explicitToJson: true)
class Location {

Location resourceType;
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
String status; // <code> enum: active/suspended/inactive;
Element _status;
Coding operationalStatus;
String name;
Element _name;
List<String> alias;
List<Element> _alias;
String description;
Element _description;
String mode; // <code> enum: instance/kind;
Element _mode;
List<CodeableConcept> type;
List<ContactPoint> telecom;
Address address;
CodeableConcept physicalType;
Location_Position position;
Reference managingOrganization;
Reference partOf;
List<Location_HoursOfOperation> hoursOfOperation;
String availabilityExceptions;
Element _availabilityExceptions;
List<Reference> endpoint;

}

@JsonSerializable(explicitToJson: true)
class Location_Position {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
double longitude;
Element _longitude;
double latitude;
Element _latitude;
double altitude;
Element _altitude;

}

@JsonSerializable(explicitToJson: true)
class Location_HoursOfOperation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<String> daysOfWeek;
List<Element> _daysOfWeek;
bool allDay;
Element _allDay;
String openingTime;
Element _openingTime;
String closingTime;
Element _closingTime;

}

part 'measure.g.dart';

@JsonSerializable(explicitToJson: true)
class Measure {

Measure resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String subtitle;
Element _subtitle;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
CodeableConcept subjectCodeableConcept;
Reference subjectReference;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String usage;
Element _usage;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
List<CodeableConcept> topic;
List<ContactDetail> author;
List<ContactDetail> editor;
List<ContactDetail> reviewer;
List<ContactDetail> endorser;
List<RelatedArtifact> relatedArtifact;
List<String> library;
String disclaimer;
Element _disclaimer;
CodeableConcept scoring;
CodeableConcept compositeScoring;
List<CodeableConcept> type;
String riskAdjustment;
Element _riskAdjustment;
String rateAggregation;
Element _rateAggregation;
String rationale;
Element _rationale;
String clinicalRecommendationStatement;
Element _clinicalRecommendationStatement;
CodeableConcept improvementNotation;
List<String> definition;
List<Element> _definition;
String guidance;
Element _guidance;
List<Measure_Group> group;
List<Measure_SupplementalData> supplementalData;

}

@JsonSerializable(explicitToJson: true)
class Measure_Group {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
String description;
Element _description;
List<Measure_Population> population;
List<Measure_Stratifier> stratifier;

}

@JsonSerializable(explicitToJson: true)
class Measure_Population {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
String description;
Element _description;
Expression criteria;

}

@JsonSerializable(explicitToJson: true)
class Measure_Stratifier {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
String description;
Element _description;
Expression criteria;
List<Measure_Component> component;

}

@JsonSerializable(explicitToJson: true)
class Measure_Component {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
String description;
Element _description;
Expression criteria;

}

@JsonSerializable(explicitToJson: true)
class Measure_SupplementalData {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
List<CodeableConcept> usage;
String description;
Element _description;
Expression criteria;

}

part 'measureReport.g.dart';

@JsonSerializable(explicitToJson: true)
class MeasureReport {

MeasureReport resourceType;
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
String status; // <code> enum: complete/pending/error;
Element _status;
String type; // <code> enum: individual/subject-list/summary/data-collection;
Element _type;
String measure;
Reference subject;
DateTime date;
Element _date;
Reference reporter;
Period period;
CodeableConcept improvementNotation;
List<MeasureReport_Group> group;
List<Reference> evaluatedResource;

}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Group {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
List<MeasureReport_Population> population;
Quantity measureScore;
List<MeasureReport_Stratifier> stratifier;

}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Population {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
int count;
Element _count;
Reference subjectResults;

}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Stratifier {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> code;
List<MeasureReport_Stratum> stratum;

}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Stratum {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept value;
List<MeasureReport_Component> component;
List<MeasureReport_Population1> population;
Quantity measureScore;

}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Component {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept value;

}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Population1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
int count;
Element _count;
Reference subjectResults;

}

part 'media.g.dart';

@JsonSerializable(explicitToJson: true)
class Media {

Media resourceType;
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
List<Reference> basedOn;
List<Reference> partOf;
String status;
Element _status;
CodeableConcept type;
CodeableConcept modality;
CodeableConcept view;
Reference subject;
Reference encounter;
String createdDateTime;
Element _createdDateTime;
Period createdPeriod;
DateTime issued;
Element _issued;
Reference operator;
List<CodeableConcept> reasonCode;
CodeableConcept bodySite;
String deviceName;
Element _deviceName;
Reference device;
int height;
Element _height;
int width;
Element _width;
int frames;
Element _frames;
double duration;
Element _duration;
Attachment content;
List<Annotation> note;

}

part 'medication.g.dart';

@JsonSerializable(explicitToJson: true)
class Medication {

Medication resourceType;
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
CodeableConcept code;
String status;
Element _status;
Reference manufacturer;
CodeableConcept form;
Ratio amount;
List<Medication_Ingredient> ingredient;
Medication_Batch batch;

}

@JsonSerializable(explicitToJson: true)
class Medication_Ingredient {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept itemCodeableConcept;
Reference itemReference;
bool isActive;
Element _isActive;
Ratio strength;

}

@JsonSerializable(explicitToJson: true)
class Medication_Batch {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String lotNumber;
Element _lotNumber;
DateTime expirationDate;
Element _expirationDate;

}

part 'medicationAdministration.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationAdministration {

MedicationAdministration resourceType;
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
List<String> instantiates;
List<Element> _instantiates;
List<Reference> partOf;
String status;
Element _status;
List<CodeableConcept> statusReason;
CodeableConcept category;
CodeableConcept medicationCodeableConcept;
Reference medicationReference;
Reference subject;
Reference context;
List<Reference> supportingInformation;
String effectiveDateTime;
Element _effectiveDateTime;
Period effectivePeriod;
List<MedicationAdministration_Performer> performer;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
Reference request;
List<Reference> device;
List<Annotation> note;
MedicationAdministration_Dosage dosage;
List<Reference> eventHistory;

}

@JsonSerializable(explicitToJson: true)
class MedicationAdministration_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;

}

@JsonSerializable(explicitToJson: true)
class MedicationAdministration_Dosage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String text;
Element _text;
CodeableConcept site;
CodeableConcept route;
CodeableConcept method;
Quantity dose;
Ratio rateRatio;
Quantity rateQuantity;

}

part 'medicationDispense.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationDispense {

MedicationDispense resourceType;
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
List<Reference> partOf;
String status;
Element _status;
CodeableConcept statusReasonCodeableConcept;
Reference statusReasonReference;
CodeableConcept category;
CodeableConcept medicationCodeableConcept;
Reference medicationReference;
Reference subject;
Reference context;
List<Reference> supportingInformation;
List<MedicationDispense_Performer> performer;
Reference location;
List<Reference> authorizingPrescription;
CodeableConcept type;
Quantity quantity;
Quantity daysSupply;
DateTime whenPrepared;
Element _whenPrepared;
DateTime whenHandedOver;
Element _whenHandedOver;
Reference destination;
List<Reference> receiver;
List<Annotation> note;
List<Dosage> dosageInstruction;
MedicationDispense_Substitution substitution;
List<Reference> detectedIssue;
List<Reference> eventHistory;

}

@JsonSerializable(explicitToJson: true)
class MedicationDispense_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;

}

@JsonSerializable(explicitToJson: true)
class MedicationDispense_Substitution {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool wasSubstituted;
Element _wasSubstituted;
CodeableConcept type;
List<CodeableConcept> reason;
List<Reference> responsibleParty;

}

part 'medicationKnowledge.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge {

MedicationKnowledge resourceType;
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
CodeableConcept code;
String status;
Element _status;
Reference manufacturer;
CodeableConcept doseForm;
Quantity amount;
List<String> synonym;
List<Element> _synonym;
List<MedicationKnowledge_RelatedMedicationKnowledge> relatedMedicationKnowledge;
List<Reference> associatedMedication;
List<CodeableConcept> productType;
List<MedicationKnowledge_Monograph> monograph;
List<MedicationKnowledge_Ingredient> ingredient;
String preparationInstruction;
Element _preparationInstruction;
List<CodeableConcept> intendedRoute;
List<MedicationKnowledge_Cost> cost;
List<MedicationKnowledge_MonitoringProgram> monitoringProgram;
List<MedicationKnowledge_AdministrationGuidelines> administrationGuidelines;
List<MedicationKnowledge_MedicineClassification> medicineClassification;
MedicationKnowledge_Packaging packaging;
List<MedicationKnowledge_DrugCharacteristic> drugCharacteristic;
List<Reference> contraindication;
List<MedicationKnowledge_Regulatory> regulatory;
List<MedicationKnowledge_Kinetics> kinetics;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_RelatedMedicationKnowledge {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<Reference> reference;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Monograph {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Reference source;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Ingredient {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept itemCodeableConcept;
Reference itemReference;
bool isActive;
Element _isActive;
Ratio strength;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Cost {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String source;
Element _source;
Money cost;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_MonitoringProgram {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String name;
Element _name;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_AdministrationGuidelines {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<MedicationKnowledge_Dosage> dosage;
CodeableConcept indicationCodeableConcept;
Reference indicationReference;
List<MedicationKnowledge_PatientCharacteristics> patientCharacteristics;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Dosage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<Dosage> dosage;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_PatientCharacteristics {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept characteristicCodeableConcept;
Quantity characteristicQuantity;
List<String> value;
List<Element> _value;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_MedicineClassification {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<CodeableConcept> classification;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Packaging {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Quantity quantity;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_DrugCharacteristic {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
CodeableConcept valueCodeableConcept;
String valueString;
Element _valueString;
Quantity valueQuantity;
String valueBase64Binary;
Element _valueBase64Binary;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Regulatory {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference regulatoryAuthority;
List<MedicationKnowledge_Substitution> substitution;
List<MedicationKnowledge_Schedule> schedule;
MedicationKnowledge_MaxDispense maxDispense;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Substitution {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
bool allowed;
Element _allowed;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Schedule {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept schedule;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_MaxDispense {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity quantity;
Duration period;

}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Kinetics {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Quantity> areaUnderCurve;
List<Quantity> lethalDose50;
Duration halfLifePeriod;

}

part 'medicationRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationRequest {

MedicationRequest resourceType;
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
String status;
Element _status;
CodeableConcept statusReason;
String intent;
Element _intent;
List<CodeableConcept> category;
String priority;
Element _priority;
bool doNotPerform;
Element _doNotPerform;
bool reportedBoolean;
Element _reportedBoolean;
Reference reportedReference;
CodeableConcept medicationCodeableConcept;
Reference medicationReference;
Reference subject;
Reference encounter;
List<Reference> supportingInformation;
DateTime authoredOn;
Element _authoredOn;
Reference requester;
Reference performer;
CodeableConcept performerType;
Reference recorder;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<String> instantiatesCanonical;
List<Element> _instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
List<Reference> basedOn;
Identifier groupIdentifier;
CodeableConcept courseOfTherapyType;
List<Reference> insurance;
List<Annotation> note;
List<Dosage> dosageInstruction;
MedicationRequest_DispenseRequest dispenseRequest;
MedicationRequest_Substitution substitution;
Reference priorPrescription;
List<Reference> detectedIssue;
List<Reference> eventHistory;

}

@JsonSerializable(explicitToJson: true)
class MedicationRequest_DispenseRequest {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
MedicationRequest_InitialFill initialFill;
Duration dispenseInterval;
Period validityPeriod;
int numberOfRepeatsAllowed;
Element _numberOfRepeatsAllowed;
Quantity quantity;
Duration expectedSupplyDuration;
Reference performer;

}

@JsonSerializable(explicitToJson: true)
class MedicationRequest_InitialFill {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity quantity;
Duration duration;

}

@JsonSerializable(explicitToJson: true)
class MedicationRequest_Substitution {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool allowedBoolean;
Element _allowedBoolean;
CodeableConcept allowedCodeableConcept;
CodeableConcept reason;

}

part 'medicationStatement.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationStatement {

MedicationStatement resourceType;
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
List<Reference> basedOn;
List<Reference> partOf;
String status;
Element _status;
List<CodeableConcept> statusReason;
CodeableConcept category;
CodeableConcept medicationCodeableConcept;
Reference medicationReference;
Reference subject;
Reference context;
String effectiveDateTime;
Element _effectiveDateTime;
Period effectivePeriod;
DateTime dateAsserted;
Element _dateAsserted;
Reference informationSource;
List<Reference> derivedFrom;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Annotation> note;
List<Dosage> dosage;

}

part 'medicinalProduct.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProduct {

MedicinalProduct resourceType;
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
CodeableConcept type;
Coding domain;
CodeableConcept combinedPharmaceuticalDoseForm;
CodeableConcept legalStatusOfSupply;
CodeableConcept additionalMonitoringIndicator;
List<String> specialMeasures;
List<Element> _specialMeasures;
CodeableConcept paediatricUseIndicator;
List<CodeableConcept> productClassification;
List<MarketingStatus> marketingStatus;
List<Reference> pharmaceuticalProduct;
List<Reference> packagedMedicinalProduct;
List<Reference> attachedDocument;
List<Reference> masterFile;
List<Reference> contact;
List<Reference> clinicalTrial;
List<MedicinalProduct_Name> name;
List<Identifier> crossReference;
List<MedicinalProduct_ManufacturingBusinessOperation> manufacturingBusinessOperation;
List<MedicinalProduct_SpecialDesignation> specialDesignation;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_Name {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String productName;
Element _productName;
List<MedicinalProduct_NamePart> namePart;
List<MedicinalProduct_CountryLanguage> countryLanguage;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_NamePart {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String part;
Element _part;
Coding type;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_CountryLanguage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept country;
CodeableConcept jurisdiction;
CodeableConcept language;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_ManufacturingBusinessOperation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept operationType;
Identifier authorisationReferenceNumber;
DateTime effectiveDate;
Element _effectiveDate;
CodeableConcept confidentialityIndicator;
List<Reference> manufacturer;
Reference regulator;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_SpecialDesignation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
CodeableConcept type;
CodeableConcept intendedUse;
CodeableConcept indicationCodeableConcept;
Reference indicationReference;
CodeableConcept status;
DateTime date;
Element _date;
CodeableConcept species;

}

part 'medicinalProductAuthorization.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductAuthorization {

MedicinalProductAuthorization resourceType;
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
Reference subject;
List<CodeableConcept> country;
List<CodeableConcept> jurisdiction;
CodeableConcept status;
DateTime statusDate;
Element _statusDate;
DateTime restoreDate;
Element _restoreDate;
Period validityPeriod;
Period dataExclusivityPeriod;
DateTime dateOfFirstAuthorization;
Element _dateOfFirstAuthorization;
DateTime internationalBirthDate;
Element _internationalBirthDate;
CodeableConcept legalBasis;
List<MedicinalProductAuthorization_JurisdictionalAuthorization> jurisdictionalAuthorization;
Reference holder;
Reference regulator;
MedicinalProductAuthorization_Procedure procedure;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProductAuthorization_JurisdictionalAuthorization {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
CodeableConcept country;
List<CodeableConcept> jurisdiction;
CodeableConcept legalStatusOfSupply;
Period validityPeriod;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProductAuthorization_Procedure {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier identifier;
CodeableConcept type;
Period datePeriod;
String dateDateTime;
Element _dateDateTime;
List<MedicinalProductAuthorization_Procedure> application;

}

part 'medicinalProductContraindication.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductContraindication {

MedicinalProductContraindication resourceType;
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
List<Reference> subject;
CodeableConcept disease;
CodeableConcept diseaseStatus;
List<CodeableConcept> comorbidity;
List<Reference> therapeuticIndication;
List<MedicinalProductContraindication_OtherTherapy> otherTherapy;
List<Population> population;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProductContraindication_OtherTherapy {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept therapyRelationshipType;
CodeableConcept medicationCodeableConcept;
Reference medicationReference;

}

part 'medicinalProductIndication.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductIndication {

MedicinalProductIndication resourceType;
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
List<Reference> subject;
CodeableConcept diseaseSymptomProcedure;
CodeableConcept diseaseStatus;
List<CodeableConcept> comorbidity;
CodeableConcept intendedEffect;
Quantity duration;
List<MedicinalProductIndication_OtherTherapy> otherTherapy;
List<Reference> undesirableEffect;
List<Population> population;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIndication_OtherTherapy {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept therapyRelationshipType;
CodeableConcept medicationCodeableConcept;
Reference medicationReference;

}

part 'medicinalProductIngredient.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient {

MedicinalProductIngredient resourceType;
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
Identifier identifier;
CodeableConcept role;
bool allergenicIndicator;
Element _allergenicIndicator;
List<Reference> manufacturer;
List<MedicinalProductIngredient_SpecifiedSubstance> specifiedSubstance;
MedicinalProductIngredient_Substance substance;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_SpecifiedSubstance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept group;
CodeableConcept confidentiality;
List<MedicinalProductIngredient_Strength> strength;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_Strength {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Ratio presentation;
Ratio presentationLowLimit;
Ratio concentration;
Ratio concentrationLowLimit;
String measurementPoint;
Element _measurementPoint;
List<CodeableConcept> country;
List<MedicinalProductIngredient_ReferenceStrength> referenceStrength;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_ReferenceStrength {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept substance;
Ratio strength;
Ratio strengthLowLimit;
String measurementPoint;
Element _measurementPoint;
List<CodeableConcept> country;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_Substance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
List<MedicinalProductIngredient_Strength> strength;

}

part 'medicinalProductInteraction.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductInteraction {

MedicinalProductInteraction resourceType;
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
List<Reference> subject;
String description;
Element _description;
List<MedicinalProductInteraction_Interactant> interactant;
CodeableConcept type;
CodeableConcept effect;
CodeableConcept incidence;
CodeableConcept management;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProductInteraction_Interactant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference itemReference;
CodeableConcept itemCodeableConcept;

}

part 'medicinalProductManufactured.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductManufactured {

MedicinalProductManufactured resourceType;
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
CodeableConcept manufacturedDoseForm;
CodeableConcept unitOfPresentation;
Quantity quantity;
List<Reference> manufacturer;
List<Reference> ingredient;
ProdCharacteristic physicalCharacteristics;
List<CodeableConcept> otherCharacteristics;

}

part 'medicinalProductPackaged.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductPackaged {

MedicinalProductPackaged resourceType;
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
List<Reference> subject;
String description;
Element _description;
CodeableConcept legalStatusOfSupply;
List<MarketingStatus> marketingStatus;
Reference marketingAuthorization;
List<Reference> manufacturer;
List<MedicinalProductPackaged_BatchIdentifier> batchIdentifier;
List<MedicinalProductPackaged_PackageItem> packageItem;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPackaged_BatchIdentifier {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier outerPackaging;
Identifier immediatePackaging;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPackaged_PackageItem {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
CodeableConcept type;
Quantity quantity;
List<CodeableConcept> material;
List<CodeableConcept> alternateMaterial;
List<Reference> device;
List<Reference> manufacturedItem;
List<MedicinalProductPackaged_PackageItem> packageItem;
ProdCharacteristic physicalCharacteristics;
List<CodeableConcept> otherCharacteristics;
List<ProductShelfLife> shelfLifeStorage;
List<Reference> manufacturer;

}

part 'medicinalProductPharmaceutical.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical {

MedicinalProductPharmaceutical resourceType;
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
CodeableConcept administrableDoseForm;
CodeableConcept unitOfPresentation;
List<Reference> ingredient;
List<Reference> device;
List<MedicinalProductPharmaceutical_Characteristics> characteristics;
List<MedicinalProductPharmaceutical_RouteOfAdministration> routeOfAdministration;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_Characteristics {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept status;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_RouteOfAdministration {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
Quantity firstDose;
Quantity maxSingleDose;
Quantity maxDosePerDay;
Ratio maxDosePerTreatmentPeriod;
Duration maxTreatmentPeriod;
List<MedicinalProductPharmaceutical_TargetSpecies> targetSpecies;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_TargetSpecies {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
List<MedicinalProductPharmaceutical_WithdrawalPeriod> withdrawalPeriod;

}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_WithdrawalPeriod {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept tissue;
Quantity value;
String supportingInformation;
Element _supportingInformation;

}

part 'medicinalProductUndesirableEffect.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductUndesirableEffect {

MedicinalProductUndesirableEffect resourceType;
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
List<Reference> subject;
CodeableConcept symptomConditionEffect;
CodeableConcept classification;
CodeableConcept frequencyOfOccurrence;
List<Population> population;

}

part 'messageDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class MessageDefinition {

MessageDefinition resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
List<String> replaces;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
String base;
List<String> parent;
Coding eventCoding;
String eventUri;
Element _eventUri;
String category; // <code> enum: consequence/currency/notification;
Element _category;
List<MessageDefinition_Focus> focus;
String responseRequired; // <code> enum: always/on-error/never/on-success;
Element _responseRequired;
List<MessageDefinition_AllowedResponse> allowedResponse;
List<String> graph;

}

@JsonSerializable(explicitToJson: true)
class MessageDefinition_Focus {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String profile;
int min;
Element _min;
String max;
Element _max;

}

@JsonSerializable(explicitToJson: true)
class MessageDefinition_AllowedResponse {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String message;
String situation;
Element _situation;

}

part 'messageHeader.g.dart';

@JsonSerializable(explicitToJson: true)
class MessageHeader {

MessageHeader resourceType;
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
Coding eventCoding;
String eventUri;
Element _eventUri;
List<MessageHeader_Destination> destination;
Reference sender;
Reference enterer;
Reference author;
MessageHeader_Source source;
Reference responsible;
CodeableConcept reason;
MessageHeader_Response response;
List<Reference> focus;
String definition;

}

@JsonSerializable(explicitToJson: true)
class MessageHeader_Destination {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
Reference target;
String endpoint;
Element _endpoint;
Reference receiver;

}

@JsonSerializable(explicitToJson: true)
class MessageHeader_Source {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String software;
Element _software;
String version;
Element _version;
ContactPoint contact;
String endpoint;
Element _endpoint;

}

@JsonSerializable(explicitToJson: true)
class MessageHeader_Response {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String identifier;
Element _identifier;
String code; // <code> enum: ok/transient-error/fatal-error;
Element _code;
Reference details;

}

part 'molecularSequence.g.dart';

@JsonSerializable(explicitToJson: true)
class MolecularSequence {

MolecularSequence resourceType;
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
String type; // <code> enum: aa/dna/rna;
Element _type;
int coordinateSystem;
Element _coordinateSystem;
Reference patient;
Reference specimen;
Reference device;
Reference performer;
Quantity quantity;
MolecularSequence_ReferenceSeq referenceSeq;
List<MolecularSequence_Variant> variant;
String observedSeq;
Element _observedSeq;
List<MolecularSequence_Quality> quality;
int readCoverage;
Element _readCoverage;
List<MolecularSequence_Repository> repository;
List<Reference> pointer;
List<MolecularSequence_StructureVariant> structureVariant;

}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_ReferenceSeq {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept chromosome;
String genomeBuild;
Element _genomeBuild;
String orientation; // <code> enum: sense/antisense;
Element _orientation;
CodeableConcept referenceSeqId;
Reference referenceSeqPointer;
String referenceSeqString;
Element _referenceSeqString;
String strand; // <code> enum: watson/crick;
Element _strand;
int windowStart;
Element _windowStart;
int windowEnd;
Element _windowEnd;

}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Variant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int start;
Element _start;
int end;
Element _end;
String observedAllele;
Element _observedAllele;
String referenceAllele;
Element _referenceAllele;
String cigar;
Element _cigar;
Reference variantPointer;

}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Quality {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: indel/snp/unknown;
Element _type;
CodeableConcept standardSequence;
int start;
Element _start;
int end;
Element _end;
Quantity score;
CodeableConcept method;
double truthTP;
Element _truthTP;
double queryTP;
Element _queryTP;
double truthFN;
Element _truthFN;
double queryFP;
Element _queryFP;
double gtFP;
Element _gtFP;
double precision;
Element _precision;
double recall;
Element _recall;
double fScore;
Element _fScore;
MolecularSequence_Roc roc;

}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Roc {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<int> score;
List<Element> _score;
List<int> numTP;
List<Element> _numTP;
List<int> numFP;
List<Element> _numFP;
List<int> numFN;
List<Element> _numFN;
List<double> precision;
List<Element> _precision;
List<double> sensitivity;
List<Element> _sensitivity;
List<double> fMeasure;
List<Element> _fMeasure;

}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Repository {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: directlink/openapi/login/oauth/other;
Element _type;
String url;
Element _url;
String name;
Element _name;
String datasetId;
Element _datasetId;
String variantsetId;
Element _variantsetId;
String readsetId;
Element _readsetId;

}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_StructureVariant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept variantType;
bool exact;
Element _exact;
int length;
Element _length;
MolecularSequence_Outer outer;
MolecularSequence_Inner inner;

}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Outer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int start;
Element _start;
int end;
Element _end;

}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Inner {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int start;
Element _start;
int end;
Element _end;

}

part 'namingSystem.g.dart';

@JsonSerializable(explicitToJson: true)
class NamingSystem {

NamingSystem resourceType;
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
String name;
Element _name;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
String kind; // <code> enum: codesystem/identifier/root;
Element _kind;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String responsible;
Element _responsible;
CodeableConcept type;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String usage;
Element _usage;
List<NamingSystem_UniqueId> uniqueId;

}

@JsonSerializable(explicitToJson: true)
class NamingSystem_UniqueId {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: oid/uuid/uri/other;
Element _type;
String value;
Element _value;
bool preferred;
Element _preferred;
String comment;
Element _comment;
Period period;

}

part 'nutritionOrder.g.dart';

@JsonSerializable(explicitToJson: true)
class NutritionOrder {

NutritionOrder resourceType;
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
List<String> instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
List<String> instantiates;
List<Element> _instantiates;
String status;
Element _status;
String intent;
Element _intent;
Reference patient;
Reference encounter;
DateTime dateTime;
Element _dateTime;
Reference orderer;
List<Reference> allergyIntolerance;
List<CodeableConcept> foodPreferenceModifier;
List<CodeableConcept> excludeFoodModifier;
NutritionOrder_OralDiet oralDiet;
List<NutritionOrder_Supplement> supplement;
NutritionOrder_EnteralFormula enteralFormula;
List<Annotation> note;

}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_OralDiet {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> type;
List<Timing> schedule;
List<NutritionOrder_Nutrient> nutrient;
List<NutritionOrder_Texture> texture;
List<CodeableConcept> fluidConsistencyType;
String instruction;
Element _instruction;

}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Nutrient {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept modifier;
Quantity amount;

}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Texture {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept modifier;
CodeableConcept foodType;

}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Supplement {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String productName;
Element _productName;
List<Timing> schedule;
Quantity quantity;
String instruction;
Element _instruction;

}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_EnteralFormula {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept baseFormulaType;
String baseFormulaProductName;
Element _baseFormulaProductName;
CodeableConcept additiveType;
String additiveProductName;
Element _additiveProductName;
Quantity caloricDensity;
CodeableConcept routeofAdministration;
List<NutritionOrder_Administration> administration;
Quantity maxVolumeToDeliver;
String administrationInstruction;
Element _administrationInstruction;

}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Administration {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Timing schedule;
Quantity quantity;
Quantity rateQuantity;
Ratio rateRatio;

}

part 'observation.g.dart';

@JsonSerializable(explicitToJson: true)
class Observation {

Observation resourceType;
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
List<Reference> basedOn;
List<Reference> partOf;
String status; // <code> enum: registered/preliminary/final/amended/corrected/cancelled/entered-in-error/unknown;
Element _status;
List<CodeableConcept> category;
CodeableConcept code;
Reference subject;
List<Reference> focus;
Reference encounter;
String effectiveDateTime;
Element _effectiveDateTime;
Period effectivePeriod;
Timing effectiveTiming;
String effectiveInstant;
Element _effectiveInstant;
DateTime issued;
Element _issued;
List<Reference> performer;
Quantity valueQuantity;
CodeableConcept valueCodeableConcept;
String valueString;
Element _valueString;
bool valueBoolean;
Element _valueBoolean;
number valueInteger;
Element _valueInteger;
Range valueRange;
Ratio valueRatio;
SampledData valueSampledData;
String valueTime;
Element _valueTime;
String valueDateTime;
Element _valueDateTime;
Period valuePeriod;
CodeableConcept dataAbsentReason;
List<CodeableConcept> interpretation;
List<Annotation> note;
CodeableConcept bodySite;
CodeableConcept method;
Reference specimen;
Reference device;
List<Observation_ReferenceRange> referenceRange;
List<Reference> hasMember;
List<Reference> derivedFrom;
List<Observation_Component> component;

}

@JsonSerializable(explicitToJson: true)
class Observation_ReferenceRange {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity low;
Quantity high;
CodeableConcept type;
List<CodeableConcept> appliesTo;
Range age;
String text;
Element _text;

}

@JsonSerializable(explicitToJson: true)
class Observation_Component {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
Quantity valueQuantity;
CodeableConcept valueCodeableConcept;
String valueString;
Element _valueString;
bool valueBoolean;
Element _valueBoolean;
number valueInteger;
Element _valueInteger;
Range valueRange;
Ratio valueRatio;
SampledData valueSampledData;
String valueTime;
Element _valueTime;
String valueDateTime;
Element _valueDateTime;
Period valuePeriod;
CodeableConcept dataAbsentReason;
List<CodeableConcept> interpretation;
List<Observation_ReferenceRange> referenceRange;

}

part 'observationDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ObservationDefinition {

ObservationDefinition resourceType;
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
List<CodeableConcept> category;
CodeableConcept code;
List<Identifier> identifier;
List<Element> _permittedDataType;
bool multipleResultsAllowed;
Element _multipleResultsAllowed;
CodeableConcept method;
String preferredReportName;
Element _preferredReportName;
ObservationDefinition_QuantitativeDetails quantitativeDetails;
List<ObservationDefinition_QualifiedInterval> qualifiedInterval;
Reference validCodedValueSet;
Reference normalCodedValueSet;
Reference abnormalCodedValueSet;
Reference criticalCodedValueSet;

}

@JsonSerializable(explicitToJson: true)
class ObservationDefinition_QuantitativeDetails {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept customaryUnit;
CodeableConcept unit;
double conversionFactor;
Element _conversionFactor;
int decimalPrecision;
Element _decimalPrecision;

}

@JsonSerializable(explicitToJson: true)
class ObservationDefinition_QualifiedInterval {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String category; // <code> enum: reference/critical/absolute;
Element _category;
Range range;
CodeableConcept context;
List<CodeableConcept> appliesTo;
String gender; // <code> enum: male/female/other/unknown;
Element _gender;
Range age;
Range gestationalAge;
String condition;
Element _condition;

}

part 'operationDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class OperationDefinition {

OperationDefinition resourceType;
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
String url;
Element _url;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
String kind; // <code> enum: operation/query;
Element _kind;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
bool affectsState;
Element _affectsState;
String code;
Element _code;
String comment;
Element _comment;
String base;
List<String> resource;
List<Element> _resource;
bool system;
Element _system;
bool type;
Element _type;
bool instance;
Element _instance;
String inputProfile;
String outputProfile;
List<OperationDefinition_Parameter> parameter;
List<OperationDefinition_Overload> overload;

}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String use; // <code> enum: in/out;
Element _use;
int min;
Element _min;
String max;
Element _max;
String documentation;
Element _documentation;
String type;
Element _type;
List<String> targetProfile;
String searchType; // <code> enum: number/date/string/token/reference/composite/quantity/uri/special;
Element _searchType;
OperationDefinition_Binding binding;
List<OperationDefinition_ReferencedFrom> referencedFrom;
List<OperationDefinition_Parameter> part;

}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_Binding {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String strength; // <code> enum: required/extensible/preferred/example;
Element _strength;
String valueSet;

}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_ReferencedFrom {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String source;
Element _source;
String sourceId;
Element _sourceId;

}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_Overload {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<String> parameterName;
List<Element> _parameterName;
String comment;
Element _comment;

}

part 'operationOutcome.g.dart';

@JsonSerializable(explicitToJson: true)
class OperationOutcome {

OperationOutcome resourceType;
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
List<OperationOutcome_Issue> issue;

}

@JsonSerializable(explicitToJson: true)
class OperationOutcome_Issue {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String severity; // <code> enum: fatal/error/warning/information;
Element _severity;
String code; // <code> enum: invalid/structure/required/value/invariant/security/login/unknown/expired/forbidden/suppressed/processing/not-supported/duplicate/multiple-matches/not-found/deleted/too-long/code-invalid/extension/too-costly/business-rule/conflict/transient/lock-error/no-store/exception/timeout/incomplete/throttled/informational;
Element _code;
CodeableConcept details;
String diagnostics;
Element _diagnostics;
List<String> location;
List<Element> _location;
List<String> expression;
List<Element> _expression;

}

part 'organization.g.dart';

@JsonSerializable(explicitToJson: true)
class Organization {

Organization resourceType;
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
bool active;
Element _active;
List<CodeableConcept> type;
String name;
Element _name;
List<String> alias;
List<Element> _alias;
List<ContactPoint> telecom;
List<Address> address;
Reference partOf;
List<Organization_Contact> contact;
List<Reference> endpoint;

}

@JsonSerializable(explicitToJson: true)
class Organization_Contact {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept purpose;
HumanName name;
List<ContactPoint> telecom;
Address address;

}

part 'organizationAffiliation.g.dart';

@JsonSerializable(explicitToJson: true)
class OrganizationAffiliation {

OrganizationAffiliation resourceType;
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
bool active;
Element _active;
Period period;
Reference organization;
Reference participatingOrganization;
List<Reference> network;
List<CodeableConcept> code;
List<CodeableConcept> specialty;
List<Reference> location;
List<Reference> healthcareService;
List<ContactPoint> telecom;
List<Reference> endpoint;

}

part 'parameters.g.dart';

@JsonSerializable(explicitToJson: true)
class Parameters {

Parameters resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
List<Parameters_Parameter> parameter;

}

@JsonSerializable(explicitToJson: true)
class Parameters_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
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
ResourceList resource;
List<Parameters_Parameter> part;

}

part 'patient.g.dart';

@JsonSerializable(explicitToJson: true)
class Patient {

Patient resourceType;
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
bool active;
Element _active;
List<HumanName> name;
List<ContactPoint> telecom;
String gender; // <code> enum: male/female/other/unknown;
Element _gender;
String birthDate;
Element _birthDate;
bool deceasedBoolean;
Element _deceasedBoolean;
String deceasedDateTime;
Element _deceasedDateTime;
List<Address> address;
CodeableConcept maritalStatus;
bool multipleBirthBoolean;
Element _multipleBirthBoolean;
number multipleBirthInteger;
Element _multipleBirthInteger;
List<Attachment> photo;
List<Patient_Contact> contact;
List<Patient_Communication> communication;
List<Reference> generalPractitioner;
Reference managingOrganization;
List<Patient_Link> link;

}

@JsonSerializable(explicitToJson: true)
class Patient_Contact {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> relationship;
HumanName name;
List<ContactPoint> telecom;
Address address;
String gender; // <code> enum: male/female/other/unknown;
Element _gender;
Reference organization;
Period period;

}

@JsonSerializable(explicitToJson: true)
class Patient_Communication {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept language;
bool preferred;
Element _preferred;

}

@JsonSerializable(explicitToJson: true)
class Patient_Link {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference other;
String type; // <code> enum: replaced-by/replaces/refer/seealso;
Element _type;

}

part 'paymentNotice.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentNotice {

PaymentNotice resourceType;
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
String status;
Element _status;
Reference request;
Reference response;
DateTime created;
Element _created;
Reference provider;
Reference payment;
String paymentDate;
Element _paymentDate;
Reference payee;
Reference recipient;
Money amount;
CodeableConcept paymentStatus;

}

part 'paymentReconciliation.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentReconciliation {

PaymentReconciliation resourceType;
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
String status;
Element _status;
Period period;
DateTime created;
Element _created;
Reference paymentIssuer;
Reference request;
Reference requestor;
String outcome; // <code> enum: queued/complete/error/partial;
Element _outcome;
String disposition;
Element _disposition;
String paymentDate;
Element _paymentDate;
Money paymentAmount;
Identifier paymentIdentifier;
List<PaymentReconciliation_Detail> detail;
CodeableConcept formCode;
List<PaymentReconciliation_ProcessNote> processNote;

}

@JsonSerializable(explicitToJson: true)
class PaymentReconciliation_Detail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier identifier;
Identifier predecessor;
CodeableConcept type;
Reference request;
Reference submitter;
Reference response;
String date;
Element _date;
Reference responsible;
Reference payee;
Money amount;

}

@JsonSerializable(explicitToJson: true)
class PaymentReconciliation_ProcessNote {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: display/print/printoper;
Element _type;
String text;
Element _text;

}

part 'person.g.dart';

@JsonSerializable(explicitToJson: true)
class Person {

Person resourceType;
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
List<HumanName> name;
List<ContactPoint> telecom;
String gender; // <code> enum: male/female/other/unknown;
Element _gender;
String birthDate;
Element _birthDate;
List<Address> address;
Attachment photo;
Reference managingOrganization;
bool active;
Element _active;
List<Person_Link> link;

}

@JsonSerializable(explicitToJson: true)
class Person_Link {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference target;
String assurance; // <code> enum: level1/level2/level3/level4;
Element _assurance;

}

part 'planDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class PlanDefinition {

PlanDefinition resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String subtitle;
Element _subtitle;
CodeableConcept type;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
CodeableConcept subjectCodeableConcept;
Reference subjectReference;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String usage;
Element _usage;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
List<CodeableConcept> topic;
List<ContactDetail> author;
List<ContactDetail> editor;
List<ContactDetail> reviewer;
List<ContactDetail> endorser;
List<RelatedArtifact> relatedArtifact;
List<String> library;
List<PlanDefinition_Goal> goal;
List<PlanDefinition_Action> action;

}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Goal {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
CodeableConcept description;
CodeableConcept priority;
CodeableConcept start;
List<CodeableConcept> addresses;
List<RelatedArtifact> documentation;
List<PlanDefinition_Target> target;

}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Target {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept measure;
Quantity detailQuantity;
Range detailRange;
CodeableConcept detailCodeableConcept;
Duration due;

}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Action {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String prefix;
Element _prefix;
String title;
Element _title;
String description;
Element _description;
String textEquivalent;
Element _textEquivalent;
String priority;
Element _priority;
List<CodeableConcept> code;
List<CodeableConcept> reason;
List<RelatedArtifact> documentation;
List<String> goalId;
List<Element> _goalId;
CodeableConcept subjectCodeableConcept;
Reference subjectReference;
List<TriggerDefinition> trigger;
List<PlanDefinition_Condition> condition;
List<DataRequirement> input;
List<DataRequirement> output;
List<PlanDefinition_RelatedAction> relatedAction;
String timingDateTime;
Element _timingDateTime;
Age timingAge;
Period timingPeriod;
Duration timingDuration;
Range timingRange;
Timing timingTiming;
List<PlanDefinition_Participant> participant;
CodeableConcept type;
String groupingBehavior; // <code> enum: visual-group/logical-group/sentence-group;
Element _groupingBehavior;
String selectionBehavior; // <code> enum: any/all/all-or-none/exactly-one/at-most-one/one-or-more;
Element _selectionBehavior;
String requiredBehavior; // <code> enum: must/could/must-unless-documented;
Element _requiredBehavior;
String precheckBehavior; // <code> enum: yes/no;
Element _precheckBehavior;
String cardinalityBehavior; // <code> enum: single/multiple;
Element _cardinalityBehavior;
String definitionCanonical;
Element _definitionCanonical;
String definitionUri;
Element _definitionUri;
String transform;
List<PlanDefinition_DynamicValue> dynamicValue;
List<PlanDefinition_Action> action;

}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Condition {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String kind; // <code> enum: applicability/start/stop;
Element _kind;
Expression expression;

}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_RelatedAction {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String actionId;
Element _actionId;
String relationship; // <code> enum: before-start/before/before-end/concurrent-with-start/concurrent/concurrent-with-end/after-start/after/after-end;
Element _relationship;
Duration offsetDuration;
Range offsetRange;

}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: patient/practitioner/related-person/device;
Element _type;
CodeableConcept role;

}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_DynamicValue {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String path;
Element _path;
Expression expression;

}

part 'practitioner.g.dart';

@JsonSerializable(explicitToJson: true)
class Practitioner {

Practitioner resourceType;
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
bool active;
Element _active;
List<HumanName> name;
List<ContactPoint> telecom;
List<Address> address;
String gender; // <code> enum: male/female/other/unknown;
Element _gender;
String birthDate;
Element _birthDate;
List<Attachment> photo;
List<Practitioner_Qualification> qualification;
List<CodeableConcept> communication;

}

@JsonSerializable(explicitToJson: true)
class Practitioner_Qualification {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
CodeableConcept code;
Period period;
Reference issuer;

}

part 'practitionerRole.g.dart';

@JsonSerializable(explicitToJson: true)
class PractitionerRole {

PractitionerRole resourceType;
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
bool active;
Element _active;
Period period;
Reference practitioner;
Reference organization;
List<CodeableConcept> code;
List<CodeableConcept> specialty;
List<Reference> location;
List<Reference> healthcareService;
List<ContactPoint> telecom;
List<PractitionerRole_AvailableTime> availableTime;
List<PractitionerRole_NotAvailable> notAvailable;
String availabilityExceptions;
Element _availabilityExceptions;
List<Reference> endpoint;

}

@JsonSerializable(explicitToJson: true)
class PractitionerRole_AvailableTime {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<String> daysOfWeek;
List<Element> _daysOfWeek;
bool allDay;
Element _allDay;
String availableStartTime;
Element _availableStartTime;
String availableEndTime;
Element _availableEndTime;

}

@JsonSerializable(explicitToJson: true)
class PractitionerRole_NotAvailable {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
Period during;

}

part 'procedure.g.dart';

@JsonSerializable(explicitToJson: true)
class Procedure {

Procedure resourceType;
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
List<String> instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
List<Reference> basedOn;
List<Reference> partOf;
String status;
Element _status;
CodeableConcept statusReason;
CodeableConcept category;
CodeableConcept code;
Reference subject;
Reference encounter;
String performedDateTime;
Element _performedDateTime;
Period performedPeriod;
String performedString;
Element _performedString;
Age performedAge;
Range performedRange;
Reference recorder;
Reference asserter;
List<Procedure_Performer> performer;
Reference location;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<CodeableConcept> bodySite;
CodeableConcept outcome;
List<Reference> report;
List<CodeableConcept> complication;
List<Reference> complicationDetail;
List<CodeableConcept> followUp;
List<Annotation> note;
List<Procedure_FocalDevice> focalDevice;
List<Reference> usedReference;
List<CodeableConcept> usedCode;

}

@JsonSerializable(explicitToJson: true)
class Procedure_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;
Reference onBehalfOf;

}

@JsonSerializable(explicitToJson: true)
class Procedure_FocalDevice {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept action;
Reference manipulated;

}

part 'provenance.g.dart';

@JsonSerializable(explicitToJson: true)
class Provenance {

Provenance resourceType;
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
List<Reference> target;
Period occurredPeriod;
String occurredDateTime;
Element _occurredDateTime;
DateTime recorded;
Element _recorded;
List<String> policy;
List<Element> _policy;
Reference location;
List<CodeableConcept> reason;
CodeableConcept activity;
List<Provenance_Agent> agent;
List<Provenance_Entity> entity;
List<Signature> signature;

}

@JsonSerializable(explicitToJson: true)
class Provenance_Agent {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<CodeableConcept> role;
Reference who;
Reference onBehalfOf;

}

@JsonSerializable(explicitToJson: true)
class Provenance_Entity {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String role; // <code> enum: derivation/revision/quotation/source/removal;
Element _role;
Reference what;
List<Provenance_Agent> agent;

}

part 'questionnaire.g.dart';

@JsonSerializable(explicitToJson: true)
class Questionnaire {

Questionnaire resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
List<String> derivedFrom;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
List<String> subjectType;
List<Element> _subjectType;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
List<Coding> code;
List<Questionnaire_Item> item;

}

@JsonSerializable(explicitToJson: true)
class Questionnaire_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String linkId;
Element _linkId;
String definition;
Element _definition;
List<Coding> code;
String prefix;
Element _prefix;
String text;
Element _text;
String type; // <code> enum: group/display/boolean/decimal/integer/date/dateTime/time/string/text/url/choice/open-choice/attachment/reference/quantity;
Element _type;
List<Questionnaire_EnableWhen> enableWhen;
String enableBehavior; // <code> enum: all/any;
Element _enableBehavior;
bool required;
Element _required;
bool repeats;
Element _repeats;
bool readOnly;
Element _readOnly;
int maxLength;
Element _maxLength;
String answerValueSet;
List<Questionnaire_AnswerOption> answerOption;
List<Questionnaire_Initial> initial;
List<Questionnaire_Item> item;

}

@JsonSerializable(explicitToJson: true)
class Questionnaire_EnableWhen {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String question;
Element _question;
String operator; // <code> enum: exists/=/!=/>/</>=/<=;
Element _operator;
bool answerBoolean;
Element _answerBoolean;
number answerDecimal;
Element _answerDecimal;
number answerInteger;
Element _answerInteger;
String answerDate;
Element _answerDate;
String answerDateTime;
Element _answerDateTime;
String answerTime;
Element _answerTime;
String answerString;
Element _answerString;
Coding answerCoding;
Quantity answerQuantity;
Reference answerReference;

}

@JsonSerializable(explicitToJson: true)
class Questionnaire_AnswerOption {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
number valueInteger;
Element _valueInteger;
String valueDate;
Element _valueDate;
String valueTime;
Element _valueTime;
String valueString;
Element _valueString;
Coding valueCoding;
Reference valueReference;
bool initialSelected;
Element _initialSelected;

}

@JsonSerializable(explicitToJson: true)
class Questionnaire_Initial {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool valueBoolean;
Element _valueBoolean;
number valueDecimal;
Element _valueDecimal;
number valueInteger;
Element _valueInteger;
String valueDate;
Element _valueDate;
String valueDateTime;
Element _valueDateTime;
String valueTime;
Element _valueTime;
String valueString;
Element _valueString;
String valueUri;
Element _valueUri;
Attachment valueAttachment;
Coding valueCoding;
Quantity valueQuantity;
Reference valueReference;

}

part 'questionnaireResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class QuestionnaireResponse {

QuestionnaireResponse resourceType;
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
Identifier identifier;
List<Reference> basedOn;
List<Reference> partOf;
String questionnaire;
String status; // <code> enum: in-progress/completed/amended/entered-in-error/stopped;
Element _status;
Reference subject;
Reference encounter;
DateTime authored;
Element _authored;
Reference author;
Reference source;
List<QuestionnaireResponse_Item> item;

}

@JsonSerializable(explicitToJson: true)
class QuestionnaireResponse_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String linkId;
Element _linkId;
String definition;
Element _definition;
String text;
Element _text;
List<QuestionnaireResponse_Answer> answer;
List<QuestionnaireResponse_Item> item;

}

@JsonSerializable(explicitToJson: true)
class QuestionnaireResponse_Answer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool valueBoolean;
Element _valueBoolean;
number valueDecimal;
Element _valueDecimal;
number valueInteger;
Element _valueInteger;
String valueDate;
Element _valueDate;
String valueDateTime;
Element _valueDateTime;
String valueTime;
Element _valueTime;
String valueString;
Element _valueString;
String valueUri;
Element _valueUri;
Attachment valueAttachment;
Coding valueCoding;
Quantity valueQuantity;
Reference valueReference;
List<QuestionnaireResponse_Item> item;

}

part 'relatedPerson.g.dart';

@JsonSerializable(explicitToJson: true)
class RelatedPerson {

RelatedPerson resourceType;
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
bool active;
Element _active;
Reference patient;
List<CodeableConcept> relationship;
List<HumanName> name;
List<ContactPoint> telecom;
String gender; // <code> enum: male/female/other/unknown;
Element _gender;
String birthDate;
Element _birthDate;
List<Address> address;
List<Attachment> photo;
Period period;
List<RelatedPerson_Communication> communication;

}

@JsonSerializable(explicitToJson: true)
class RelatedPerson_Communication {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept language;
bool preferred;
Element _preferred;

}

part 'requestGroup.g.dart';

@JsonSerializable(explicitToJson: true)
class RequestGroup {

RequestGroup resourceType;
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
List<String> instantiatesCanonical;
List<Element> _instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
List<Reference> basedOn;
List<Reference> replaces;
Identifier groupIdentifier;
String status;
Element _status;
String intent;
Element _intent;
String priority;
Element _priority;
CodeableConcept code;
Reference subject;
Reference encounter;
DateTime authoredOn;
Element _authoredOn;
Reference author;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Annotation> note;
List<RequestGroup_Action> action;

}

@JsonSerializable(explicitToJson: true)
class RequestGroup_Action {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String prefix;
Element _prefix;
String title;
Element _title;
String description;
Element _description;
String textEquivalent;
Element _textEquivalent;
String priority;
Element _priority;
List<CodeableConcept> code;
List<RelatedArtifact> documentation;
List<RequestGroup_Condition> condition;
List<RequestGroup_RelatedAction> relatedAction;
String timingDateTime;
Element _timingDateTime;
Age timingAge;
Period timingPeriod;
Duration timingDuration;
Range timingRange;
Timing timingTiming;
List<Reference> participant;
CodeableConcept type;
String groupingBehavior;
Element _groupingBehavior;
String selectionBehavior;
Element _selectionBehavior;
String requiredBehavior;
Element _requiredBehavior;
String precheckBehavior;
Element _precheckBehavior;
String cardinalityBehavior;
Element _cardinalityBehavior;
Reference resource;
List<RequestGroup_Action> action;

}

@JsonSerializable(explicitToJson: true)
class RequestGroup_Condition {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String kind;
Element _kind;
Expression expression;

}

@JsonSerializable(explicitToJson: true)
class RequestGroup_RelatedAction {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String actionId;
Element _actionId;
String relationship;
Element _relationship;
Duration offsetDuration;
Range offsetRange;

}

part 'researchDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ResearchDefinition {

ResearchDefinition resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String shortTitle;
Element _shortTitle;
String subtitle;
Element _subtitle;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
CodeableConcept subjectCodeableConcept;
Reference subjectReference;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<String> comment;
List<Element> _comment;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String usage;
Element _usage;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
List<CodeableConcept> topic;
List<ContactDetail> author;
List<ContactDetail> editor;
List<ContactDetail> reviewer;
List<ContactDetail> endorser;
List<RelatedArtifact> relatedArtifact;
List<String> library;
Reference population;
Reference exposure;
Reference exposureAlternative;
Reference outcome;

}

part 'researchElementDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ResearchElementDefinition {

ResearchElementDefinition resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String shortTitle;
Element _shortTitle;
String subtitle;
Element _subtitle;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
CodeableConcept subjectCodeableConcept;
Reference subjectReference;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<String> comment;
List<Element> _comment;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String usage;
Element _usage;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
List<CodeableConcept> topic;
List<ContactDetail> author;
List<ContactDetail> editor;
List<ContactDetail> reviewer;
List<ContactDetail> endorser;
List<RelatedArtifact> relatedArtifact;
List<String> library;
String type; // <code> enum: population/exposure/outcome;
Element _type;
String variableType; // <code> enum: dichotomous/continuous/descriptive;
Element _variableType;
List<ResearchElementDefinition_Characteristic> characteristic;

}

@JsonSerializable(explicitToJson: true)
class ResearchElementDefinition_Characteristic {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept definitionCodeableConcept;
String definitionCanonical;
Element _definitionCanonical;
Expression definitionExpression;
DataRequirement definitionDataRequirement;
List<UsageContext> usageContext;
bool exclude;
Element _exclude;
CodeableConcept unitOfMeasure;
String studyEffectiveDescription;
Element _studyEffectiveDescription;
String studyEffectiveDateTime;
Element _studyEffectiveDateTime;
Period studyEffectivePeriod;
Duration studyEffectiveDuration;
Timing studyEffectiveTiming;
Duration studyEffectiveTimeFromStart;
String studyEffectiveGroupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;
Element _studyEffectiveGroupMeasure;
String participantEffectiveDescription;
Element _participantEffectiveDescription;
String participantEffectiveDateTime;
Element _participantEffectiveDateTime;
Period participantEffectivePeriod;
Duration participantEffectiveDuration;
Timing participantEffectiveTiming;
Duration participantEffectiveTimeFromStart;
String participantEffectiveGroupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;
Element _participantEffectiveGroupMeasure;

}

part 'researchStudy.g.dart';

@JsonSerializable(explicitToJson: true)
class ResearchStudy {

ResearchStudy resourceType;
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
String title;
Element _title;
List<Reference> protocol;
List<Reference> partOf;
String status; // <code> enum: active/administratively-completed/approved/closed-to-accrual/closed-to-accrual-and-intervention/completed/disapproved/in-review/temporarily-closed-to-accrual/temporarily-closed-to-accrual-and-intervention/withdrawn;
Element _status;
CodeableConcept primaryPurposeType;
CodeableConcept phase;
List<CodeableConcept> category;
List<CodeableConcept> focus;
List<CodeableConcept> condition;
List<ContactDetail> contact;
List<RelatedArtifact> relatedArtifact;
List<CodeableConcept> keyword;
List<CodeableConcept> location;
String description;
Element _description;
List<Reference> enrollment;
Period period;
Reference sponsor;
Reference principalInvestigator;
List<Reference> site;
CodeableConcept reasonStopped;
List<Annotation> note;
List<ResearchStudy_Arm> arm;
List<ResearchStudy_Objective> objective;

}

@JsonSerializable(explicitToJson: true)
class ResearchStudy_Arm {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
CodeableConcept type;
String description;
Element _description;

}

@JsonSerializable(explicitToJson: true)
class ResearchStudy_Objective {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
CodeableConcept type;

}

part 'researchSubject.g.dart';

@JsonSerializable(explicitToJson: true)
class ResearchSubject {

ResearchSubject resourceType;
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
String status; // <code> enum: candidate/eligible/follow-up/ineligible/not-registered/off-study/on-study/on-study-intervention/on-study-observation/pending-on-study/potential-candidate/screening/withdrawn;
Element _status;
Period period;
Reference study;
Reference individual;
String assignedArm;
Element _assignedArm;
String actualArm;
Element _actualArm;
Reference consent;

}

part 'riskAssessment.g.dart';

@JsonSerializable(explicitToJson: true)
class RiskAssessment {

RiskAssessment resourceType;
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
Reference basedOn;
Reference parent;
String status;
Element _status;
CodeableConcept method;
CodeableConcept code;
Reference subject;
Reference encounter;
String occurrenceDateTime;
Element _occurrenceDateTime;
Period occurrencePeriod;
Reference condition;
Reference performer;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Reference> basis;
List<RiskAssessment_Prediction> prediction;
String mitigation;
Element _mitigation;
List<Annotation> note;

}

@JsonSerializable(explicitToJson: true)
class RiskAssessment_Prediction {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept outcome;
number probabilityDecimal;
Element _probabilityDecimal;
Range probabilityRange;
CodeableConcept qualitativeRisk;
double relativeRisk;
Element _relativeRisk;
Period whenPeriod;
Range whenRange;
String rationale;
Element _rationale;

}

part 'riskEvidenceSynthesis.g.dart';

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis {

RiskEvidenceSynthesis resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<Annotation> note;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
List<CodeableConcept> topic;
List<ContactDetail> author;
List<ContactDetail> editor;
List<ContactDetail> reviewer;
List<ContactDetail> endorser;
List<RelatedArtifact> relatedArtifact;
CodeableConcept synthesisType;
CodeableConcept studyType;
Reference population;
Reference exposure;
Reference outcome;
RiskEvidenceSynthesis_SampleSize sampleSize;
RiskEvidenceSynthesis_RiskEstimate riskEstimate;
List<RiskEvidenceSynthesis_Certainty> certainty;

}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_SampleSize {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
int numberOfStudies;
Element _numberOfStudies;
int numberOfParticipants;
Element _numberOfParticipants;

}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_RiskEstimate {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
CodeableConcept type;
double value;
Element _value;
CodeableConcept unitOfMeasure;
int denominatorCount;
Element _denominatorCount;
int numeratorCount;
Element _numeratorCount;
List<RiskEvidenceSynthesis_PrecisionEstimate> precisionEstimate;

}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_PrecisionEstimate {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
double level;
Element _level;
double from;
Element _from;
double to;
Element _to;

}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_Certainty {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> rating;
List<Annotation> note;
List<RiskEvidenceSynthesis_CertaintySubcomponent> certaintySubcomponent;

}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_CertaintySubcomponent {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<CodeableConcept> rating;
List<Annotation> note;

}

part 'schedule.g.dart';

@JsonSerializable(explicitToJson: true)
class Schedule {

Schedule resourceType;
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
bool active;
Element _active;
List<CodeableConcept> serviceCategory;
List<CodeableConcept> serviceType;
List<CodeableConcept> specialty;
List<Reference> actor;
Period planningHorizon;
String comment;
Element _comment;

}

part 'searchParameter.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchParameter {

SearchParameter resourceType;
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
String url;
Element _url;
String version;
Element _version;
String name;
Element _name;
String derivedFrom;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String code;
Element _code;
List<String> base;
List<Element> _base;
String type; // <code> enum: number/date/string/token/reference/composite/quantity/uri/special;
Element _type;
String expression;
Element _expression;
String xpath;
Element _xpath;
String xpathUsage; // <code> enum: normal/phonetic/nearby/distance/other;
Element _xpathUsage;
List<String> target;
List<Element> _target;
bool multipleOr;
Element _multipleOr;
bool multipleAnd;
Element _multipleAnd;
List<Element> _comparator;
List<Element> _modifier;
List<String> chain;
List<Element> _chain;
List<SearchParameter_Component> component;

}

@JsonSerializable(explicitToJson: true)
class SearchParameter_Component {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String definition;
String expression;
Element _expression;

}

part 'serviceRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class ServiceRequest {

ServiceRequest resourceType;
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
List<String> instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
List<Reference> basedOn;
List<Reference> replaces;
Identifier requisition;
String status;
Element _status;
String intent;
Element _intent;
List<CodeableConcept> category;
String priority;
Element _priority;
bool doNotPerform;
Element _doNotPerform;
CodeableConcept code;
List<CodeableConcept> orderDetail;
Quantity quantityQuantity;
Ratio quantityRatio;
Range quantityRange;
Reference subject;
Reference encounter;
String occurrenceDateTime;
Element _occurrenceDateTime;
Period occurrencePeriod;
Timing occurrenceTiming;
bool asNeededBoolean;
Element _asNeededBoolean;
CodeableConcept asNeededCodeableConcept;
DateTime authoredOn;
Element _authoredOn;
Reference requester;
CodeableConcept performerType;
List<Reference> performer;
List<CodeableConcept> locationCode;
List<Reference> locationReference;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Reference> insurance;
List<Reference> supportingInfo;
List<Reference> specimen;
List<CodeableConcept> bodySite;
List<Annotation> note;
String patientInstruction;
Element _patientInstruction;
List<Reference> relevantHistory;

}

part 'slot.g.dart';

@JsonSerializable(explicitToJson: true)
class Slot {

Slot resourceType;
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
List<CodeableConcept> serviceCategory;
List<CodeableConcept> serviceType;
List<CodeableConcept> specialty;
CodeableConcept appointmentType;
Reference schedule;
String status; // <code> enum: busy/free/busy-unavailable/busy-tentative/entered-in-error;
Element _status;
DateTime start;
Element _start;
DateTime end;
Element _end;
bool overbooked;
Element _overbooked;
String comment;
Element _comment;

}

part 'specimen.g.dart';

@JsonSerializable(explicitToJson: true)
class Specimen {

Specimen resourceType;
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
Identifier accessionIdentifier;
String status; // <code> enum: available/unavailable/unsatisfactory/entered-in-error;
Element _status;
CodeableConcept type;
Reference subject;
DateTime receivedTime;
Element _receivedTime;
List<Reference> parent;
List<Reference> request;
Specimen_Collection collection;
List<Specimen_Processing> processing;
List<Specimen_Container> container;
List<CodeableConcept> condition;
List<Annotation> note;

}

@JsonSerializable(explicitToJson: true)
class Specimen_Collection {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference collector;
String collectedDateTime;
Element _collectedDateTime;
Period collectedPeriod;
Duration duration;
Quantity quantity;
CodeableConcept method;
CodeableConcept bodySite;
CodeableConcept fastingStatusCodeableConcept;
Duration fastingStatusDuration;

}

@JsonSerializable(explicitToJson: true)
class Specimen_Processing {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
CodeableConcept procedure;
List<Reference> additive;
String timeDateTime;
Element _timeDateTime;
Period timePeriod;

}

@JsonSerializable(explicitToJson: true)
class Specimen_Container {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
String description;
Element _description;
CodeableConcept type;
Quantity capacity;
Quantity specimenQuantity;
CodeableConcept additiveCodeableConcept;
Reference additiveReference;

}

part 'specimenDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition {

SpecimenDefinition resourceType;
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
Identifier identifier;
CodeableConcept typeCollected;
List<CodeableConcept> patientPreparation;
String timeAspect;
Element _timeAspect;
List<CodeableConcept> collection;
List<SpecimenDefinition_TypeTested> typeTested;

}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_TypeTested {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool isDerived;
Element _isDerived;
CodeableConcept type;
String preference; // <code> enum: preferred/alternate;
Element _preference;
SpecimenDefinition_Container container;
String requirement;
Element _requirement;
Duration retentionTime;
List<CodeableConcept> rejectionCriterion;
List<SpecimenDefinition_Handling> handling;

}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Container {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept material;
CodeableConcept type;
CodeableConcept cap;
String description;
Element _description;
Quantity capacity;
Quantity minimumVolumeQuantity;
String minimumVolumeString;
Element _minimumVolumeString;
List<SpecimenDefinition_Additive> additive;
String preparation;
Element _preparation;

}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Additive {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept additiveCodeableConcept;
Reference additiveReference;

}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Handling {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept temperatureQualifier;
Range temperatureRange;
Duration maxDuration;
String instruction;
Element _instruction;

}

part 'structureDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureDefinition {

StructureDefinition resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
List<Coding> keyword;
String fhirVersion; // <code> enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1;
Element _fhirVersion;
List<StructureDefinition_Mapping> mapping;
String kind; // <code> enum: primitive-type/complex-type/resource/logical;
Element _kind;
bool abstract;
Element _abstract;
List<StructureDefinition_Context> context;
List<String> contextInvariant;
List<Element> _contextInvariant;
String type;
Element _type;
String baseDefinition;
String derivation; // <code> enum: specialization/constraint;
Element _derivation;
StructureDefinition_Snapshot snapshot;
StructureDefinition_Differential differential;

}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Mapping {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String identity;
Element _identity;
String uri;
Element _uri;
String name;
Element _name;
String comment;
Element _comment;

}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Context {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: fhirpath/element/extension;
Element _type;
String expression;
Element _expression;

}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Snapshot {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<ElementDefinition> element;

}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Differential {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<ElementDefinition> element;

}

part 'structureMap.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureMap {

StructureMap resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
List<StructureMap_Structure> structure;
List<String> import;
List<StructureMap_Group> group;

}

@JsonSerializable(explicitToJson: true)
class StructureMap_Structure {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String url;
String mode; // <code> enum: source/queried/target/produced;
Element _mode;
String alias;
Element _alias;
String documentation;
Element _documentation;

}

@JsonSerializable(explicitToJson: true)
class StructureMap_Group {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String extends;
Element _extends;
String typeMode; // <code> enum: none/types/type-and-types;
Element _typeMode;
String documentation;
Element _documentation;
List<StructureMap_Input> input;
List<StructureMap_Rule> rule;

}

@JsonSerializable(explicitToJson: true)
class StructureMap_Input {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String type;
Element _type;
String mode; // <code> enum: source/target;
Element _mode;
String documentation;
Element _documentation;

}

@JsonSerializable(explicitToJson: true)
class StructureMap_Rule {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
List<StructureMap_Source> source;
List<StructureMap_Target> target;
List<StructureMap_Rule> rule;
List<StructureMap_Dependent> dependent;
String documentation;
Element _documentation;

}

@JsonSerializable(explicitToJson: true)
class StructureMap_Source {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String context;
Element _context;
int min;
Element _min;
String max;
Element _max;
String type;
Element _type;
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
String element;
Element _element;
String listMode; // <code> enum: first/not_first/last/not_last/only_one;
Element _listMode;
String variable;
Element _variable;
String condition;
Element _condition;
String check;
Element _check;
String logMessage;
Element _logMessage;

}

@JsonSerializable(explicitToJson: true)
class StructureMap_Target {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String context;
Element _context;
String contextType; // <code> enum: type/variable;
Element _contextType;
String element;
Element _element;
String variable;
Element _variable;
List<Element> _listMode;
String listRuleId;
Element _listRuleId;
String transform; // <code> enum: create/copy/truncate/escape/cast/append/translate/reference/dateOp/uuid/pointer/evaluate/cc/c/qty/id/cp;
Element _transform;
List<StructureMap_Parameter> parameter;

}

@JsonSerializable(explicitToJson: true)
class StructureMap_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String valueId;
Element _valueId;
String valueString;
Element _valueString;
bool valueBoolean;
Element _valueBoolean;
number valueInteger;
Element _valueInteger;
number valueDecimal;
Element _valueDecimal;

}

@JsonSerializable(explicitToJson: true)
class StructureMap_Dependent {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
List<String> variable;
List<Element> _variable;

}

part 'subscription.g.dart';

@JsonSerializable(explicitToJson: true)
class Subscription {

Subscription resourceType;
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
String status; // <code> enum: requested/active/error/off;
Element _status;
List<ContactPoint> contact;
DateTime end;
Element _end;
String reason;
Element _reason;
String criteria;
Element _criteria;
String error;
Element _error;
Subscription_Channel channel;

}

@JsonSerializable(explicitToJson: true)
class Subscription_Channel {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: rest-hook/websocket/email/sms/message;
Element _type;
String endpoint;
Element _endpoint;
String payload;
Element _payload;
List<String> header;
List<Element> _header;

}

part 'substance.g.dart';

@JsonSerializable(explicitToJson: true)
class Substance {

Substance resourceType;
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
String status; // <code> enum: active/inactive/entered-in-error;
Element _status;
List<CodeableConcept> category;
CodeableConcept code;
String description;
Element _description;
List<Substance_Instance> instance;
List<Substance_Ingredient> ingredient;

}

@JsonSerializable(explicitToJson: true)
class Substance_Instance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier identifier;
DateTime expiry;
Element _expiry;
Quantity quantity;

}

@JsonSerializable(explicitToJson: true)
class Substance_Ingredient {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Ratio quantity;
CodeableConcept substanceCodeableConcept;
Reference substanceReference;

}

part 'substanceNucleicAcid.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid {

SubstanceNucleicAcid resourceType;
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
CodeableConcept sequenceType;
int numberOfSubunits;
Element _numberOfSubunits;
String areaOfHybridisation;
Element _areaOfHybridisation;
CodeableConcept oligoNucleotideType;
List<SubstanceNucleicAcid_Subunit> subunit;

}

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid_Subunit {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int subunit;
Element _subunit;
String sequence;
Element _sequence;
int length;
Element _length;
Attachment sequenceAttachment;
CodeableConcept fivePrime;
CodeableConcept threePrime;
List<SubstanceNucleicAcid_Linkage> linkage;
List<SubstanceNucleicAcid_Sugar> sugar;

}

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid_Linkage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String connectivity;
Element _connectivity;
Identifier identifier;
String name;
Element _name;
String residueSite;
Element _residueSite;

}

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid_Sugar {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier identifier;
String name;
Element _name;
String residueSite;
Element _residueSite;

}

part 'substancePolymer.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstancePolymer {

SubstancePolymer resourceType;
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
CodeableConcept class;
CodeableConcept geometry;
List<CodeableConcept> copolymerConnectivity;
List<String> modification;
List<Element> _modification;
List<SubstancePolymer_MonomerSet> monomerSet;
List<SubstancePolymer_Repeat> repeat;

}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_MonomerSet {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept ratioType;
List<SubstancePolymer_StartingMaterial> startingMaterial;

}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_StartingMaterial {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept material;
CodeableConcept type;
bool isDefining;
Element _isDefining;
SubstanceAmount amount;

}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_Repeat {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int numberOfUnits;
Element _numberOfUnits;
String averageMolecularFormula;
Element _averageMolecularFormula;
CodeableConcept repeatUnitAmountType;
List<SubstancePolymer_RepeatUnit> repeatUnit;

}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_RepeatUnit {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept orientationOfPolymerisation;
String repeatUnit;
Element _repeatUnit;
SubstanceAmount amount;
List<SubstancePolymer_DegreeOfPolymerisation> degreeOfPolymerisation;
List<SubstancePolymer_StructuralRepresentation> structuralRepresentation;

}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_DegreeOfPolymerisation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept degree;
SubstanceAmount amount;

}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_StructuralRepresentation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String representation;
Element _representation;
Attachment attachment;

}

part 'substanceProtein.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceProtein {

SubstanceProtein resourceType;
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
CodeableConcept sequenceType;
int numberOfSubunits;
Element _numberOfSubunits;
List<String> disulfideLinkage;
List<Element> _disulfideLinkage;
List<SubstanceProtein_Subunit> subunit;

}

@JsonSerializable(explicitToJson: true)
class SubstanceProtein_Subunit {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int subunit;
Element _subunit;
String sequence;
Element _sequence;
int length;
Element _length;
Attachment sequenceAttachment;
Identifier nTerminalModificationId;
String nTerminalModification;
Element _nTerminalModification;
Identifier cTerminalModificationId;
String cTerminalModification;
Element _cTerminalModification;

}

part 'substanceReferenceInformation.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation {

SubstanceReferenceInformation resourceType;
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
String comment;
Element _comment;
List<SubstanceReferenceInformation_Gene> gene;
List<SubstanceReferenceInformation_GeneElement> geneElement;
List<SubstanceReferenceInformation_Classification> classification;
List<SubstanceReferenceInformation_Target> target;

}

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_Gene {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept geneSequenceOrigin;
CodeableConcept gene;
List<Reference> source;

}

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_GeneElement {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Identifier element;
List<Reference> source;

}

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_Classification {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept domain;
CodeableConcept classification;
List<CodeableConcept> subtype;
List<Reference> source;

}

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_Target {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier target;
CodeableConcept type;
CodeableConcept interaction;
CodeableConcept organism;
CodeableConcept organismType;
Quantity amountQuantity;
Range amountRange;
String amountString;
Element _amountString;
CodeableConcept amountType;
List<Reference> source;

}

part 'substanceSourceMaterial.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial {

SubstanceSourceMaterial resourceType;
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
CodeableConcept sourceMaterialClass;
CodeableConcept sourceMaterialType;
CodeableConcept sourceMaterialState;
Identifier organismId;
String organismName;
Element _organismName;
List<Identifier> parentSubstanceId;
List<String> parentSubstanceName;
List<Element> _parentSubstanceName;
List<CodeableConcept> countryOfOrigin;
List<String> geographicalLocation;
List<Element> _geographicalLocation;
CodeableConcept developmentStage;
List<SubstanceSourceMaterial_FractionDescription> fractionDescription;
SubstanceSourceMaterial_Organism organism;
List<SubstanceSourceMaterial_PartDescription> partDescription;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_FractionDescription {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String fraction;
Element _fraction;
CodeableConcept materialType;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_Organism {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept family;
CodeableConcept genus;
CodeableConcept species;
CodeableConcept intraspecificType;
String intraspecificDescription;
Element _intraspecificDescription;
List<SubstanceSourceMaterial_Author> author;
SubstanceSourceMaterial_Hybrid hybrid;
SubstanceSourceMaterial_OrganismGeneral organismGeneral;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_Author {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept authorType;
String authorDescription;
Element _authorDescription;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_Hybrid {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String maternalOrganismId;
Element _maternalOrganismId;
String maternalOrganismName;
Element _maternalOrganismName;
String paternalOrganismId;
Element _paternalOrganismId;
String paternalOrganismName;
Element _paternalOrganismName;
CodeableConcept hybridType;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_OrganismGeneral {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept kingdom;
CodeableConcept phylum;
CodeableConcept class;
CodeableConcept order;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_PartDescription {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept part;
CodeableConcept partLocation;

}

part 'substanceSpecification.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification {

SubstanceSpecification resourceType;
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
Identifier identifier;
CodeableConcept type;
CodeableConcept status;
CodeableConcept domain;
String description;
Element _description;
List<Reference> source;
String comment;
Element _comment;
List<SubstanceSpecification_Moiety> moiety;
List<SubstanceSpecification_Property> property;
Reference referenceInformation;
SubstanceSpecification_Structure structure;
List<SubstanceSpecification_Code> code;
List<SubstanceSpecification_Name> name;
List<SubstanceSpecification_MolecularWeight> molecularWeight;
List<SubstanceSpecification_Relationship> relationship;
Reference nucleicAcid;
Reference polymer;
Reference protein;
Reference sourceMaterial;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Moiety {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept role;
Identifier identifier;
String name;
Element _name;
CodeableConcept stereochemistry;
CodeableConcept opticalActivity;
String molecularFormula;
Element _molecularFormula;
Quantity amountQuantity;
String amountString;
Element _amountString;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Property {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
CodeableConcept code;
String parameters;
Element _parameters;
Reference definingSubstanceReference;
CodeableConcept definingSubstanceCodeableConcept;
Quantity amountQuantity;
String amountString;
Element _amountString;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Structure {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept stereochemistry;
CodeableConcept opticalActivity;
String molecularFormula;
Element _molecularFormula;
String molecularFormulaByMoiety;
Element _molecularFormulaByMoiety;
List<SubstanceSpecification_Isotope> isotope;
SubstanceSpecification_MolecularWeight molecularWeight;
List<Reference> source;
List<SubstanceSpecification_Representation> representation;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Isotope {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier identifier;
CodeableConcept name;
CodeableConcept substitution;
Quantity halfLife;
SubstanceSpecification_MolecularWeight molecularWeight;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_MolecularWeight {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept method;
CodeableConcept type;
Quantity amount;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Representation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String representation;
Element _representation;
Attachment attachment;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Code {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept status;
DateTime statusDate;
Element _statusDate;
String comment;
Element _comment;
List<Reference> source;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Name {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
CodeableConcept type;
CodeableConcept status;
bool preferred;
Element _preferred;
List<CodeableConcept> language;
List<CodeableConcept> domain;
List<CodeableConcept> jurisdiction;
List<SubstanceSpecification_Name> synonym;
List<SubstanceSpecification_Name> translation;
List<SubstanceSpecification_Official> official;
List<Reference> source;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Official {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept authority;
CodeableConcept status;
DateTime date;
Element _date;

}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Relationship {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference substanceReference;
CodeableConcept substanceCodeableConcept;
CodeableConcept relationship;
bool isDefining;
Element _isDefining;
Quantity amountQuantity;
Range amountRange;
Ratio amountRatio;
String amountString;
Element _amountString;
Ratio amountRatioLowLimit;
CodeableConcept amountType;
List<Reference> source;

}

part 'supplyDelivery.g.dart';

@JsonSerializable(explicitToJson: true)
class SupplyDelivery {

SupplyDelivery resourceType;
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
List<Reference> basedOn;
List<Reference> partOf;
String status; // <code> enum: in-progress/completed/abandoned/entered-in-error;
Element _status;
Reference patient;
CodeableConcept type;
SupplyDelivery_SuppliedItem suppliedItem;
String occurrenceDateTime;
Element _occurrenceDateTime;
Period occurrencePeriod;
Timing occurrenceTiming;
Reference supplier;
Reference destination;
List<Reference> receiver;

}

@JsonSerializable(explicitToJson: true)
class SupplyDelivery_SuppliedItem {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity quantity;
CodeableConcept itemCodeableConcept;
Reference itemReference;

}

part 'supplyRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class SupplyRequest {

SupplyRequest resourceType;
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
String status; // <code> enum: draft/active/suspended/cancelled/completed/entered-in-error/unknown;
Element _status;
CodeableConcept category;
String priority;
Element _priority;
CodeableConcept itemCodeableConcept;
Reference itemReference;
Quantity quantity;
List<SupplyRequest_Parameter> parameter;
String occurrenceDateTime;
Element _occurrenceDateTime;
Period occurrencePeriod;
Timing occurrenceTiming;
DateTime authoredOn;
Element _authoredOn;
Reference requester;
List<Reference> supplier;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
Reference deliverFrom;
Reference deliverTo;

}

@JsonSerializable(explicitToJson: true)
class SupplyRequest_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept valueCodeableConcept;
Quantity valueQuantity;
Range valueRange;
bool valueBoolean;
Element _valueBoolean;

}

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

}

@JsonSerializable(explicitToJson: true)
class Task_Input {

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

}

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

}

part 'terminologyCapabilities.g.dart';

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities {

TerminologyCapabilities resourceType;
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
String url;
Element _url;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
String kind;
Element _kind;
TerminologyCapabilities_Software software;
TerminologyCapabilities_Implementation implementation;
bool lockedDate;
Element _lockedDate;
List<TerminologyCapabilities_CodeSystem> codeSystem;
TerminologyCapabilities_Expansion expansion;
String codeSearch; // <code> enum: explicit/all;
Element _codeSearch;
TerminologyCapabilities_ValidateCode validateCode;
TerminologyCapabilities_Translation translation;
TerminologyCapabilities_Closure closure;

}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Software {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String version;
Element _version;

}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Implementation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
String url;
Element _url;

}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_CodeSystem {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String uri;
List<TerminologyCapabilities_Version> version;
bool subsumption;
Element _subsumption;

}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Version {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
bool isDefault;
Element _isDefault;
bool compositional;
Element _compositional;
List<String> language;
List<Element> _language;
List<TerminologyCapabilities_Filter> filter;
List<String> property;
List<Element> _property;

}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Filter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
List<String> op;
List<Element> _op;

}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Expansion {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool hierarchical;
Element _hierarchical;
bool paging;
Element _paging;
bool incomplete;
Element _incomplete;
List<TerminologyCapabilities_Parameter> parameter;
String textFilter;
Element _textFilter;

}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String documentation;
Element _documentation;

}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_ValidateCode {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool translations;
Element _translations;

}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Translation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool needsMap;
Element _needsMap;

}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Closure {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool translation;
Element _translation;

}

part 'testReport.g.dart';

@JsonSerializable(explicitToJson: true)
class TestReport {

TestReport resourceType;
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
Identifier identifier;
String name;
Element _name;
String status; // <code> enum: completed/in-progress/waiting/stopped/entered-in-error;
Element _status;
Reference testScript;
String result; // <code> enum: pass/fail/pending;
Element _result;
double score;
Element _score;
String tester;
Element _tester;
DateTime issued;
Element _issued;
List<TestReport_Participant> participant;
TestReport_Setup setup;
List<TestReport_Test> test;
TestReport_Teardown teardown;

}

@JsonSerializable(explicitToJson: true)
class TestReport_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: test-engine/client/server;
Element _type;
String uri;
Element _uri;
String display;
Element _display;

}

@JsonSerializable(explicitToJson: true)
class TestReport_Setup {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<TestReport_Action> action;

}

@JsonSerializable(explicitToJson: true)
class TestReport_Action {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestReport_Operation operation;
TestReport_Assert assert;

}

@JsonSerializable(explicitToJson: true)
class TestReport_Operation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String result; // <code> enum: pass/skip/fail/warning/error;
Element _result;
String message;
Element _message;
String detail;
Element _detail;

}

@JsonSerializable(explicitToJson: true)
class TestReport_Assert {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String result; // <code> enum: pass/skip/fail/warning/error;
Element _result;
String message;
Element _message;
String detail;
Element _detail;

}

@JsonSerializable(explicitToJson: true)
class TestReport_Test {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String description;
Element _description;
List<TestReport_Action1> action;

}

@JsonSerializable(explicitToJson: true)
class TestReport_Action1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestReport_Operation operation;
TestReport_Assert assert;

}

@JsonSerializable(explicitToJson: true)
class TestReport_Teardown {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<TestReport_Action2> action;

}

@JsonSerializable(explicitToJson: true)
class TestReport_Action2 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestReport_Operation operation;

}

part 'testScript.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript {

TestScript resourceType;
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
String url;
Element _url;
Identifier identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
List<TestScript_Origin> origin;
List<TestScript_Destination> destination;
TestScript_Metadata metadata;
List<TestScript_Fixture> fixture;
List<Reference> profile;
List<TestScript_Variable> variable;
TestScript_Setup setup;
List<TestScript_Test> test;
TestScript_Teardown teardown;

}

@JsonSerializable(explicitToJson: true)
class TestScript_Origin {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int index;
Element _index;
Coding profile;

}

@JsonSerializable(explicitToJson: true)
class TestScript_Destination {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int index;
Element _index;
Coding profile;

}

@JsonSerializable(explicitToJson: true)
class TestScript_Metadata {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<TestScript_Link> link;
List<TestScript_Capability> capability;

}

@JsonSerializable(explicitToJson: true)
class TestScript_Link {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String url;
Element _url;
String description;
Element _description;

}

@JsonSerializable(explicitToJson: true)
class TestScript_Capability {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool required;
Element _required;
bool validated;
Element _validated;
String description;
Element _description;
List<int> origin;
List<Element> _origin;
int destination;
Element _destination;
List<String> link;
List<Element> _link;
String capabilities;

}

@JsonSerializable(explicitToJson: true)
class TestScript_Fixture {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool autocreate;
Element _autocreate;
bool autodelete;
Element _autodelete;
Reference resource;

}

@JsonSerializable(explicitToJson: true)
class TestScript_Variable {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String defaultValue;
Element _defaultValue;
String description;
Element _description;
String expression;
Element _expression;
String headerField;
Element _headerField;
String hint;
Element _hint;
String path;
Element _path;
String sourceId;
Element _sourceId;

}

@JsonSerializable(explicitToJson: true)
class TestScript_Setup {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<TestScript_Action> action;

}

@JsonSerializable(explicitToJson: true)
class TestScript_Action {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestScript_Operation operation;
TestScript_Assert assert;

}

@JsonSerializable(explicitToJson: true)
class TestScript_Operation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Coding type;
String resource;
Element _resource;
String label;
Element _label;
String description;
Element _description;
String accept;
Element _accept;
String contentType;
Element _contentType;
int destination;
Element _destination;
bool encodeRequestUrl;
Element _encodeRequestUrl;
String method; // <code> enum: delete/get/options/patch/post/put/head;
Element _method;
int origin;
Element _origin;
String params;
Element _params;
List<TestScript_RequestHeader> requestHeader;
String requestId;
Element _requestId;
String responseId;
Element _responseId;
String sourceId;
Element _sourceId;
String targetId;
Element _targetId;
String url;
Element _url;

}

@JsonSerializable(explicitToJson: true)
class TestScript_RequestHeader {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String field;
Element _field;
String value;
Element _value;

}

@JsonSerializable(explicitToJson: true)
class TestScript_Assert {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String label;
Element _label;
String description;
Element _description;
String direction; // <code> enum: response/request;
Element _direction;
String compareToSourceId;
Element _compareToSourceId;
String compareToSourceExpression;
Element _compareToSourceExpression;
String compareToSourcePath;
Element _compareToSourcePath;
String contentType;
Element _contentType;
String expression;
Element _expression;
String headerField;
Element _headerField;
String minimumId;
Element _minimumId;
bool navigationLinks;
Element _navigationLinks;
String operator; // <code> enum: equals/notEquals/in/notIn/greaterThan/lessThan/empty/notEmpty/contains/notContains/eval;
Element _operator;
String path;
Element _path;
String requestMethod; // <code> enum: delete/get/options/patch/post/put/head;
Element _requestMethod;
String requestURL;
Element _requestURL;
String resource;
Element _resource;
String response; // <code> enum: okay/created/noContent/notModified/bad/forbidden/notFound/methodNotAllowed/conflict/gone/preconditionFailed/unprocessable;
Element _response;
String responseCode;
Element _responseCode;
String sourceId;
Element _sourceId;
String validateProfileId;
Element _validateProfileId;
String value;
Element _value;
bool warningOnly;
Element _warningOnly;

}

@JsonSerializable(explicitToJson: true)
class TestScript_Test {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String description;
Element _description;
List<TestScript_Action1> action;

}

@JsonSerializable(explicitToJson: true)
class TestScript_Action1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestScript_Operation operation;
TestScript_Assert assert;

}

@JsonSerializable(explicitToJson: true)
class TestScript_Teardown {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<TestScript_Action2> action;

}

@JsonSerializable(explicitToJson: true)
class TestScript_Action2 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestScript_Operation operation;

}

part 'valueSet.g.dart';

@JsonSerializable(explicitToJson: true)
class ValueSet {

ValueSet resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
bool immutable;
Element _immutable;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
ValueSet_Compose compose;
ValueSet_Expansion expansion;

}

@JsonSerializable(explicitToJson: true)
class ValueSet_Compose {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String lockedDate;
Element _lockedDate;
bool inactive;
Element _inactive;
List<ValueSet_Include> include;
List<ValueSet_Include> exclude;

}

@JsonSerializable(explicitToJson: true)
class ValueSet_Include {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String system;
Element _system;
String version;
Element _version;
List<ValueSet_Concept> concept;
List<ValueSet_Filter> filter;
List<String> valueSet;

}

@JsonSerializable(explicitToJson: true)
class ValueSet_Concept {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String display;
Element _display;
List<ValueSet_Designation> designation;

}

@JsonSerializable(explicitToJson: true)
class ValueSet_Designation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String language;
Element _language;
Coding use;
String value;
Element _value;

}

@JsonSerializable(explicitToJson: true)
class ValueSet_Filter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String property;
Element _property;
String op; // <code> enum: =/is-a/descendent-of/is-not-a/regex/in/not-in/generalizes/exists;
Element _op;
String value;
Element _value;

}

@JsonSerializable(explicitToJson: true)
class ValueSet_Expansion {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String identifier;
Element _identifier;
DateTime timestamp;
Element _timestamp;
int total;
Element _total;
int offset;
Element _offset;
List<ValueSet_Parameter> parameter;
List<ValueSet_Contains> contains;

}

@JsonSerializable(explicitToJson: true)
class ValueSet_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String valueString;
Element _valueString;
bool valueBoolean;
Element _valueBoolean;
number valueInteger;
Element _valueInteger;
number valueDecimal;
Element _valueDecimal;
String valueUri;
Element _valueUri;
String valueCode;
Element _valueCode;
String valueDateTime;
Element _valueDateTime;

}

@JsonSerializable(explicitToJson: true)
class ValueSet_Contains {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String system;
Element _system;
bool abstract;
Element _abstract;
bool inactive;
Element _inactive;
String version;
Element _version;
String code;
Element _code;
String display;
Element _display;
List<ValueSet_Designation> designation;
List<ValueSet_Contains> contains;

}

part 'verificationResult.g.dart';

@JsonSerializable(explicitToJson: true)
class VerificationResult {

VerificationResult resourceType;
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
List<Reference> target;
List<String> targetLocation;
List<Element> _targetLocation;
CodeableConcept need;
String status;
Element _status;
DateTime statusDate;
Element _statusDate;
CodeableConcept validationType;
List<CodeableConcept> validationProcess;
Timing frequency;
DateTime lastPerformed;
Element _lastPerformed;
String nextScheduled;
Element _nextScheduled;
CodeableConcept failureAction;
List<VerificationResult_PrimarySource> primarySource;
VerificationResult_Attestation attestation;
List<VerificationResult_Validator> validator;

}

@JsonSerializable(explicitToJson: true)
class VerificationResult_PrimarySource {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference who;
List<CodeableConcept> type;
List<CodeableConcept> communicationMethod;
CodeableConcept validationStatus;
DateTime validationDate;
Element _validationDate;
CodeableConcept canPushUpdates;
List<CodeableConcept> pushTypeAvailable;

}

@JsonSerializable(explicitToJson: true)
class VerificationResult_Attestation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference who;
Reference onBehalfOf;
CodeableConcept communicationMethod;
String date;
Element _date;
String sourceIdentityCertificate;
Element _sourceIdentityCertificate;
String proxyIdentityCertificate;
Element _proxyIdentityCertificate;
Signature proxySignature;
Signature sourceSignature;

}

@JsonSerializable(explicitToJson: true)
class VerificationResult_Validator {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference organization;
String identityCertificate;
Element _identityCertificate;
Signature attestationSignature;

}

part 'visionPrescription.g.dart';

@JsonSerializable(explicitToJson: true)
class VisionPrescription {

VisionPrescription resourceType;
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
String status;
Element _status;
DateTime created;
Element _created;
Reference patient;
Reference encounter;
DateTime dateWritten;
Element _dateWritten;
Reference prescriber;
List<VisionPrescription_LensSpecification> lensSpecification;

}

@JsonSerializable(explicitToJson: true)
class VisionPrescription_LensSpecification {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept product;
String eye; // <code> enum: right/left;
Element _eye;
double sphere;
Element _sphere;
double cylinder;
Element _cylinder;
int axis;
Element _axis;
List<VisionPrescription_Prism> prism;
double add;
Element _add;
double power;
Element _power;
double backCurve;
Element _backCurve;
double diameter;
Element _diameter;
Quantity duration;
String color;
Element _color;
String brand;
Element _brand;
List<Annotation> note;

}

@JsonSerializable(explicitToJson: true)
class VisionPrescription_Prism {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
double amount;
Element _amount;
String base; // <code> enum: up/down/in/out;
Element _base;

}

