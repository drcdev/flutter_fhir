part 'element.g.dart';

@JsonSerializable(explicitToJson: true)
class Element {

String id;
List<Extension> extension;

Element(
  {this.id,
      this.extension,
      });

  factory Element.fromJson(Map<String, dynamic> json) => _$ElementFromJson(json);
  Map<String, dynamic> toJson() _$ElementToJson(this);
}

part 'extension.g.dart';

@JsonSerializable(explicitToJson: true)
class Extension {

String id;
List<Extension> extension;
String url;
Element _url;
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

Extension(
  {this.id,
      this.extension,
      this.url,
      this._url,
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

  factory Extension.fromJson(Map<String, dynamic> json) => _$ExtensionFromJson(json);
  Map<String, dynamic> toJson() _$ExtensionToJson(this);
}

part 'narrative.g.dart';

@JsonSerializable(explicitToJson: true)
class Narrative {

String id;
List<Extension> extension;
String status; // <code> enum: generated/extensions/additional/empty;
Element _status;
xhtml div;

Narrative(
  {this.id,
      this.extension,
      this.status,
      this._status,
      this.div,
      });

  factory Narrative.fromJson(Map<String, dynamic> json) => _$NarrativeFromJson(json);
  Map<String, dynamic> toJson() _$NarrativeToJson(this);
}

part 'annotation.g.dart';

@JsonSerializable(explicitToJson: true)
class Annotation {

String id;
List<Extension> extension;
Reference authorReference;
String authorString; //  pattern: ^[ \r\n\t\S]+$
Element _authorString;
DateTime time;
Element _time;
String text;
Element _text;

Annotation(
  {this.id,
      this.extension,
      this.authorReference,
      this.authorString,
      this._authorString,
      this.time,
      this._time,
      this.text,
      this._text,
      });

  factory Annotation.fromJson(Map<String, dynamic> json) => _$AnnotationFromJson(json);
  Map<String, dynamic> toJson() _$AnnotationToJson(this);
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

Attachment(
  {this.id,
      this.extension,
      this.contentType,
      this._contentType,
      this.language,
      this._language,
      this.data,
      this._data,
      this.url,
      this._url,
      this.size,
      this._size,
      this.hash,
      this._hash,
      this.title,
      this._title,
      this.creation,
      this._creation,
      });

  factory Attachment.fromJson(Map<String, dynamic> json) => _$AttachmentFromJson(json);
  Map<String, dynamic> toJson() _$AttachmentToJson(this);
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

Identifier(
  {this.id,
      this.extension,
      this.use,
      this._use,
      this.type,
      this.system,
      this._system,
      this.value,
      this._value,
      this.period,
      this.assigner,
      });

  factory Identifier.fromJson(Map<String, dynamic> json) => _$IdentifierFromJson(json);
  Map<String, dynamic> toJson() _$IdentifierToJson(this);
}

part 'codeableConcept.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeableConcept {

String id;
List<Extension> extension;
List<Coding> coding;
String text;
Element _text;

CodeableConcept(
  {this.id,
      this.extension,
      this.coding,
      this.text,
      this._text,
      });

  factory CodeableConcept.fromJson(Map<String, dynamic> json) => _$CodeableConceptFromJson(json);
  Map<String, dynamic> toJson() _$CodeableConceptToJson(this);
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

Coding(
  {this.id,
      this.extension,
      this.system,
      this._system,
      this.version,
      this._version,
      this.code,
      this._code,
      this.display,
      this._display,
      this.userSelected,
      this._userSelected,
      });

  factory Coding.fromJson(Map<String, dynamic> json) => _$CodingFromJson(json);
  Map<String, dynamic> toJson() _$CodingToJson(this);
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

Quantity(
  {this.id,
      this.extension,
      this.value,
      this._value,
      this.comparator,
      this._comparator,
      this.unit,
      this._unit,
      this.system,
      this._system,
      this.code,
      this._code,
      });

  factory Quantity.fromJson(Map<String, dynamic> json) => _$QuantityFromJson(json);
  Map<String, dynamic> toJson() _$QuantityToJson(this);
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

Duration(
  {this.id,
      this.extension,
      this.value,
      this._value,
      this.comparator,
      this._comparator,
      this.unit,
      this._unit,
      this.system,
      this._system,
      this.code,
      this._code,
      });

  factory Duration.fromJson(Map<String, dynamic> json) => _$DurationFromJson(json);
  Map<String, dynamic> toJson() _$DurationToJson(this);
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

Distance(
  {this.id,
      this.extension,
      this.value,
      this._value,
      this.comparator,
      this._comparator,
      this.unit,
      this._unit,
      this.system,
      this._system,
      this.code,
      this._code,
      });

  factory Distance.fromJson(Map<String, dynamic> json) => _$DistanceFromJson(json);
  Map<String, dynamic> toJson() _$DistanceToJson(this);
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

Count(
  {this.id,
      this.extension,
      this.value,
      this._value,
      this.comparator,
      this._comparator,
      this.unit,
      this._unit,
      this.system,
      this._system,
      this.code,
      this._code,
      });

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
  Map<String, dynamic> toJson() _$CountToJson(this);
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

Money(
  {this.id,
      this.extension,
      this.value,
      this._value,
      this.currency,
      this._currency,
      });

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);
  Map<String, dynamic> toJson() _$MoneyToJson(this);
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

Age(
  {this.id,
      this.extension,
      this.value,
      this._value,
      this.comparator,
      this._comparator,
      this.unit,
      this._unit,
      this.system,
      this._system,
      this.code,
      this._code,
      });

  factory Age.fromJson(Map<String, dynamic> json) => _$AgeFromJson(json);
  Map<String, dynamic> toJson() _$AgeToJson(this);
}

part 'range.g.dart';

@JsonSerializable(explicitToJson: true)
class Range {

String id;
List<Extension> extension;
Quantity low;
Quantity high;

Range(
  {this.id,
      this.extension,
      this.low,
      this.high,
      });

  factory Range.fromJson(Map<String, dynamic> json) => _$RangeFromJson(json);
  Map<String, dynamic> toJson() _$RangeToJson(this);
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

Period(
  {this.id,
      this.extension,
      this.start,
      this._start,
      this.end,
      this._end,
      });

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);
  Map<String, dynamic> toJson() _$PeriodToJson(this);
}

part 'ratio.g.dart';

@JsonSerializable(explicitToJson: true)
class Ratio {

String id;
List<Extension> extension;
Quantity numerator;
Quantity denominator;

Ratio(
  {this.id,
      this.extension,
      this.numerator,
      this.denominator,
      });

  factory Ratio.fromJson(Map<String, dynamic> json) => _$RatioFromJson(json);
  Map<String, dynamic> toJson() _$RatioToJson(this);
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

Reference(
  {this.id,
      this.extension,
      this.reference,
      this._reference,
      this.type,
      this._type,
      this.identifier,
      this.display,
      this._display,
      });

  factory Reference.fromJson(Map<String, dynamic> json) => _$ReferenceFromJson(json);
  Map<String, dynamic> toJson() _$ReferenceToJson(this);
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

SampledData(
  {this.id,
      this.extension,
      this.origin,
      this.period,
      this._period,
      this.factor,
      this._factor,
      this.lowerLimit,
      this._lowerLimit,
      this.upperLimit,
      this._upperLimit,
      this.dimensions,
      this._dimensions,
      this.data,
      this._data,
      });

  factory SampledData.fromJson(Map<String, dynamic> json) => _$SampledDataFromJson(json);
  Map<String, dynamic> toJson() _$SampledDataToJson(this);
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

Signature(
  {this.id,
      this.extension,
      this.type,
      this.when,
      this._when,
      this.who,
      this.onBehalfOf,
      this.targetFormat,
      this._targetFormat,
      this.sigFormat,
      this._sigFormat,
      this.data,
      this._data,
      });

  factory Signature.fromJson(Map<String, dynamic> json) => _$SignatureFromJson(json);
  Map<String, dynamic> toJson() _$SignatureToJson(this);
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

HumanName(
  {this.id,
      this.extension,
      this.use,
      this._use,
      this.text,
      this._text,
      this.family,
      this._family,
      this.given,
      this._given,
      this.prefix,
      this._prefix,
      this.suffix,
      this._suffix,
      this.period,
      });

  factory HumanName.fromJson(Map<String, dynamic> json) => _$HumanNameFromJson(json);
  Map<String, dynamic> toJson() _$HumanNameToJson(this);
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

Address(
  {this.id,
      this.extension,
      this.use,
      this._use,
      this.type,
      this._type,
      this.text,
      this._text,
      this.line,
      this._line,
      this.city,
      this._city,
      this.district,
      this._district,
      this.state,
      this._state,
      this.postalCode,
      this._postalCode,
      this.country,
      this._country,
      this.period,
      });

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() _$AddressToJson(this);
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

ContactPoint(
  {this.id,
      this.extension,
      this.system,
      this._system,
      this.value,
      this._value,
      this.use,
      this._use,
      this.rank,
      this._rank,
      this.period,
      });

  factory ContactPoint.fromJson(Map<String, dynamic> json) => _$ContactPointFromJson(json);
  Map<String, dynamic> toJson() _$ContactPointToJson(this);
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

Timing(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.event,
      this._event,
      this.repeat,
      this.code,
      });

  factory Timing.fromJson(Map<String, dynamic> json) => _$TimingFromJson(json);
  Map<String, dynamic> toJson() _$TimingToJson(this);
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

Timing_Repeat(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.boundsDuration,
      this.boundsRange,
      this.boundsPeriod,
      this.count,
      this._count,
      this.countMax,
      this._countMax,
      this.duration,
      this._duration,
      this.durationMax,
      this._durationMax,
      this.durationUnit,
      this._durationUnit,
      this.frequency,
      this._frequency,
      this.frequencyMax,
      this._frequencyMax,
      this.period,
      this._period,
      this.periodMax,
      this._periodMax,
      this.periodUnit,
      this._periodUnit,
      this.dayOfWeek,
      this._dayOfWeek,
      this.timeOfDay,
      this._timeOfDay,
      this.when,
      this._when,
      this.offset,
      this._offset,
      });

  factory Timing_Repeat.fromJson(Map<String, dynamic> json) => _$Timing_RepeatFromJson(json);
  Map<String, dynamic> toJson() _$Timing_RepeatToJson(this);
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

Meta(
  {this.id,
      this.extension,
      this.versionId,
      this._versionId,
      this.lastUpdated,
      this._lastUpdated,
      this.source,
      this._source,
      this.profile,
      this.security,
      this.tag,
      });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() _$MetaToJson(this);
}

part 'contactDetail.g.dart';

@JsonSerializable(explicitToJson: true)
class ContactDetail {

String id;
List<Extension> extension;
String name;
Element _name;
List<ContactPoint> telecom;

ContactDetail(
  {this.id,
      this.extension,
      this.name,
      this._name,
      this.telecom,
      });

  factory ContactDetail.fromJson(Map<String, dynamic> json) => _$ContactDetailFromJson(json);
  Map<String, dynamic> toJson() _$ContactDetailToJson(this);
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

Contributor(
  {this.id,
      this.extension,
      this.type,
      this._type,
      this.name,
      this._name,
      this.contact,
      });

  factory Contributor.fromJson(Map<String, dynamic> json) => _$ContributorFromJson(json);
  Map<String, dynamic> toJson() _$ContributorToJson(this);
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

DataRequirement(
  {this.id,
      this.extension,
      this.type,
      this._type,
      this.profile,
      this.subjectCodeableConcept,
      this.subjectReference,
      this.mustSupport,
      this._mustSupport,
      this.codeFilter,
      this.dateFilter,
      this.limit,
      this._limit,
      this.sort,
      });

  factory DataRequirement.fromJson(Map<String, dynamic> json) => _$DataRequirementFromJson(json);
  Map<String, dynamic> toJson() _$DataRequirementToJson(this);
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

DataRequirement_CodeFilter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.path,
      this._path,
      this.searchParam,
      this._searchParam,
      this.valueSet,
      this.code,
      });

  factory DataRequirement_CodeFilter.fromJson(Map<String, dynamic> json) => _$DataRequirement_CodeFilterFromJson(json);
  Map<String, dynamic> toJson() _$DataRequirement_CodeFilterToJson(this);
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
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _valueDateTime;
Period valuePeriod;
Duration valueDuration;

DataRequirement_DateFilter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.path,
      this._path,
      this.searchParam,
      this._searchParam,
      this.valueDateTime,
      this._valueDateTime,
      this.valuePeriod,
      this.valueDuration,
      });

  factory DataRequirement_DateFilter.fromJson(Map<String, dynamic> json) => _$DataRequirement_DateFilterFromJson(json);
  Map<String, dynamic> toJson() _$DataRequirement_DateFilterToJson(this);
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

DataRequirement_Sort(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.path,
      this._path,
      this.direction,
      this._direction,
      });

  factory DataRequirement_Sort.fromJson(Map<String, dynamic> json) => _$DataRequirement_SortFromJson(json);
  Map<String, dynamic> toJson() _$DataRequirement_SortToJson(this);
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

ParameterDefinition(
  {this.id,
      this.extension,
      this.name,
      this._name,
      this.use,
      this._use,
      this.min,
      this._min,
      this.max,
      this._max,
      this.documentation,
      this._documentation,
      this.type,
      this._type,
      this.profile,
      });

  factory ParameterDefinition.fromJson(Map<String, dynamic> json) => _$ParameterDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$ParameterDefinitionToJson(this);
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

RelatedArtifact(
  {this.id,
      this.extension,
      this.type,
      this._type,
      this.label,
      this._label,
      this.display,
      this._display,
      this.citation,
      this._citation,
      this.url,
      this._url,
      this.document,
      this.resource,
      });

  factory RelatedArtifact.fromJson(Map<String, dynamic> json) => _$RelatedArtifactFromJson(json);
  Map<String, dynamic> toJson() _$RelatedArtifactToJson(this);
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
String timingDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _timingDate;
String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _timingDateTime;
List<DataRequirement> data;
Expression condition;

TriggerDefinition(
  {this.id,
      this.extension,
      this.type,
      this._type,
      this.name,
      this._name,
      this.timingTiming,
      this.timingReference,
      this.timingDate,
      this._timingDate,
      this.timingDateTime,
      this._timingDateTime,
      this.data,
      this.condition,
      });

  factory TriggerDefinition.fromJson(Map<String, dynamic> json) => _$TriggerDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$TriggerDefinitionToJson(this);
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

UsageContext(
  {this.id,
      this.extension,
      this.code,
      this.valueCodeableConcept,
      this.valueQuantity,
      this.valueRange,
      this.valueReference,
      });

  factory UsageContext.fromJson(Map<String, dynamic> json) => _$UsageContextFromJson(json);
  Map<String, dynamic> toJson() _$UsageContextToJson(this);
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
bool asNeededBoolean; //  pattern: ^true|false$
Element _asNeededBoolean;
CodeableConcept asNeededCodeableConcept;
CodeableConcept site;
CodeableConcept route;
CodeableConcept method;
List<Dosage_DoseAndRate> doseAndRate;
Ratio maxDosePerPeriod;
Quantity maxDosePerAdministration;
Quantity maxDosePerLifetime;

Dosage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.text,
      this._text,
      this.additionalInstruction,
      this.patientInstruction,
      this._patientInstruction,
      this.timing,
      this.asNeededBoolean,
      this._asNeededBoolean,
      this.asNeededCodeableConcept,
      this.site,
      this.route,
      this.method,
      this.doseAndRate,
      this.maxDosePerPeriod,
      this.maxDosePerAdministration,
      this.maxDosePerLifetime,
      });

  factory Dosage.fromJson(Map<String, dynamic> json) => _$DosageFromJson(json);
  Map<String, dynamic> toJson() _$DosageToJson(this);
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

Dosage_DoseAndRate(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.doseRange,
      this.doseQuantity,
      this.rateRatio,
      this.rateRange,
      this.rateQuantity,
      });

  factory Dosage_DoseAndRate.fromJson(Map<String, dynamic> json) => _$Dosage_DoseAndRateFromJson(json);
  Map<String, dynamic> toJson() _$Dosage_DoseAndRateToJson(this);
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

Population(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.ageRange,
      this.ageCodeableConcept,
      this.gender,
      this.race,
      this.physiologicalCondition,
      });

  factory Population.fromJson(Map<String, dynamic> json) => _$PopulationFromJson(json);
  Map<String, dynamic> toJson() _$PopulationToJson(this);
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

ProductShelfLife(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.type,
      this.period,
      this.specialPrecautionsForStorage,
      });

  factory ProductShelfLife.fromJson(Map<String, dynamic> json) => _$ProductShelfLifeFromJson(json);
  Map<String, dynamic> toJson() _$ProductShelfLifeToJson(this);
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

ProdCharacteristic(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.height,
      this.width,
      this.depth,
      this.weight,
      this.nominalVolume,
      this.externalDiameter,
      this.shape,
      this._shape,
      this.color,
      this._color,
      this.imprint,
      this._imprint,
      this.image,
      this.scoring,
      });

  factory ProdCharacteristic.fromJson(Map<String, dynamic> json) => _$ProdCharacteristicFromJson(json);
  Map<String, dynamic> toJson() _$ProdCharacteristicToJson(this);
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

MarketingStatus(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.country,
      this.jurisdiction,
      this.status,
      this.dateRange,
      this.restoreDate,
      this._restoreDate,
      });

  factory MarketingStatus.fromJson(Map<String, dynamic> json) => _$MarketingStatusFromJson(json);
  Map<String, dynamic> toJson() _$MarketingStatusToJson(this);
}

part 'substanceAmount.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceAmount {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity amountQuantity;
Range amountRange;
String amountString; //  pattern: ^[ \r\n\t\S]+$
Element _amountString;
CodeableConcept amountType;
String amountText;
Element _amountText;
SubstanceAmount_ReferenceRange referenceRange;

SubstanceAmount(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.amountQuantity,
      this.amountRange,
      this.amountString,
      this._amountString,
      this.amountType,
      this.amountText,
      this._amountText,
      this.referenceRange,
      });

  factory SubstanceAmount.fromJson(Map<String, dynamic> json) => _$SubstanceAmountFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceAmountToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceAmount_ReferenceRange {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity lowLimit;
Quantity highLimit;

SubstanceAmount_ReferenceRange(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.lowLimit,
      this.highLimit,
      });

  factory SubstanceAmount_ReferenceRange.fromJson(Map<String, dynamic> json) => _$SubstanceAmount_ReferenceRangeFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceAmount_ReferenceRangeToJson(this);
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

Expression(
  {this.id,
      this.extension,
      this.description,
      this._description,
      this.name,
      this._name,
      this.language,
      this._language,
      this.expression,
      this._expression,
      this.reference,
      this._reference,
      });

  factory Expression.fromJson(Map<String, dynamic> json) => _$ExpressionFromJson(json);
  Map<String, dynamic> toJson() _$ExpressionToJson(this);
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

Account(
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
      this.status,
      this._status,
      this.type,
      this.name,
      this._name,
      this.subject,
      this.servicePeriod,
      this.coverage,
      this.owner,
      this.description,
      this._description,
      this.guarantor,
      this.partOf,
      });

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
  Map<String, dynamic> toJson() _$AccountToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Account_Coverage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference coverage;
int priority;
Element _priority;

Account_Coverage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.coverage,
      this.priority,
      this._priority,
      });

  factory Account_Coverage.fromJson(Map<String, dynamic> json) => _$Account_CoverageFromJson(json);
  Map<String, dynamic> toJson() _$Account_CoverageToJson(this);
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

Account_Guarantor(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.party,
      this.onHold,
      this._onHold,
      this.period,
      });

  factory Account_Guarantor.fromJson(Map<String, dynamic> json) => _$Account_GuarantorFromJson(json);
  Map<String, dynamic> toJson() _$Account_GuarantorToJson(this);
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
String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

ActivityDefinition(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.subtitle,
      this._subtitle,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.subjectCodeableConcept,
      this.subjectReference,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.usage,
      this._usage,
      this.copyright,
      this._copyright,
      this.approvalDate,
      this._approvalDate,
      this.lastReviewDate,
      this._lastReviewDate,
      this.effectivePeriod,
      this.topic,
      this.author,
      this.editor,
      this.reviewer,
      this.endorser,
      this.relatedArtifact,
      this.library,
      this.kind,
      this._kind,
      this.profile,
      this.code,
      this.intent,
      this._intent,
      this.priority,
      this._priority,
      this.doNotPerform,
      this._doNotPerform,
      this.timingTiming,
      this.timingDateTime,
      this._timingDateTime,
      this.timingAge,
      this.timingPeriod,
      this.timingRange,
      this.timingDuration,
      this.location,
      this.participant,
      this.productReference,
      this.productCodeableConcept,
      this.quantity,
      this.dosage,
      this.bodySite,
      this.specimenRequirement,
      this.observationRequirement,
      this.observationResultRequirement,
      this.transform,
      this.dynamicValue,
      });

  factory ActivityDefinition.fromJson(Map<String, dynamic> json) => _$ActivityDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$ActivityDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ActivityDefinition_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type;
Element _type;
CodeableConcept role;

ActivityDefinition_Participant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.role,
      });

  factory ActivityDefinition_Participant.fromJson(Map<String, dynamic> json) => _$ActivityDefinition_ParticipantFromJson(json);
  Map<String, dynamic> toJson() _$ActivityDefinition_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ActivityDefinition_DynamicValue {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String path;
Element _path;
Expression expression;

ActivityDefinition_DynamicValue(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.path,
      this._path,
      this.expression,
      });

  factory ActivityDefinition_DynamicValue.fromJson(Map<String, dynamic> json) => _$ActivityDefinition_DynamicValueFromJson(json);
  Map<String, dynamic> toJson() _$ActivityDefinition_DynamicValueToJson(this);
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

AdverseEvent(
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
      this.actuality,
      this._actuality,
      this.category,
      this.event,
      this.subject,
      this.encounter,
      this.date,
      this._date,
      this.detected,
      this._detected,
      this.recordedDate,
      this._recordedDate,
      this.resultingCondition,
      this.location,
      this.seriousness,
      this.severity,
      this.outcome,
      this.recorder,
      this.contributor,
      this.suspectEntity,
      this.subjectMedicalHistory,
      this.referenceDocument,
      this.study,
      });

  factory AdverseEvent.fromJson(Map<String, dynamic> json) => _$AdverseEventFromJson(json);
  Map<String, dynamic> toJson() _$AdverseEventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdverseEvent_SuspectEntity {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference instance;
List<AdverseEvent_Causality> causality;

AdverseEvent_SuspectEntity(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.instance,
      this.causality,
      });

  factory AdverseEvent_SuspectEntity.fromJson(Map<String, dynamic> json) => _$AdverseEvent_SuspectEntityFromJson(json);
  Map<String, dynamic> toJson() _$AdverseEvent_SuspectEntityToJson(this);
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

AdverseEvent_Causality(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.assessment,
      this.productRelatedness,
      this._productRelatedness,
      this.author,
      this.method,
      });

  factory AdverseEvent_Causality.fromJson(Map<String, dynamic> json) => _$AdverseEvent_CausalityFromJson(json);
  Map<String, dynamic> toJson() _$AdverseEvent_CausalityToJson(this);
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
String onsetDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _onsetDateTime;
Age onsetAge;
Period onsetPeriod;
Range onsetRange;
String onsetString; //  pattern: ^[ \r\n\t\S]+$
Element _onsetString;
DateTime recordedDate;
Element _recordedDate;
Reference recorder;
Reference asserter;
DateTime lastOccurrence;
Element _lastOccurrence;
List<Annotation> note;
List<AllergyIntolerance_Reaction> reaction;

AllergyIntolerance(
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
      this.clinicalStatus,
      this.verificationStatus,
      this.type,
      this._type,
      this.category,
      this._category,
      this.criticality,
      this._criticality,
      this.code,
      this.patient,
      this.encounter,
      this.onsetDateTime,
      this._onsetDateTime,
      this.onsetAge,
      this.onsetPeriod,
      this.onsetRange,
      this.onsetString,
      this._onsetString,
      this.recordedDate,
      this._recordedDate,
      this.recorder,
      this.asserter,
      this.lastOccurrence,
      this._lastOccurrence,
      this.note,
      this.reaction,
      });

  factory AllergyIntolerance.fromJson(Map<String, dynamic> json) => _$AllergyIntoleranceFromJson(json);
  Map<String, dynamic> toJson() _$AllergyIntoleranceToJson(this);
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

AllergyIntolerance_Reaction(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.substance,
      this.manifestation,
      this.description,
      this._description,
      this.onset,
      this._onset,
      this.severity,
      this._severity,
      this.exposureRoute,
      this.note,
      });

  factory AllergyIntolerance_Reaction.fromJson(Map<String, dynamic> json) => _$AllergyIntolerance_ReactionFromJson(json);
  Map<String, dynamic> toJson() _$AllergyIntolerance_ReactionToJson(this);
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

Appointment(
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
      this.status,
      this._status,
      this.cancelationReason,
      this.serviceCategory,
      this.serviceType,
      this.specialty,
      this.appointmentType,
      this.reasonCode,
      this.reasonReference,
      this.priority,
      this._priority,
      this.description,
      this._description,
      this.supportingInformation,
      this.start,
      this._start,
      this.end,
      this._end,
      this.minutesDuration,
      this._minutesDuration,
      this.slot,
      this.created,
      this._created,
      this.comment,
      this._comment,
      this.patientInstruction,
      this._patientInstruction,
      this.basedOn,
      this.participant,
      this.requestedPeriod,
      });

  factory Appointment.fromJson(Map<String, dynamic> json) => _$AppointmentFromJson(json);
  Map<String, dynamic> toJson() _$AppointmentToJson(this);
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

Appointment_Participant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.actor,
      this.required,
      this._required,
      this.status,
      this._status,
      this.period,
      });

  factory Appointment_Participant.fromJson(Map<String, dynamic> json) => _$Appointment_ParticipantFromJson(json);
  Map<String, dynamic> toJson() _$Appointment_ParticipantToJson(this);
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

AppointmentResponse(
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
      this.appointment,
      this.start,
      this._start,
      this.end,
      this._end,
      this.participantType,
      this.actor,
      this.participantStatus,
      this._participantStatus,
      this.comment,
      this._comment,
      });

  factory AppointmentResponse.fromJson(Map<String, dynamic> json) => _$AppointmentResponseFromJson(json);
  Map<String, dynamic> toJson() _$AppointmentResponseToJson(this);
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

AuditEvent(
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
      this.type,
      this.subtype,
      this.action,
      this._action,
      this.period,
      this.recorded,
      this._recorded,
      this.outcome,
      this._outcome,
      this.outcomeDesc,
      this._outcomeDesc,
      this.purposeOfEvent,
      this.agent,
      this.source,
      this.entity,
      });

  factory AuditEvent.fromJson(Map<String, dynamic> json) => _$AuditEventFromJson(json);
  Map<String, dynamic> toJson() _$AuditEventToJson(this);
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

AuditEvent_Agent(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.role,
      this.who,
      this.altId,
      this._altId,
      this.name,
      this._name,
      this.requestor,
      this._requestor,
      this.location,
      this.policy,
      this._policy,
      this.media,
      this.network,
      this.purposeOfUse,
      });

  factory AuditEvent_Agent.fromJson(Map<String, dynamic> json) => _$AuditEvent_AgentFromJson(json);
  Map<String, dynamic> toJson() _$AuditEvent_AgentToJson(this);
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

AuditEvent_Network(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.address,
      this._address,
      this.type,
      this._type,
      });

  factory AuditEvent_Network.fromJson(Map<String, dynamic> json) => _$AuditEvent_NetworkFromJson(json);
  Map<String, dynamic> toJson() _$AuditEvent_NetworkToJson(this);
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

AuditEvent_Source(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.site,
      this._site,
      this.observer,
      this.type,
      });

  factory AuditEvent_Source.fromJson(Map<String, dynamic> json) => _$AuditEvent_SourceFromJson(json);
  Map<String, dynamic> toJson() _$AuditEvent_SourceToJson(this);
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

AuditEvent_Entity(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.what,
      this.type,
      this.role,
      this.lifecycle,
      this.securityLabel,
      this.name,
      this._name,
      this.description,
      this._description,
      this.query,
      this._query,
      this.detail,
      });

  factory AuditEvent_Entity.fromJson(Map<String, dynamic> json) => _$AuditEvent_EntityFromJson(json);
  Map<String, dynamic> toJson() _$AuditEvent_EntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Detail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type;
Element _type;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
Element _valueBase64Binary;

AuditEvent_Detail(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.valueString,
      this._valueString,
      this.valueBase64Binary,
      this._valueBase64Binary,
      });

  factory AuditEvent_Detail.fromJson(Map<String, dynamic> json) => _$AuditEvent_DetailFromJson(json);
  Map<String, dynamic> toJson() _$AuditEvent_DetailToJson(this);
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

Basic(
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
      this.code,
      this.subject,
      this.created,
      this._created,
      this.author,
      });

  factory Basic.fromJson(Map<String, dynamic> json) => _$BasicFromJson(json);
  Map<String, dynamic> toJson() _$BasicToJson(this);
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

Binary(
  {this.resourceType,
      this.id,
      this.meta,
      this.implicitRules,
      this._implicitRules,
      this.language,
      this._language,
      this.contentType,
      this._contentType,
      this.securityContext,
      this.data,
      this._data,
      });

  factory Binary.fromJson(Map<String, dynamic> json) => _$BinaryFromJson(json);
  Map<String, dynamic> toJson() _$BinaryToJson(this);
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

BiologicallyDerivedProduct(
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
      this.productCategory,
      this._productCategory,
      this.productCode,
      this.status,
      this._status,
      this.request,
      this.quantity,
      this._quantity,
      this.parent,
      this.collection,
      this.processing,
      this.manipulation,
      this.storage,
      });

  factory BiologicallyDerivedProduct.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProductFromJson(json);
  Map<String, dynamic> toJson() _$BiologicallyDerivedProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Collection {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference collector;
Reference source;
String collectedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _collectedDateTime;
Period collectedPeriod;

BiologicallyDerivedProduct_Collection(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.collector,
      this.source,
      this.collectedDateTime,
      this._collectedDateTime,
      this.collectedPeriod,
      });

  factory BiologicallyDerivedProduct_Collection.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_CollectionFromJson(json);
  Map<String, dynamic> toJson() _$BiologicallyDerivedProduct_CollectionToJson(this);
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
String timeDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _timeDateTime;
Period timePeriod;

BiologicallyDerivedProduct_Processing(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.procedure,
      this.additive,
      this.timeDateTime,
      this._timeDateTime,
      this.timePeriod,
      });

  factory BiologicallyDerivedProduct_Processing.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_ProcessingFromJson(json);
  Map<String, dynamic> toJson() _$BiologicallyDerivedProduct_ProcessingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Manipulation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
String timeDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _timeDateTime;
Period timePeriod;

BiologicallyDerivedProduct_Manipulation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.timeDateTime,
      this._timeDateTime,
      this.timePeriod,
      });

  factory BiologicallyDerivedProduct_Manipulation.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_ManipulationFromJson(json);
  Map<String, dynamic> toJson() _$BiologicallyDerivedProduct_ManipulationToJson(this);
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

BiologicallyDerivedProduct_Storage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.temperature,
      this._temperature,
      this.scale,
      this._scale,
      this.duration,
      });

  factory BiologicallyDerivedProduct_Storage.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_StorageFromJson(json);
  Map<String, dynamic> toJson() _$BiologicallyDerivedProduct_StorageToJson(this);
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

BodyStructure(
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
      this.active,
      this._active,
      this.morphology,
      this.location,
      this.locationQualifier,
      this.description,
      this._description,
      this.image,
      this.patient,
      });

  factory BodyStructure.fromJson(Map<String, dynamic> json) => _$BodyStructureFromJson(json);
  Map<String, dynamic> toJson() _$BodyStructureToJson(this);
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

Bundle(
  {this.resourceType,
      this.id,
      this.meta,
      this.implicitRules,
      this._implicitRules,
      this.language,
      this._language,
      this.identifier,
      this.type,
      this._type,
      this.timestamp,
      this._timestamp,
      this.total,
      this._total,
      this.link,
      this.entry,
      this.signature,
      });

  factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);
  Map<String, dynamic> toJson() _$BundleToJson(this);
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

Bundle_Link(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.relation,
      this._relation,
      this.url,
      this._url,
      });

  factory Bundle_Link.fromJson(Map<String, dynamic> json) => _$Bundle_LinkFromJson(json);
  Map<String, dynamic> toJson() _$Bundle_LinkToJson(this);
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

Bundle_Entry(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.link,
      this.fullUrl,
      this._fullUrl,
      this.resource,
      this.search,
      this.request,
      this.response,
      });

  factory Bundle_Entry.fromJson(Map<String, dynamic> json) => _$Bundle_EntryFromJson(json);
  Map<String, dynamic> toJson() _$Bundle_EntryToJson(this);
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

Bundle_Search(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.mode,
      this._mode,
      this.score,
      this._score,
      });

  factory Bundle_Search.fromJson(Map<String, dynamic> json) => _$Bundle_SearchFromJson(json);
  Map<String, dynamic> toJson() _$Bundle_SearchToJson(this);
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

Bundle_Request(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.method,
      this._method,
      this.url,
      this._url,
      this.ifNoneMatch,
      this._ifNoneMatch,
      this.ifModifiedSince,
      this._ifModifiedSince,
      this.ifMatch,
      this._ifMatch,
      this.ifNoneExist,
      this._ifNoneExist,
      });

  factory Bundle_Request.fromJson(Map<String, dynamic> json) => _$Bundle_RequestFromJson(json);
  Map<String, dynamic> toJson() _$Bundle_RequestToJson(this);
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

Bundle_Response(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.status,
      this._status,
      this.location,
      this._location,
      this.etag,
      this._etag,
      this.lastModified,
      this._lastModified,
      this.outcome,
      });

  factory Bundle_Response.fromJson(Map<String, dynamic> json) => _$Bundle_ResponseFromJson(json);
  Map<String, dynamic> toJson() _$Bundle_ResponseToJson(this);
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

CapabilityStatement(
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
      this.url,
      this._url,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.copyright,
      this._copyright,
      this.kind,
      this._kind,
      this.instantiates,
      this.imports,
      this.software,
      this.implementation,
      this.fhirVersion,
      this._fhirVersion,
      this.format,
      this._format,
      this.patchFormat,
      this._patchFormat,
      this.implementationGuide,
      this.rest,
      this.messaging,
      this.document,
      });

  factory CapabilityStatement.fromJson(Map<String, dynamic> json) => _$CapabilityStatementFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatementToJson(this);
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

CapabilityStatement_Software(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.version,
      this._version,
      this.releaseDate,
      this._releaseDate,
      });

  factory CapabilityStatement_Software.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SoftwareFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_SoftwareToJson(this);
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

CapabilityStatement_Implementation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.url,
      this._url,
      this.custodian,
      });

  factory CapabilityStatement_Implementation.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_ImplementationFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_ImplementationToJson(this);
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

CapabilityStatement_Rest(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.mode,
      this._mode,
      this.documentation,
      this._documentation,
      this.security,
      this.resource,
      this.interaction,
      this.searchParam,
      this.operation,
      this.compartment,
      });

  factory CapabilityStatement_Rest.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_RestFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_RestToJson(this);
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

CapabilityStatement_Security(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.cors,
      this._cors,
      this.service,
      this.description,
      this._description,
      });

  factory CapabilityStatement_Security.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SecurityFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_SecurityToJson(this);
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

CapabilityStatement_Resource(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.profile,
      this.supportedProfile,
      this.documentation,
      this._documentation,
      this.interaction,
      this.versioning,
      this._versioning,
      this.readHistory,
      this._readHistory,
      this.updateCreate,
      this._updateCreate,
      this.conditionalCreate,
      this._conditionalCreate,
      this.conditionalRead,
      this._conditionalRead,
      this.conditionalUpdate,
      this._conditionalUpdate,
      this.conditionalDelete,
      this._conditionalDelete,
      this.referencePolicy,
      this._referencePolicy,
      this.searchInclude,
      this._searchInclude,
      this.searchRevInclude,
      this._searchRevInclude,
      this.searchParam,
      this.operation,
      });

  factory CapabilityStatement_Resource.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_ResourceFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_ResourceToJson(this);
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

CapabilityStatement_Interaction(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.documentation,
      this._documentation,
      });

  factory CapabilityStatement_Interaction.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_InteractionFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_InteractionToJson(this);
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

CapabilityStatement_SearchParam(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.definition,
      this.type,
      this._type,
      this.documentation,
      this._documentation,
      });

  factory CapabilityStatement_SearchParam.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SearchParamFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_SearchParamToJson(this);
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

CapabilityStatement_Operation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.definition,
      this.documentation,
      this._documentation,
      });

  factory CapabilityStatement_Operation.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_OperationFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_OperationToJson(this);
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

CapabilityStatement_Interaction1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.documentation,
      this._documentation,
      });

  factory CapabilityStatement_Interaction1.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_Interaction1FromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_Interaction1ToJson(this);
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

CapabilityStatement_Messaging(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.endpoint,
      this.reliableCache,
      this._reliableCache,
      this.documentation,
      this._documentation,
      this.supportedMessage,
      });

  factory CapabilityStatement_Messaging.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_MessagingFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_MessagingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Endpoint {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Coding protocol;
String address;
Element _address;

CapabilityStatement_Endpoint(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.protocol,
      this.address,
      this._address,
      });

  factory CapabilityStatement_Endpoint.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_EndpointFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_EndpointToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_SupportedMessage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String mode; // <code> enum: sender/receiver;
Element _mode;
String definition;

CapabilityStatement_SupportedMessage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.mode,
      this._mode,
      this.definition,
      });

  factory CapabilityStatement_SupportedMessage.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SupportedMessageFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_SupportedMessageToJson(this);
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

CapabilityStatement_Document(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.mode,
      this._mode,
      this.documentation,
      this._documentation,
      this.profile,
      });

  factory CapabilityStatement_Document.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_DocumentFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_DocumentToJson(this);
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

CarePlan(
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
      this.replaces,
      this.partOf,
      this.status,
      this._status,
      this.intent,
      this._intent,
      this.category,
      this.title,
      this._title,
      this.description,
      this._description,
      this.subject,
      this.encounter,
      this.period,
      this.created,
      this._created,
      this.author,
      this.contributor,
      this.careTeam,
      this.addresses,
      this.supportingInfo,
      this.goal,
      this.activity,
      this.note,
      });

  factory CarePlan.fromJson(Map<String, dynamic> json) => _$CarePlanFromJson(json);
  Map<String, dynamic> toJson() _$CarePlanToJson(this);
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

CarePlan_Activity(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.outcomeCodeableConcept,
      this.outcomeReference,
      this.progress,
      this.reference,
      this.detail,
      });

  factory CarePlan_Activity.fromJson(Map<String, dynamic> json) => _$CarePlan_ActivityFromJson(json);
  Map<String, dynamic> toJson() _$CarePlan_ActivityToJson(this);
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
String scheduledString; //  pattern: ^[ \r\n\t\S]+$
Element _scheduledString;
Reference location;
List<Reference> performer;
CodeableConcept productCodeableConcept;
Reference productReference;
Quantity dailyAmount;
Quantity quantity;
String description;
Element _description;

CarePlan_Detail(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.kind,
      this._kind,
      this.instantiatesCanonical,
      this.instantiatesUri,
      this._instantiatesUri,
      this.code,
      this.reasonCode,
      this.reasonReference,
      this.goal,
      this.status,
      this._status,
      this.statusReason,
      this.doNotPerform,
      this._doNotPerform,
      this.scheduledTiming,
      this.scheduledPeriod,
      this.scheduledString,
      this._scheduledString,
      this.location,
      this.performer,
      this.productCodeableConcept,
      this.productReference,
      this.dailyAmount,
      this.quantity,
      this.description,
      this._description,
      });

  factory CarePlan_Detail.fromJson(Map<String, dynamic> json) => _$CarePlan_DetailFromJson(json);
  Map<String, dynamic> toJson() _$CarePlan_DetailToJson(this);
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

CareTeam(
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
      this.status,
      this._status,
      this.category,
      this.name,
      this._name,
      this.subject,
      this.encounter,
      this.period,
      this.participant,
      this.reasonCode,
      this.reasonReference,
      this.managingOrganization,
      this.telecom,
      this.note,
      });

  factory CareTeam.fromJson(Map<String, dynamic> json) => _$CareTeamFromJson(json);
  Map<String, dynamic> toJson() _$CareTeamToJson(this);
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

CareTeam_Participant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.role,
      this.member,
      this.onBehalfOf,
      this.period,
      });

  factory CareTeam_Participant.fromJson(Map<String, dynamic> json) => _$CareTeam_ParticipantFromJson(json);
  Map<String, dynamic> toJson() _$CareTeam_ParticipantToJson(this);
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

CatalogEntry(
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
      this.type,
      this.orderable,
      this._orderable,
      this.referencedItem,
      this.additionalIdentifier,
      this.classification,
      this.status,
      this._status,
      this.validityPeriod,
      this.validTo,
      this._validTo,
      this.lastUpdated,
      this._lastUpdated,
      this.additionalCharacteristic,
      this.additionalClassification,
      this.relatedEntry,
      });

  factory CatalogEntry.fromJson(Map<String, dynamic> json) => _$CatalogEntryFromJson(json);
  Map<String, dynamic> toJson() _$CatalogEntryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CatalogEntry_RelatedEntry {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String relationtype; // <code> enum: triggers/is-replaced-by;
Element _relationtype;
Reference item;

CatalogEntry_RelatedEntry(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.relationtype,
      this._relationtype,
      this.item,
      });

  factory CatalogEntry_RelatedEntry.fromJson(Map<String, dynamic> json) => _$CatalogEntry_RelatedEntryFromJson(json);
  Map<String, dynamic> toJson() _$CatalogEntry_RelatedEntryToJson(this);
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
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

ChargeItem(
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
      this.definitionUri,
      this._definitionUri,
      this.definitionCanonical,
      this.status,
      this._status,
      this.partOf,
      this.code,
      this.subject,
      this.context,
      this.occurrenceDateTime,
      this._occurrenceDateTime,
      this.occurrencePeriod,
      this.occurrenceTiming,
      this.performer,
      this.performingOrganization,
      this.requestingOrganization,
      this.costCenter,
      this.quantity,
      this.bodysite,
      this.factorOverride,
      this._factorOverride,
      this.priceOverride,
      this.overrideReason,
      this._overrideReason,
      this.enterer,
      this.enteredDate,
      this._enteredDate,
      this.reason,
      this.service,
      this.productReference,
      this.productCodeableConcept,
      this.account,
      this.note,
      this.supportingInformation,
      });

  factory ChargeItem.fromJson(Map<String, dynamic> json) => _$ChargeItemFromJson(json);
  Map<String, dynamic> toJson() _$ChargeItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChargeItem_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;

ChargeItem_Performer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.function,
      this.actor,
      });

  factory ChargeItem_Performer.fromJson(Map<String, dynamic> json) => _$ChargeItem_PerformerFromJson(json);
  Map<String, dynamic> toJson() _$ChargeItem_PerformerToJson(this);
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

ChargeItemDefinition(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.title,
      this._title,
      this.derivedFromUri,
      this._derivedFromUri,
      this.partOf,
      this.replaces,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.copyright,
      this._copyright,
      this.approvalDate,
      this._approvalDate,
      this.lastReviewDate,
      this._lastReviewDate,
      this.effectivePeriod,
      this.code,
      this.instance,
      this.applicability,
      this.propertyGroup,
      });

  factory ChargeItemDefinition.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$ChargeItemDefinitionToJson(this);
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

ChargeItemDefinition_Applicability(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.language,
      this._language,
      this.expression,
      this._expression,
      });

  factory ChargeItemDefinition_Applicability.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinition_ApplicabilityFromJson(json);
  Map<String, dynamic> toJson() _$ChargeItemDefinition_ApplicabilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition_PropertyGroup {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<ChargeItemDefinition_Applicability> applicability;
List<ChargeItemDefinition_PriceComponent> priceComponent;

ChargeItemDefinition_PropertyGroup(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.applicability,
      this.priceComponent,
      });

  factory ChargeItemDefinition_PropertyGroup.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinition_PropertyGroupFromJson(json);
  Map<String, dynamic> toJson() _$ChargeItemDefinition_PropertyGroupToJson(this);
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

ChargeItemDefinition_PriceComponent(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.code,
      this.factor,
      this._factor,
      this.amount,
      });

  factory ChargeItemDefinition_PriceComponent.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinition_PriceComponentFromJson(json);
  Map<String, dynamic> toJson() _$ChargeItemDefinition_PriceComponentToJson(this);
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

Claim(
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
      this.status,
      this._status,
      this.type,
      this.subType,
      this.use,
      this._use,
      this.patient,
      this.billablePeriod,
      this.created,
      this._created,
      this.enterer,
      this.insurer,
      this.provider,
      this.priority,
      this.fundsReserve,
      this.related,
      this.prescription,
      this.originalPrescription,
      this.payee,
      this.referral,
      this.facility,
      this.careTeam,
      this.supportingInfo,
      this.diagnosis,
      this.procedure,
      this.insurance,
      this.accident,
      this.item,
      this.total,
      });

  factory Claim.fromJson(Map<String, dynamic> json) => _$ClaimFromJson(json);
  Map<String, dynamic> toJson() _$ClaimToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Related {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference claim;
CodeableConcept relationship;
Identifier reference;

Claim_Related(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.claim,
      this.relationship,
      this.reference,
      });

  factory Claim_Related.fromJson(Map<String, dynamic> json) => _$Claim_RelatedFromJson(json);
  Map<String, dynamic> toJson() _$Claim_RelatedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Payee {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Reference party;

Claim_Payee(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.party,
      });

  factory Claim_Payee.fromJson(Map<String, dynamic> json) => _$Claim_PayeeFromJson(json);
  Map<String, dynamic> toJson() _$Claim_PayeeToJson(this);
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

Claim_CareTeam(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.provider,
      this.responsible,
      this._responsible,
      this.role,
      this.qualification,
      });

  factory Claim_CareTeam.fromJson(Map<String, dynamic> json) => _$Claim_CareTeamFromJson(json);
  Map<String, dynamic> toJson() _$Claim_CareTeamToJson(this);
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
String timingDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _timingDate;
Period timingPeriod;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
Quantity valueQuantity;
Attachment valueAttachment;
Reference valueReference;
CodeableConcept reason;

Claim_SupportingInfo(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.category,
      this.code,
      this.timingDate,
      this._timingDate,
      this.timingPeriod,
      this.valueBoolean,
      this._valueBoolean,
      this.valueString,
      this._valueString,
      this.valueQuantity,
      this.valueAttachment,
      this.valueReference,
      this.reason,
      });

  factory Claim_SupportingInfo.fromJson(Map<String, dynamic> json) => _$Claim_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() _$Claim_SupportingInfoToJson(this);
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

Claim_Diagnosis(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.diagnosisCodeableConcept,
      this.diagnosisReference,
      this.type,
      this.onAdmission,
      this.packageCode,
      });

  factory Claim_Diagnosis.fromJson(Map<String, dynamic> json) => _$Claim_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() _$Claim_DiagnosisToJson(this);
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

Claim_Procedure(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.type,
      this.date,
      this._date,
      this.procedureCodeableConcept,
      this.procedureReference,
      this.udi,
      });

  factory Claim_Procedure.fromJson(Map<String, dynamic> json) => _$Claim_ProcedureFromJson(json);
  Map<String, dynamic> toJson() _$Claim_ProcedureToJson(this);
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

Claim_Insurance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.focal,
      this._focal,
      this.identifier,
      this.coverage,
      this.businessArrangement,
      this._businessArrangement,
      this.preAuthRef,
      this._preAuthRef,
      this.claimResponse,
      });

  factory Claim_Insurance.fromJson(Map<String, dynamic> json) => _$Claim_InsuranceFromJson(json);
  Map<String, dynamic> toJson() _$Claim_InsuranceToJson(this);
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

Claim_Accident(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.date,
      this._date,
      this.type,
      this.locationAddress,
      this.locationReference,
      });

  factory Claim_Accident.fromJson(Map<String, dynamic> json) => _$Claim_AccidentFromJson(json);
  Map<String, dynamic> toJson() _$Claim_AccidentToJson(this);
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
String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
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

Claim_Item(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.careTeamSequence,
      this._careTeamSequence,
      this.diagnosisSequence,
      this._diagnosisSequence,
      this.procedureSequence,
      this._procedureSequence,
      this.informationSequence,
      this._informationSequence,
      this.revenue,
      this.category,
      this.productOrService,
      this.modifier,
      this.programCode,
      this.servicedDate,
      this._servicedDate,
      this.servicedPeriod,
      this.locationCodeableConcept,
      this.locationAddress,
      this.locationReference,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.udi,
      this.bodySite,
      this.subSite,
      this.encounter,
      this.detail,
      });

  factory Claim_Item.fromJson(Map<String, dynamic> json) => _$Claim_ItemFromJson(json);
  Map<String, dynamic> toJson() _$Claim_ItemToJson(this);
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

Claim_Detail(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.revenue,
      this.category,
      this.productOrService,
      this.modifier,
      this.programCode,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.udi,
      this.subDetail,
      });

  factory Claim_Detail.fromJson(Map<String, dynamic> json) => _$Claim_DetailFromJson(json);
  Map<String, dynamic> toJson() _$Claim_DetailToJson(this);
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

Claim_SubDetail(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.revenue,
      this.category,
      this.productOrService,
      this.modifier,
      this.programCode,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.udi,
      });

  factory Claim_SubDetail.fromJson(Map<String, dynamic> json) => _$Claim_SubDetailFromJson(json);
  Map<String, dynamic> toJson() _$Claim_SubDetailToJson(this);
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

ClaimResponse(
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
      this.status,
      this._status,
      this.type,
      this.subType,
      this.use,
      this._use,
      this.patient,
      this.created,
      this._created,
      this.insurer,
      this.requestor,
      this.request,
      this.outcome,
      this._outcome,
      this.disposition,
      this._disposition,
      this.preAuthRef,
      this._preAuthRef,
      this.preAuthPeriod,
      this.payeeType,
      this.item,
      this.addItem,
      this.adjudication,
      this.total,
      this.payment,
      this.fundsReserve,
      this.formCode,
      this.form,
      this.processNote,
      this.communicationRequest,
      this.insurance,
      this.error,
      });

  factory ClaimResponse.fromJson(Map<String, dynamic> json) => _$ClaimResponseFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponseToJson(this);
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

ClaimResponse_Item(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemSequence,
      this._itemSequence,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      this.detail,
      });

  factory ClaimResponse_Item.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_ItemToJson(this);
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

ClaimResponse_Adjudication(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.reason,
      this.amount,
      this.value,
      this._value,
      });

  factory ClaimResponse_Adjudication.fromJson(Map<String, dynamic> json) => _$ClaimResponse_AdjudicationFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_AdjudicationToJson(this);
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

ClaimResponse_Detail(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.detailSequence,
      this._detailSequence,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      this.subDetail,
      });

  factory ClaimResponse_Detail.fromJson(Map<String, dynamic> json) => _$ClaimResponse_DetailFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_DetailToJson(this);
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

ClaimResponse_SubDetail(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.subDetailSequence,
      this._subDetailSequence,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      });

  factory ClaimResponse_SubDetail.fromJson(Map<String, dynamic> json) => _$ClaimResponse_SubDetailFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_SubDetailToJson(this);
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
String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
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

ClaimResponse_AddItem(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemSequence,
      this._itemSequence,
      this.detailSequence,
      this._detailSequence,
      this.subdetailSequence,
      this._subdetailSequence,
      this.provider,
      this.productOrService,
      this.modifier,
      this.programCode,
      this.servicedDate,
      this._servicedDate,
      this.servicedPeriod,
      this.locationCodeableConcept,
      this.locationAddress,
      this.locationReference,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.bodySite,
      this.subSite,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      this.detail,
      });

  factory ClaimResponse_AddItem.fromJson(Map<String, dynamic> json) => _$ClaimResponse_AddItemFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_AddItemToJson(this);
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

ClaimResponse_Detail1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.productOrService,
      this.modifier,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      this.subDetail,
      });

  factory ClaimResponse_Detail1.fromJson(Map<String, dynamic> json) => _$ClaimResponse_Detail1FromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_Detail1ToJson(this);
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

ClaimResponse_SubDetail1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.productOrService,
      this.modifier,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      });

  factory ClaimResponse_SubDetail1.fromJson(Map<String, dynamic> json) => _$ClaimResponse_SubDetail1FromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_SubDetail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Total {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
Money amount;

ClaimResponse_Total(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.amount,
      });

  factory ClaimResponse_Total.fromJson(Map<String, dynamic> json) => _$ClaimResponse_TotalFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_TotalToJson(this);
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

ClaimResponse_Payment(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.adjustment,
      this.adjustmentReason,
      this.date,
      this._date,
      this.amount,
      this.identifier,
      });

  factory ClaimResponse_Payment.fromJson(Map<String, dynamic> json) => _$ClaimResponse_PaymentFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_PaymentToJson(this);
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

ClaimResponse_ProcessNote(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.number,
      this._number,
      this.type,
      this._type,
      this.text,
      this._text,
      this.language,
      });

  factory ClaimResponse_ProcessNote.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_ProcessNoteToJson(this);
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

ClaimResponse_Insurance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.focal,
      this._focal,
      this.coverage,
      this.businessArrangement,
      this._businessArrangement,
      this.claimResponse,
      });

  factory ClaimResponse_Insurance.fromJson(Map<String, dynamic> json) => _$ClaimResponse_InsuranceFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_InsuranceToJson(this);
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

ClaimResponse_Error(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemSequence,
      this._itemSequence,
      this.detailSequence,
      this._detailSequence,
      this.subDetailSequence,
      this._subDetailSequence,
      this.code,
      });

  factory ClaimResponse_Error.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ErrorFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_ErrorToJson(this);
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
String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

ClinicalImpression(
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
      this.status,
      this._status,
      this.statusReason,
      this.code,
      this.description,
      this._description,
      this.subject,
      this.encounter,
      this.effectiveDateTime,
      this._effectiveDateTime,
      this.effectivePeriod,
      this.date,
      this._date,
      this.assessor,
      this.previous,
      this.problem,
      this.investigation,
      this.protocol,
      this._protocol,
      this.summary,
      this._summary,
      this.finding,
      this.prognosisCodeableConcept,
      this.prognosisReference,
      this.supportingInfo,
      this.note,
      });

  factory ClinicalImpression.fromJson(Map<String, dynamic> json) => _$ClinicalImpressionFromJson(json);
  Map<String, dynamic> toJson() _$ClinicalImpressionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClinicalImpression_Investigation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
List<Reference> item;

ClinicalImpression_Investigation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.item,
      });

  factory ClinicalImpression_Investigation.fromJson(Map<String, dynamic> json) => _$ClinicalImpression_InvestigationFromJson(json);
  Map<String, dynamic> toJson() _$ClinicalImpression_InvestigationToJson(this);
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

ClinicalImpression_Finding(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemCodeableConcept,
      this.itemReference,
      this.basis,
      this._basis,
      });

  factory ClinicalImpression_Finding.fromJson(Map<String, dynamic> json) => _$ClinicalImpression_FindingFromJson(json);
  Map<String, dynamic> toJson() _$ClinicalImpression_FindingToJson(this);
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

CodeSystem(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.copyright,
      this._copyright,
      this.caseSensitive,
      this._caseSensitive,
      this.valueSet,
      this.hierarchyMeaning,
      this._hierarchyMeaning,
      this.compositional,
      this._compositional,
      this.versionNeeded,
      this._versionNeeded,
      this.content,
      this._content,
      this.supplements,
      this.count,
      this._count,
      this.filter,
      this.property,
      this.concept,
      });

  factory CodeSystem.fromJson(Map<String, dynamic> json) => _$CodeSystemFromJson(json);
  Map<String, dynamic> toJson() _$CodeSystemToJson(this);
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

CodeSystem_Filter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.description,
      this._description,
      this.operator,
      this._operator,
      this.value,
      this._value,
      });

  factory CodeSystem_Filter.fromJson(Map<String, dynamic> json) => _$CodeSystem_FilterFromJson(json);
  Map<String, dynamic> toJson() _$CodeSystem_FilterToJson(this);
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

CodeSystem_Property(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.uri,
      this._uri,
      this.description,
      this._description,
      this.type,
      this._type,
      });

  factory CodeSystem_Property.fromJson(Map<String, dynamic> json) => _$CodeSystem_PropertyFromJson(json);
  Map<String, dynamic> toJson() _$CodeSystem_PropertyToJson(this);
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

CodeSystem_Concept(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.display,
      this._display,
      this.definition,
      this._definition,
      this.designation,
      this.property,
      this.concept,
      });

  factory CodeSystem_Concept.fromJson(Map<String, dynamic> json) => _$CodeSystem_ConceptFromJson(json);
  Map<String, dynamic> toJson() _$CodeSystem_ConceptToJson(this);
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

CodeSystem_Designation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.language,
      this._language,
      this.use,
      this.value,
      this._value,
      });

  factory CodeSystem_Designation.fromJson(Map<String, dynamic> json) => _$CodeSystem_DesignationFromJson(json);
  Map<String, dynamic> toJson() _$CodeSystem_DesignationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Property1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$
Element _valueCode;
Coding valueCoding;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _valueDateTime;
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _valueDecimal;

CodeSystem_Property1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.valueCode,
      this._valueCode,
      this.valueCoding,
      this.valueString,
      this._valueString,
      this.valueInteger,
      this._valueInteger,
      this.valueBoolean,
      this._valueBoolean,
      this.valueDateTime,
      this._valueDateTime,
      this.valueDecimal,
      this._valueDecimal,
      });

  factory CodeSystem_Property1.fromJson(Map<String, dynamic> json) => _$CodeSystem_Property1FromJson(json);
  Map<String, dynamic> toJson() _$CodeSystem_Property1ToJson(this);
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

Communication(
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
      this.partOf,
      this.inResponseTo,
      this.status,
      this._status,
      this.statusReason,
      this.category,
      this.priority,
      this._priority,
      this.medium,
      this.subject,
      this.topic,
      this.about,
      this.encounter,
      this.sent,
      this._sent,
      this.received,
      this._received,
      this.recipient,
      this.sender,
      this.reasonCode,
      this.reasonReference,
      this.payload,
      this.note,
      });

  factory Communication.fromJson(Map<String, dynamic> json) => _$CommunicationFromJson(json);
  Map<String, dynamic> toJson() _$CommunicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Communication_Payload {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String contentString; //  pattern: ^[ \r\n\t\S]+$
Element _contentString;
Attachment contentAttachment;
Reference contentReference;

Communication_Payload(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.contentString,
      this._contentString,
      this.contentAttachment,
      this.contentReference,
      });

  factory Communication_Payload.fromJson(Map<String, dynamic> json) => _$Communication_PayloadFromJson(json);
  Map<String, dynamic> toJson() _$Communication_PayloadToJson(this);
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
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

CommunicationRequest(
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
      this.basedOn,
      this.replaces,
      this.groupIdentifier,
      this.status,
      this._status,
      this.statusReason,
      this.category,
      this.priority,
      this._priority,
      this.doNotPerform,
      this._doNotPerform,
      this.medium,
      this.subject,
      this.about,
      this.encounter,
      this.payload,
      this.occurrenceDateTime,
      this._occurrenceDateTime,
      this.occurrencePeriod,
      this.authoredOn,
      this._authoredOn,
      this.requester,
      this.recipient,
      this.sender,
      this.reasonCode,
      this.reasonReference,
      this.note,
      });

  factory CommunicationRequest.fromJson(Map<String, dynamic> json) => _$CommunicationRequestFromJson(json);
  Map<String, dynamic> toJson() _$CommunicationRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CommunicationRequest_Payload {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String contentString; //  pattern: ^[ \r\n\t\S]+$
Element _contentString;
Attachment contentAttachment;
Reference contentReference;

CommunicationRequest_Payload(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.contentString,
      this._contentString,
      this.contentAttachment,
      this.contentReference,
      });

  factory CommunicationRequest_Payload.fromJson(Map<String, dynamic> json) => _$CommunicationRequest_PayloadFromJson(json);
  Map<String, dynamic> toJson() _$CommunicationRequest_PayloadToJson(this);
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

CompartmentDefinition(
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
      this.url,
      this._url,
      this.version,
      this._version,
      this.name,
      this._name,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.purpose,
      this._purpose,
      this.code,
      this._code,
      this.search,
      this._search,
      this.resource,
      });

  factory CompartmentDefinition.fromJson(Map<String, dynamic> json) => _$CompartmentDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$CompartmentDefinitionToJson(this);
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

CompartmentDefinition_Resource(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.param,
      this._param,
      this.documentation,
      this._documentation,
      });

  factory CompartmentDefinition_Resource.fromJson(Map<String, dynamic> json) => _$CompartmentDefinition_ResourceFromJson(json);
  Map<String, dynamic> toJson() _$CompartmentDefinition_ResourceToJson(this);
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

Composition(
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
      this.status,
      this._status,
      this.type,
      this.category,
      this.subject,
      this.encounter,
      this.date,
      this._date,
      this.author,
      this.title,
      this._title,
      this.confidentiality,
      this._confidentiality,
      this.attester,
      this.custodian,
      this.relatesTo,
      this.event,
      this.section,
      });

  factory Composition.fromJson(Map<String, dynamic> json) => _$CompositionFromJson(json);
  Map<String, dynamic> toJson() _$CompositionToJson(this);
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

Composition_Attester(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.mode,
      this._mode,
      this.time,
      this._time,
      this.party,
      });

  factory Composition_Attester.fromJson(Map<String, dynamic> json) => _$Composition_AttesterFromJson(json);
  Map<String, dynamic> toJson() _$Composition_AttesterToJson(this);
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

Composition_RelatesTo(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.targetIdentifier,
      this.targetReference,
      });

  factory Composition_RelatesTo.fromJson(Map<String, dynamic> json) => _$Composition_RelatesToFromJson(json);
  Map<String, dynamic> toJson() _$Composition_RelatesToToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_Event {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> code;
Period period;
List<Reference> detail;

Composition_Event(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.period,
      this.detail,
      });

  factory Composition_Event.fromJson(Map<String, dynamic> json) => _$Composition_EventFromJson(json);
  Map<String, dynamic> toJson() _$Composition_EventToJson(this);
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

Composition_Section(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.title,
      this._title,
      this.code,
      this.author,
      this.focus,
      this.text,
      this.mode,
      this._mode,
      this.orderedBy,
      this.entry,
      this.emptyReason,
      this.section,
      });

  factory Composition_Section.fromJson(Map<String, dynamic> json) => _$Composition_SectionFromJson(json);
  Map<String, dynamic> toJson() _$Composition_SectionToJson(this);
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
String sourceUri; //  pattern: ^\S*$
Element _sourceUri;
String sourceCanonical; //  pattern: ^\S*$
Element _sourceCanonical;
String targetUri; //  pattern: ^\S*$
Element _targetUri;
String targetCanonical; //  pattern: ^\S*$
Element _targetCanonical;
List<ConceptMap_Group> group;

ConceptMap(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.copyright,
      this._copyright,
      this.sourceUri,
      this._sourceUri,
      this.sourceCanonical,
      this._sourceCanonical,
      this.targetUri,
      this._targetUri,
      this.targetCanonical,
      this._targetCanonical,
      this.group,
      });

  factory ConceptMap.fromJson(Map<String, dynamic> json) => _$ConceptMapFromJson(json);
  Map<String, dynamic> toJson() _$ConceptMapToJson(this);
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

ConceptMap_Group(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.source,
      this._source,
      this.sourceVersion,
      this._sourceVersion,
      this.target,
      this._target,
      this.targetVersion,
      this._targetVersion,
      this.element,
      this.unmapped,
      });

  factory ConceptMap_Group.fromJson(Map<String, dynamic> json) => _$ConceptMap_GroupFromJson(json);
  Map<String, dynamic> toJson() _$ConceptMap_GroupToJson(this);
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

ConceptMap_Element(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.display,
      this._display,
      this.target,
      });

  factory ConceptMap_Element.fromJson(Map<String, dynamic> json) => _$ConceptMap_ElementFromJson(json);
  Map<String, dynamic> toJson() _$ConceptMap_ElementToJson(this);
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

ConceptMap_Target(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.display,
      this._display,
      this.equivalence,
      this._equivalence,
      this.comment,
      this._comment,
      this.dependsOn,
      this.product,
      });

  factory ConceptMap_Target.fromJson(Map<String, dynamic> json) => _$ConceptMap_TargetFromJson(json);
  Map<String, dynamic> toJson() _$ConceptMap_TargetToJson(this);
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

ConceptMap_DependsOn(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.property,
      this._property,
      this.system,
      this.value,
      this._value,
      this.display,
      this._display,
      });

  factory ConceptMap_DependsOn.fromJson(Map<String, dynamic> json) => _$ConceptMap_DependsOnFromJson(json);
  Map<String, dynamic> toJson() _$ConceptMap_DependsOnToJson(this);
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

ConceptMap_Unmapped(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.mode,
      this._mode,
      this.code,
      this._code,
      this.display,
      this._display,
      this.url,
      });

  factory ConceptMap_Unmapped.fromJson(Map<String, dynamic> json) => _$ConceptMap_UnmappedFromJson(json);
  Map<String, dynamic> toJson() _$ConceptMap_UnmappedToJson(this);
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
String onsetDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _onsetDateTime;
Age onsetAge;
Period onsetPeriod;
Range onsetRange;
String onsetString; //  pattern: ^[ \r\n\t\S]+$
Element _onsetString;
String abatementDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _abatementDateTime;
Age abatementAge;
Period abatementPeriod;
Range abatementRange;
String abatementString; //  pattern: ^[ \r\n\t\S]+$
Element _abatementString;
DateTime recordedDate;
Element _recordedDate;
Reference recorder;
Reference asserter;
List<Condition_Stage> stage;
List<Condition_Evidence> evidence;
List<Annotation> note;

Condition(
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
      this.clinicalStatus,
      this.verificationStatus,
      this.category,
      this.severity,
      this.code,
      this.bodySite,
      this.subject,
      this.encounter,
      this.onsetDateTime,
      this._onsetDateTime,
      this.onsetAge,
      this.onsetPeriod,
      this.onsetRange,
      this.onsetString,
      this._onsetString,
      this.abatementDateTime,
      this._abatementDateTime,
      this.abatementAge,
      this.abatementPeriod,
      this.abatementRange,
      this.abatementString,
      this._abatementString,
      this.recordedDate,
      this._recordedDate,
      this.recorder,
      this.asserter,
      this.stage,
      this.evidence,
      this.note,
      });

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
  Map<String, dynamic> toJson() _$ConditionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Condition_Stage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept summary;
List<Reference> assessment;
CodeableConcept type;

Condition_Stage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.summary,
      this.assessment,
      this.type,
      });

  factory Condition_Stage.fromJson(Map<String, dynamic> json) => _$Condition_StageFromJson(json);
  Map<String, dynamic> toJson() _$Condition_StageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Condition_Evidence {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> code;
List<Reference> detail;

Condition_Evidence(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.detail,
      });

  factory Condition_Evidence.fromJson(Map<String, dynamic> json) => _$Condition_EvidenceFromJson(json);
  Map<String, dynamic> toJson() _$Condition_EvidenceToJson(this);
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

Consent(
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
      this.status,
      this._status,
      this.scope,
      this.category,
      this.patient,
      this.dateTime,
      this._dateTime,
      this.performer,
      this.organization,
      this.sourceAttachment,
      this.sourceReference,
      this.policy,
      this.policyRule,
      this.verification,
      this.provision,
      });

  factory Consent.fromJson(Map<String, dynamic> json) => _$ConsentFromJson(json);
  Map<String, dynamic> toJson() _$ConsentToJson(this);
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

Consent_Policy(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.authority,
      this._authority,
      this.uri,
      this._uri,
      });

  factory Consent_Policy.fromJson(Map<String, dynamic> json) => _$Consent_PolicyFromJson(json);
  Map<String, dynamic> toJson() _$Consent_PolicyToJson(this);
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

Consent_Verification(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.verified,
      this._verified,
      this.verifiedWith,
      this.verificationDate,
      this._verificationDate,
      });

  factory Consent_Verification.fromJson(Map<String, dynamic> json) => _$Consent_VerificationFromJson(json);
  Map<String, dynamic> toJson() _$Consent_VerificationToJson(this);
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

Consent_Provision(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.period,
      this.actor,
      this.action,
      this.securityLabel,
      this.purpose,
      this.class,
      this.code,
      this.dataPeriod,
      this.data,
      this.provision,
      });

  factory Consent_Provision.fromJson(Map<String, dynamic> json) => _$Consent_ProvisionFromJson(json);
  Map<String, dynamic> toJson() _$Consent_ProvisionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Actor {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept role;
Reference reference;

Consent_Actor(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.role,
      this.reference,
      });

  factory Consent_Actor.fromJson(Map<String, dynamic> json) => _$Consent_ActorFromJson(json);
  Map<String, dynamic> toJson() _$Consent_ActorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Data {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String meaning; // <code> enum: instance/related/dependents/authoredby;
Element _meaning;
Reference reference;

Consent_Data(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.meaning,
      this._meaning,
      this.reference,
      });

  factory Consent_Data.fromJson(Map<String, dynamic> json) => _$Consent_DataFromJson(json);
  Map<String, dynamic> toJson() _$Consent_DataToJson(this);
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

Contract(
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
      this.url,
      this._url,
      this.version,
      this._version,
      this.status,
      this._status,
      this.legalState,
      this.instantiatesCanonical,
      this.instantiatesUri,
      this._instantiatesUri,
      this.contentDerivative,
      this.issued,
      this._issued,
      this.applies,
      this.expirationType,
      this.subject,
      this.authority,
      this.domain,
      this.site,
      this.name,
      this._name,
      this.title,
      this._title,
      this.subtitle,
      this._subtitle,
      this.alias,
      this._alias,
      this.author,
      this.scope,
      this.topicCodeableConcept,
      this.topicReference,
      this.type,
      this.subType,
      this.contentDefinition,
      this.term,
      this.supportingInfo,
      this.relevantHistory,
      this.signer,
      this.friendly,
      this.legal,
      this.rule,
      this.legallyBindingAttachment,
      this.legallyBindingReference,
      });

  factory Contract.fromJson(Map<String, dynamic> json) => _$ContractFromJson(json);
  Map<String, dynamic> toJson() _$ContractToJson(this);
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

Contract_ContentDefinition(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.subType,
      this.publisher,
      this.publicationDate,
      this._publicationDate,
      this.publicationStatus,
      this._publicationStatus,
      this.copyright,
      this._copyright,
      });

  factory Contract_ContentDefinition.fromJson(Map<String, dynamic> json) => _$Contract_ContentDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$Contract_ContentDefinitionToJson(this);
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

Contract_Term(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.issued,
      this._issued,
      this.applies,
      this.topicCodeableConcept,
      this.topicReference,
      this.type,
      this.subType,
      this.text,
      this._text,
      this.securityLabel,
      this.offer,
      this.asset,
      this.action,
      this.group,
      });

  factory Contract_Term.fromJson(Map<String, dynamic> json) => _$Contract_TermFromJson(json);
  Map<String, dynamic> toJson() _$Contract_TermToJson(this);
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

Contract_SecurityLabel(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.number,
      this._number,
      this.classification,
      this.category,
      this.control,
      });

  factory Contract_SecurityLabel.fromJson(Map<String, dynamic> json) => _$Contract_SecurityLabelFromJson(json);
  Map<String, dynamic> toJson() _$Contract_SecurityLabelToJson(this);
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

Contract_Offer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.party,
      this.topic,
      this.type,
      this.decision,
      this.decisionMode,
      this.answer,
      this.text,
      this._text,
      this.linkId,
      this._linkId,
      this.securityLabelNumber,
      this._securityLabelNumber,
      });

  factory Contract_Offer.fromJson(Map<String, dynamic> json) => _$Contract_OfferFromJson(json);
  Map<String, dynamic> toJson() _$Contract_OfferToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Party {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Reference> reference;
CodeableConcept role;

Contract_Party(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.reference,
      this.role,
      });

  factory Contract_Party.fromJson(Map<String, dynamic> json) => _$Contract_PartyFromJson(json);
  Map<String, dynamic> toJson() _$Contract_PartyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Answer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _valueDecimal;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _valueDate;
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _valueDateTime;
String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _valueTime;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
String valueUri; //  pattern: ^\S*$
Element _valueUri;
Attachment valueAttachment;
Coding valueCoding;
Quantity valueQuantity;
Reference valueReference;

Contract_Answer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.valueBoolean,
      this._valueBoolean,
      this.valueDecimal,
      this._valueDecimal,
      this.valueInteger,
      this._valueInteger,
      this.valueDate,
      this._valueDate,
      this.valueDateTime,
      this._valueDateTime,
      this.valueTime,
      this._valueTime,
      this.valueString,
      this._valueString,
      this.valueUri,
      this._valueUri,
      this.valueAttachment,
      this.valueCoding,
      this.valueQuantity,
      this.valueReference,
      });

  factory Contract_Answer.fromJson(Map<String, dynamic> json) => _$Contract_AnswerFromJson(json);
  Map<String, dynamic> toJson() _$Contract_AnswerToJson(this);
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

Contract_Asset(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.scope,
      this.type,
      this.typeReference,
      this.subtype,
      this.relationship,
      this.context,
      this.condition,
      this._condition,
      this.periodType,
      this.period,
      this.usePeriod,
      this.text,
      this._text,
      this.linkId,
      this._linkId,
      this.answer,
      this.securityLabelNumber,
      this._securityLabelNumber,
      this.valuedItem,
      });

  factory Contract_Asset.fromJson(Map<String, dynamic> json) => _$Contract_AssetFromJson(json);
  Map<String, dynamic> toJson() _$Contract_AssetToJson(this);
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

Contract_Context(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.reference,
      this.code,
      this.text,
      this._text,
      });

  factory Contract_Context.fromJson(Map<String, dynamic> json) => _$Contract_ContextFromJson(json);
  Map<String, dynamic> toJson() _$Contract_ContextToJson(this);
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

Contract_ValuedItem(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.entityCodeableConcept,
      this.entityReference,
      this.identifier,
      this.effectiveTime,
      this._effectiveTime,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.points,
      this._points,
      this.net,
      this.payment,
      this._payment,
      this.paymentDate,
      this._paymentDate,
      this.responsible,
      this.recipient,
      this.linkId,
      this._linkId,
      this.securityLabelNumber,
      this._securityLabelNumber,
      });

  factory Contract_ValuedItem.fromJson(Map<String, dynamic> json) => _$Contract_ValuedItemFromJson(json);
  Map<String, dynamic> toJson() _$Contract_ValuedItemToJson(this);
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
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

Contract_Action(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.doNotPerform,
      this._doNotPerform,
      this.type,
      this.subject,
      this.intent,
      this.linkId,
      this._linkId,
      this.status,
      this.context,
      this.contextLinkId,
      this._contextLinkId,
      this.occurrenceDateTime,
      this._occurrenceDateTime,
      this.occurrencePeriod,
      this.occurrenceTiming,
      this.requester,
      this.requesterLinkId,
      this._requesterLinkId,
      this.performerType,
      this.performerRole,
      this.performer,
      this.performerLinkId,
      this._performerLinkId,
      this.reasonCode,
      this.reasonReference,
      this.reason,
      this._reason,
      this.reasonLinkId,
      this._reasonLinkId,
      this.note,
      this.securityLabelNumber,
      this._securityLabelNumber,
      });

  factory Contract_Action.fromJson(Map<String, dynamic> json) => _$Contract_ActionFromJson(json);
  Map<String, dynamic> toJson() _$Contract_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Subject {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Reference> reference;
CodeableConcept role;

Contract_Subject(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.reference,
      this.role,
      });

  factory Contract_Subject.fromJson(Map<String, dynamic> json) => _$Contract_SubjectFromJson(json);
  Map<String, dynamic> toJson() _$Contract_SubjectToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Signer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Coding type;
Reference party;
List<Signature> signature;

Contract_Signer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.party,
      this.signature,
      });

  factory Contract_Signer.fromJson(Map<String, dynamic> json) => _$Contract_SignerFromJson(json);
  Map<String, dynamic> toJson() _$Contract_SignerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Friendly {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Attachment contentAttachment;
Reference contentReference;

Contract_Friendly(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.contentAttachment,
      this.contentReference,
      });

  factory Contract_Friendly.fromJson(Map<String, dynamic> json) => _$Contract_FriendlyFromJson(json);
  Map<String, dynamic> toJson() _$Contract_FriendlyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Legal {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Attachment contentAttachment;
Reference contentReference;

Contract_Legal(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.contentAttachment,
      this.contentReference,
      });

  factory Contract_Legal.fromJson(Map<String, dynamic> json) => _$Contract_LegalFromJson(json);
  Map<String, dynamic> toJson() _$Contract_LegalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Rule {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Attachment contentAttachment;
Reference contentReference;

Contract_Rule(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.contentAttachment,
      this.contentReference,
      });

  factory Contract_Rule.fromJson(Map<String, dynamic> json) => _$Contract_RuleFromJson(json);
  Map<String, dynamic> toJson() _$Contract_RuleToJson(this);
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

Coverage(
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
      this.status,
      this._status,
      this.type,
      this.policyHolder,
      this.subscriber,
      this.subscriberId,
      this._subscriberId,
      this.beneficiary,
      this.dependent,
      this._dependent,
      this.relationship,
      this.period,
      this.payor,
      this.class,
      this.order,
      this._order,
      this.network,
      this._network,
      this.costToBeneficiary,
      this.subrogation,
      this._subrogation,
      this.contract,
      });

  factory Coverage.fromJson(Map<String, dynamic> json) => _$CoverageFromJson(json);
  Map<String, dynamic> toJson() _$CoverageToJson(this);
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

Coverage_Class(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.value,
      this._value,
      this.name,
      this._name,
      });

  factory Coverage_Class.fromJson(Map<String, dynamic> json) => _$Coverage_ClassFromJson(json);
  Map<String, dynamic> toJson() _$Coverage_ClassToJson(this);
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

Coverage_CostToBeneficiary(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.valueQuantity,
      this.valueMoney,
      this.exception,
      });

  factory Coverage_CostToBeneficiary.fromJson(Map<String, dynamic> json) => _$Coverage_CostToBeneficiaryFromJson(json);
  Map<String, dynamic> toJson() _$Coverage_CostToBeneficiaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Coverage_Exception {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Period period;

Coverage_Exception(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.period,
      });

  factory Coverage_Exception.fromJson(Map<String, dynamic> json) => _$Coverage_ExceptionFromJson(json);
  Map<String, dynamic> toJson() _$Coverage_ExceptionToJson(this);
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
String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
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

CoverageEligibilityRequest(
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
      this.status,
      this._status,
      this.priority,
      this.purpose,
      this._purpose,
      this.patient,
      this.servicedDate,
      this._servicedDate,
      this.servicedPeriod,
      this.created,
      this._created,
      this.enterer,
      this.provider,
      this.insurer,
      this.facility,
      this.supportingInfo,
      this.insurance,
      this.item,
      });

  factory CoverageEligibilityRequest.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequestFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityRequestToJson(this);
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

CoverageEligibilityRequest_SupportingInfo(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.information,
      this.appliesToAll,
      this._appliesToAll,
      });

  factory CoverageEligibilityRequest_SupportingInfo.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityRequest_SupportingInfoToJson(this);
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

CoverageEligibilityRequest_Insurance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.focal,
      this._focal,
      this.coverage,
      this.businessArrangement,
      this._businessArrangement,
      });

  factory CoverageEligibilityRequest_Insurance.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_InsuranceFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityRequest_InsuranceToJson(this);
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

CoverageEligibilityRequest_Item(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.supportingInfoSequence,
      this._supportingInfoSequence,
      this.category,
      this.productOrService,
      this.modifier,
      this.provider,
      this.quantity,
      this.unitPrice,
      this.facility,
      this.diagnosis,
      this.detail,
      });

  factory CoverageEligibilityRequest_Item.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_ItemFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityRequest_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Diagnosis {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept diagnosisCodeableConcept;
Reference diagnosisReference;

CoverageEligibilityRequest_Diagnosis(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.diagnosisCodeableConcept,
      this.diagnosisReference,
      });

  factory CoverageEligibilityRequest_Diagnosis.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityRequest_DiagnosisToJson(this);
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
String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
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

CoverageEligibilityResponse(
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
      this.status,
      this._status,
      this.purpose,
      this._purpose,
      this.patient,
      this.servicedDate,
      this._servicedDate,
      this.servicedPeriod,
      this.created,
      this._created,
      this.requestor,
      this.request,
      this.outcome,
      this._outcome,
      this.disposition,
      this._disposition,
      this.insurer,
      this.insurance,
      this.preAuthRef,
      this._preAuthRef,
      this.form,
      this.error,
      });

  factory CoverageEligibilityResponse.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponseFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityResponseToJson(this);
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

CoverageEligibilityResponse_Insurance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.coverage,
      this.inforce,
      this._inforce,
      this.benefitPeriod,
      this.item,
      });

  factory CoverageEligibilityResponse_Insurance.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_InsuranceFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityResponse_InsuranceToJson(this);
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

CoverageEligibilityResponse_Item(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.productOrService,
      this.modifier,
      this.provider,
      this.excluded,
      this._excluded,
      this.name,
      this._name,
      this.description,
      this._description,
      this.network,
      this.unit,
      this.term,
      this.benefit,
      this.authorizationRequired,
      this._authorizationRequired,
      this.authorizationSupporting,
      this.authorizationUrl,
      this._authorizationUrl,
      });

  factory CoverageEligibilityResponse_Item.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityResponse_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Benefit {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
int allowedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
Element _allowedUnsignedInt;
String allowedString; //  pattern: ^[ \r\n\t\S]+$
Element _allowedString;
Money allowedMoney;
int usedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
Element _usedUnsignedInt;
String usedString; //  pattern: ^[ \r\n\t\S]+$
Element _usedString;
Money usedMoney;

CoverageEligibilityResponse_Benefit(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.allowedUnsignedInt,
      this._allowedUnsignedInt,
      this.allowedString,
      this._allowedString,
      this.allowedMoney,
      this.usedUnsignedInt,
      this._usedUnsignedInt,
      this.usedString,
      this._usedString,
      this.usedMoney,
      });

  factory CoverageEligibilityResponse_Benefit.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_BenefitFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityResponse_BenefitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Error {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;

CoverageEligibilityResponse_Error(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      });

  factory CoverageEligibilityResponse_Error.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_ErrorFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityResponse_ErrorToJson(this);
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
String identifiedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

DetectedIssue(
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
      this.status,
      this._status,
      this.code,
      this.severity,
      this._severity,
      this.patient,
      this.identifiedDateTime,
      this._identifiedDateTime,
      this.identifiedPeriod,
      this.author,
      this.implicated,
      this.evidence,
      this.detail,
      this._detail,
      this.reference,
      this._reference,
      this.mitigation,
      });

  factory DetectedIssue.fromJson(Map<String, dynamic> json) => _$DetectedIssueFromJson(json);
  Map<String, dynamic> toJson() _$DetectedIssueToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetectedIssue_Evidence {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> code;
List<Reference> detail;

DetectedIssue_Evidence(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.detail,
      });

  factory DetectedIssue_Evidence.fromJson(Map<String, dynamic> json) => _$DetectedIssue_EvidenceFromJson(json);
  Map<String, dynamic> toJson() _$DetectedIssue_EvidenceToJson(this);
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

DetectedIssue_Mitigation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.action,
      this.date,
      this._date,
      this.author,
      });

  factory DetectedIssue_Mitigation.fromJson(Map<String, dynamic> json) => _$DetectedIssue_MitigationFromJson(json);
  Map<String, dynamic> toJson() _$DetectedIssue_MitigationToJson(this);
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

Device(
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
      this.definition,
      this.udiCarrier,
      this.status,
      this._status,
      this.statusReason,
      this.distinctIdentifier,
      this._distinctIdentifier,
      this.manufacturer,
      this._manufacturer,
      this.manufactureDate,
      this._manufactureDate,
      this.expirationDate,
      this._expirationDate,
      this.lotNumber,
      this._lotNumber,
      this.serialNumber,
      this._serialNumber,
      this.deviceName,
      this.modelNumber,
      this._modelNumber,
      this.partNumber,
      this._partNumber,
      this.type,
      this.specialization,
      this.version,
      this.property,
      this.patient,
      this.owner,
      this.contact,
      this.location,
      this.url,
      this._url,
      this.note,
      this.safety,
      this.parent,
      });

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
  Map<String, dynamic> toJson() _$DeviceToJson(this);
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

Device_UdiCarrier(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.deviceIdentifier,
      this._deviceIdentifier,
      this.issuer,
      this._issuer,
      this.jurisdiction,
      this._jurisdiction,
      this.carrierAIDC,
      this._carrierAIDC,
      this.carrierHRF,
      this._carrierHRF,
      this.entryType,
      this._entryType,
      });

  factory Device_UdiCarrier.fromJson(Map<String, dynamic> json) => _$Device_UdiCarrierFromJson(json);
  Map<String, dynamic> toJson() _$Device_UdiCarrierToJson(this);
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

Device_DeviceName(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.type,
      this._type,
      });

  factory Device_DeviceName.fromJson(Map<String, dynamic> json) => _$Device_DeviceNameFromJson(json);
  Map<String, dynamic> toJson() _$Device_DeviceNameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_Specialization {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept systemType;
String version;
Element _version;

Device_Specialization(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.systemType,
      this.version,
      this._version,
      });

  factory Device_Specialization.fromJson(Map<String, dynamic> json) => _$Device_SpecializationFromJson(json);
  Map<String, dynamic> toJson() _$Device_SpecializationToJson(this);
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

Device_Version(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.component,
      this.value,
      this._value,
      });

  factory Device_Version.fromJson(Map<String, dynamic> json) => _$Device_VersionFromJson(json);
  Map<String, dynamic> toJson() _$Device_VersionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_Property {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<Quantity> valueQuantity;
List<CodeableConcept> valueCode;

Device_Property(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.valueQuantity,
      this.valueCode,
      });

  factory Device_Property.fromJson(Map<String, dynamic> json) => _$Device_PropertyFromJson(json);
  Map<String, dynamic> toJson() _$Device_PropertyToJson(this);
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
String manufacturerString; //  pattern: ^[ \r\n\t\S]+$
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

DeviceDefinition(
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
      this.udiDeviceIdentifier,
      this.manufacturerString,
      this._manufacturerString,
      this.manufacturerReference,
      this.deviceName,
      this.modelNumber,
      this._modelNumber,
      this.type,
      this.specialization,
      this.version,
      this._version,
      this.safety,
      this.shelfLifeStorage,
      this.physicalCharacteristics,
      this.languageCode,
      this.capability,
      this.property,
      this.owner,
      this.contact,
      this.url,
      this._url,
      this.onlineInformation,
      this._onlineInformation,
      this.note,
      this.quantity,
      this.parentDevice,
      this.material,
      });

  factory DeviceDefinition.fromJson(Map<String, dynamic> json) => _$DeviceDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$DeviceDefinitionToJson(this);
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

DeviceDefinition_UdiDeviceIdentifier(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.deviceIdentifier,
      this._deviceIdentifier,
      this.issuer,
      this._issuer,
      this.jurisdiction,
      this._jurisdiction,
      });

  factory DeviceDefinition_UdiDeviceIdentifier.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_UdiDeviceIdentifierFromJson(json);
  Map<String, dynamic> toJson() _$DeviceDefinition_UdiDeviceIdentifierToJson(this);
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

DeviceDefinition_DeviceName(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.type,
      this._type,
      });

  factory DeviceDefinition_DeviceName.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_DeviceNameFromJson(json);
  Map<String, dynamic> toJson() _$DeviceDefinition_DeviceNameToJson(this);
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

DeviceDefinition_Specialization(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.systemType,
      this._systemType,
      this.version,
      this._version,
      });

  factory DeviceDefinition_Specialization.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_SpecializationFromJson(json);
  Map<String, dynamic> toJson() _$DeviceDefinition_SpecializationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Capability {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<CodeableConcept> description;

DeviceDefinition_Capability(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.description,
      });

  factory DeviceDefinition_Capability.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_CapabilityFromJson(json);
  Map<String, dynamic> toJson() _$DeviceDefinition_CapabilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Property {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<Quantity> valueQuantity;
List<CodeableConcept> valueCode;

DeviceDefinition_Property(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.valueQuantity,
      this.valueCode,
      });

  factory DeviceDefinition_Property.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_PropertyFromJson(json);
  Map<String, dynamic> toJson() _$DeviceDefinition_PropertyToJson(this);
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

DeviceDefinition_Material(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.substance,
      this.alternate,
      this._alternate,
      this.allergenicIndicator,
      this._allergenicIndicator,
      });

  factory DeviceDefinition_Material.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_MaterialFromJson(json);
  Map<String, dynamic> toJson() _$DeviceDefinition_MaterialToJson(this);
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

DeviceMetric(
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
      this.type,
      this.unit,
      this.source,
      this.parent,
      this.operationalStatus,
      this._operationalStatus,
      this.color,
      this._color,
      this.category,
      this._category,
      this.measurementPeriod,
      this.calibration,
      });

  factory DeviceMetric.fromJson(Map<String, dynamic> json) => _$DeviceMetricFromJson(json);
  Map<String, dynamic> toJson() _$DeviceMetricToJson(this);
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

DeviceMetric_Calibration(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.state,
      this._state,
      this.time,
      this._time,
      });

  factory DeviceMetric_Calibration.fromJson(Map<String, dynamic> json) => _$DeviceMetric_CalibrationFromJson(json);
  Map<String, dynamic> toJson() _$DeviceMetric_CalibrationToJson(this);
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
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

DeviceRequest(
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
      this.priorRequest,
      this.groupIdentifier,
      this.status,
      this._status,
      this.intent,
      this._intent,
      this.priority,
      this._priority,
      this.codeReference,
      this.codeCodeableConcept,
      this.parameter,
      this.subject,
      this.encounter,
      this.occurrenceDateTime,
      this._occurrenceDateTime,
      this.occurrencePeriod,
      this.occurrenceTiming,
      this.authoredOn,
      this._authoredOn,
      this.requester,
      this.performerType,
      this.performer,
      this.reasonCode,
      this.reasonReference,
      this.insurance,
      this.supportingInfo,
      this.note,
      this.relevantHistory,
      });

  factory DeviceRequest.fromJson(Map<String, dynamic> json) => _$DeviceRequestFromJson(json);
  Map<String, dynamic> toJson() _$DeviceRequestToJson(this);
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
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;

DeviceRequest_Parameter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.valueCodeableConcept,
      this.valueQuantity,
      this.valueRange,
      this.valueBoolean,
      this._valueBoolean,
      });

  factory DeviceRequest_Parameter.fromJson(Map<String, dynamic> json) => _$DeviceRequest_ParameterFromJson(json);
  Map<String, dynamic> toJson() _$DeviceRequest_ParameterToJson(this);
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
String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _timingDateTime;
DateTime recordedOn;
Element _recordedOn;
Reference source;
Reference device;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
CodeableConcept bodySite;
List<Annotation> note;

DeviceUseStatement(
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
      this.basedOn,
      this.status,
      this._status,
      this.subject,
      this.derivedFrom,
      this.timingTiming,
      this.timingPeriod,
      this.timingDateTime,
      this._timingDateTime,
      this.recordedOn,
      this._recordedOn,
      this.source,
      this.device,
      this.reasonCode,
      this.reasonReference,
      this.bodySite,
      this.note,
      });

  factory DeviceUseStatement.fromJson(Map<String, dynamic> json) => _$DeviceUseStatementFromJson(json);
  Map<String, dynamic> toJson() _$DeviceUseStatementToJson(this);
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
String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

DiagnosticReport(
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
      this.basedOn,
      this.status,
      this._status,
      this.category,
      this.code,
      this.subject,
      this.encounter,
      this.effectiveDateTime,
      this._effectiveDateTime,
      this.effectivePeriod,
      this.issued,
      this._issued,
      this.performer,
      this.resultsInterpreter,
      this.specimen,
      this.result,
      this.imagingStudy,
      this.media,
      this.conclusion,
      this._conclusion,
      this.conclusionCode,
      this.presentedForm,
      });

  factory DiagnosticReport.fromJson(Map<String, dynamic> json) => _$DiagnosticReportFromJson(json);
  Map<String, dynamic> toJson() _$DiagnosticReportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DiagnosticReport_Media {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String comment;
Element _comment;
Reference link;

DiagnosticReport_Media(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.comment,
      this._comment,
      this.link,
      });

  factory DiagnosticReport_Media.fromJson(Map<String, dynamic> json) => _$DiagnosticReport_MediaFromJson(json);
  Map<String, dynamic> toJson() _$DiagnosticReport_MediaToJson(this);
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

DocumentManifest(
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
      this.masterIdentifier,
      this.identifier,
      this.status,
      this._status,
      this.type,
      this.subject,
      this.created,
      this._created,
      this.author,
      this.recipient,
      this.source,
      this._source,
      this.description,
      this._description,
      this.content,
      this.related,
      });

  factory DocumentManifest.fromJson(Map<String, dynamic> json) => _$DocumentManifestFromJson(json);
  Map<String, dynamic> toJson() _$DocumentManifestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentManifest_Related {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier identifier;
Reference ref;

DocumentManifest_Related(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.ref,
      });

  factory DocumentManifest_Related.fromJson(Map<String, dynamic> json) => _$DocumentManifest_RelatedFromJson(json);
  Map<String, dynamic> toJson() _$DocumentManifest_RelatedToJson(this);
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

DocumentReference(
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
      this.masterIdentifier,
      this.identifier,
      this.status,
      this._status,
      this.docStatus,
      this._docStatus,
      this.type,
      this.category,
      this.subject,
      this.date,
      this._date,
      this.author,
      this.authenticator,
      this.custodian,
      this.relatesTo,
      this.description,
      this._description,
      this.securityLabel,
      this.content,
      this.context,
      });

  factory DocumentReference.fromJson(Map<String, dynamic> json) => _$DocumentReferenceFromJson(json);
  Map<String, dynamic> toJson() _$DocumentReferenceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentReference_RelatesTo {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code; // <code> enum: replaces/transforms/signs/appends;
Element _code;
Reference target;

DocumentReference_RelatesTo(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.target,
      });

  factory DocumentReference_RelatesTo.fromJson(Map<String, dynamic> json) => _$DocumentReference_RelatesToFromJson(json);
  Map<String, dynamic> toJson() _$DocumentReference_RelatesToToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentReference_Content {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Attachment attachment;
Coding format;

DocumentReference_Content(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.attachment,
      this.format,
      });

  factory DocumentReference_Content.fromJson(Map<String, dynamic> json) => _$DocumentReference_ContentFromJson(json);
  Map<String, dynamic> toJson() _$DocumentReference_ContentToJson(this);
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

DocumentReference_Context(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.encounter,
      this.event,
      this.period,
      this.facilityType,
      this.practiceSetting,
      this.sourcePatientInfo,
      this.related,
      });

  factory DocumentReference_Context.fromJson(Map<String, dynamic> json) => _$DocumentReference_ContextFromJson(json);
  Map<String, dynamic> toJson() _$DocumentReference_ContextToJson(this);
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

EffectEvidenceSynthesis(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.status,
      this._status,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.note,
      this.useContext,
      this.jurisdiction,
      this.copyright,
      this._copyright,
      this.approvalDate,
      this._approvalDate,
      this.lastReviewDate,
      this._lastReviewDate,
      this.effectivePeriod,
      this.topic,
      this.author,
      this.editor,
      this.reviewer,
      this.endorser,
      this.relatedArtifact,
      this.synthesisType,
      this.studyType,
      this.population,
      this.exposure,
      this.exposureAlternative,
      this.outcome,
      this.sampleSize,
      this.resultsByExposure,
      this.effectEstimate,
      this.certainty,
      });

  factory EffectEvidenceSynthesis.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesisFromJson(json);
  Map<String, dynamic> toJson() _$EffectEvidenceSynthesisToJson(this);
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

EffectEvidenceSynthesis_SampleSize(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.numberOfStudies,
      this._numberOfStudies,
      this.numberOfParticipants,
      this._numberOfParticipants,
      });

  factory EffectEvidenceSynthesis_SampleSize.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_SampleSizeFromJson(json);
  Map<String, dynamic> toJson() _$EffectEvidenceSynthesis_SampleSizeToJson(this);
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

EffectEvidenceSynthesis_ResultsByExposure(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.exposureState,
      this._exposureState,
      this.variantState,
      this.riskEvidenceSynthesis,
      });

  factory EffectEvidenceSynthesis_ResultsByExposure.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_ResultsByExposureFromJson(json);
  Map<String, dynamic> toJson() _$EffectEvidenceSynthesis_ResultsByExposureToJson(this);
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

EffectEvidenceSynthesis_EffectEstimate(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.type,
      this.variantState,
      this.value,
      this._value,
      this.unitOfMeasure,
      this.precisionEstimate,
      });

  factory EffectEvidenceSynthesis_EffectEstimate.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_EffectEstimateFromJson(json);
  Map<String, dynamic> toJson() _$EffectEvidenceSynthesis_EffectEstimateToJson(this);
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

EffectEvidenceSynthesis_PrecisionEstimate(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.level,
      this._level,
      this.from,
      this._from,
      this.to,
      this._to,
      });

  factory EffectEvidenceSynthesis_PrecisionEstimate.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_PrecisionEstimateFromJson(json);
  Map<String, dynamic> toJson() _$EffectEvidenceSynthesis_PrecisionEstimateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_Certainty {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> rating;
List<Annotation> note;
List<EffectEvidenceSynthesis_CertaintySubcomponent> certaintySubcomponent;

EffectEvidenceSynthesis_Certainty(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.rating,
      this.note,
      this.certaintySubcomponent,
      });

  factory EffectEvidenceSynthesis_Certainty.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_CertaintyFromJson(json);
  Map<String, dynamic> toJson() _$EffectEvidenceSynthesis_CertaintyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_CertaintySubcomponent {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<CodeableConcept> rating;
List<Annotation> note;

EffectEvidenceSynthesis_CertaintySubcomponent(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.rating,
      this.note,
      });

  factory EffectEvidenceSynthesis_CertaintySubcomponent.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_CertaintySubcomponentFromJson(json);
  Map<String, dynamic> toJson() _$EffectEvidenceSynthesis_CertaintySubcomponentToJson(this);
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

Encounter(
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
      this.status,
      this._status,
      this.statusHistory,
      this.class,
      this.classHistory,
      this.type,
      this.serviceType,
      this.priority,
      this.subject,
      this.episodeOfCare,
      this.basedOn,
      this.participant,
      this.appointment,
      this.period,
      this.length,
      this.reasonCode,
      this.reasonReference,
      this.diagnosis,
      this.account,
      this.hospitalization,
      this.location,
      this.serviceProvider,
      this.partOf,
      });

  factory Encounter.fromJson(Map<String, dynamic> json) => _$EncounterFromJson(json);
  Map<String, dynamic> toJson() _$EncounterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_StatusHistory {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String status; // <code> enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown;
Element _status;
Period period;

Encounter_StatusHistory(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.status,
      this._status,
      this.period,
      });

  factory Encounter_StatusHistory.fromJson(Map<String, dynamic> json) => _$Encounter_StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() _$Encounter_StatusHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_ClassHistory {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Coding class;
Period period;

Encounter_ClassHistory(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.class,
      this.period,
      });

  factory Encounter_ClassHistory.fromJson(Map<String, dynamic> json) => _$Encounter_ClassHistoryFromJson(json);
  Map<String, dynamic> toJson() _$Encounter_ClassHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> type;
Period period;
Reference individual;

Encounter_Participant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.period,
      this.individual,
      });

  factory Encounter_Participant.fromJson(Map<String, dynamic> json) => _$Encounter_ParticipantFromJson(json);
  Map<String, dynamic> toJson() _$Encounter_ParticipantToJson(this);
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

Encounter_Diagnosis(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.condition,
      this.use,
      this.rank,
      this._rank,
      });

  factory Encounter_Diagnosis.fromJson(Map<String, dynamic> json) => _$Encounter_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() _$Encounter_DiagnosisToJson(this);
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

Encounter_Hospitalization(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.preAdmissionIdentifier,
      this.origin,
      this.admitSource,
      this.reAdmission,
      this.dietPreference,
      this.specialCourtesy,
      this.specialArrangement,
      this.destination,
      this.dischargeDisposition,
      });

  factory Encounter_Hospitalization.fromJson(Map<String, dynamic> json) => _$Encounter_HospitalizationFromJson(json);
  Map<String, dynamic> toJson() _$Encounter_HospitalizationToJson(this);
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

Encounter_Location(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.location,
      this.status,
      this._status,
      this.physicalType,
      this.period,
      });

  factory Encounter_Location.fromJson(Map<String, dynamic> json) => _$Encounter_LocationFromJson(json);
  Map<String, dynamic> toJson() _$Encounter_LocationToJson(this);
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

Endpoint(
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
      this.status,
      this._status,
      this.connectionType,
      this.name,
      this._name,
      this.managingOrganization,
      this.contact,
      this.period,
      this.payloadType,
      this.payloadMimeType,
      this._payloadMimeType,
      this.address,
      this._address,
      this.header,
      this._header,
      });

  factory Endpoint.fromJson(Map<String, dynamic> json) => _$EndpointFromJson(json);
  Map<String, dynamic> toJson() _$EndpointToJson(this);
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

EnrollmentRequest(
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
      this.status,
      this._status,
      this.created,
      this._created,
      this.insurer,
      this.provider,
      this.candidate,
      this.coverage,
      });

  factory EnrollmentRequest.fromJson(Map<String, dynamic> json) => _$EnrollmentRequestFromJson(json);
  Map<String, dynamic> toJson() _$EnrollmentRequestToJson(this);
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

EnrollmentResponse(
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
      this.status,
      this._status,
      this.request,
      this.outcome,
      this._outcome,
      this.disposition,
      this._disposition,
      this.created,
      this._created,
      this.organization,
      this.requestProvider,
      });

  factory EnrollmentResponse.fromJson(Map<String, dynamic> json) => _$EnrollmentResponseFromJson(json);
  Map<String, dynamic> toJson() _$EnrollmentResponseToJson(this);
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

EpisodeOfCare(
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
      this.status,
      this._status,
      this.statusHistory,
      this.type,
      this.diagnosis,
      this.patient,
      this.managingOrganization,
      this.period,
      this.referralRequest,
      this.careManager,
      this.team,
      this.account,
      });

  factory EpisodeOfCare.fromJson(Map<String, dynamic> json) => _$EpisodeOfCareFromJson(json);
  Map<String, dynamic> toJson() _$EpisodeOfCareToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare_StatusHistory {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String status; // <code> enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error;
Element _status;
Period period;

EpisodeOfCare_StatusHistory(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.status,
      this._status,
      this.period,
      });

  factory EpisodeOfCare_StatusHistory.fromJson(Map<String, dynamic> json) => _$EpisodeOfCare_StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() _$EpisodeOfCare_StatusHistoryToJson(this);
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

EpisodeOfCare_Diagnosis(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.condition,
      this.role,
      this.rank,
      this._rank,
      });

  factory EpisodeOfCare_Diagnosis.fromJson(Map<String, dynamic> json) => _$EpisodeOfCare_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() _$EpisodeOfCare_DiagnosisToJson(this);
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

EventDefinition(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.subtitle,
      this._subtitle,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.subjectCodeableConcept,
      this.subjectReference,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.usage,
      this._usage,
      this.copyright,
      this._copyright,
      this.approvalDate,
      this._approvalDate,
      this.lastReviewDate,
      this._lastReviewDate,
      this.effectivePeriod,
      this.topic,
      this.author,
      this.editor,
      this.reviewer,
      this.endorser,
      this.relatedArtifact,
      this.trigger,
      });

  factory EventDefinition.fromJson(Map<String, dynamic> json) => _$EventDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$EventDefinitionToJson(this);
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

Evidence(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.shortTitle,
      this._shortTitle,
      this.subtitle,
      this._subtitle,
      this.status,
      this._status,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.note,
      this.useContext,
      this.jurisdiction,
      this.copyright,
      this._copyright,
      this.approvalDate,
      this._approvalDate,
      this.lastReviewDate,
      this._lastReviewDate,
      this.effectivePeriod,
      this.topic,
      this.author,
      this.editor,
      this.reviewer,
      this.endorser,
      this.relatedArtifact,
      this.exposureBackground,
      this.exposureVariant,
      this.outcome,
      });

  factory Evidence.fromJson(Map<String, dynamic> json) => _$EvidenceFromJson(json);
  Map<String, dynamic> toJson() _$EvidenceToJson(this);
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

EvidenceVariable(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.shortTitle,
      this._shortTitle,
      this.subtitle,
      this._subtitle,
      this.status,
      this._status,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.note,
      this.useContext,
      this.jurisdiction,
      this.copyright,
      this._copyright,
      this.approvalDate,
      this._approvalDate,
      this.lastReviewDate,
      this._lastReviewDate,
      this.effectivePeriod,
      this.topic,
      this.author,
      this.editor,
      this.reviewer,
      this.endorser,
      this.relatedArtifact,
      this.type,
      this._type,
      this.characteristic,
      });

  factory EvidenceVariable.fromJson(Map<String, dynamic> json) => _$EvidenceVariableFromJson(json);
  Map<String, dynamic> toJson() _$EvidenceVariableToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EvidenceVariable_Characteristic {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
Reference definitionReference;
String definitionCanonical; //  pattern: ^\S*$
Element _definitionCanonical;
CodeableConcept definitionCodeableConcept;
Expression definitionExpression;
DataRequirement definitionDataRequirement;
TriggerDefinition definitionTriggerDefinition;
List<UsageContext> usageContext;
bool exclude;
Element _exclude;
String participantEffectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _participantEffectiveDateTime;
Period participantEffectivePeriod;
Duration participantEffectiveDuration;
Timing participantEffectiveTiming;
Duration timeFromStart;
String groupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;
Element _groupMeasure;

EvidenceVariable_Characteristic(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.definitionReference,
      this.definitionCanonical,
      this._definitionCanonical,
      this.definitionCodeableConcept,
      this.definitionExpression,
      this.definitionDataRequirement,
      this.definitionTriggerDefinition,
      this.usageContext,
      this.exclude,
      this._exclude,
      this.participantEffectiveDateTime,
      this._participantEffectiveDateTime,
      this.participantEffectivePeriod,
      this.participantEffectiveDuration,
      this.participantEffectiveTiming,
      this.timeFromStart,
      this.groupMeasure,
      this._groupMeasure,
      });

  factory EvidenceVariable_Characteristic.fromJson(Map<String, dynamic> json) => _$EvidenceVariable_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() _$EvidenceVariable_CharacteristicToJson(this);
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

ExampleScenario(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.useContext,
      this.jurisdiction,
      this.copyright,
      this._copyright,
      this.purpose,
      this._purpose,
      this.actor,
      this.instance,
      this.process,
      this.workflow,
      });

  factory ExampleScenario.fromJson(Map<String, dynamic> json) => _$ExampleScenarioFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenarioToJson(this);
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

ExampleScenario_Actor(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.actorId,
      this._actorId,
      this.type,
      this._type,
      this.name,
      this._name,
      this.description,
      this._description,
      });

  factory ExampleScenario_Actor.fromJson(Map<String, dynamic> json) => _$ExampleScenario_ActorFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_ActorToJson(this);
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

ExampleScenario_Instance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.resourceId,
      this._resourceId,
      this.resourceType,
      this._resourceType,
      this.name,
      this._name,
      this.description,
      this._description,
      this.version,
      this.containedInstance,
      });

  factory ExampleScenario_Instance.fromJson(Map<String, dynamic> json) => _$ExampleScenario_InstanceFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_InstanceToJson(this);
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

ExampleScenario_Version(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.versionId,
      this._versionId,
      this.description,
      this._description,
      });

  factory ExampleScenario_Version.fromJson(Map<String, dynamic> json) => _$ExampleScenario_VersionFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_VersionToJson(this);
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

ExampleScenario_ContainedInstance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.resourceId,
      this._resourceId,
      this.versionId,
      this._versionId,
      });

  factory ExampleScenario_ContainedInstance.fromJson(Map<String, dynamic> json) => _$ExampleScenario_ContainedInstanceFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_ContainedInstanceToJson(this);
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

ExampleScenario_Process(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.title,
      this._title,
      this.description,
      this._description,
      this.preConditions,
      this._preConditions,
      this.postConditions,
      this._postConditions,
      this.step,
      });

  factory ExampleScenario_Process.fromJson(Map<String, dynamic> json) => _$ExampleScenario_ProcessFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_ProcessToJson(this);
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

ExampleScenario_Step(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.process,
      this.pause,
      this._pause,
      this.operation,
      this.alternative,
      });

  factory ExampleScenario_Step.fromJson(Map<String, dynamic> json) => _$ExampleScenario_StepFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_StepToJson(this);
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

ExampleScenario_Operation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.number,
      this._number,
      this.type,
      this._type,
      this.name,
      this._name,
      this.initiator,
      this._initiator,
      this.receiver,
      this._receiver,
      this.description,
      this._description,
      this.initiatorActive,
      this._initiatorActive,
      this.receiverActive,
      this._receiverActive,
      this.request,
      this.response,
      });

  factory ExampleScenario_Operation.fromJson(Map<String, dynamic> json) => _$ExampleScenario_OperationFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_OperationToJson(this);
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

ExampleScenario_Alternative(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.title,
      this._title,
      this.description,
      this._description,
      this.step,
      });

  factory ExampleScenario_Alternative.fromJson(Map<String, dynamic> json) => _$ExampleScenario_AlternativeFromJson(json);
  Map<String, dynamic> toJson() _$ExampleScenario_AlternativeToJson(this);
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

ExplanationOfBenefit(
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
      this.status,
      this._status,
      this.type,
      this.subType,
      this.use,
      this._use,
      this.patient,
      this.billablePeriod,
      this.created,
      this._created,
      this.enterer,
      this.insurer,
      this.provider,
      this.priority,
      this.fundsReserveRequested,
      this.fundsReserve,
      this.related,
      this.prescription,
      this.originalPrescription,
      this.payee,
      this.referral,
      this.facility,
      this.claim,
      this.claimResponse,
      this.outcome,
      this._outcome,
      this.disposition,
      this._disposition,
      this.preAuthRef,
      this._preAuthRef,
      this.preAuthRefPeriod,
      this.careTeam,
      this.supportingInfo,
      this.diagnosis,
      this.procedure,
      this.precedence,
      this._precedence,
      this.insurance,
      this.accident,
      this.item,
      this.addItem,
      this.adjudication,
      this.total,
      this.payment,
      this.formCode,
      this.form,
      this.processNote,
      this.benefitPeriod,
      this.benefitBalance,
      });

  factory ExplanationOfBenefit.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefitFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Related {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference claim;
CodeableConcept relationship;
Identifier reference;

ExplanationOfBenefit_Related(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.claim,
      this.relationship,
      this.reference,
      });

  factory ExplanationOfBenefit_Related.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_RelatedFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_RelatedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Payee {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Reference party;

ExplanationOfBenefit_Payee(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.party,
      });

  factory ExplanationOfBenefit_Payee.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_PayeeFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_PayeeToJson(this);
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

ExplanationOfBenefit_CareTeam(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.provider,
      this.responsible,
      this._responsible,
      this.role,
      this.qualification,
      });

  factory ExplanationOfBenefit_CareTeam.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_CareTeamFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_CareTeamToJson(this);
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
String timingDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _timingDate;
Period timingPeriod;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
Quantity valueQuantity;
Attachment valueAttachment;
Reference valueReference;
Coding reason;

ExplanationOfBenefit_SupportingInfo(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.category,
      this.code,
      this.timingDate,
      this._timingDate,
      this.timingPeriod,
      this.valueBoolean,
      this._valueBoolean,
      this.valueString,
      this._valueString,
      this.valueQuantity,
      this.valueAttachment,
      this.valueReference,
      this.reason,
      });

  factory ExplanationOfBenefit_SupportingInfo.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_SupportingInfoToJson(this);
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

ExplanationOfBenefit_Diagnosis(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.diagnosisCodeableConcept,
      this.diagnosisReference,
      this.type,
      this.onAdmission,
      this.packageCode,
      });

  factory ExplanationOfBenefit_Diagnosis.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_DiagnosisToJson(this);
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

ExplanationOfBenefit_Procedure(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.type,
      this.date,
      this._date,
      this.procedureCodeableConcept,
      this.procedureReference,
      this.udi,
      });

  factory ExplanationOfBenefit_Procedure.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_ProcedureFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_ProcedureToJson(this);
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

ExplanationOfBenefit_Insurance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.focal,
      this._focal,
      this.coverage,
      this.preAuthRef,
      this._preAuthRef,
      });

  factory ExplanationOfBenefit_Insurance.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_InsuranceFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_InsuranceToJson(this);
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

ExplanationOfBenefit_Accident(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.date,
      this._date,
      this.type,
      this.locationAddress,
      this.locationReference,
      });

  factory ExplanationOfBenefit_Accident.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_AccidentFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_AccidentToJson(this);
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
String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
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

ExplanationOfBenefit_Item(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.careTeamSequence,
      this._careTeamSequence,
      this.diagnosisSequence,
      this._diagnosisSequence,
      this.procedureSequence,
      this._procedureSequence,
      this.informationSequence,
      this._informationSequence,
      this.revenue,
      this.category,
      this.productOrService,
      this.modifier,
      this.programCode,
      this.servicedDate,
      this._servicedDate,
      this.servicedPeriod,
      this.locationCodeableConcept,
      this.locationAddress,
      this.locationReference,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.udi,
      this.bodySite,
      this.subSite,
      this.encounter,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      this.detail,
      });

  factory ExplanationOfBenefit_Item.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_ItemFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_ItemToJson(this);
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

ExplanationOfBenefit_Adjudication(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.reason,
      this.amount,
      this.value,
      this._value,
      });

  factory ExplanationOfBenefit_Adjudication.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_AdjudicationFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_AdjudicationToJson(this);
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

ExplanationOfBenefit_Detail(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.revenue,
      this.category,
      this.productOrService,
      this.modifier,
      this.programCode,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.udi,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      this.subDetail,
      });

  factory ExplanationOfBenefit_Detail.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_DetailFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_DetailToJson(this);
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

ExplanationOfBenefit_SubDetail(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.revenue,
      this.category,
      this.productOrService,
      this.modifier,
      this.programCode,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.udi,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      });

  factory ExplanationOfBenefit_SubDetail.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_SubDetailFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_SubDetailToJson(this);
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
String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
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

ExplanationOfBenefit_AddItem(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemSequence,
      this._itemSequence,
      this.detailSequence,
      this._detailSequence,
      this.subDetailSequence,
      this._subDetailSequence,
      this.provider,
      this.productOrService,
      this.modifier,
      this.programCode,
      this.servicedDate,
      this._servicedDate,
      this.servicedPeriod,
      this.locationCodeableConcept,
      this.locationAddress,
      this.locationReference,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.bodySite,
      this.subSite,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      this.detail,
      });

  factory ExplanationOfBenefit_AddItem.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_AddItemFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_AddItemToJson(this);
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

ExplanationOfBenefit_Detail1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.productOrService,
      this.modifier,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      this.subDetail,
      });

  factory ExplanationOfBenefit_Detail1.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_Detail1FromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_Detail1ToJson(this);
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

ExplanationOfBenefit_SubDetail1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.productOrService,
      this.modifier,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      });

  factory ExplanationOfBenefit_SubDetail1.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_SubDetail1FromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_SubDetail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Total {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
Money amount;

ExplanationOfBenefit_Total(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.amount,
      });

  factory ExplanationOfBenefit_Total.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_TotalFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_TotalToJson(this);
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

ExplanationOfBenefit_Payment(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.adjustment,
      this.adjustmentReason,
      this.date,
      this._date,
      this.amount,
      this.identifier,
      });

  factory ExplanationOfBenefit_Payment.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_PaymentFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_PaymentToJson(this);
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

ExplanationOfBenefit_ProcessNote(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.number,
      this._number,
      this.type,
      this._type,
      this.text,
      this._text,
      this.language,
      });

  factory ExplanationOfBenefit_ProcessNote.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_ProcessNoteToJson(this);
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

ExplanationOfBenefit_BenefitBalance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.excluded,
      this._excluded,
      this.name,
      this._name,
      this.description,
      this._description,
      this.network,
      this.unit,
      this.term,
      this.financial,
      });

  factory ExplanationOfBenefit_BenefitBalance.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_BenefitBalanceFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_BenefitBalanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Financial {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
int allowedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
Element _allowedUnsignedInt;
String allowedString; //  pattern: ^[ \r\n\t\S]+$
Element _allowedString;
Money allowedMoney;
int usedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
Element _usedUnsignedInt;
Money usedMoney;

ExplanationOfBenefit_Financial(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.allowedUnsignedInt,
      this._allowedUnsignedInt,
      this.allowedString,
      this._allowedString,
      this.allowedMoney,
      this.usedUnsignedInt,
      this._usedUnsignedInt,
      this.usedMoney,
      });

  factory ExplanationOfBenefit_Financial.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_FinancialFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_FinancialToJson(this);
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
String bornDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _bornDate;
String bornString; //  pattern: ^[ \r\n\t\S]+$
Element _bornString;
Age ageAge;
Range ageRange;
String ageString; //  pattern: ^[ \r\n\t\S]+$
Element _ageString;
bool estimatedAge;
Element _estimatedAge;
bool deceasedBoolean; //  pattern: ^true|false$
Element _deceasedBoolean;
Age deceasedAge;
Range deceasedRange;
String deceasedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _deceasedDate;
String deceasedString; //  pattern: ^[ \r\n\t\S]+$
Element _deceasedString;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Annotation> note;
List<FamilyMemberHistory_Condition> condition;

FamilyMemberHistory(
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
      this.status,
      this._status,
      this.dataAbsentReason,
      this.patient,
      this.date,
      this._date,
      this.name,
      this._name,
      this.relationship,
      this.sex,
      this.bornPeriod,
      this.bornDate,
      this._bornDate,
      this.bornString,
      this._bornString,
      this.ageAge,
      this.ageRange,
      this.ageString,
      this._ageString,
      this.estimatedAge,
      this._estimatedAge,
      this.deceasedBoolean,
      this._deceasedBoolean,
      this.deceasedAge,
      this.deceasedRange,
      this.deceasedDate,
      this._deceasedDate,
      this.deceasedString,
      this._deceasedString,
      this.reasonCode,
      this.reasonReference,
      this.note,
      this.condition,
      });

  factory FamilyMemberHistory.fromJson(Map<String, dynamic> json) => _$FamilyMemberHistoryFromJson(json);
  Map<String, dynamic> toJson() _$FamilyMemberHistoryToJson(this);
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
String onsetString; //  pattern: ^[ \r\n\t\S]+$
Element _onsetString;
List<Annotation> note;

FamilyMemberHistory_Condition(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.outcome,
      this.contributedToDeath,
      this._contributedToDeath,
      this.onsetAge,
      this.onsetRange,
      this.onsetPeriod,
      this.onsetString,
      this._onsetString,
      this.note,
      });

  factory FamilyMemberHistory_Condition.fromJson(Map<String, dynamic> json) => _$FamilyMemberHistory_ConditionFromJson(json);
  Map<String, dynamic> toJson() _$FamilyMemberHistory_ConditionToJson(this);
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

Flag(
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
      this.status,
      this._status,
      this.category,
      this.code,
      this.subject,
      this.period,
      this.encounter,
      this.author,
      });

  factory Flag.fromJson(Map<String, dynamic> json) => _$FlagFromJson(json);
  Map<String, dynamic> toJson() _$FlagToJson(this);
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
String startDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
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

Goal(
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
      this.lifecycleStatus,
      this._lifecycleStatus,
      this.achievementStatus,
      this.category,
      this.priority,
      this.description,
      this.subject,
      this.startDate,
      this._startDate,
      this.startCodeableConcept,
      this.target,
      this.statusDate,
      this._statusDate,
      this.statusReason,
      this._statusReason,
      this.expressedBy,
      this.addresses,
      this.note,
      this.outcomeCode,
      this.outcomeReference,
      });

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);
  Map<String, dynamic> toJson() _$GoalToJson(this);
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
String detailString; //  pattern: ^[ \r\n\t\S]+$
Element _detailString;
bool detailBoolean; //  pattern: ^true|false$
Element _detailBoolean;
int detailInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _detailInteger;
Ratio detailRatio;
String dueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _dueDate;
Duration dueDuration;

Goal_Target(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.measure,
      this.detailQuantity,
      this.detailRange,
      this.detailCodeableConcept,
      this.detailString,
      this._detailString,
      this.detailBoolean,
      this._detailBoolean,
      this.detailInteger,
      this._detailInteger,
      this.detailRatio,
      this.dueDate,
      this._dueDate,
      this.dueDuration,
      });

  factory Goal_Target.fromJson(Map<String, dynamic> json) => _$Goal_TargetFromJson(json);
  Map<String, dynamic> toJson() _$Goal_TargetToJson(this);
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

GraphDefinition(
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
      this.url,
      this._url,
      this.version,
      this._version,
      this.name,
      this._name,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.start,
      this._start,
      this.profile,
      this.link,
      });

  factory GraphDefinition.fromJson(Map<String, dynamic> json) => _$GraphDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$GraphDefinitionToJson(this);
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

GraphDefinition_Link(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.path,
      this._path,
      this.sliceName,
      this._sliceName,
      this.min,
      this._min,
      this.max,
      this._max,
      this.description,
      this._description,
      this.target,
      });

  factory GraphDefinition_Link.fromJson(Map<String, dynamic> json) => _$GraphDefinition_LinkFromJson(json);
  Map<String, dynamic> toJson() _$GraphDefinition_LinkToJson(this);
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

GraphDefinition_Target(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.params,
      this._params,
      this.profile,
      this.compartment,
      this.link,
      });

  factory GraphDefinition_Target.fromJson(Map<String, dynamic> json) => _$GraphDefinition_TargetFromJson(json);
  Map<String, dynamic> toJson() _$GraphDefinition_TargetToJson(this);
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

GraphDefinition_Compartment(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.use,
      this._use,
      this.code,
      this._code,
      this.rule,
      this._rule,
      this.expression,
      this._expression,
      this.description,
      this._description,
      });

  factory GraphDefinition_Compartment.fromJson(Map<String, dynamic> json) => _$GraphDefinition_CompartmentFromJson(json);
  Map<String, dynamic> toJson() _$GraphDefinition_CompartmentToJson(this);
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

Group(
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
      this.active,
      this._active,
      this.type,
      this._type,
      this.actual,
      this._actual,
      this.code,
      this.name,
      this._name,
      this.quantity,
      this._quantity,
      this.managingEntity,
      this.characteristic,
      this.member,
      });

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
  Map<String, dynamic> toJson() _$GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Group_Characteristic {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept valueCodeableConcept;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
Quantity valueQuantity;
Range valueRange;
Reference valueReference;
bool exclude;
Element _exclude;
Period period;

Group_Characteristic(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.valueCodeableConcept,
      this.valueBoolean,
      this._valueBoolean,
      this.valueQuantity,
      this.valueRange,
      this.valueReference,
      this.exclude,
      this._exclude,
      this.period,
      });

  factory Group_Characteristic.fromJson(Map<String, dynamic> json) => _$Group_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() _$Group_CharacteristicToJson(this);
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

Group_Member(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.entity,
      this.period,
      this.inactive,
      this._inactive,
      });

  factory Group_Member.fromJson(Map<String, dynamic> json) => _$Group_MemberFromJson(json);
  Map<String, dynamic> toJson() _$Group_MemberToJson(this);
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
String moduleUri; //  pattern: ^\S*$
Element _moduleUri;
String moduleCanonical; //  pattern: ^\S*$
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

GuidanceResponse(
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
      this.requestIdentifier,
      this.identifier,
      this.moduleUri,
      this._moduleUri,
      this.moduleCanonical,
      this._moduleCanonical,
      this.moduleCodeableConcept,
      this.status,
      this._status,
      this.subject,
      this.encounter,
      this.occurrenceDateTime,
      this._occurrenceDateTime,
      this.performer,
      this.reasonCode,
      this.reasonReference,
      this.note,
      this.evaluationMessage,
      this.outputParameters,
      this.result,
      this.dataRequirement,
      });

  factory GuidanceResponse.fromJson(Map<String, dynamic> json) => _$GuidanceResponseFromJson(json);
  Map<String, dynamic> toJson() _$GuidanceResponseToJson(this);
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

HealthcareService(
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
      this.active,
      this._active,
      this.providedBy,
      this.category,
      this.type,
      this.specialty,
      this.location,
      this.name,
      this._name,
      this.comment,
      this._comment,
      this.extraDetails,
      this._extraDetails,
      this.photo,
      this.telecom,
      this.coverageArea,
      this.serviceProvisionCode,
      this.eligibility,
      this.program,
      this.characteristic,
      this.communication,
      this.referralMethod,
      this.appointmentRequired,
      this._appointmentRequired,
      this.availableTime,
      this.notAvailable,
      this.availabilityExceptions,
      this._availabilityExceptions,
      this.endpoint,
      });

  factory HealthcareService.fromJson(Map<String, dynamic> json) => _$HealthcareServiceFromJson(json);
  Map<String, dynamic> toJson() _$HealthcareServiceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HealthcareService_Eligibility {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
String comment;
Element _comment;

HealthcareService_Eligibility(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.comment,
      this._comment,
      });

  factory HealthcareService_Eligibility.fromJson(Map<String, dynamic> json) => _$HealthcareService_EligibilityFromJson(json);
  Map<String, dynamic> toJson() _$HealthcareService_EligibilityToJson(this);
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

HealthcareService_AvailableTime(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.daysOfWeek,
      this._daysOfWeek,
      this.allDay,
      this._allDay,
      this.availableStartTime,
      this._availableStartTime,
      this.availableEndTime,
      this._availableEndTime,
      });

  factory HealthcareService_AvailableTime.fromJson(Map<String, dynamic> json) => _$HealthcareService_AvailableTimeFromJson(json);
  Map<String, dynamic> toJson() _$HealthcareService_AvailableTimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HealthcareService_NotAvailable {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
Period during;

HealthcareService_NotAvailable(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.during,
      });

  factory HealthcareService_NotAvailable.fromJson(Map<String, dynamic> json) => _$HealthcareService_NotAvailableFromJson(json);
  Map<String, dynamic> toJson() _$HealthcareService_NotAvailableToJson(this);
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

ImagingStudy(
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
      this.status,
      this._status,
      this.modality,
      this.subject,
      this.encounter,
      this.started,
      this._started,
      this.basedOn,
      this.referrer,
      this.interpreter,
      this.endpoint,
      this.numberOfSeries,
      this._numberOfSeries,
      this.numberOfInstances,
      this._numberOfInstances,
      this.procedureReference,
      this.procedureCode,
      this.location,
      this.reasonCode,
      this.reasonReference,
      this.note,
      this.description,
      this._description,
      this.series,
      });

  factory ImagingStudy.fromJson(Map<String, dynamic> json) => _$ImagingStudyFromJson(json);
  Map<String, dynamic> toJson() _$ImagingStudyToJson(this);
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

ImagingStudy_Series(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.uid,
      this._uid,
      this.number,
      this._number,
      this.modality,
      this.description,
      this._description,
      this.numberOfInstances,
      this._numberOfInstances,
      this.endpoint,
      this.bodySite,
      this.laterality,
      this.specimen,
      this.started,
      this._started,
      this.performer,
      this.instance,
      });

  factory ImagingStudy_Series.fromJson(Map<String, dynamic> json) => _$ImagingStudy_SeriesFromJson(json);
  Map<String, dynamic> toJson() _$ImagingStudy_SeriesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImagingStudy_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;

ImagingStudy_Performer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.function,
      this.actor,
      });

  factory ImagingStudy_Performer.fromJson(Map<String, dynamic> json) => _$ImagingStudy_PerformerFromJson(json);
  Map<String, dynamic> toJson() _$ImagingStudy_PerformerToJson(this);
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

ImagingStudy_Instance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.uid,
      this._uid,
      this.sopClass,
      this.number,
      this._number,
      this.title,
      this._title,
      });

  factory ImagingStudy_Instance.fromJson(Map<String, dynamic> json) => _$ImagingStudy_InstanceFromJson(json);
  Map<String, dynamic> toJson() _$ImagingStudy_InstanceToJson(this);
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
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _occurrenceDateTime;
String occurrenceString; //  pattern: ^[ \r\n\t\S]+$
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

Immunization(
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
      this.status,
      this._status,
      this.statusReason,
      this.vaccineCode,
      this.patient,
      this.encounter,
      this.occurrenceDateTime,
      this._occurrenceDateTime,
      this.occurrenceString,
      this._occurrenceString,
      this.recorded,
      this._recorded,
      this.primarySource,
      this._primarySource,
      this.reportOrigin,
      this.location,
      this.manufacturer,
      this.lotNumber,
      this._lotNumber,
      this.expirationDate,
      this._expirationDate,
      this.site,
      this.route,
      this.doseQuantity,
      this.performer,
      this.note,
      this.reasonCode,
      this.reasonReference,
      this.isSubpotent,
      this._isSubpotent,
      this.subpotentReason,
      this.education,
      this.programEligibility,
      this.fundingSource,
      this.reaction,
      this.protocolApplied,
      });

  factory Immunization.fromJson(Map<String, dynamic> json) => _$ImmunizationFromJson(json);
  Map<String, dynamic> toJson() _$ImmunizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;

Immunization_Performer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.function,
      this.actor,
      });

  factory Immunization_Performer.fromJson(Map<String, dynamic> json) => _$Immunization_PerformerFromJson(json);
  Map<String, dynamic> toJson() _$Immunization_PerformerToJson(this);
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

Immunization_Education(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.documentType,
      this._documentType,
      this.reference,
      this._reference,
      this.publicationDate,
      this._publicationDate,
      this.presentationDate,
      this._presentationDate,
      });

  factory Immunization_Education.fromJson(Map<String, dynamic> json) => _$Immunization_EducationFromJson(json);
  Map<String, dynamic> toJson() _$Immunization_EducationToJson(this);
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

Immunization_Reaction(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.date,
      this._date,
      this.detail,
      this.reported,
      this._reported,
      });

  factory Immunization_Reaction.fromJson(Map<String, dynamic> json) => _$Immunization_ReactionFromJson(json);
  Map<String, dynamic> toJson() _$Immunization_ReactionToJson(this);
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
int doseNumberPositiveInt; //  pattern: ^[1-9][0-9]*$
Element _doseNumberPositiveInt;
String doseNumberString; //  pattern: ^[ \r\n\t\S]+$
Element _doseNumberString;
int seriesDosesPositiveInt; //  pattern: ^[1-9][0-9]*$
Element _seriesDosesPositiveInt;
String seriesDosesString; //  pattern: ^[ \r\n\t\S]+$
Element _seriesDosesString;

Immunization_ProtocolApplied(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.series,
      this._series,
      this.authority,
      this.targetDisease,
      this.doseNumberPositiveInt,
      this._doseNumberPositiveInt,
      this.doseNumberString,
      this._doseNumberString,
      this.seriesDosesPositiveInt,
      this._seriesDosesPositiveInt,
      this.seriesDosesString,
      this._seriesDosesString,
      });

  factory Immunization_ProtocolApplied.fromJson(Map<String, dynamic> json) => _$Immunization_ProtocolAppliedFromJson(json);
  Map<String, dynamic> toJson() _$Immunization_ProtocolAppliedToJson(this);
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
int doseNumberPositiveInt; //  pattern: ^[1-9][0-9]*$
Element _doseNumberPositiveInt;
String doseNumberString; //  pattern: ^[ \r\n\t\S]+$
Element _doseNumberString;
int seriesDosesPositiveInt; //  pattern: ^[1-9][0-9]*$
Element _seriesDosesPositiveInt;
String seriesDosesString; //  pattern: ^[ \r\n\t\S]+$
Element _seriesDosesString;

ImmunizationEvaluation(
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
      this.status,
      this._status,
      this.patient,
      this.date,
      this._date,
      this.authority,
      this.targetDisease,
      this.immunizationEvent,
      this.doseStatus,
      this.doseStatusReason,
      this.description,
      this._description,
      this.series,
      this._series,
      this.doseNumberPositiveInt,
      this._doseNumberPositiveInt,
      this.doseNumberString,
      this._doseNumberString,
      this.seriesDosesPositiveInt,
      this._seriesDosesPositiveInt,
      this.seriesDosesString,
      this._seriesDosesString,
      });

  factory ImmunizationEvaluation.fromJson(Map<String, dynamic> json) => _$ImmunizationEvaluationFromJson(json);
  Map<String, dynamic> toJson() _$ImmunizationEvaluationToJson(this);
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

ImmunizationRecommendation(
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
      this.patient,
      this.date,
      this._date,
      this.authority,
      this.recommendation,
      });

  factory ImmunizationRecommendation.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendationFromJson(json);
  Map<String, dynamic> toJson() _$ImmunizationRecommendationToJson(this);
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
int doseNumberPositiveInt; //  pattern: ^[1-9][0-9]*$
Element _doseNumberPositiveInt;
String doseNumberString; //  pattern: ^[ \r\n\t\S]+$
Element _doseNumberString;
int seriesDosesPositiveInt; //  pattern: ^[1-9][0-9]*$
Element _seriesDosesPositiveInt;
String seriesDosesString; //  pattern: ^[ \r\n\t\S]+$
Element _seriesDosesString;
List<Reference> supportingImmunization;
List<Reference> supportingPatientInformation;

ImmunizationRecommendation_Recommendation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.vaccineCode,
      this.targetDisease,
      this.contraindicatedVaccineCode,
      this.forecastStatus,
      this.forecastReason,
      this.dateCriterion,
      this.description,
      this._description,
      this.series,
      this._series,
      this.doseNumberPositiveInt,
      this._doseNumberPositiveInt,
      this.doseNumberString,
      this._doseNumberString,
      this.seriesDosesPositiveInt,
      this._seriesDosesPositiveInt,
      this.seriesDosesString,
      this._seriesDosesString,
      this.supportingImmunization,
      this.supportingPatientInformation,
      });

  factory ImmunizationRecommendation_Recommendation.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendation_RecommendationFromJson(json);
  Map<String, dynamic> toJson() _$ImmunizationRecommendation_RecommendationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImmunizationRecommendation_DateCriterion {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
DateTime value;
Element _value;

ImmunizationRecommendation_DateCriterion(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.value,
      this._value,
      });

  factory ImmunizationRecommendation_DateCriterion.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendation_DateCriterionFromJson(json);
  Map<String, dynamic> toJson() _$ImmunizationRecommendation_DateCriterionToJson(this);
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

ImplementationGuide(
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
      this.url,
      this._url,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.copyright,
      this._copyright,
      this.packageId,
      this._packageId,
      this.license,
      this._license,
      this.fhirVersion,
      this._fhirVersion,
      this.dependsOn,
      this.global,
      this.definition,
      this.manifest,
      });

  factory ImplementationGuide.fromJson(Map<String, dynamic> json) => _$ImplementationGuideFromJson(json);
  Map<String, dynamic> toJson() _$ImplementationGuideToJson(this);
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

ImplementationGuide_DependsOn(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.uri,
      this.packageId,
      this._packageId,
      this.version,
      this._version,
      });

  factory ImplementationGuide_DependsOn.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_DependsOnFromJson(json);
  Map<String, dynamic> toJson() _$ImplementationGuide_DependsOnToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Global {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type;
Element _type;
String profile;

ImplementationGuide_Global(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.profile,
      });

  factory ImplementationGuide_Global.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_GlobalFromJson(json);
  Map<String, dynamic> toJson() _$ImplementationGuide_GlobalToJson(this);
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

ImplementationGuide_Definition(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.grouping,
      this.resource,
      this.page,
      this.parameter,
      this.template,
      });

  factory ImplementationGuide_Definition.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_DefinitionFromJson(json);
  Map<String, dynamic> toJson() _$ImplementationGuide_DefinitionToJson(this);
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

ImplementationGuide_Grouping(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.description,
      this._description,
      });

  factory ImplementationGuide_Grouping.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_GroupingFromJson(json);
  Map<String, dynamic> toJson() _$ImplementationGuide_GroupingToJson(this);
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
bool exampleBoolean; //  pattern: ^true|false$
Element _exampleBoolean;
String exampleCanonical; //  pattern: ^\S*$
Element _exampleCanonical;
String groupingId;
Element _groupingId;

ImplementationGuide_Resource(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.reference,
      this.fhirVersion,
      this._fhirVersion,
      this.name,
      this._name,
      this.description,
      this._description,
      this.exampleBoolean,
      this._exampleBoolean,
      this.exampleCanonical,
      this._exampleCanonical,
      this.groupingId,
      this._groupingId,
      });

  factory ImplementationGuide_Resource.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_ResourceFromJson(json);
  Map<String, dynamic> toJson() _$ImplementationGuide_ResourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Page {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String nameUrl; //  pattern: ^\S*$
Element _nameUrl;
Reference nameReference;
String title;
Element _title;
String generation; // <code> enum: html/markdown/xml/generated;
Element _generation;
List<ImplementationGuide_Page> page;

ImplementationGuide_Page(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.nameUrl,
      this._nameUrl,
      this.nameReference,
      this.title,
      this._title,
      this.generation,
      this._generation,
      this.page,
      });

  factory ImplementationGuide_Page.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_PageFromJson(json);
  Map<String, dynamic> toJson() _$ImplementationGuide_PageToJson(this);
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

ImplementationGuide_Parameter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.value,
      this._value,
      });

  factory ImplementationGuide_Parameter.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_ParameterFromJson(json);
  Map<String, dynamic> toJson() _$ImplementationGuide_ParameterToJson(this);
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

ImplementationGuide_Template(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.source,
      this._source,
      this.scope,
      this._scope,
      });

  factory ImplementationGuide_Template.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_TemplateFromJson(json);
  Map<String, dynamic> toJson() _$ImplementationGuide_TemplateToJson(this);
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

ImplementationGuide_Manifest(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.rendering,
      this._rendering,
      this.resource,
      this.page,
      this.image,
      this._image,
      this.other,
      this._other,
      });

  factory ImplementationGuide_Manifest.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_ManifestFromJson(json);
  Map<String, dynamic> toJson() _$ImplementationGuide_ManifestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Resource1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference reference;
bool exampleBoolean; //  pattern: ^true|false$
Element _exampleBoolean;
String exampleCanonical; //  pattern: ^\S*$
Element _exampleCanonical;
String relativePath;
Element _relativePath;

ImplementationGuide_Resource1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.reference,
      this.exampleBoolean,
      this._exampleBoolean,
      this.exampleCanonical,
      this._exampleCanonical,
      this.relativePath,
      this._relativePath,
      });

  factory ImplementationGuide_Resource1.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_Resource1FromJson(json);
  Map<String, dynamic> toJson() _$ImplementationGuide_Resource1ToJson(this);
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

ImplementationGuide_Page1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.title,
      this._title,
      this.anchor,
      this._anchor,
      });

  factory ImplementationGuide_Page1.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_Page1FromJson(json);
  Map<String, dynamic> toJson() _$ImplementationGuide_Page1ToJson(this);
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

InsurancePlan(
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
      this.status,
      this._status,
      this.type,
      this.name,
      this._name,
      this.alias,
      this._alias,
      this.period,
      this.ownedBy,
      this.administeredBy,
      this.coverageArea,
      this.contact,
      this.endpoint,
      this.network,
      this.coverage,
      this.plan,
      });

  factory InsurancePlan.fromJson(Map<String, dynamic> json) => _$InsurancePlanFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlanToJson(this);
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

InsurancePlan_Contact(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.purpose,
      this.name,
      this.telecom,
      this.address,
      });

  factory InsurancePlan_Contact.fromJson(Map<String, dynamic> json) => _$InsurancePlan_ContactFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_ContactToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Coverage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<Reference> network;
List<InsurancePlan_Benefit> benefit;

InsurancePlan_Coverage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.network,
      this.benefit,
      });

  factory InsurancePlan_Coverage.fromJson(Map<String, dynamic> json) => _$InsurancePlan_CoverageFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_CoverageToJson(this);
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

InsurancePlan_Benefit(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.requirement,
      this._requirement,
      this.limit,
      });

  factory InsurancePlan_Benefit.fromJson(Map<String, dynamic> json) => _$InsurancePlan_BenefitFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_BenefitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Limit {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity value;
CodeableConcept code;

InsurancePlan_Limit(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.value,
      this.code,
      });

  factory InsurancePlan_Limit.fromJson(Map<String, dynamic> json) => _$InsurancePlan_LimitFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_LimitToJson(this);
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

InsurancePlan_Plan(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.type,
      this.coverageArea,
      this.network,
      this.generalCost,
      this.specificCost,
      });

  factory InsurancePlan_Plan.fromJson(Map<String, dynamic> json) => _$InsurancePlan_PlanFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_PlanToJson(this);
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

InsurancePlan_GeneralCost(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.groupSize,
      this._groupSize,
      this.cost,
      this.comment,
      this._comment,
      });

  factory InsurancePlan_GeneralCost.fromJson(Map<String, dynamic> json) => _$InsurancePlan_GeneralCostFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_GeneralCostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_SpecificCost {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
List<InsurancePlan_Benefit1> benefit;

InsurancePlan_SpecificCost(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.benefit,
      });

  factory InsurancePlan_SpecificCost.fromJson(Map<String, dynamic> json) => _$InsurancePlan_SpecificCostFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_SpecificCostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Benefit1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<InsurancePlan_Cost> cost;

InsurancePlan_Benefit1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.cost,
      });

  factory InsurancePlan_Benefit1.fromJson(Map<String, dynamic> json) => _$InsurancePlan_Benefit1FromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_Benefit1ToJson(this);
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

InsurancePlan_Cost(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.applicability,
      this.qualifiers,
      this.value,
      });

  factory InsurancePlan_Cost.fromJson(Map<String, dynamic> json) => _$InsurancePlan_CostFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_CostToJson(this);
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

Invoice(
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
      this.status,
      this._status,
      this.cancelledReason,
      this._cancelledReason,
      this.type,
      this.subject,
      this.recipient,
      this.date,
      this._date,
      this.participant,
      this.issuer,
      this.account,
      this.lineItem,
      this.totalPriceComponent,
      this.totalNet,
      this.totalGross,
      this.paymentTerms,
      this._paymentTerms,
      this.note,
      });

  factory Invoice.fromJson(Map<String, dynamic> json) => _$InvoiceFromJson(json);
  Map<String, dynamic> toJson() _$InvoiceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Invoice_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept role;
Reference actor;

Invoice_Participant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.role,
      this.actor,
      });

  factory Invoice_Participant.fromJson(Map<String, dynamic> json) => _$Invoice_ParticipantFromJson(json);
  Map<String, dynamic> toJson() _$Invoice_ParticipantToJson(this);
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

Invoice_LineItem(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.chargeItemReference,
      this.chargeItemCodeableConcept,
      this.priceComponent,
      });

  factory Invoice_LineItem.fromJson(Map<String, dynamic> json) => _$Invoice_LineItemFromJson(json);
  Map<String, dynamic> toJson() _$Invoice_LineItemToJson(this);
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

Invoice_PriceComponent(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.code,
      this.factor,
      this._factor,
      this.amount,
      });

  factory Invoice_PriceComponent.fromJson(Map<String, dynamic> json) => _$Invoice_PriceComponentFromJson(json);
  Map<String, dynamic> toJson() _$Invoice_PriceComponentToJson(this);
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

Library(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.subtitle,
      this._subtitle,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.type,
      this.subjectCodeableConcept,
      this.subjectReference,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.usage,
      this._usage,
      this.copyright,
      this._copyright,
      this.approvalDate,
      this._approvalDate,
      this.lastReviewDate,
      this._lastReviewDate,
      this.effectivePeriod,
      this.topic,
      this.author,
      this.editor,
      this.reviewer,
      this.endorser,
      this.relatedArtifact,
      this.parameter,
      this.dataRequirement,
      this.content,
      });

  factory Library.fromJson(Map<String, dynamic> json) => _$LibraryFromJson(json);
  Map<String, dynamic> toJson() _$LibraryToJson(this);
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

Linkage(
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
      this.active,
      this._active,
      this.author,
      this.item,
      });

  factory Linkage.fromJson(Map<String, dynamic> json) => _$LinkageFromJson(json);
  Map<String, dynamic> toJson() _$LinkageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Linkage_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: source/alternate/historical;
Element _type;
Reference resource;

Linkage_Item(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.resource,
      });

  factory Linkage_Item.fromJson(Map<String, dynamic> json) => _$Linkage_ItemFromJson(json);
  Map<String, dynamic> toJson() _$Linkage_ItemToJson(this);
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

List(
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
      this.status,
      this._status,
      this.mode,
      this._mode,
      this.title,
      this._title,
      this.code,
      this.subject,
      this.encounter,
      this.date,
      this._date,
      this.source,
      this.orderedBy,
      this.note,
      this.entry,
      this.emptyReason,
      });

  factory List.fromJson(Map<String, dynamic> json) => _$ListFromJson(json);
  Map<String, dynamic> toJson() _$ListToJson(this);
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

List_Entry(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.flag,
      this.deleted,
      this._deleted,
      this.date,
      this._date,
      this.item,
      });

  factory List_Entry.fromJson(Map<String, dynamic> json) => _$List_EntryFromJson(json);
  Map<String, dynamic> toJson() _$List_EntryToJson(this);
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

Location(
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
      this.status,
      this._status,
      this.operationalStatus,
      this.name,
      this._name,
      this.alias,
      this._alias,
      this.description,
      this._description,
      this.mode,
      this._mode,
      this.type,
      this.telecom,
      this.address,
      this.physicalType,
      this.position,
      this.managingOrganization,
      this.partOf,
      this.hoursOfOperation,
      this.availabilityExceptions,
      this._availabilityExceptions,
      this.endpoint,
      });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() _$LocationToJson(this);
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

Location_Position(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.longitude,
      this._longitude,
      this.latitude,
      this._latitude,
      this.altitude,
      this._altitude,
      });

  factory Location_Position.fromJson(Map<String, dynamic> json) => _$Location_PositionFromJson(json);
  Map<String, dynamic> toJson() _$Location_PositionToJson(this);
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

Location_HoursOfOperation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.daysOfWeek,
      this._daysOfWeek,
      this.allDay,
      this._allDay,
      this.openingTime,
      this._openingTime,
      this.closingTime,
      this._closingTime,
      });

  factory Location_HoursOfOperation.fromJson(Map<String, dynamic> json) => _$Location_HoursOfOperationFromJson(json);
  Map<String, dynamic> toJson() _$Location_HoursOfOperationToJson(this);
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

Measure(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.subtitle,
      this._subtitle,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.subjectCodeableConcept,
      this.subjectReference,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.usage,
      this._usage,
      this.copyright,
      this._copyright,
      this.approvalDate,
      this._approvalDate,
      this.lastReviewDate,
      this._lastReviewDate,
      this.effectivePeriod,
      this.topic,
      this.author,
      this.editor,
      this.reviewer,
      this.endorser,
      this.relatedArtifact,
      this.library,
      this.disclaimer,
      this._disclaimer,
      this.scoring,
      this.compositeScoring,
      this.type,
      this.riskAdjustment,
      this._riskAdjustment,
      this.rateAggregation,
      this._rateAggregation,
      this.rationale,
      this._rationale,
      this.clinicalRecommendationStatement,
      this._clinicalRecommendationStatement,
      this.improvementNotation,
      this.definition,
      this._definition,
      this.guidance,
      this._guidance,
      this.group,
      this.supplementalData,
      });

  factory Measure.fromJson(Map<String, dynamic> json) => _$MeasureFromJson(json);
  Map<String, dynamic> toJson() _$MeasureToJson(this);
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

Measure_Group(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.description,
      this._description,
      this.population,
      this.stratifier,
      });

  factory Measure_Group.fromJson(Map<String, dynamic> json) => _$Measure_GroupFromJson(json);
  Map<String, dynamic> toJson() _$Measure_GroupToJson(this);
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

Measure_Population(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.description,
      this._description,
      this.criteria,
      });

  factory Measure_Population.fromJson(Map<String, dynamic> json) => _$Measure_PopulationFromJson(json);
  Map<String, dynamic> toJson() _$Measure_PopulationToJson(this);
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

Measure_Stratifier(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.description,
      this._description,
      this.criteria,
      this.component,
      });

  factory Measure_Stratifier.fromJson(Map<String, dynamic> json) => _$Measure_StratifierFromJson(json);
  Map<String, dynamic> toJson() _$Measure_StratifierToJson(this);
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

Measure_Component(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.description,
      this._description,
      this.criteria,
      });

  factory Measure_Component.fromJson(Map<String, dynamic> json) => _$Measure_ComponentFromJson(json);
  Map<String, dynamic> toJson() _$Measure_ComponentToJson(this);
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

Measure_SupplementalData(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.usage,
      this.description,
      this._description,
      this.criteria,
      });

  factory Measure_SupplementalData.fromJson(Map<String, dynamic> json) => _$Measure_SupplementalDataFromJson(json);
  Map<String, dynamic> toJson() _$Measure_SupplementalDataToJson(this);
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

MeasureReport(
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
      this.status,
      this._status,
      this.type,
      this._type,
      this.measure,
      this.subject,
      this.date,
      this._date,
      this.reporter,
      this.period,
      this.improvementNotation,
      this.group,
      this.evaluatedResource,
      });

  factory MeasureReport.fromJson(Map<String, dynamic> json) => _$MeasureReportFromJson(json);
  Map<String, dynamic> toJson() _$MeasureReportToJson(this);
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

MeasureReport_Group(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.population,
      this.measureScore,
      this.stratifier,
      });

  factory MeasureReport_Group.fromJson(Map<String, dynamic> json) => _$MeasureReport_GroupFromJson(json);
  Map<String, dynamic> toJson() _$MeasureReport_GroupToJson(this);
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

MeasureReport_Population(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.count,
      this._count,
      this.subjectResults,
      });

  factory MeasureReport_Population.fromJson(Map<String, dynamic> json) => _$MeasureReport_PopulationFromJson(json);
  Map<String, dynamic> toJson() _$MeasureReport_PopulationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Stratifier {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> code;
List<MeasureReport_Stratum> stratum;

MeasureReport_Stratifier(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.stratum,
      });

  factory MeasureReport_Stratifier.fromJson(Map<String, dynamic> json) => _$MeasureReport_StratifierFromJson(json);
  Map<String, dynamic> toJson() _$MeasureReport_StratifierToJson(this);
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

MeasureReport_Stratum(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.value,
      this.component,
      this.population,
      this.measureScore,
      });

  factory MeasureReport_Stratum.fromJson(Map<String, dynamic> json) => _$MeasureReport_StratumFromJson(json);
  Map<String, dynamic> toJson() _$MeasureReport_StratumToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Component {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept value;

MeasureReport_Component(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.value,
      });

  factory MeasureReport_Component.fromJson(Map<String, dynamic> json) => _$MeasureReport_ComponentFromJson(json);
  Map<String, dynamic> toJson() _$MeasureReport_ComponentToJson(this);
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

MeasureReport_Population1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.count,
      this._count,
      this.subjectResults,
      });

  factory MeasureReport_Population1.fromJson(Map<String, dynamic> json) => _$MeasureReport_Population1FromJson(json);
  Map<String, dynamic> toJson() _$MeasureReport_Population1ToJson(this);
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
String createdDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

Media(
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
      this.basedOn,
      this.partOf,
      this.status,
      this._status,
      this.type,
      this.modality,
      this.view,
      this.subject,
      this.encounter,
      this.createdDateTime,
      this._createdDateTime,
      this.createdPeriod,
      this.issued,
      this._issued,
      this.operator,
      this.reasonCode,
      this.bodySite,
      this.deviceName,
      this._deviceName,
      this.device,
      this.height,
      this._height,
      this.width,
      this._width,
      this.frames,
      this._frames,
      this.duration,
      this._duration,
      this.content,
      this.note,
      });

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
  Map<String, dynamic> toJson() _$MediaToJson(this);
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

Medication(
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
      this.code,
      this.status,
      this._status,
      this.manufacturer,
      this.form,
      this.amount,
      this.ingredient,
      this.batch,
      });

  factory Medication.fromJson(Map<String, dynamic> json) => _$MedicationFromJson(json);
  Map<String, dynamic> toJson() _$MedicationToJson(this);
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

Medication_Ingredient(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemCodeableConcept,
      this.itemReference,
      this.isActive,
      this._isActive,
      this.strength,
      });

  factory Medication_Ingredient.fromJson(Map<String, dynamic> json) => _$Medication_IngredientFromJson(json);
  Map<String, dynamic> toJson() _$Medication_IngredientToJson(this);
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

Medication_Batch(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.lotNumber,
      this._lotNumber,
      this.expirationDate,
      this._expirationDate,
      });

  factory Medication_Batch.fromJson(Map<String, dynamic> json) => _$Medication_BatchFromJson(json);
  Map<String, dynamic> toJson() _$Medication_BatchToJson(this);
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
String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

MedicationAdministration(
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
      this.instantiates,
      this._instantiates,
      this.partOf,
      this.status,
      this._status,
      this.statusReason,
      this.category,
      this.medicationCodeableConcept,
      this.medicationReference,
      this.subject,
      this.context,
      this.supportingInformation,
      this.effectiveDateTime,
      this._effectiveDateTime,
      this.effectivePeriod,
      this.performer,
      this.reasonCode,
      this.reasonReference,
      this.request,
      this.device,
      this.note,
      this.dosage,
      this.eventHistory,
      });

  factory MedicationAdministration.fromJson(Map<String, dynamic> json) => _$MedicationAdministrationFromJson(json);
  Map<String, dynamic> toJson() _$MedicationAdministrationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationAdministration_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;

MedicationAdministration_Performer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.function,
      this.actor,
      });

  factory MedicationAdministration_Performer.fromJson(Map<String, dynamic> json) => _$MedicationAdministration_PerformerFromJson(json);
  Map<String, dynamic> toJson() _$MedicationAdministration_PerformerToJson(this);
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

MedicationAdministration_Dosage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.text,
      this._text,
      this.site,
      this.route,
      this.method,
      this.dose,
      this.rateRatio,
      this.rateQuantity,
      });

  factory MedicationAdministration_Dosage.fromJson(Map<String, dynamic> json) => _$MedicationAdministration_DosageFromJson(json);
  Map<String, dynamic> toJson() _$MedicationAdministration_DosageToJson(this);
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

MedicationDispense(
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
      this.partOf,
      this.status,
      this._status,
      this.statusReasonCodeableConcept,
      this.statusReasonReference,
      this.category,
      this.medicationCodeableConcept,
      this.medicationReference,
      this.subject,
      this.context,
      this.supportingInformation,
      this.performer,
      this.location,
      this.authorizingPrescription,
      this.type,
      this.quantity,
      this.daysSupply,
      this.whenPrepared,
      this._whenPrepared,
      this.whenHandedOver,
      this._whenHandedOver,
      this.destination,
      this.receiver,
      this.note,
      this.dosageInstruction,
      this.substitution,
      this.detectedIssue,
      this.eventHistory,
      });

  factory MedicationDispense.fromJson(Map<String, dynamic> json) => _$MedicationDispenseFromJson(json);
  Map<String, dynamic> toJson() _$MedicationDispenseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationDispense_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;

MedicationDispense_Performer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.function,
      this.actor,
      });

  factory MedicationDispense_Performer.fromJson(Map<String, dynamic> json) => _$MedicationDispense_PerformerFromJson(json);
  Map<String, dynamic> toJson() _$MedicationDispense_PerformerToJson(this);
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

MedicationDispense_Substitution(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.wasSubstituted,
      this._wasSubstituted,
      this.type,
      this.reason,
      this.responsibleParty,
      });

  factory MedicationDispense_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationDispense_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() _$MedicationDispense_SubstitutionToJson(this);
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

MedicationKnowledge(
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
      this.code,
      this.status,
      this._status,
      this.manufacturer,
      this.doseForm,
      this.amount,
      this.synonym,
      this._synonym,
      this.relatedMedicationKnowledge,
      this.associatedMedication,
      this.productType,
      this.monograph,
      this.ingredient,
      this.preparationInstruction,
      this._preparationInstruction,
      this.intendedRoute,
      this.cost,
      this.monitoringProgram,
      this.administrationGuidelines,
      this.medicineClassification,
      this.packaging,
      this.drugCharacteristic,
      this.contraindication,
      this.regulatory,
      this.kinetics,
      });

  factory MedicationKnowledge.fromJson(Map<String, dynamic> json) => _$MedicationKnowledgeFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_RelatedMedicationKnowledge {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<Reference> reference;

MedicationKnowledge_RelatedMedicationKnowledge(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.reference,
      });

  factory MedicationKnowledge_RelatedMedicationKnowledge.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_RelatedMedicationKnowledgeFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_RelatedMedicationKnowledgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Monograph {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Reference source;

MedicationKnowledge_Monograph(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.source,
      });

  factory MedicationKnowledge_Monograph.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MonographFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_MonographToJson(this);
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

MedicationKnowledge_Ingredient(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemCodeableConcept,
      this.itemReference,
      this.isActive,
      this._isActive,
      this.strength,
      });

  factory MedicationKnowledge_Ingredient.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_IngredientFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_IngredientToJson(this);
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

MedicationKnowledge_Cost(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.source,
      this._source,
      this.cost,
      });

  factory MedicationKnowledge_Cost.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_CostFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_CostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_MonitoringProgram {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String name;
Element _name;

MedicationKnowledge_MonitoringProgram(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.name,
      this._name,
      });

  factory MedicationKnowledge_MonitoringProgram.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MonitoringProgramFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_MonitoringProgramToJson(this);
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

MedicationKnowledge_AdministrationGuidelines(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.dosage,
      this.indicationCodeableConcept,
      this.indicationReference,
      this.patientCharacteristics,
      });

  factory MedicationKnowledge_AdministrationGuidelines.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_AdministrationGuidelinesFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_AdministrationGuidelinesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Dosage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<Dosage> dosage;

MedicationKnowledge_Dosage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.dosage,
      });

  factory MedicationKnowledge_Dosage.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_DosageFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_DosageToJson(this);
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

MedicationKnowledge_PatientCharacteristics(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.characteristicCodeableConcept,
      this.characteristicQuantity,
      this.value,
      this._value,
      });

  factory MedicationKnowledge_PatientCharacteristics.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_PatientCharacteristicsFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_PatientCharacteristicsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_MedicineClassification {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<CodeableConcept> classification;

MedicationKnowledge_MedicineClassification(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.classification,
      });

  factory MedicationKnowledge_MedicineClassification.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MedicineClassificationFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_MedicineClassificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Packaging {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Quantity quantity;

MedicationKnowledge_Packaging(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.quantity,
      });

  factory MedicationKnowledge_Packaging.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_PackagingFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_PackagingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_DrugCharacteristic {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
CodeableConcept valueCodeableConcept;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
Quantity valueQuantity;
String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
Element _valueBase64Binary;

MedicationKnowledge_DrugCharacteristic(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.valueCodeableConcept,
      this.valueString,
      this._valueString,
      this.valueQuantity,
      this.valueBase64Binary,
      this._valueBase64Binary,
      });

  factory MedicationKnowledge_DrugCharacteristic.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_DrugCharacteristicFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_DrugCharacteristicToJson(this);
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

MedicationKnowledge_Regulatory(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.regulatoryAuthority,
      this.substitution,
      this.schedule,
      this.maxDispense,
      });

  factory MedicationKnowledge_Regulatory.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_RegulatoryFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_RegulatoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Substitution {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
bool allowed;
Element _allowed;

MedicationKnowledge_Substitution(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.allowed,
      this._allowed,
      });

  factory MedicationKnowledge_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_SubstitutionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Schedule {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept schedule;

MedicationKnowledge_Schedule(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.schedule,
      });

  factory MedicationKnowledge_Schedule.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_ScheduleFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_ScheduleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_MaxDispense {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity quantity;
Duration period;

MedicationKnowledge_MaxDispense(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.quantity,
      this.period,
      });

  factory MedicationKnowledge_MaxDispense.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MaxDispenseFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_MaxDispenseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Kinetics {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Quantity> areaUnderCurve;
List<Quantity> lethalDose50;
Duration halfLifePeriod;

MedicationKnowledge_Kinetics(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.areaUnderCurve,
      this.lethalDose50,
      this.halfLifePeriod,
      });

  factory MedicationKnowledge_Kinetics.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_KineticsFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_KineticsToJson(this);
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
bool reportedBoolean; //  pattern: ^true|false$
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

MedicationRequest(
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
      this.status,
      this._status,
      this.statusReason,
      this.intent,
      this._intent,
      this.category,
      this.priority,
      this._priority,
      this.doNotPerform,
      this._doNotPerform,
      this.reportedBoolean,
      this._reportedBoolean,
      this.reportedReference,
      this.medicationCodeableConcept,
      this.medicationReference,
      this.subject,
      this.encounter,
      this.supportingInformation,
      this.authoredOn,
      this._authoredOn,
      this.requester,
      this.performer,
      this.performerType,
      this.recorder,
      this.reasonCode,
      this.reasonReference,
      this.instantiatesCanonical,
      this._instantiatesCanonical,
      this.instantiatesUri,
      this._instantiatesUri,
      this.basedOn,
      this.groupIdentifier,
      this.courseOfTherapyType,
      this.insurance,
      this.note,
      this.dosageInstruction,
      this.dispenseRequest,
      this.substitution,
      this.priorPrescription,
      this.detectedIssue,
      this.eventHistory,
      });

  factory MedicationRequest.fromJson(Map<String, dynamic> json) => _$MedicationRequestFromJson(json);
  Map<String, dynamic> toJson() _$MedicationRequestToJson(this);
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

MedicationRequest_DispenseRequest(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.initialFill,
      this.dispenseInterval,
      this.validityPeriod,
      this.numberOfRepeatsAllowed,
      this._numberOfRepeatsAllowed,
      this.quantity,
      this.expectedSupplyDuration,
      this.performer,
      });

  factory MedicationRequest_DispenseRequest.fromJson(Map<String, dynamic> json) => _$MedicationRequest_DispenseRequestFromJson(json);
  Map<String, dynamic> toJson() _$MedicationRequest_DispenseRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationRequest_InitialFill {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity quantity;
Duration duration;

MedicationRequest_InitialFill(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.quantity,
      this.duration,
      });

  factory MedicationRequest_InitialFill.fromJson(Map<String, dynamic> json) => _$MedicationRequest_InitialFillFromJson(json);
  Map<String, dynamic> toJson() _$MedicationRequest_InitialFillToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationRequest_Substitution {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool allowedBoolean; //  pattern: ^true|false$
Element _allowedBoolean;
CodeableConcept allowedCodeableConcept;
CodeableConcept reason;

MedicationRequest_Substitution(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.allowedBoolean,
      this._allowedBoolean,
      this.allowedCodeableConcept,
      this.reason,
      });

  factory MedicationRequest_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationRequest_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() _$MedicationRequest_SubstitutionToJson(this);
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
String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

MedicationStatement(
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
      this.basedOn,
      this.partOf,
      this.status,
      this._status,
      this.statusReason,
      this.category,
      this.medicationCodeableConcept,
      this.medicationReference,
      this.subject,
      this.context,
      this.effectiveDateTime,
      this._effectiveDateTime,
      this.effectivePeriod,
      this.dateAsserted,
      this._dateAsserted,
      this.informationSource,
      this.derivedFrom,
      this.reasonCode,
      this.reasonReference,
      this.note,
      this.dosage,
      });

  factory MedicationStatement.fromJson(Map<String, dynamic> json) => _$MedicationStatementFromJson(json);
  Map<String, dynamic> toJson() _$MedicationStatementToJson(this);
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

MedicinalProduct(
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
      this.type,
      this.domain,
      this.combinedPharmaceuticalDoseForm,
      this.legalStatusOfSupply,
      this.additionalMonitoringIndicator,
      this.specialMeasures,
      this._specialMeasures,
      this.paediatricUseIndicator,
      this.productClassification,
      this.marketingStatus,
      this.pharmaceuticalProduct,
      this.packagedMedicinalProduct,
      this.attachedDocument,
      this.masterFile,
      this.contact,
      this.clinicalTrial,
      this.name,
      this.crossReference,
      this.manufacturingBusinessOperation,
      this.specialDesignation,
      });

  factory MedicinalProduct.fromJson(Map<String, dynamic> json) => _$MedicinalProductFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductToJson(this);
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

MedicinalProduct_Name(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.productName,
      this._productName,
      this.namePart,
      this.countryLanguage,
      });

  factory MedicinalProduct_Name.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_NameFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProduct_NameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_NamePart {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String part;
Element _part;
Coding type;

MedicinalProduct_NamePart(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.part,
      this._part,
      this.type,
      });

  factory MedicinalProduct_NamePart.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_NamePartFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProduct_NamePartToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_CountryLanguage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept country;
CodeableConcept jurisdiction;
CodeableConcept language;

MedicinalProduct_CountryLanguage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.country,
      this.jurisdiction,
      this.language,
      });

  factory MedicinalProduct_CountryLanguage.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_CountryLanguageFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProduct_CountryLanguageToJson(this);
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

MedicinalProduct_ManufacturingBusinessOperation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.operationType,
      this.authorisationReferenceNumber,
      this.effectiveDate,
      this._effectiveDate,
      this.confidentialityIndicator,
      this.manufacturer,
      this.regulator,
      });

  factory MedicinalProduct_ManufacturingBusinessOperation.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_ManufacturingBusinessOperationFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProduct_ManufacturingBusinessOperationToJson(this);
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

MedicinalProduct_SpecialDesignation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.type,
      this.intendedUse,
      this.indicationCodeableConcept,
      this.indicationReference,
      this.status,
      this.date,
      this._date,
      this.species,
      });

  factory MedicinalProduct_SpecialDesignation.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_SpecialDesignationFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProduct_SpecialDesignationToJson(this);
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

MedicinalProductAuthorization(
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
      this.subject,
      this.country,
      this.jurisdiction,
      this.status,
      this.statusDate,
      this._statusDate,
      this.restoreDate,
      this._restoreDate,
      this.validityPeriod,
      this.dataExclusivityPeriod,
      this.dateOfFirstAuthorization,
      this._dateOfFirstAuthorization,
      this.internationalBirthDate,
      this._internationalBirthDate,
      this.legalBasis,
      this.jurisdictionalAuthorization,
      this.holder,
      this.regulator,
      this.procedure,
      });

  factory MedicinalProductAuthorization.fromJson(Map<String, dynamic> json) => _$MedicinalProductAuthorizationFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductAuthorizationToJson(this);
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

MedicinalProductAuthorization_JurisdictionalAuthorization(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.country,
      this.jurisdiction,
      this.legalStatusOfSupply,
      this.validityPeriod,
      });

  factory MedicinalProductAuthorization_JurisdictionalAuthorization.fromJson(Map<String, dynamic> json) => _$MedicinalProductAuthorization_JurisdictionalAuthorizationFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductAuthorization_JurisdictionalAuthorizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductAuthorization_Procedure {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier identifier;
CodeableConcept type;
Period datePeriod;
String dateDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _dateDateTime;
List<MedicinalProductAuthorization_Procedure> application;

MedicinalProductAuthorization_Procedure(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.type,
      this.datePeriod,
      this.dateDateTime,
      this._dateDateTime,
      this.application,
      });

  factory MedicinalProductAuthorization_Procedure.fromJson(Map<String, dynamic> json) => _$MedicinalProductAuthorization_ProcedureFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductAuthorization_ProcedureToJson(this);
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

MedicinalProductContraindication(
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
      this.subject,
      this.disease,
      this.diseaseStatus,
      this.comorbidity,
      this.therapeuticIndication,
      this.otherTherapy,
      this.population,
      });

  factory MedicinalProductContraindication.fromJson(Map<String, dynamic> json) => _$MedicinalProductContraindicationFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductContraindicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductContraindication_OtherTherapy {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept therapyRelationshipType;
CodeableConcept medicationCodeableConcept;
Reference medicationReference;

MedicinalProductContraindication_OtherTherapy(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.therapyRelationshipType,
      this.medicationCodeableConcept,
      this.medicationReference,
      });

  factory MedicinalProductContraindication_OtherTherapy.fromJson(Map<String, dynamic> json) => _$MedicinalProductContraindication_OtherTherapyFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductContraindication_OtherTherapyToJson(this);
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

MedicinalProductIndication(
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
      this.subject,
      this.diseaseSymptomProcedure,
      this.diseaseStatus,
      this.comorbidity,
      this.intendedEffect,
      this.duration,
      this.otherTherapy,
      this.undesirableEffect,
      this.population,
      });

  factory MedicinalProductIndication.fromJson(Map<String, dynamic> json) => _$MedicinalProductIndicationFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductIndicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIndication_OtherTherapy {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept therapyRelationshipType;
CodeableConcept medicationCodeableConcept;
Reference medicationReference;

MedicinalProductIndication_OtherTherapy(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.therapyRelationshipType,
      this.medicationCodeableConcept,
      this.medicationReference,
      });

  factory MedicinalProductIndication_OtherTherapy.fromJson(Map<String, dynamic> json) => _$MedicinalProductIndication_OtherTherapyFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductIndication_OtherTherapyToJson(this);
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

MedicinalProductIngredient(
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
      this.role,
      this.allergenicIndicator,
      this._allergenicIndicator,
      this.manufacturer,
      this.specifiedSubstance,
      this.substance,
      });

  factory MedicinalProductIngredient.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredientFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductIngredientToJson(this);
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

MedicinalProductIngredient_SpecifiedSubstance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.group,
      this.confidentiality,
      this.strength,
      });

  factory MedicinalProductIngredient_SpecifiedSubstance.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_SpecifiedSubstanceFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductIngredient_SpecifiedSubstanceToJson(this);
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

MedicinalProductIngredient_Strength(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.presentation,
      this.presentationLowLimit,
      this.concentration,
      this.concentrationLowLimit,
      this.measurementPoint,
      this._measurementPoint,
      this.country,
      this.referenceStrength,
      });

  factory MedicinalProductIngredient_Strength.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_StrengthFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductIngredient_StrengthToJson(this);
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

MedicinalProductIngredient_ReferenceStrength(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.substance,
      this.strength,
      this.strengthLowLimit,
      this.measurementPoint,
      this._measurementPoint,
      this.country,
      });

  factory MedicinalProductIngredient_ReferenceStrength.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_ReferenceStrengthFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductIngredient_ReferenceStrengthToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_Substance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
List<MedicinalProductIngredient_Strength> strength;

MedicinalProductIngredient_Substance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.strength,
      });

  factory MedicinalProductIngredient_Substance.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_SubstanceFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductIngredient_SubstanceToJson(this);
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

MedicinalProductInteraction(
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
      this.subject,
      this.description,
      this._description,
      this.interactant,
      this.type,
      this.effect,
      this.incidence,
      this.management,
      });

  factory MedicinalProductInteraction.fromJson(Map<String, dynamic> json) => _$MedicinalProductInteractionFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductInteractionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductInteraction_Interactant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference itemReference;
CodeableConcept itemCodeableConcept;

MedicinalProductInteraction_Interactant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemReference,
      this.itemCodeableConcept,
      });

  factory MedicinalProductInteraction_Interactant.fromJson(Map<String, dynamic> json) => _$MedicinalProductInteraction_InteractantFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductInteraction_InteractantToJson(this);
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

MedicinalProductManufactured(
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
      this.manufacturedDoseForm,
      this.unitOfPresentation,
      this.quantity,
      this.manufacturer,
      this.ingredient,
      this.physicalCharacteristics,
      this.otherCharacteristics,
      });

  factory MedicinalProductManufactured.fromJson(Map<String, dynamic> json) => _$MedicinalProductManufacturedFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductManufacturedToJson(this);
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

MedicinalProductPackaged(
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
      this.subject,
      this.description,
      this._description,
      this.legalStatusOfSupply,
      this.marketingStatus,
      this.marketingAuthorization,
      this.manufacturer,
      this.batchIdentifier,
      this.packageItem,
      });

  factory MedicinalProductPackaged.fromJson(Map<String, dynamic> json) => _$MedicinalProductPackagedFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPackagedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPackaged_BatchIdentifier {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier outerPackaging;
Identifier immediatePackaging;

MedicinalProductPackaged_BatchIdentifier(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.outerPackaging,
      this.immediatePackaging,
      });

  factory MedicinalProductPackaged_BatchIdentifier.fromJson(Map<String, dynamic> json) => _$MedicinalProductPackaged_BatchIdentifierFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPackaged_BatchIdentifierToJson(this);
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

MedicinalProductPackaged_PackageItem(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.type,
      this.quantity,
      this.material,
      this.alternateMaterial,
      this.device,
      this.manufacturedItem,
      this.packageItem,
      this.physicalCharacteristics,
      this.otherCharacteristics,
      this.shelfLifeStorage,
      this.manufacturer,
      });

  factory MedicinalProductPackaged_PackageItem.fromJson(Map<String, dynamic> json) => _$MedicinalProductPackaged_PackageItemFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPackaged_PackageItemToJson(this);
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

MedicinalProductPharmaceutical(
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
      this.administrableDoseForm,
      this.unitOfPresentation,
      this.ingredient,
      this.device,
      this.characteristics,
      this.routeOfAdministration,
      });

  factory MedicinalProductPharmaceutical.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceuticalFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPharmaceuticalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_Characteristics {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept status;

MedicinalProductPharmaceutical_Characteristics(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.status,
      });

  factory MedicinalProductPharmaceutical_Characteristics.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_CharacteristicsFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPharmaceutical_CharacteristicsToJson(this);
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

MedicinalProductPharmaceutical_RouteOfAdministration(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.firstDose,
      this.maxSingleDose,
      this.maxDosePerDay,
      this.maxDosePerTreatmentPeriod,
      this.maxTreatmentPeriod,
      this.targetSpecies,
      });

  factory MedicinalProductPharmaceutical_RouteOfAdministration.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_RouteOfAdministrationFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPharmaceutical_RouteOfAdministrationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_TargetSpecies {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
List<MedicinalProductPharmaceutical_WithdrawalPeriod> withdrawalPeriod;

MedicinalProductPharmaceutical_TargetSpecies(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.withdrawalPeriod,
      });

  factory MedicinalProductPharmaceutical_TargetSpecies.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_TargetSpeciesFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPharmaceutical_TargetSpeciesToJson(this);
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

MedicinalProductPharmaceutical_WithdrawalPeriod(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.tissue,
      this.value,
      this.supportingInformation,
      this._supportingInformation,
      });

  factory MedicinalProductPharmaceutical_WithdrawalPeriod.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_WithdrawalPeriodFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPharmaceutical_WithdrawalPeriodToJson(this);
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

MedicinalProductUndesirableEffect(
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
      this.subject,
      this.symptomConditionEffect,
      this.classification,
      this.frequencyOfOccurrence,
      this.population,
      });

  factory MedicinalProductUndesirableEffect.fromJson(Map<String, dynamic> json) => _$MedicinalProductUndesirableEffectFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductUndesirableEffectToJson(this);
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
String eventUri; //  pattern: ^\S*$
Element _eventUri;
String category; // <code> enum: consequence/currency/notification;
Element _category;
List<MessageDefinition_Focus> focus;
String responseRequired; // <code> enum: always/on-error/never/on-success;
Element _responseRequired;
List<MessageDefinition_AllowedResponse> allowedResponse;
List<String> graph;

MessageDefinition(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.replaces,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.copyright,
      this._copyright,
      this.base,
      this.parent,
      this.eventCoding,
      this.eventUri,
      this._eventUri,
      this.category,
      this._category,
      this.focus,
      this.responseRequired,
      this._responseRequired,
      this.allowedResponse,
      this.graph,
      });

  factory MessageDefinition.fromJson(Map<String, dynamic> json) => _$MessageDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$MessageDefinitionToJson(this);
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

MessageDefinition_Focus(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.profile,
      this.min,
      this._min,
      this.max,
      this._max,
      });

  factory MessageDefinition_Focus.fromJson(Map<String, dynamic> json) => _$MessageDefinition_FocusFromJson(json);
  Map<String, dynamic> toJson() _$MessageDefinition_FocusToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MessageDefinition_AllowedResponse {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String message;
String situation;
Element _situation;

MessageDefinition_AllowedResponse(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.message,
      this.situation,
      this._situation,
      });

  factory MessageDefinition_AllowedResponse.fromJson(Map<String, dynamic> json) => _$MessageDefinition_AllowedResponseFromJson(json);
  Map<String, dynamic> toJson() _$MessageDefinition_AllowedResponseToJson(this);
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
String eventUri; //  pattern: ^\S*$
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

MessageHeader(
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
      this.eventCoding,
      this.eventUri,
      this._eventUri,
      this.destination,
      this.sender,
      this.enterer,
      this.author,
      this.source,
      this.responsible,
      this.reason,
      this.response,
      this.focus,
      this.definition,
      });

  factory MessageHeader.fromJson(Map<String, dynamic> json) => _$MessageHeaderFromJson(json);
  Map<String, dynamic> toJson() _$MessageHeaderToJson(this);
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

MessageHeader_Destination(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.target,
      this.endpoint,
      this._endpoint,
      this.receiver,
      });

  factory MessageHeader_Destination.fromJson(Map<String, dynamic> json) => _$MessageHeader_DestinationFromJson(json);
  Map<String, dynamic> toJson() _$MessageHeader_DestinationToJson(this);
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

MessageHeader_Source(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.software,
      this._software,
      this.version,
      this._version,
      this.contact,
      this.endpoint,
      this._endpoint,
      });

  factory MessageHeader_Source.fromJson(Map<String, dynamic> json) => _$MessageHeader_SourceFromJson(json);
  Map<String, dynamic> toJson() _$MessageHeader_SourceToJson(this);
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

MessageHeader_Response(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this._identifier,
      this.code,
      this._code,
      this.details,
      });

  factory MessageHeader_Response.fromJson(Map<String, dynamic> json) => _$MessageHeader_ResponseFromJson(json);
  Map<String, dynamic> toJson() _$MessageHeader_ResponseToJson(this);
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

MolecularSequence(
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
      this.type,
      this._type,
      this.coordinateSystem,
      this._coordinateSystem,
      this.patient,
      this.specimen,
      this.device,
      this.performer,
      this.quantity,
      this.referenceSeq,
      this.variant,
      this.observedSeq,
      this._observedSeq,
      this.quality,
      this.readCoverage,
      this._readCoverage,
      this.repository,
      this.pointer,
      this.structureVariant,
      });

  factory MolecularSequence.fromJson(Map<String, dynamic> json) => _$MolecularSequenceFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequenceToJson(this);
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

MolecularSequence_ReferenceSeq(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.chromosome,
      this.genomeBuild,
      this._genomeBuild,
      this.orientation,
      this._orientation,
      this.referenceSeqId,
      this.referenceSeqPointer,
      this.referenceSeqString,
      this._referenceSeqString,
      this.strand,
      this._strand,
      this.windowStart,
      this._windowStart,
      this.windowEnd,
      this._windowEnd,
      });

  factory MolecularSequence_ReferenceSeq.fromJson(Map<String, dynamic> json) => _$MolecularSequence_ReferenceSeqFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_ReferenceSeqToJson(this);
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

MolecularSequence_Variant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.start,
      this._start,
      this.end,
      this._end,
      this.observedAllele,
      this._observedAllele,
      this.referenceAllele,
      this._referenceAllele,
      this.cigar,
      this._cigar,
      this.variantPointer,
      });

  factory MolecularSequence_Variant.fromJson(Map<String, dynamic> json) => _$MolecularSequence_VariantFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_VariantToJson(this);
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

MolecularSequence_Quality(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.standardSequence,
      this.start,
      this._start,
      this.end,
      this._end,
      this.score,
      this.method,
      this.truthTP,
      this._truthTP,
      this.queryTP,
      this._queryTP,
      this.truthFN,
      this._truthFN,
      this.queryFP,
      this._queryFP,
      this.gtFP,
      this._gtFP,
      this.precision,
      this._precision,
      this.recall,
      this._recall,
      this.fScore,
      this._fScore,
      this.roc,
      });

  factory MolecularSequence_Quality.fromJson(Map<String, dynamic> json) => _$MolecularSequence_QualityFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_QualityToJson(this);
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

MolecularSequence_Roc(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.score,
      this._score,
      this.numTP,
      this._numTP,
      this.numFP,
      this._numFP,
      this.numFN,
      this._numFN,
      this.precision,
      this._precision,
      this.sensitivity,
      this._sensitivity,
      this.fMeasure,
      this._fMeasure,
      });

  factory MolecularSequence_Roc.fromJson(Map<String, dynamic> json) => _$MolecularSequence_RocFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_RocToJson(this);
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

MolecularSequence_Repository(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.url,
      this._url,
      this.name,
      this._name,
      this.datasetId,
      this._datasetId,
      this.variantsetId,
      this._variantsetId,
      this.readsetId,
      this._readsetId,
      });

  factory MolecularSequence_Repository.fromJson(Map<String, dynamic> json) => _$MolecularSequence_RepositoryFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_RepositoryToJson(this);
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

MolecularSequence_StructureVariant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.variantType,
      this.exact,
      this._exact,
      this.length,
      this._length,
      this.outer,
      this.inner,
      });

  factory MolecularSequence_StructureVariant.fromJson(Map<String, dynamic> json) => _$MolecularSequence_StructureVariantFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_StructureVariantToJson(this);
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

MolecularSequence_Outer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.start,
      this._start,
      this.end,
      this._end,
      });

  factory MolecularSequence_Outer.fromJson(Map<String, dynamic> json) => _$MolecularSequence_OuterFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_OuterToJson(this);
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

MolecularSequence_Inner(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.start,
      this._start,
      this.end,
      this._end,
      });

  factory MolecularSequence_Inner.fromJson(Map<String, dynamic> json) => _$MolecularSequence_InnerFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_InnerToJson(this);
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

NamingSystem(
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
      this.name,
      this._name,
      this.status,
      this._status,
      this.kind,
      this._kind,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.responsible,
      this._responsible,
      this.type,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.usage,
      this._usage,
      this.uniqueId,
      });

  factory NamingSystem.fromJson(Map<String, dynamic> json) => _$NamingSystemFromJson(json);
  Map<String, dynamic> toJson() _$NamingSystemToJson(this);
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

NamingSystem_UniqueId(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.value,
      this._value,
      this.preferred,
      this._preferred,
      this.comment,
      this._comment,
      this.period,
      });

  factory NamingSystem_UniqueId.fromJson(Map<String, dynamic> json) => _$NamingSystem_UniqueIdFromJson(json);
  Map<String, dynamic> toJson() _$NamingSystem_UniqueIdToJson(this);
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

NutritionOrder(
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
      this.instantiates,
      this._instantiates,
      this.status,
      this._status,
      this.intent,
      this._intent,
      this.patient,
      this.encounter,
      this.dateTime,
      this._dateTime,
      this.orderer,
      this.allergyIntolerance,
      this.foodPreferenceModifier,
      this.excludeFoodModifier,
      this.oralDiet,
      this.supplement,
      this.enteralFormula,
      this.note,
      });

  factory NutritionOrder.fromJson(Map<String, dynamic> json) => _$NutritionOrderFromJson(json);
  Map<String, dynamic> toJson() _$NutritionOrderToJson(this);
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

NutritionOrder_OralDiet(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.schedule,
      this.nutrient,
      this.texture,
      this.fluidConsistencyType,
      this.instruction,
      this._instruction,
      });

  factory NutritionOrder_OralDiet.fromJson(Map<String, dynamic> json) => _$NutritionOrder_OralDietFromJson(json);
  Map<String, dynamic> toJson() _$NutritionOrder_OralDietToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Nutrient {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept modifier;
Quantity amount;

NutritionOrder_Nutrient(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.modifier,
      this.amount,
      });

  factory NutritionOrder_Nutrient.fromJson(Map<String, dynamic> json) => _$NutritionOrder_NutrientFromJson(json);
  Map<String, dynamic> toJson() _$NutritionOrder_NutrientToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Texture {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept modifier;
CodeableConcept foodType;

NutritionOrder_Texture(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.modifier,
      this.foodType,
      });

  factory NutritionOrder_Texture.fromJson(Map<String, dynamic> json) => _$NutritionOrder_TextureFromJson(json);
  Map<String, dynamic> toJson() _$NutritionOrder_TextureToJson(this);
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

NutritionOrder_Supplement(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.productName,
      this._productName,
      this.schedule,
      this.quantity,
      this.instruction,
      this._instruction,
      });

  factory NutritionOrder_Supplement.fromJson(Map<String, dynamic> json) => _$NutritionOrder_SupplementFromJson(json);
  Map<String, dynamic> toJson() _$NutritionOrder_SupplementToJson(this);
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

NutritionOrder_EnteralFormula(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.baseFormulaType,
      this.baseFormulaProductName,
      this._baseFormulaProductName,
      this.additiveType,
      this.additiveProductName,
      this._additiveProductName,
      this.caloricDensity,
      this.routeofAdministration,
      this.administration,
      this.maxVolumeToDeliver,
      this.administrationInstruction,
      this._administrationInstruction,
      });

  factory NutritionOrder_EnteralFormula.fromJson(Map<String, dynamic> json) => _$NutritionOrder_EnteralFormulaFromJson(json);
  Map<String, dynamic> toJson() _$NutritionOrder_EnteralFormulaToJson(this);
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

NutritionOrder_Administration(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.schedule,
      this.quantity,
      this.rateQuantity,
      this.rateRatio,
      });

  factory NutritionOrder_Administration.fromJson(Map<String, dynamic> json) => _$NutritionOrder_AdministrationFromJson(json);
  Map<String, dynamic> toJson() _$NutritionOrder_AdministrationToJson(this);
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
String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _effectiveDateTime;
Period effectivePeriod;
Timing effectiveTiming;
String effectiveInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
Element _effectiveInstant;
DateTime issued;
Element _issued;
List<Reference> performer;
Quantity valueQuantity;
CodeableConcept valueCodeableConcept;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
Range valueRange;
Ratio valueRatio;
SampledData valueSampledData;
String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _valueTime;
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

Observation(
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
      this.basedOn,
      this.partOf,
      this.status,
      this._status,
      this.category,
      this.code,
      this.subject,
      this.focus,
      this.encounter,
      this.effectiveDateTime,
      this._effectiveDateTime,
      this.effectivePeriod,
      this.effectiveTiming,
      this.effectiveInstant,
      this._effectiveInstant,
      this.issued,
      this._issued,
      this.performer,
      this.valueQuantity,
      this.valueCodeableConcept,
      this.valueString,
      this._valueString,
      this.valueBoolean,
      this._valueBoolean,
      this.valueInteger,
      this._valueInteger,
      this.valueRange,
      this.valueRatio,
      this.valueSampledData,
      this.valueTime,
      this._valueTime,
      this.valueDateTime,
      this._valueDateTime,
      this.valuePeriod,
      this.dataAbsentReason,
      this.interpretation,
      this.note,
      this.bodySite,
      this.method,
      this.specimen,
      this.device,
      this.referenceRange,
      this.hasMember,
      this.derivedFrom,
      this.component,
      });

  factory Observation.fromJson(Map<String, dynamic> json) => _$ObservationFromJson(json);
  Map<String, dynamic> toJson() _$ObservationToJson(this);
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

Observation_ReferenceRange(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.low,
      this.high,
      this.type,
      this.appliesTo,
      this.age,
      this.text,
      this._text,
      });

  factory Observation_ReferenceRange.fromJson(Map<String, dynamic> json) => _$Observation_ReferenceRangeFromJson(json);
  Map<String, dynamic> toJson() _$Observation_ReferenceRangeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Observation_Component {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
Quantity valueQuantity;
CodeableConcept valueCodeableConcept;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
Range valueRange;
Ratio valueRatio;
SampledData valueSampledData;
String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _valueTime;
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _valueDateTime;
Period valuePeriod;
CodeableConcept dataAbsentReason;
List<CodeableConcept> interpretation;
List<Observation_ReferenceRange> referenceRange;

Observation_Component(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.valueQuantity,
      this.valueCodeableConcept,
      this.valueString,
      this._valueString,
      this.valueBoolean,
      this._valueBoolean,
      this.valueInteger,
      this._valueInteger,
      this.valueRange,
      this.valueRatio,
      this.valueSampledData,
      this.valueTime,
      this._valueTime,
      this.valueDateTime,
      this._valueDateTime,
      this.valuePeriod,
      this.dataAbsentReason,
      this.interpretation,
      this.referenceRange,
      });

  factory Observation_Component.fromJson(Map<String, dynamic> json) => _$Observation_ComponentFromJson(json);
  Map<String, dynamic> toJson() _$Observation_ComponentToJson(this);
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

ObservationDefinition(
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
      this.category,
      this.code,
      this.identifier,
      this.permittedDataType,
      this._permittedDataType,
      this.multipleResultsAllowed,
      this._multipleResultsAllowed,
      this.method,
      this.preferredReportName,
      this._preferredReportName,
      this.quantitativeDetails,
      this.qualifiedInterval,
      this.validCodedValueSet,
      this.normalCodedValueSet,
      this.abnormalCodedValueSet,
      this.criticalCodedValueSet,
      });

  factory ObservationDefinition.fromJson(Map<String, dynamic> json) => _$ObservationDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$ObservationDefinitionToJson(this);
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

ObservationDefinition_QuantitativeDetails(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.customaryUnit,
      this.unit,
      this.conversionFactor,
      this._conversionFactor,
      this.decimalPrecision,
      this._decimalPrecision,
      });

  factory ObservationDefinition_QuantitativeDetails.fromJson(Map<String, dynamic> json) => _$ObservationDefinition_QuantitativeDetailsFromJson(json);
  Map<String, dynamic> toJson() _$ObservationDefinition_QuantitativeDetailsToJson(this);
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

ObservationDefinition_QualifiedInterval(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this._category,
      this.range,
      this.context,
      this.appliesTo,
      this.gender,
      this._gender,
      this.age,
      this.gestationalAge,
      this.condition,
      this._condition,
      });

  factory ObservationDefinition_QualifiedInterval.fromJson(Map<String, dynamic> json) => _$ObservationDefinition_QualifiedIntervalFromJson(json);
  Map<String, dynamic> toJson() _$ObservationDefinition_QualifiedIntervalToJson(this);
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

OperationDefinition(
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
      this.url,
      this._url,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.status,
      this._status,
      this.kind,
      this._kind,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.affectsState,
      this._affectsState,
      this.code,
      this._code,
      this.comment,
      this._comment,
      this.base,
      this.resource,
      this._resource,
      this.system,
      this._system,
      this.type,
      this._type,
      this.instance,
      this._instance,
      this.inputProfile,
      this.outputProfile,
      this.parameter,
      this.overload,
      });

  factory OperationDefinition.fromJson(Map<String, dynamic> json) => _$OperationDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$OperationDefinitionToJson(this);
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

OperationDefinition_Parameter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.use,
      this._use,
      this.min,
      this._min,
      this.max,
      this._max,
      this.documentation,
      this._documentation,
      this.type,
      this._type,
      this.targetProfile,
      this.searchType,
      this._searchType,
      this.binding,
      this.referencedFrom,
      this.part,
      });

  factory OperationDefinition_Parameter.fromJson(Map<String, dynamic> json) => _$OperationDefinition_ParameterFromJson(json);
  Map<String, dynamic> toJson() _$OperationDefinition_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_Binding {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String strength; // <code> enum: required/extensible/preferred/example;
Element _strength;
String valueSet;

OperationDefinition_Binding(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.strength,
      this._strength,
      this.valueSet,
      });

  factory OperationDefinition_Binding.fromJson(Map<String, dynamic> json) => _$OperationDefinition_BindingFromJson(json);
  Map<String, dynamic> toJson() _$OperationDefinition_BindingToJson(this);
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

OperationDefinition_ReferencedFrom(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.source,
      this._source,
      this.sourceId,
      this._sourceId,
      });

  factory OperationDefinition_ReferencedFrom.fromJson(Map<String, dynamic> json) => _$OperationDefinition_ReferencedFromFromJson(json);
  Map<String, dynamic> toJson() _$OperationDefinition_ReferencedFromToJson(this);
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

OperationDefinition_Overload(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.parameterName,
      this._parameterName,
      this.comment,
      this._comment,
      });

  factory OperationDefinition_Overload.fromJson(Map<String, dynamic> json) => _$OperationDefinition_OverloadFromJson(json);
  Map<String, dynamic> toJson() _$OperationDefinition_OverloadToJson(this);
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

OperationOutcome(
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
      this.issue,
      });

  factory OperationOutcome.fromJson(Map<String, dynamic> json) => _$OperationOutcomeFromJson(json);
  Map<String, dynamic> toJson() _$OperationOutcomeToJson(this);
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

OperationOutcome_Issue(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.severity,
      this._severity,
      this.code,
      this._code,
      this.details,
      this.diagnostics,
      this._diagnostics,
      this.location,
      this._location,
      this.expression,
      this._expression,
      });

  factory OperationOutcome_Issue.fromJson(Map<String, dynamic> json) => _$OperationOutcome_IssueFromJson(json);
  Map<String, dynamic> toJson() _$OperationOutcome_IssueToJson(this);
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

Organization(
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
      this.active,
      this._active,
      this.type,
      this.name,
      this._name,
      this.alias,
      this._alias,
      this.telecom,
      this.address,
      this.partOf,
      this.contact,
      this.endpoint,
      });

  factory Organization.fromJson(Map<String, dynamic> json) => _$OrganizationFromJson(json);
  Map<String, dynamic> toJson() _$OrganizationToJson(this);
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

Organization_Contact(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.purpose,
      this.name,
      this.telecom,
      this.address,
      });

  factory Organization_Contact.fromJson(Map<String, dynamic> json) => _$Organization_ContactFromJson(json);
  Map<String, dynamic> toJson() _$Organization_ContactToJson(this);
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

OrganizationAffiliation(
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
      this.active,
      this._active,
      this.period,
      this.organization,
      this.participatingOrganization,
      this.network,
      this.code,
      this.specialty,
      this.location,
      this.healthcareService,
      this.telecom,
      this.endpoint,
      });

  factory OrganizationAffiliation.fromJson(Map<String, dynamic> json) => _$OrganizationAffiliationFromJson(json);
  Map<String, dynamic> toJson() _$OrganizationAffiliationToJson(this);
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

Parameters(
  {this.resourceType,
      this.id,
      this.meta,
      this.implicitRules,
      this._implicitRules,
      this.language,
      this._language,
      this.parameter,
      });

  factory Parameters.fromJson(Map<String, dynamic> json) => _$ParametersFromJson(json);
  Map<String, dynamic> toJson() _$ParametersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Parameters_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
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
ResourceList resource;
List<Parameters_Parameter> part;

Parameters_Parameter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
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
      this.resource,
      this.part,
      });

  factory Parameters_Parameter.fromJson(Map<String, dynamic> json) => _$Parameters_ParameterFromJson(json);
  Map<String, dynamic> toJson() _$Parameters_ParameterToJson(this);
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
bool deceasedBoolean; //  pattern: ^true|false$
Element _deceasedBoolean;
String deceasedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _deceasedDateTime;
List<Address> address;
CodeableConcept maritalStatus;
bool multipleBirthBoolean; //  pattern: ^true|false$
Element _multipleBirthBoolean;
int multipleBirthInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _multipleBirthInteger;
List<Attachment> photo;
List<Patient_Contact> contact;
List<Patient_Communication> communication;
List<Reference> generalPractitioner;
Reference managingOrganization;
List<Patient_Link> link;

Patient(
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
      this.active,
      this._active,
      this.name,
      this.telecom,
      this.gender,
      this._gender,
      this.birthDate,
      this._birthDate,
      this.deceasedBoolean,
      this._deceasedBoolean,
      this.deceasedDateTime,
      this._deceasedDateTime,
      this.address,
      this.maritalStatus,
      this.multipleBirthBoolean,
      this._multipleBirthBoolean,
      this.multipleBirthInteger,
      this._multipleBirthInteger,
      this.photo,
      this.contact,
      this.communication,
      this.generalPractitioner,
      this.managingOrganization,
      this.link,
      });

  factory Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);
  Map<String, dynamic> toJson() _$PatientToJson(this);
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

Patient_Contact(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.relationship,
      this.name,
      this.telecom,
      this.address,
      this.gender,
      this._gender,
      this.organization,
      this.period,
      });

  factory Patient_Contact.fromJson(Map<String, dynamic> json) => _$Patient_ContactFromJson(json);
  Map<String, dynamic> toJson() _$Patient_ContactToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Patient_Communication {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept language;
bool preferred;
Element _preferred;

Patient_Communication(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.language,
      this.preferred,
      this._preferred,
      });

  factory Patient_Communication.fromJson(Map<String, dynamic> json) => _$Patient_CommunicationFromJson(json);
  Map<String, dynamic> toJson() _$Patient_CommunicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Patient_Link {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference other;
String type; // <code> enum: replaced-by/replaces/refer/seealso;
Element _type;

Patient_Link(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.other,
      this.type,
      this._type,
      });

  factory Patient_Link.fromJson(Map<String, dynamic> json) => _$Patient_LinkFromJson(json);
  Map<String, dynamic> toJson() _$Patient_LinkToJson(this);
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

PaymentNotice(
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
      this.status,
      this._status,
      this.request,
      this.response,
      this.created,
      this._created,
      this.provider,
      this.payment,
      this.paymentDate,
      this._paymentDate,
      this.payee,
      this.recipient,
      this.amount,
      this.paymentStatus,
      });

  factory PaymentNotice.fromJson(Map<String, dynamic> json) => _$PaymentNoticeFromJson(json);
  Map<String, dynamic> toJson() _$PaymentNoticeToJson(this);
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

PaymentReconciliation(
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
      this.status,
      this._status,
      this.period,
      this.created,
      this._created,
      this.paymentIssuer,
      this.request,
      this.requestor,
      this.outcome,
      this._outcome,
      this.disposition,
      this._disposition,
      this.paymentDate,
      this._paymentDate,
      this.paymentAmount,
      this.paymentIdentifier,
      this.detail,
      this.formCode,
      this.processNote,
      });

  factory PaymentReconciliation.fromJson(Map<String, dynamic> json) => _$PaymentReconciliationFromJson(json);
  Map<String, dynamic> toJson() _$PaymentReconciliationToJson(this);
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

PaymentReconciliation_Detail(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.predecessor,
      this.type,
      this.request,
      this.submitter,
      this.response,
      this.date,
      this._date,
      this.responsible,
      this.payee,
      this.amount,
      });

  factory PaymentReconciliation_Detail.fromJson(Map<String, dynamic> json) => _$PaymentReconciliation_DetailFromJson(json);
  Map<String, dynamic> toJson() _$PaymentReconciliation_DetailToJson(this);
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

PaymentReconciliation_ProcessNote(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.text,
      this._text,
      });

  factory PaymentReconciliation_ProcessNote.fromJson(Map<String, dynamic> json) => _$PaymentReconciliation_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() _$PaymentReconciliation_ProcessNoteToJson(this);
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

Person(
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
      this.name,
      this.telecom,
      this.gender,
      this._gender,
      this.birthDate,
      this._birthDate,
      this.address,
      this.photo,
      this.managingOrganization,
      this.active,
      this._active,
      this.link,
      });

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() _$PersonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Person_Link {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference target;
String assurance; // <code> enum: level1/level2/level3/level4;
Element _assurance;

Person_Link(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.target,
      this.assurance,
      this._assurance,
      });

  factory Person_Link.fromJson(Map<String, dynamic> json) => _$Person_LinkFromJson(json);
  Map<String, dynamic> toJson() _$Person_LinkToJson(this);
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

PlanDefinition(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.subtitle,
      this._subtitle,
      this.type,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.subjectCodeableConcept,
      this.subjectReference,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.usage,
      this._usage,
      this.copyright,
      this._copyright,
      this.approvalDate,
      this._approvalDate,
      this.lastReviewDate,
      this._lastReviewDate,
      this.effectivePeriod,
      this.topic,
      this.author,
      this.editor,
      this.reviewer,
      this.endorser,
      this.relatedArtifact,
      this.library,
      this.goal,
      this.action,
      });

  factory PlanDefinition.fromJson(Map<String, dynamic> json) => _$PlanDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinitionToJson(this);
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

PlanDefinition_Goal(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.description,
      this.priority,
      this.start,
      this.addresses,
      this.documentation,
      this.target,
      });

  factory PlanDefinition_Goal.fromJson(Map<String, dynamic> json) => _$PlanDefinition_GoalFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinition_GoalToJson(this);
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

PlanDefinition_Target(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.measure,
      this.detailQuantity,
      this.detailRange,
      this.detailCodeableConcept,
      this.due,
      });

  factory PlanDefinition_Target.fromJson(Map<String, dynamic> json) => _$PlanDefinition_TargetFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinition_TargetToJson(this);
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
String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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
String definitionCanonical; //  pattern: ^\S*$
Element _definitionCanonical;
String definitionUri; //  pattern: ^\S*$
Element _definitionUri;
String transform;
List<PlanDefinition_DynamicValue> dynamicValue;
List<PlanDefinition_Action> action;

PlanDefinition_Action(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.prefix,
      this._prefix,
      this.title,
      this._title,
      this.description,
      this._description,
      this.textEquivalent,
      this._textEquivalent,
      this.priority,
      this._priority,
      this.code,
      this.reason,
      this.documentation,
      this.goalId,
      this._goalId,
      this.subjectCodeableConcept,
      this.subjectReference,
      this.trigger,
      this.condition,
      this.input,
      this.output,
      this.relatedAction,
      this.timingDateTime,
      this._timingDateTime,
      this.timingAge,
      this.timingPeriod,
      this.timingDuration,
      this.timingRange,
      this.timingTiming,
      this.participant,
      this.type,
      this.groupingBehavior,
      this._groupingBehavior,
      this.selectionBehavior,
      this._selectionBehavior,
      this.requiredBehavior,
      this._requiredBehavior,
      this.precheckBehavior,
      this._precheckBehavior,
      this.cardinalityBehavior,
      this._cardinalityBehavior,
      this.definitionCanonical,
      this._definitionCanonical,
      this.definitionUri,
      this._definitionUri,
      this.transform,
      this.dynamicValue,
      this.action,
      });

  factory PlanDefinition_Action.fromJson(Map<String, dynamic> json) => _$PlanDefinition_ActionFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinition_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Condition {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String kind; // <code> enum: applicability/start/stop;
Element _kind;
Expression expression;

PlanDefinition_Condition(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.kind,
      this._kind,
      this.expression,
      });

  factory PlanDefinition_Condition.fromJson(Map<String, dynamic> json) => _$PlanDefinition_ConditionFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinition_ConditionToJson(this);
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

PlanDefinition_RelatedAction(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.actionId,
      this._actionId,
      this.relationship,
      this._relationship,
      this.offsetDuration,
      this.offsetRange,
      });

  factory PlanDefinition_RelatedAction.fromJson(Map<String, dynamic> json) => _$PlanDefinition_RelatedActionFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinition_RelatedActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: patient/practitioner/related-person/device;
Element _type;
CodeableConcept role;

PlanDefinition_Participant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.role,
      });

  factory PlanDefinition_Participant.fromJson(Map<String, dynamic> json) => _$PlanDefinition_ParticipantFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinition_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_DynamicValue {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String path;
Element _path;
Expression expression;

PlanDefinition_DynamicValue(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.path,
      this._path,
      this.expression,
      });

  factory PlanDefinition_DynamicValue.fromJson(Map<String, dynamic> json) => _$PlanDefinition_DynamicValueFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinition_DynamicValueToJson(this);
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

Practitioner(
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
      this.active,
      this._active,
      this.name,
      this.telecom,
      this.address,
      this.gender,
      this._gender,
      this.birthDate,
      this._birthDate,
      this.photo,
      this.qualification,
      this.communication,
      });

  factory Practitioner.fromJson(Map<String, dynamic> json) => _$PractitionerFromJson(json);
  Map<String, dynamic> toJson() _$PractitionerToJson(this);
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

Practitioner_Qualification(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.code,
      this.period,
      this.issuer,
      });

  factory Practitioner_Qualification.fromJson(Map<String, dynamic> json) => _$Practitioner_QualificationFromJson(json);
  Map<String, dynamic> toJson() _$Practitioner_QualificationToJson(this);
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

PractitionerRole(
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
      this.active,
      this._active,
      this.period,
      this.practitioner,
      this.organization,
      this.code,
      this.specialty,
      this.location,
      this.healthcareService,
      this.telecom,
      this.availableTime,
      this.notAvailable,
      this.availabilityExceptions,
      this._availabilityExceptions,
      this.endpoint,
      });

  factory PractitionerRole.fromJson(Map<String, dynamic> json) => _$PractitionerRoleFromJson(json);
  Map<String, dynamic> toJson() _$PractitionerRoleToJson(this);
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

PractitionerRole_AvailableTime(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.daysOfWeek,
      this._daysOfWeek,
      this.allDay,
      this._allDay,
      this.availableStartTime,
      this._availableStartTime,
      this.availableEndTime,
      this._availableEndTime,
      });

  factory PractitionerRole_AvailableTime.fromJson(Map<String, dynamic> json) => _$PractitionerRole_AvailableTimeFromJson(json);
  Map<String, dynamic> toJson() _$PractitionerRole_AvailableTimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PractitionerRole_NotAvailable {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
Period during;

PractitionerRole_NotAvailable(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.during,
      });

  factory PractitionerRole_NotAvailable.fromJson(Map<String, dynamic> json) => _$PractitionerRole_NotAvailableFromJson(json);
  Map<String, dynamic> toJson() _$PractitionerRole_NotAvailableToJson(this);
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
String performedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _performedDateTime;
Period performedPeriod;
String performedString; //  pattern: ^[ \r\n\t\S]+$
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

Procedure(
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
      this.partOf,
      this.status,
      this._status,
      this.statusReason,
      this.category,
      this.code,
      this.subject,
      this.encounter,
      this.performedDateTime,
      this._performedDateTime,
      this.performedPeriod,
      this.performedString,
      this._performedString,
      this.performedAge,
      this.performedRange,
      this.recorder,
      this.asserter,
      this.performer,
      this.location,
      this.reasonCode,
      this.reasonReference,
      this.bodySite,
      this.outcome,
      this.report,
      this.complication,
      this.complicationDetail,
      this.followUp,
      this.note,
      this.focalDevice,
      this.usedReference,
      this.usedCode,
      });

  factory Procedure.fromJson(Map<String, dynamic> json) => _$ProcedureFromJson(json);
  Map<String, dynamic> toJson() _$ProcedureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Procedure_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;
Reference onBehalfOf;

Procedure_Performer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.function,
      this.actor,
      this.onBehalfOf,
      });

  factory Procedure_Performer.fromJson(Map<String, dynamic> json) => _$Procedure_PerformerFromJson(json);
  Map<String, dynamic> toJson() _$Procedure_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Procedure_FocalDevice {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept action;
Reference manipulated;

Procedure_FocalDevice(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.action,
      this.manipulated,
      });

  factory Procedure_FocalDevice.fromJson(Map<String, dynamic> json) => _$Procedure_FocalDeviceFromJson(json);
  Map<String, dynamic> toJson() _$Procedure_FocalDeviceToJson(this);
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
String occurredDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

Provenance(
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
      this.target,
      this.occurredPeriod,
      this.occurredDateTime,
      this._occurredDateTime,
      this.recorded,
      this._recorded,
      this.policy,
      this._policy,
      this.location,
      this.reason,
      this.activity,
      this.agent,
      this.entity,
      this.signature,
      });

  factory Provenance.fromJson(Map<String, dynamic> json) => _$ProvenanceFromJson(json);
  Map<String, dynamic> toJson() _$ProvenanceToJson(this);
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

Provenance_Agent(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.role,
      this.who,
      this.onBehalfOf,
      });

  factory Provenance_Agent.fromJson(Map<String, dynamic> json) => _$Provenance_AgentFromJson(json);
  Map<String, dynamic> toJson() _$Provenance_AgentToJson(this);
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

Provenance_Entity(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.role,
      this._role,
      this.what,
      this.agent,
      });

  factory Provenance_Entity.fromJson(Map<String, dynamic> json) => _$Provenance_EntityFromJson(json);
  Map<String, dynamic> toJson() _$Provenance_EntityToJson(this);
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

Questionnaire(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.derivedFrom,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.subjectType,
      this._subjectType,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.copyright,
      this._copyright,
      this.approvalDate,
      this._approvalDate,
      this.lastReviewDate,
      this._lastReviewDate,
      this.effectivePeriod,
      this.code,
      this.item,
      });

  factory Questionnaire.fromJson(Map<String, dynamic> json) => _$QuestionnaireFromJson(json);
  Map<String, dynamic> toJson() _$QuestionnaireToJson(this);
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

Questionnaire_Item(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.linkId,
      this._linkId,
      this.definition,
      this._definition,
      this.code,
      this.prefix,
      this._prefix,
      this.text,
      this._text,
      this.type,
      this._type,
      this.enableWhen,
      this.enableBehavior,
      this._enableBehavior,
      this.required,
      this._required,
      this.repeats,
      this._repeats,
      this.readOnly,
      this._readOnly,
      this.maxLength,
      this._maxLength,
      this.answerValueSet,
      this.answerOption,
      this.initial,
      this.item,
      });

  factory Questionnaire_Item.fromJson(Map<String, dynamic> json) => _$Questionnaire_ItemFromJson(json);
  Map<String, dynamic> toJson() _$Questionnaire_ItemToJson(this);
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
bool answerBoolean; //  pattern: ^true|false$
Element _answerBoolean;
double answerDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _answerDecimal;
int answerInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _answerInteger;
String answerDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _answerDate;
String answerDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _answerDateTime;
String answerTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _answerTime;
String answerString; //  pattern: ^[ \r\n\t\S]+$
Element _answerString;
Coding answerCoding;
Quantity answerQuantity;
Reference answerReference;

Questionnaire_EnableWhen(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.question,
      this._question,
      this.operator,
      this._operator,
      this.answerBoolean,
      this._answerBoolean,
      this.answerDecimal,
      this._answerDecimal,
      this.answerInteger,
      this._answerInteger,
      this.answerDate,
      this._answerDate,
      this.answerDateTime,
      this._answerDateTime,
      this.answerTime,
      this._answerTime,
      this.answerString,
      this._answerString,
      this.answerCoding,
      this.answerQuantity,
      this.answerReference,
      });

  factory Questionnaire_EnableWhen.fromJson(Map<String, dynamic> json) => _$Questionnaire_EnableWhenFromJson(json);
  Map<String, dynamic> toJson() _$Questionnaire_EnableWhenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Questionnaire_AnswerOption {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _valueDate;
String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _valueTime;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
Coding valueCoding;
Reference valueReference;
bool initialSelected;
Element _initialSelected;

Questionnaire_AnswerOption(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.valueInteger,
      this._valueInteger,
      this.valueDate,
      this._valueDate,
      this.valueTime,
      this._valueTime,
      this.valueString,
      this._valueString,
      this.valueCoding,
      this.valueReference,
      this.initialSelected,
      this._initialSelected,
      });

  factory Questionnaire_AnswerOption.fromJson(Map<String, dynamic> json) => _$Questionnaire_AnswerOptionFromJson(json);
  Map<String, dynamic> toJson() _$Questionnaire_AnswerOptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Questionnaire_Initial {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _valueDecimal;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _valueDate;
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _valueDateTime;
String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _valueTime;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
String valueUri; //  pattern: ^\S*$
Element _valueUri;
Attachment valueAttachment;
Coding valueCoding;
Quantity valueQuantity;
Reference valueReference;

Questionnaire_Initial(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.valueBoolean,
      this._valueBoolean,
      this.valueDecimal,
      this._valueDecimal,
      this.valueInteger,
      this._valueInteger,
      this.valueDate,
      this._valueDate,
      this.valueDateTime,
      this._valueDateTime,
      this.valueTime,
      this._valueTime,
      this.valueString,
      this._valueString,
      this.valueUri,
      this._valueUri,
      this.valueAttachment,
      this.valueCoding,
      this.valueQuantity,
      this.valueReference,
      });

  factory Questionnaire_Initial.fromJson(Map<String, dynamic> json) => _$Questionnaire_InitialFromJson(json);
  Map<String, dynamic> toJson() _$Questionnaire_InitialToJson(this);
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

QuestionnaireResponse(
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
      this.basedOn,
      this.partOf,
      this.questionnaire,
      this.status,
      this._status,
      this.subject,
      this.encounter,
      this.authored,
      this._authored,
      this.author,
      this.source,
      this.item,
      });

  factory QuestionnaireResponse.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponseFromJson(json);
  Map<String, dynamic> toJson() _$QuestionnaireResponseToJson(this);
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

QuestionnaireResponse_Item(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.linkId,
      this._linkId,
      this.definition,
      this._definition,
      this.text,
      this._text,
      this.answer,
      this.item,
      });

  factory QuestionnaireResponse_Item.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() _$QuestionnaireResponse_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class QuestionnaireResponse_Answer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _valueDecimal;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _valueDate;
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _valueDateTime;
String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _valueTime;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
String valueUri; //  pattern: ^\S*$
Element _valueUri;
Attachment valueAttachment;
Coding valueCoding;
Quantity valueQuantity;
Reference valueReference;
List<QuestionnaireResponse_Item> item;

QuestionnaireResponse_Answer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.valueBoolean,
      this._valueBoolean,
      this.valueDecimal,
      this._valueDecimal,
      this.valueInteger,
      this._valueInteger,
      this.valueDate,
      this._valueDate,
      this.valueDateTime,
      this._valueDateTime,
      this.valueTime,
      this._valueTime,
      this.valueString,
      this._valueString,
      this.valueUri,
      this._valueUri,
      this.valueAttachment,
      this.valueCoding,
      this.valueQuantity,
      this.valueReference,
      this.item,
      });

  factory QuestionnaireResponse_Answer.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponse_AnswerFromJson(json);
  Map<String, dynamic> toJson() _$QuestionnaireResponse_AnswerToJson(this);
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

RelatedPerson(
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
      this.active,
      this._active,
      this.patient,
      this.relationship,
      this.name,
      this.telecom,
      this.gender,
      this._gender,
      this.birthDate,
      this._birthDate,
      this.address,
      this.photo,
      this.period,
      this.communication,
      });

  factory RelatedPerson.fromJson(Map<String, dynamic> json) => _$RelatedPersonFromJson(json);
  Map<String, dynamic> toJson() _$RelatedPersonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RelatedPerson_Communication {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept language;
bool preferred;
Element _preferred;

RelatedPerson_Communication(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.language,
      this.preferred,
      this._preferred,
      });

  factory RelatedPerson_Communication.fromJson(Map<String, dynamic> json) => _$RelatedPerson_CommunicationFromJson(json);
  Map<String, dynamic> toJson() _$RelatedPerson_CommunicationToJson(this);
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

RequestGroup(
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
      this._instantiatesCanonical,
      this.instantiatesUri,
      this._instantiatesUri,
      this.basedOn,
      this.replaces,
      this.groupIdentifier,
      this.status,
      this._status,
      this.intent,
      this._intent,
      this.priority,
      this._priority,
      this.code,
      this.subject,
      this.encounter,
      this.authoredOn,
      this._authoredOn,
      this.author,
      this.reasonCode,
      this.reasonReference,
      this.note,
      this.action,
      });

  factory RequestGroup.fromJson(Map<String, dynamic> json) => _$RequestGroupFromJson(json);
  Map<String, dynamic> toJson() _$RequestGroupToJson(this);
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
String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

RequestGroup_Action(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.prefix,
      this._prefix,
      this.title,
      this._title,
      this.description,
      this._description,
      this.textEquivalent,
      this._textEquivalent,
      this.priority,
      this._priority,
      this.code,
      this.documentation,
      this.condition,
      this.relatedAction,
      this.timingDateTime,
      this._timingDateTime,
      this.timingAge,
      this.timingPeriod,
      this.timingDuration,
      this.timingRange,
      this.timingTiming,
      this.participant,
      this.type,
      this.groupingBehavior,
      this._groupingBehavior,
      this.selectionBehavior,
      this._selectionBehavior,
      this.requiredBehavior,
      this._requiredBehavior,
      this.precheckBehavior,
      this._precheckBehavior,
      this.cardinalityBehavior,
      this._cardinalityBehavior,
      this.resource,
      this.action,
      });

  factory RequestGroup_Action.fromJson(Map<String, dynamic> json) => _$RequestGroup_ActionFromJson(json);
  Map<String, dynamic> toJson() _$RequestGroup_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestGroup_Condition {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String kind;
Element _kind;
Expression expression;

RequestGroup_Condition(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.kind,
      this._kind,
      this.expression,
      });

  factory RequestGroup_Condition.fromJson(Map<String, dynamic> json) => _$RequestGroup_ConditionFromJson(json);
  Map<String, dynamic> toJson() _$RequestGroup_ConditionToJson(this);
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

RequestGroup_RelatedAction(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.actionId,
      this._actionId,
      this.relationship,
      this._relationship,
      this.offsetDuration,
      this.offsetRange,
      });

  factory RequestGroup_RelatedAction.fromJson(Map<String, dynamic> json) => _$RequestGroup_RelatedActionFromJson(json);
  Map<String, dynamic> toJson() _$RequestGroup_RelatedActionToJson(this);
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

ResearchDefinition(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.shortTitle,
      this._shortTitle,
      this.subtitle,
      this._subtitle,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.subjectCodeableConcept,
      this.subjectReference,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.comment,
      this._comment,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.usage,
      this._usage,
      this.copyright,
      this._copyright,
      this.approvalDate,
      this._approvalDate,
      this.lastReviewDate,
      this._lastReviewDate,
      this.effectivePeriod,
      this.topic,
      this.author,
      this.editor,
      this.reviewer,
      this.endorser,
      this.relatedArtifact,
      this.library,
      this.population,
      this.exposure,
      this.exposureAlternative,
      this.outcome,
      });

  factory ResearchDefinition.fromJson(Map<String, dynamic> json) => _$ResearchDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$ResearchDefinitionToJson(this);
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

ResearchElementDefinition(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.shortTitle,
      this._shortTitle,
      this.subtitle,
      this._subtitle,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.subjectCodeableConcept,
      this.subjectReference,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.comment,
      this._comment,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.usage,
      this._usage,
      this.copyright,
      this._copyright,
      this.approvalDate,
      this._approvalDate,
      this.lastReviewDate,
      this._lastReviewDate,
      this.effectivePeriod,
      this.topic,
      this.author,
      this.editor,
      this.reviewer,
      this.endorser,
      this.relatedArtifact,
      this.library,
      this.type,
      this._type,
      this.variableType,
      this._variableType,
      this.characteristic,
      });

  factory ResearchElementDefinition.fromJson(Map<String, dynamic> json) => _$ResearchElementDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$ResearchElementDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResearchElementDefinition_Characteristic {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept definitionCodeableConcept;
String definitionCanonical; //  pattern: ^\S*$
Element _definitionCanonical;
Expression definitionExpression;
DataRequirement definitionDataRequirement;
List<UsageContext> usageContext;
bool exclude;
Element _exclude;
CodeableConcept unitOfMeasure;
String studyEffectiveDescription;
Element _studyEffectiveDescription;
String studyEffectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _studyEffectiveDateTime;
Period studyEffectivePeriod;
Duration studyEffectiveDuration;
Timing studyEffectiveTiming;
Duration studyEffectiveTimeFromStart;
String studyEffectiveGroupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;
Element _studyEffectiveGroupMeasure;
String participantEffectiveDescription;
Element _participantEffectiveDescription;
String participantEffectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _participantEffectiveDateTime;
Period participantEffectivePeriod;
Duration participantEffectiveDuration;
Timing participantEffectiveTiming;
Duration participantEffectiveTimeFromStart;
String participantEffectiveGroupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;
Element _participantEffectiveGroupMeasure;

ResearchElementDefinition_Characteristic(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.definitionCodeableConcept,
      this.definitionCanonical,
      this._definitionCanonical,
      this.definitionExpression,
      this.definitionDataRequirement,
      this.usageContext,
      this.exclude,
      this._exclude,
      this.unitOfMeasure,
      this.studyEffectiveDescription,
      this._studyEffectiveDescription,
      this.studyEffectiveDateTime,
      this._studyEffectiveDateTime,
      this.studyEffectivePeriod,
      this.studyEffectiveDuration,
      this.studyEffectiveTiming,
      this.studyEffectiveTimeFromStart,
      this.studyEffectiveGroupMeasure,
      this._studyEffectiveGroupMeasure,
      this.participantEffectiveDescription,
      this._participantEffectiveDescription,
      this.participantEffectiveDateTime,
      this._participantEffectiveDateTime,
      this.participantEffectivePeriod,
      this.participantEffectiveDuration,
      this.participantEffectiveTiming,
      this.participantEffectiveTimeFromStart,
      this.participantEffectiveGroupMeasure,
      this._participantEffectiveGroupMeasure,
      });

  factory ResearchElementDefinition_Characteristic.fromJson(Map<String, dynamic> json) => _$ResearchElementDefinition_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() _$ResearchElementDefinition_CharacteristicToJson(this);
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

ResearchStudy(
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
      this.title,
      this._title,
      this.protocol,
      this.partOf,
      this.status,
      this._status,
      this.primaryPurposeType,
      this.phase,
      this.category,
      this.focus,
      this.condition,
      this.contact,
      this.relatedArtifact,
      this.keyword,
      this.location,
      this.description,
      this._description,
      this.enrollment,
      this.period,
      this.sponsor,
      this.principalInvestigator,
      this.site,
      this.reasonStopped,
      this.note,
      this.arm,
      this.objective,
      });

  factory ResearchStudy.fromJson(Map<String, dynamic> json) => _$ResearchStudyFromJson(json);
  Map<String, dynamic> toJson() _$ResearchStudyToJson(this);
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

ResearchStudy_Arm(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.type,
      this.description,
      this._description,
      });

  factory ResearchStudy_Arm.fromJson(Map<String, dynamic> json) => _$ResearchStudy_ArmFromJson(json);
  Map<String, dynamic> toJson() _$ResearchStudy_ArmToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResearchStudy_Objective {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
CodeableConcept type;

ResearchStudy_Objective(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.type,
      });

  factory ResearchStudy_Objective.fromJson(Map<String, dynamic> json) => _$ResearchStudy_ObjectiveFromJson(json);
  Map<String, dynamic> toJson() _$ResearchStudy_ObjectiveToJson(this);
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

ResearchSubject(
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
      this.status,
      this._status,
      this.period,
      this.study,
      this.individual,
      this.assignedArm,
      this._assignedArm,
      this.actualArm,
      this._actualArm,
      this.consent,
      });

  factory ResearchSubject.fromJson(Map<String, dynamic> json) => _$ResearchSubjectFromJson(json);
  Map<String, dynamic> toJson() _$ResearchSubjectToJson(this);
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
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

RiskAssessment(
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
      this.basedOn,
      this.parent,
      this.status,
      this._status,
      this.method,
      this.code,
      this.subject,
      this.encounter,
      this.occurrenceDateTime,
      this._occurrenceDateTime,
      this.occurrencePeriod,
      this.condition,
      this.performer,
      this.reasonCode,
      this.reasonReference,
      this.basis,
      this.prediction,
      this.mitigation,
      this._mitigation,
      this.note,
      });

  factory RiskAssessment.fromJson(Map<String, dynamic> json) => _$RiskAssessmentFromJson(json);
  Map<String, dynamic> toJson() _$RiskAssessmentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskAssessment_Prediction {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept outcome;
double probabilityDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _probabilityDecimal;
Range probabilityRange;
CodeableConcept qualitativeRisk;
double relativeRisk;
Element _relativeRisk;
Period whenPeriod;
Range whenRange;
String rationale;
Element _rationale;

RiskAssessment_Prediction(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.outcome,
      this.probabilityDecimal,
      this._probabilityDecimal,
      this.probabilityRange,
      this.qualitativeRisk,
      this.relativeRisk,
      this._relativeRisk,
      this.whenPeriod,
      this.whenRange,
      this.rationale,
      this._rationale,
      });

  factory RiskAssessment_Prediction.fromJson(Map<String, dynamic> json) => _$RiskAssessment_PredictionFromJson(json);
  Map<String, dynamic> toJson() _$RiskAssessment_PredictionToJson(this);
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

RiskEvidenceSynthesis(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.status,
      this._status,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.note,
      this.useContext,
      this.jurisdiction,
      this.copyright,
      this._copyright,
      this.approvalDate,
      this._approvalDate,
      this.lastReviewDate,
      this._lastReviewDate,
      this.effectivePeriod,
      this.topic,
      this.author,
      this.editor,
      this.reviewer,
      this.endorser,
      this.relatedArtifact,
      this.synthesisType,
      this.studyType,
      this.population,
      this.exposure,
      this.outcome,
      this.sampleSize,
      this.riskEstimate,
      this.certainty,
      });

  factory RiskEvidenceSynthesis.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesisFromJson(json);
  Map<String, dynamic> toJson() _$RiskEvidenceSynthesisToJson(this);
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

RiskEvidenceSynthesis_SampleSize(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.numberOfStudies,
      this._numberOfStudies,
      this.numberOfParticipants,
      this._numberOfParticipants,
      });

  factory RiskEvidenceSynthesis_SampleSize.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_SampleSizeFromJson(json);
  Map<String, dynamic> toJson() _$RiskEvidenceSynthesis_SampleSizeToJson(this);
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

RiskEvidenceSynthesis_RiskEstimate(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.type,
      this.value,
      this._value,
      this.unitOfMeasure,
      this.denominatorCount,
      this._denominatorCount,
      this.numeratorCount,
      this._numeratorCount,
      this.precisionEstimate,
      });

  factory RiskEvidenceSynthesis_RiskEstimate.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_RiskEstimateFromJson(json);
  Map<String, dynamic> toJson() _$RiskEvidenceSynthesis_RiskEstimateToJson(this);
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

RiskEvidenceSynthesis_PrecisionEstimate(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.level,
      this._level,
      this.from,
      this._from,
      this.to,
      this._to,
      });

  factory RiskEvidenceSynthesis_PrecisionEstimate.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_PrecisionEstimateFromJson(json);
  Map<String, dynamic> toJson() _$RiskEvidenceSynthesis_PrecisionEstimateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_Certainty {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> rating;
List<Annotation> note;
List<RiskEvidenceSynthesis_CertaintySubcomponent> certaintySubcomponent;

RiskEvidenceSynthesis_Certainty(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.rating,
      this.note,
      this.certaintySubcomponent,
      });

  factory RiskEvidenceSynthesis_Certainty.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_CertaintyFromJson(json);
  Map<String, dynamic> toJson() _$RiskEvidenceSynthesis_CertaintyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_CertaintySubcomponent {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<CodeableConcept> rating;
List<Annotation> note;

RiskEvidenceSynthesis_CertaintySubcomponent(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.rating,
      this.note,
      });

  factory RiskEvidenceSynthesis_CertaintySubcomponent.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_CertaintySubcomponentFromJson(json);
  Map<String, dynamic> toJson() _$RiskEvidenceSynthesis_CertaintySubcomponentToJson(this);
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

Schedule(
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
      this.active,
      this._active,
      this.serviceCategory,
      this.serviceType,
      this.specialty,
      this.actor,
      this.planningHorizon,
      this.comment,
      this._comment,
      });

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);
  Map<String, dynamic> toJson() _$ScheduleToJson(this);
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

SearchParameter(
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
      this.url,
      this._url,
      this.version,
      this._version,
      this.name,
      this._name,
      this.derivedFrom,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.code,
      this._code,
      this.base,
      this._base,
      this.type,
      this._type,
      this.expression,
      this._expression,
      this.xpath,
      this._xpath,
      this.xpathUsage,
      this._xpathUsage,
      this.target,
      this._target,
      this.multipleOr,
      this._multipleOr,
      this.multipleAnd,
      this._multipleAnd,
      this.comparator,
      this._comparator,
      this.modifier,
      this._modifier,
      this.chain,
      this._chain,
      this.component,
      });

  factory SearchParameter.fromJson(Map<String, dynamic> json) => _$SearchParameterFromJson(json);
  Map<String, dynamic> toJson() _$SearchParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchParameter_Component {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String definition;
String expression;
Element _expression;

SearchParameter_Component(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.definition,
      this.expression,
      this._expression,
      });

  factory SearchParameter_Component.fromJson(Map<String, dynamic> json) => _$SearchParameter_ComponentFromJson(json);
  Map<String, dynamic> toJson() _$SearchParameter_ComponentToJson(this);
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
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _occurrenceDateTime;
Period occurrencePeriod;
Timing occurrenceTiming;
bool asNeededBoolean; //  pattern: ^true|false$
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

ServiceRequest(
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
      this.replaces,
      this.requisition,
      this.status,
      this._status,
      this.intent,
      this._intent,
      this.category,
      this.priority,
      this._priority,
      this.doNotPerform,
      this._doNotPerform,
      this.code,
      this.orderDetail,
      this.quantityQuantity,
      this.quantityRatio,
      this.quantityRange,
      this.subject,
      this.encounter,
      this.occurrenceDateTime,
      this._occurrenceDateTime,
      this.occurrencePeriod,
      this.occurrenceTiming,
      this.asNeededBoolean,
      this._asNeededBoolean,
      this.asNeededCodeableConcept,
      this.authoredOn,
      this._authoredOn,
      this.requester,
      this.performerType,
      this.performer,
      this.locationCode,
      this.locationReference,
      this.reasonCode,
      this.reasonReference,
      this.insurance,
      this.supportingInfo,
      this.specimen,
      this.bodySite,
      this.note,
      this.patientInstruction,
      this._patientInstruction,
      this.relevantHistory,
      });

  factory ServiceRequest.fromJson(Map<String, dynamic> json) => _$ServiceRequestFromJson(json);
  Map<String, dynamic> toJson() _$ServiceRequestToJson(this);
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

Slot(
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
      this.serviceCategory,
      this.serviceType,
      this.specialty,
      this.appointmentType,
      this.schedule,
      this.status,
      this._status,
      this.start,
      this._start,
      this.end,
      this._end,
      this.overbooked,
      this._overbooked,
      this.comment,
      this._comment,
      });

  factory Slot.fromJson(Map<String, dynamic> json) => _$SlotFromJson(json);
  Map<String, dynamic> toJson() _$SlotToJson(this);
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

Specimen(
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
      this.accessionIdentifier,
      this.status,
      this._status,
      this.type,
      this.subject,
      this.receivedTime,
      this._receivedTime,
      this.parent,
      this.request,
      this.collection,
      this.processing,
      this.container,
      this.condition,
      this.note,
      });

  factory Specimen.fromJson(Map<String, dynamic> json) => _$SpecimenFromJson(json);
  Map<String, dynamic> toJson() _$SpecimenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Specimen_Collection {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference collector;
String collectedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _collectedDateTime;
Period collectedPeriod;
Duration duration;
Quantity quantity;
CodeableConcept method;
CodeableConcept bodySite;
CodeableConcept fastingStatusCodeableConcept;
Duration fastingStatusDuration;

Specimen_Collection(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.collector,
      this.collectedDateTime,
      this._collectedDateTime,
      this.collectedPeriod,
      this.duration,
      this.quantity,
      this.method,
      this.bodySite,
      this.fastingStatusCodeableConcept,
      this.fastingStatusDuration,
      });

  factory Specimen_Collection.fromJson(Map<String, dynamic> json) => _$Specimen_CollectionFromJson(json);
  Map<String, dynamic> toJson() _$Specimen_CollectionToJson(this);
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
String timeDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _timeDateTime;
Period timePeriod;

Specimen_Processing(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.procedure,
      this.additive,
      this.timeDateTime,
      this._timeDateTime,
      this.timePeriod,
      });

  factory Specimen_Processing.fromJson(Map<String, dynamic> json) => _$Specimen_ProcessingFromJson(json);
  Map<String, dynamic> toJson() _$Specimen_ProcessingToJson(this);
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

Specimen_Container(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.description,
      this._description,
      this.type,
      this.capacity,
      this.specimenQuantity,
      this.additiveCodeableConcept,
      this.additiveReference,
      });

  factory Specimen_Container.fromJson(Map<String, dynamic> json) => _$Specimen_ContainerFromJson(json);
  Map<String, dynamic> toJson() _$Specimen_ContainerToJson(this);
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

SpecimenDefinition(
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
      this.typeCollected,
      this.patientPreparation,
      this.timeAspect,
      this._timeAspect,
      this.collection,
      this.typeTested,
      });

  factory SpecimenDefinition.fromJson(Map<String, dynamic> json) => _$SpecimenDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$SpecimenDefinitionToJson(this);
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

SpecimenDefinition_TypeTested(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.isDerived,
      this._isDerived,
      this.type,
      this.preference,
      this._preference,
      this.container,
      this.requirement,
      this._requirement,
      this.retentionTime,
      this.rejectionCriterion,
      this.handling,
      });

  factory SpecimenDefinition_TypeTested.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_TypeTestedFromJson(json);
  Map<String, dynamic> toJson() _$SpecimenDefinition_TypeTestedToJson(this);
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
String minimumVolumeString; //  pattern: ^[ \r\n\t\S]+$
Element _minimumVolumeString;
List<SpecimenDefinition_Additive> additive;
String preparation;
Element _preparation;

SpecimenDefinition_Container(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.material,
      this.type,
      this.cap,
      this.description,
      this._description,
      this.capacity,
      this.minimumVolumeQuantity,
      this.minimumVolumeString,
      this._minimumVolumeString,
      this.additive,
      this.preparation,
      this._preparation,
      });

  factory SpecimenDefinition_Container.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_ContainerFromJson(json);
  Map<String, dynamic> toJson() _$SpecimenDefinition_ContainerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Additive {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept additiveCodeableConcept;
Reference additiveReference;

SpecimenDefinition_Additive(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.additiveCodeableConcept,
      this.additiveReference,
      });

  factory SpecimenDefinition_Additive.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_AdditiveFromJson(json);
  Map<String, dynamic> toJson() _$SpecimenDefinition_AdditiveToJson(this);
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

SpecimenDefinition_Handling(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.temperatureQualifier,
      this.temperatureRange,
      this.maxDuration,
      this.instruction,
      this._instruction,
      });

  factory SpecimenDefinition_Handling.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_HandlingFromJson(json);
  Map<String, dynamic> toJson() _$SpecimenDefinition_HandlingToJson(this);
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

StructureDefinition(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.copyright,
      this._copyright,
      this.keyword,
      this.fhirVersion,
      this._fhirVersion,
      this.mapping,
      this.kind,
      this._kind,
      this.abstract,
      this._abstract,
      this.context,
      this.contextInvariant,
      this._contextInvariant,
      this.type,
      this._type,
      this.baseDefinition,
      this.derivation,
      this._derivation,
      this.snapshot,
      this.differential,
      });

  factory StructureDefinition.fromJson(Map<String, dynamic> json) => _$StructureDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$StructureDefinitionToJson(this);
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

StructureDefinition_Mapping(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identity,
      this._identity,
      this.uri,
      this._uri,
      this.name,
      this._name,
      this.comment,
      this._comment,
      });

  factory StructureDefinition_Mapping.fromJson(Map<String, dynamic> json) => _$StructureDefinition_MappingFromJson(json);
  Map<String, dynamic> toJson() _$StructureDefinition_MappingToJson(this);
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

StructureDefinition_Context(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.expression,
      this._expression,
      });

  factory StructureDefinition_Context.fromJson(Map<String, dynamic> json) => _$StructureDefinition_ContextFromJson(json);
  Map<String, dynamic> toJson() _$StructureDefinition_ContextToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Snapshot {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<ElementDefinition> element;

StructureDefinition_Snapshot(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.element,
      });

  factory StructureDefinition_Snapshot.fromJson(Map<String, dynamic> json) => _$StructureDefinition_SnapshotFromJson(json);
  Map<String, dynamic> toJson() _$StructureDefinition_SnapshotToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Differential {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<ElementDefinition> element;

StructureDefinition_Differential(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.element,
      });

  factory StructureDefinition_Differential.fromJson(Map<String, dynamic> json) => _$StructureDefinition_DifferentialFromJson(json);
  Map<String, dynamic> toJson() _$StructureDefinition_DifferentialToJson(this);
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

StructureMap(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.copyright,
      this._copyright,
      this.structure,
      this.import,
      this.group,
      });

  factory StructureMap.fromJson(Map<String, dynamic> json) => _$StructureMapFromJson(json);
  Map<String, dynamic> toJson() _$StructureMapToJson(this);
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

StructureMap_Structure(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.url,
      this.mode,
      this._mode,
      this.alias,
      this._alias,
      this.documentation,
      this._documentation,
      });

  factory StructureMap_Structure.fromJson(Map<String, dynamic> json) => _$StructureMap_StructureFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_StructureToJson(this);
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

StructureMap_Group(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.extends,
      this._extends,
      this.typeMode,
      this._typeMode,
      this.documentation,
      this._documentation,
      this.input,
      this.rule,
      });

  factory StructureMap_Group.fromJson(Map<String, dynamic> json) => _$StructureMap_GroupFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_GroupToJson(this);
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

StructureMap_Input(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.type,
      this._type,
      this.mode,
      this._mode,
      this.documentation,
      this._documentation,
      });

  factory StructureMap_Input.fromJson(Map<String, dynamic> json) => _$StructureMap_InputFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_InputToJson(this);
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

StructureMap_Rule(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.source,
      this.target,
      this.rule,
      this.dependent,
      this.documentation,
      this._documentation,
      });

  factory StructureMap_Rule.fromJson(Map<String, dynamic> json) => _$StructureMap_RuleFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_RuleToJson(this);
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

StructureMap_Source(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.context,
      this._context,
      this.min,
      this._min,
      this.max,
      this._max,
      this.type,
      this._type,
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
      this.element,
      this._element,
      this.listMode,
      this._listMode,
      this.variable,
      this._variable,
      this.condition,
      this._condition,
      this.check,
      this._check,
      this.logMessage,
      this._logMessage,
      });

  factory StructureMap_Source.fromJson(Map<String, dynamic> json) => _$StructureMap_SourceFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_SourceToJson(this);
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

StructureMap_Target(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.context,
      this._context,
      this.contextType,
      this._contextType,
      this.element,
      this._element,
      this.variable,
      this._variable,
      this.listMode,
      this._listMode,
      this.listRuleId,
      this._listRuleId,
      this.transform,
      this._transform,
      this.parameter,
      });

  factory StructureMap_Target.fromJson(Map<String, dynamic> json) => _$StructureMap_TargetFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_TargetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$
Element _valueId;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _valueDecimal;

StructureMap_Parameter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.valueId,
      this._valueId,
      this.valueString,
      this._valueString,
      this.valueBoolean,
      this._valueBoolean,
      this.valueInteger,
      this._valueInteger,
      this.valueDecimal,
      this._valueDecimal,
      });

  factory StructureMap_Parameter.fromJson(Map<String, dynamic> json) => _$StructureMap_ParameterFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_ParameterToJson(this);
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

StructureMap_Dependent(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.variable,
      this._variable,
      });

  factory StructureMap_Dependent.fromJson(Map<String, dynamic> json) => _$StructureMap_DependentFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_DependentToJson(this);
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

Subscription(
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
      this.status,
      this._status,
      this.contact,
      this.end,
      this._end,
      this.reason,
      this._reason,
      this.criteria,
      this._criteria,
      this.error,
      this._error,
      this.channel,
      });

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
  Map<String, dynamic> toJson() _$SubscriptionToJson(this);
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

Subscription_Channel(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.endpoint,
      this._endpoint,
      this.payload,
      this._payload,
      this.header,
      this._header,
      });

  factory Subscription_Channel.fromJson(Map<String, dynamic> json) => _$Subscription_ChannelFromJson(json);
  Map<String, dynamic> toJson() _$Subscription_ChannelToJson(this);
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

Substance(
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
      this.status,
      this._status,
      this.category,
      this.code,
      this.description,
      this._description,
      this.instance,
      this.ingredient,
      });

  factory Substance.fromJson(Map<String, dynamic> json) => _$SubstanceFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceToJson(this);
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

Substance_Instance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.expiry,
      this._expiry,
      this.quantity,
      });

  factory Substance_Instance.fromJson(Map<String, dynamic> json) => _$Substance_InstanceFromJson(json);
  Map<String, dynamic> toJson() _$Substance_InstanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Substance_Ingredient {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Ratio quantity;
CodeableConcept substanceCodeableConcept;
Reference substanceReference;

Substance_Ingredient(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.quantity,
      this.substanceCodeableConcept,
      this.substanceReference,
      });

  factory Substance_Ingredient.fromJson(Map<String, dynamic> json) => _$Substance_IngredientFromJson(json);
  Map<String, dynamic> toJson() _$Substance_IngredientToJson(this);
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

SubstanceNucleicAcid(
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
      this.sequenceType,
      this.numberOfSubunits,
      this._numberOfSubunits,
      this.areaOfHybridisation,
      this._areaOfHybridisation,
      this.oligoNucleotideType,
      this.subunit,
      });

  factory SubstanceNucleicAcid.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcidFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceNucleicAcidToJson(this);
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

SubstanceNucleicAcid_Subunit(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.subunit,
      this._subunit,
      this.sequence,
      this._sequence,
      this.length,
      this._length,
      this.sequenceAttachment,
      this.fivePrime,
      this.threePrime,
      this.linkage,
      this.sugar,
      });

  factory SubstanceNucleicAcid_Subunit.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_SubunitFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceNucleicAcid_SubunitToJson(this);
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

SubstanceNucleicAcid_Linkage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.connectivity,
      this._connectivity,
      this.identifier,
      this.name,
      this._name,
      this.residueSite,
      this._residueSite,
      });

  factory SubstanceNucleicAcid_Linkage.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_LinkageFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceNucleicAcid_LinkageToJson(this);
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

SubstanceNucleicAcid_Sugar(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.name,
      this._name,
      this.residueSite,
      this._residueSite,
      });

  factory SubstanceNucleicAcid_Sugar.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_SugarFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceNucleicAcid_SugarToJson(this);
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

SubstancePolymer(
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
      this.class,
      this.geometry,
      this.copolymerConnectivity,
      this.modification,
      this._modification,
      this.monomerSet,
      this.repeat,
      });

  factory SubstancePolymer.fromJson(Map<String, dynamic> json) => _$SubstancePolymerFromJson(json);
  Map<String, dynamic> toJson() _$SubstancePolymerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_MonomerSet {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept ratioType;
List<SubstancePolymer_StartingMaterial> startingMaterial;

SubstancePolymer_MonomerSet(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.ratioType,
      this.startingMaterial,
      });

  factory SubstancePolymer_MonomerSet.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_MonomerSetFromJson(json);
  Map<String, dynamic> toJson() _$SubstancePolymer_MonomerSetToJson(this);
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

SubstancePolymer_StartingMaterial(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.material,
      this.type,
      this.isDefining,
      this._isDefining,
      this.amount,
      });

  factory SubstancePolymer_StartingMaterial.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_StartingMaterialFromJson(json);
  Map<String, dynamic> toJson() _$SubstancePolymer_StartingMaterialToJson(this);
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

SubstancePolymer_Repeat(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.numberOfUnits,
      this._numberOfUnits,
      this.averageMolecularFormula,
      this._averageMolecularFormula,
      this.repeatUnitAmountType,
      this.repeatUnit,
      });

  factory SubstancePolymer_Repeat.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_RepeatFromJson(json);
  Map<String, dynamic> toJson() _$SubstancePolymer_RepeatToJson(this);
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

SubstancePolymer_RepeatUnit(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.orientationOfPolymerisation,
      this.repeatUnit,
      this._repeatUnit,
      this.amount,
      this.degreeOfPolymerisation,
      this.structuralRepresentation,
      });

  factory SubstancePolymer_RepeatUnit.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_RepeatUnitFromJson(json);
  Map<String, dynamic> toJson() _$SubstancePolymer_RepeatUnitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_DegreeOfPolymerisation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept degree;
SubstanceAmount amount;

SubstancePolymer_DegreeOfPolymerisation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.degree,
      this.amount,
      });

  factory SubstancePolymer_DegreeOfPolymerisation.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_DegreeOfPolymerisationFromJson(json);
  Map<String, dynamic> toJson() _$SubstancePolymer_DegreeOfPolymerisationToJson(this);
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

SubstancePolymer_StructuralRepresentation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.representation,
      this._representation,
      this.attachment,
      });

  factory SubstancePolymer_StructuralRepresentation.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_StructuralRepresentationFromJson(json);
  Map<String, dynamic> toJson() _$SubstancePolymer_StructuralRepresentationToJson(this);
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

SubstanceProtein(
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
      this.sequenceType,
      this.numberOfSubunits,
      this._numberOfSubunits,
      this.disulfideLinkage,
      this._disulfideLinkage,
      this.subunit,
      });

  factory SubstanceProtein.fromJson(Map<String, dynamic> json) => _$SubstanceProteinFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceProteinToJson(this);
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

SubstanceProtein_Subunit(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.subunit,
      this._subunit,
      this.sequence,
      this._sequence,
      this.length,
      this._length,
      this.sequenceAttachment,
      this.nTerminalModificationId,
      this.nTerminalModification,
      this._nTerminalModification,
      this.cTerminalModificationId,
      this.cTerminalModification,
      this._cTerminalModification,
      });

  factory SubstanceProtein_Subunit.fromJson(Map<String, dynamic> json) => _$SubstanceProtein_SubunitFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceProtein_SubunitToJson(this);
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

SubstanceReferenceInformation(
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
      this.comment,
      this._comment,
      this.gene,
      this.geneElement,
      this.classification,
      this.target,
      });

  factory SubstanceReferenceInformation.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformationFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceReferenceInformationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_Gene {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept geneSequenceOrigin;
CodeableConcept gene;
List<Reference> source;

SubstanceReferenceInformation_Gene(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.geneSequenceOrigin,
      this.gene,
      this.source,
      });

  factory SubstanceReferenceInformation_Gene.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_GeneFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceReferenceInformation_GeneToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_GeneElement {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Identifier element;
List<Reference> source;

SubstanceReferenceInformation_GeneElement(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.element,
      this.source,
      });

  factory SubstanceReferenceInformation_GeneElement.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_GeneElementFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceReferenceInformation_GeneElementToJson(this);
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

SubstanceReferenceInformation_Classification(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.domain,
      this.classification,
      this.subtype,
      this.source,
      });

  factory SubstanceReferenceInformation_Classification.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_ClassificationFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceReferenceInformation_ClassificationToJson(this);
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
String amountString; //  pattern: ^[ \r\n\t\S]+$
Element _amountString;
CodeableConcept amountType;
List<Reference> source;

SubstanceReferenceInformation_Target(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.target,
      this.type,
      this.interaction,
      this.organism,
      this.organismType,
      this.amountQuantity,
      this.amountRange,
      this.amountString,
      this._amountString,
      this.amountType,
      this.source,
      });

  factory SubstanceReferenceInformation_Target.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_TargetFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceReferenceInformation_TargetToJson(this);
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

SubstanceSourceMaterial(
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
      this.sourceMaterialClass,
      this.sourceMaterialType,
      this.sourceMaterialState,
      this.organismId,
      this.organismName,
      this._organismName,
      this.parentSubstanceId,
      this.parentSubstanceName,
      this._parentSubstanceName,
      this.countryOfOrigin,
      this.geographicalLocation,
      this._geographicalLocation,
      this.developmentStage,
      this.fractionDescription,
      this.organism,
      this.partDescription,
      });

  factory SubstanceSourceMaterial.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterialFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSourceMaterialToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_FractionDescription {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String fraction;
Element _fraction;
CodeableConcept materialType;

SubstanceSourceMaterial_FractionDescription(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.fraction,
      this._fraction,
      this.materialType,
      });

  factory SubstanceSourceMaterial_FractionDescription.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_FractionDescriptionFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSourceMaterial_FractionDescriptionToJson(this);
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

SubstanceSourceMaterial_Organism(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.family,
      this.genus,
      this.species,
      this.intraspecificType,
      this.intraspecificDescription,
      this._intraspecificDescription,
      this.author,
      this.hybrid,
      this.organismGeneral,
      });

  factory SubstanceSourceMaterial_Organism.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_OrganismFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSourceMaterial_OrganismToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_Author {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept authorType;
String authorDescription;
Element _authorDescription;

SubstanceSourceMaterial_Author(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.authorType,
      this.authorDescription,
      this._authorDescription,
      });

  factory SubstanceSourceMaterial_Author.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_AuthorFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSourceMaterial_AuthorToJson(this);
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

SubstanceSourceMaterial_Hybrid(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.maternalOrganismId,
      this._maternalOrganismId,
      this.maternalOrganismName,
      this._maternalOrganismName,
      this.paternalOrganismId,
      this._paternalOrganismId,
      this.paternalOrganismName,
      this._paternalOrganismName,
      this.hybridType,
      });

  factory SubstanceSourceMaterial_Hybrid.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_HybridFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSourceMaterial_HybridToJson(this);
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

SubstanceSourceMaterial_OrganismGeneral(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.kingdom,
      this.phylum,
      this.class,
      this.order,
      });

  factory SubstanceSourceMaterial_OrganismGeneral.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_OrganismGeneralFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSourceMaterial_OrganismGeneralToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_PartDescription {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept part;
CodeableConcept partLocation;

SubstanceSourceMaterial_PartDescription(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.part,
      this.partLocation,
      });

  factory SubstanceSourceMaterial_PartDescription.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_PartDescriptionFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSourceMaterial_PartDescriptionToJson(this);
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

SubstanceSpecification(
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
      this.type,
      this.status,
      this.domain,
      this.description,
      this._description,
      this.source,
      this.comment,
      this._comment,
      this.moiety,
      this.property,
      this.referenceInformation,
      this.structure,
      this.code,
      this.name,
      this.molecularWeight,
      this.relationship,
      this.nucleicAcid,
      this.polymer,
      this.protein,
      this.sourceMaterial,
      });

  factory SubstanceSpecification.fromJson(Map<String, dynamic> json) => _$SubstanceSpecificationFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecificationToJson(this);
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
String amountString; //  pattern: ^[ \r\n\t\S]+$
Element _amountString;

SubstanceSpecification_Moiety(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.role,
      this.identifier,
      this.name,
      this._name,
      this.stereochemistry,
      this.opticalActivity,
      this.molecularFormula,
      this._molecularFormula,
      this.amountQuantity,
      this.amountString,
      this._amountString,
      });

  factory SubstanceSpecification_Moiety.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_MoietyFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_MoietyToJson(this);
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
String amountString; //  pattern: ^[ \r\n\t\S]+$
Element _amountString;

SubstanceSpecification_Property(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.code,
      this.parameters,
      this._parameters,
      this.definingSubstanceReference,
      this.definingSubstanceCodeableConcept,
      this.amountQuantity,
      this.amountString,
      this._amountString,
      });

  factory SubstanceSpecification_Property.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_PropertyFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_PropertyToJson(this);
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

SubstanceSpecification_Structure(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.stereochemistry,
      this.opticalActivity,
      this.molecularFormula,
      this._molecularFormula,
      this.molecularFormulaByMoiety,
      this._molecularFormulaByMoiety,
      this.isotope,
      this.molecularWeight,
      this.source,
      this.representation,
      });

  factory SubstanceSpecification_Structure.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_StructureFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_StructureToJson(this);
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

SubstanceSpecification_Isotope(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.name,
      this.substitution,
      this.halfLife,
      this.molecularWeight,
      });

  factory SubstanceSpecification_Isotope.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_IsotopeFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_IsotopeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_MolecularWeight {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept method;
CodeableConcept type;
Quantity amount;

SubstanceSpecification_MolecularWeight(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.method,
      this.type,
      this.amount,
      });

  factory SubstanceSpecification_MolecularWeight.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_MolecularWeightFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_MolecularWeightToJson(this);
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

SubstanceSpecification_Representation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.representation,
      this._representation,
      this.attachment,
      });

  factory SubstanceSpecification_Representation.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_RepresentationFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_RepresentationToJson(this);
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

SubstanceSpecification_Code(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.status,
      this.statusDate,
      this._statusDate,
      this.comment,
      this._comment,
      this.source,
      });

  factory SubstanceSpecification_Code.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_CodeFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_CodeToJson(this);
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

SubstanceSpecification_Name(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.type,
      this.status,
      this.preferred,
      this._preferred,
      this.language,
      this.domain,
      this.jurisdiction,
      this.synonym,
      this.translation,
      this.official,
      this.source,
      });

  factory SubstanceSpecification_Name.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_NameFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_NameToJson(this);
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

SubstanceSpecification_Official(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.authority,
      this.status,
      this.date,
      this._date,
      });

  factory SubstanceSpecification_Official.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_OfficialFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_OfficialToJson(this);
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
String amountString; //  pattern: ^[ \r\n\t\S]+$
Element _amountString;
Ratio amountRatioLowLimit;
CodeableConcept amountType;
List<Reference> source;

SubstanceSpecification_Relationship(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.substanceReference,
      this.substanceCodeableConcept,
      this.relationship,
      this.isDefining,
      this._isDefining,
      this.amountQuantity,
      this.amountRange,
      this.amountRatio,
      this.amountString,
      this._amountString,
      this.amountRatioLowLimit,
      this.amountType,
      this.source,
      });

  factory SubstanceSpecification_Relationship.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_RelationshipFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_RelationshipToJson(this);
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
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _occurrenceDateTime;
Period occurrencePeriod;
Timing occurrenceTiming;
Reference supplier;
Reference destination;
List<Reference> receiver;

SupplyDelivery(
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
      this.basedOn,
      this.partOf,
      this.status,
      this._status,
      this.patient,
      this.type,
      this.suppliedItem,
      this.occurrenceDateTime,
      this._occurrenceDateTime,
      this.occurrencePeriod,
      this.occurrenceTiming,
      this.supplier,
      this.destination,
      this.receiver,
      });

  factory SupplyDelivery.fromJson(Map<String, dynamic> json) => _$SupplyDeliveryFromJson(json);
  Map<String, dynamic> toJson() _$SupplyDeliveryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SupplyDelivery_SuppliedItem {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity quantity;
CodeableConcept itemCodeableConcept;
Reference itemReference;

SupplyDelivery_SuppliedItem(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.quantity,
      this.itemCodeableConcept,
      this.itemReference,
      });

  factory SupplyDelivery_SuppliedItem.fromJson(Map<String, dynamic> json) => _$SupplyDelivery_SuppliedItemFromJson(json);
  Map<String, dynamic> toJson() _$SupplyDelivery_SuppliedItemToJson(this);
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
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

SupplyRequest(
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
      this.status,
      this._status,
      this.category,
      this.priority,
      this._priority,
      this.itemCodeableConcept,
      this.itemReference,
      this.quantity,
      this.parameter,
      this.occurrenceDateTime,
      this._occurrenceDateTime,
      this.occurrencePeriod,
      this.occurrenceTiming,
      this.authoredOn,
      this._authoredOn,
      this.requester,
      this.supplier,
      this.reasonCode,
      this.reasonReference,
      this.deliverFrom,
      this.deliverTo,
      });

  factory SupplyRequest.fromJson(Map<String, dynamic> json) => _$SupplyRequestFromJson(json);
  Map<String, dynamic> toJson() _$SupplyRequestToJson(this);
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
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;

SupplyRequest_Parameter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.valueCodeableConcept,
      this.valueQuantity,
      this.valueRange,
      this.valueBoolean,
      this._valueBoolean,
      });

  factory SupplyRequest_Parameter.fromJson(Map<String, dynamic> json) => _$SupplyRequest_ParameterFromJson(json);
  Map<String, dynamic> toJson() _$SupplyRequest_ParameterToJson(this);
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

TerminologyCapabilities(
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
      this.url,
      this._url,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.copyright,
      this._copyright,
      this.kind,
      this._kind,
      this.software,
      this.implementation,
      this.lockedDate,
      this._lockedDate,
      this.codeSystem,
      this.expansion,
      this.codeSearch,
      this._codeSearch,
      this.validateCode,
      this.translation,
      this.closure,
      });

  factory TerminologyCapabilities.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilitiesFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilitiesToJson(this);
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

TerminologyCapabilities_Software(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.version,
      this._version,
      });

  factory TerminologyCapabilities_Software.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_SoftwareFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_SoftwareToJson(this);
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

TerminologyCapabilities_Implementation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.url,
      this._url,
      });

  factory TerminologyCapabilities_Implementation.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ImplementationFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_ImplementationToJson(this);
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

TerminologyCapabilities_CodeSystem(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.uri,
      this.version,
      this.subsumption,
      this._subsumption,
      });

  factory TerminologyCapabilities_CodeSystem.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_CodeSystemFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_CodeSystemToJson(this);
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

TerminologyCapabilities_Version(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.isDefault,
      this._isDefault,
      this.compositional,
      this._compositional,
      this.language,
      this._language,
      this.filter,
      this.property,
      this._property,
      });

  factory TerminologyCapabilities_Version.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_VersionFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_VersionToJson(this);
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

TerminologyCapabilities_Filter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.op,
      this._op,
      });

  factory TerminologyCapabilities_Filter.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_FilterFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_FilterToJson(this);
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

TerminologyCapabilities_Expansion(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.hierarchical,
      this._hierarchical,
      this.paging,
      this._paging,
      this.incomplete,
      this._incomplete,
      this.parameter,
      this.textFilter,
      this._textFilter,
      });

  factory TerminologyCapabilities_Expansion.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ExpansionFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_ExpansionToJson(this);
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

TerminologyCapabilities_Parameter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.documentation,
      this._documentation,
      });

  factory TerminologyCapabilities_Parameter.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ParameterFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_ValidateCode {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool translations;
Element _translations;

TerminologyCapabilities_ValidateCode(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.translations,
      this._translations,
      });

  factory TerminologyCapabilities_ValidateCode.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ValidateCodeFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_ValidateCodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Translation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool needsMap;
Element _needsMap;

TerminologyCapabilities_Translation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.needsMap,
      this._needsMap,
      });

  factory TerminologyCapabilities_Translation.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_TranslationFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_TranslationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Closure {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool translation;
Element _translation;

TerminologyCapabilities_Closure(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.translation,
      this._translation,
      });

  factory TerminologyCapabilities_Closure.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ClosureFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_ClosureToJson(this);
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

TestReport(
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
      this.name,
      this._name,
      this.status,
      this._status,
      this.testScript,
      this.result,
      this._result,
      this.score,
      this._score,
      this.tester,
      this._tester,
      this.issued,
      this._issued,
      this.participant,
      this.setup,
      this.test,
      this.teardown,
      });

  factory TestReport.fromJson(Map<String, dynamic> json) => _$TestReportFromJson(json);
  Map<String, dynamic> toJson() _$TestReportToJson(this);
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

TestReport_Participant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.uri,
      this._uri,
      this.display,
      this._display,
      });

  factory TestReport_Participant.fromJson(Map<String, dynamic> json) => _$TestReport_ParticipantFromJson(json);
  Map<String, dynamic> toJson() _$TestReport_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Setup {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<TestReport_Action> action;

TestReport_Setup(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.action,
      });

  factory TestReport_Setup.fromJson(Map<String, dynamic> json) => _$TestReport_SetupFromJson(json);
  Map<String, dynamic> toJson() _$TestReport_SetupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Action {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestReport_Operation operation;
TestReport_Assert assert;

TestReport_Action(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.operation,
      this.assert,
      });

  factory TestReport_Action.fromJson(Map<String, dynamic> json) => _$TestReport_ActionFromJson(json);
  Map<String, dynamic> toJson() _$TestReport_ActionToJson(this);
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

TestReport_Operation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.result,
      this._result,
      this.message,
      this._message,
      this.detail,
      this._detail,
      });

  factory TestReport_Operation.fromJson(Map<String, dynamic> json) => _$TestReport_OperationFromJson(json);
  Map<String, dynamic> toJson() _$TestReport_OperationToJson(this);
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

TestReport_Assert(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.result,
      this._result,
      this.message,
      this._message,
      this.detail,
      this._detail,
      });

  factory TestReport_Assert.fromJson(Map<String, dynamic> json) => _$TestReport_AssertFromJson(json);
  Map<String, dynamic> toJson() _$TestReport_AssertToJson(this);
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

TestReport_Test(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.description,
      this._description,
      this.action,
      });

  factory TestReport_Test.fromJson(Map<String, dynamic> json) => _$TestReport_TestFromJson(json);
  Map<String, dynamic> toJson() _$TestReport_TestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Action1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestReport_Operation operation;
TestReport_Assert assert;

TestReport_Action1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.operation,
      this.assert,
      });

  factory TestReport_Action1.fromJson(Map<String, dynamic> json) => _$TestReport_Action1FromJson(json);
  Map<String, dynamic> toJson() _$TestReport_Action1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Teardown {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<TestReport_Action2> action;

TestReport_Teardown(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.action,
      });

  factory TestReport_Teardown.fromJson(Map<String, dynamic> json) => _$TestReport_TeardownFromJson(json);
  Map<String, dynamic> toJson() _$TestReport_TeardownToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Action2 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestReport_Operation operation;

TestReport_Action2(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.operation,
      });

  factory TestReport_Action2.fromJson(Map<String, dynamic> json) => _$TestReport_Action2FromJson(json);
  Map<String, dynamic> toJson() _$TestReport_Action2ToJson(this);
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

TestScript(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.copyright,
      this._copyright,
      this.origin,
      this.destination,
      this.metadata,
      this.fixture,
      this.profile,
      this.variable,
      this.setup,
      this.test,
      this.teardown,
      });

  factory TestScript.fromJson(Map<String, dynamic> json) => _$TestScriptFromJson(json);
  Map<String, dynamic> toJson() _$TestScriptToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Origin {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int index;
Element _index;
Coding profile;

TestScript_Origin(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.index,
      this._index,
      this.profile,
      });

  factory TestScript_Origin.fromJson(Map<String, dynamic> json) => _$TestScript_OriginFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_OriginToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Destination {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int index;
Element _index;
Coding profile;

TestScript_Destination(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.index,
      this._index,
      this.profile,
      });

  factory TestScript_Destination.fromJson(Map<String, dynamic> json) => _$TestScript_DestinationFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_DestinationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Metadata {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<TestScript_Link> link;
List<TestScript_Capability> capability;

TestScript_Metadata(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.link,
      this.capability,
      });

  factory TestScript_Metadata.fromJson(Map<String, dynamic> json) => _$TestScript_MetadataFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_MetadataToJson(this);
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

TestScript_Link(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.url,
      this._url,
      this.description,
      this._description,
      });

  factory TestScript_Link.fromJson(Map<String, dynamic> json) => _$TestScript_LinkFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_LinkToJson(this);
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

TestScript_Capability(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.required,
      this._required,
      this.validated,
      this._validated,
      this.description,
      this._description,
      this.origin,
      this._origin,
      this.destination,
      this._destination,
      this.link,
      this._link,
      this.capabilities,
      });

  factory TestScript_Capability.fromJson(Map<String, dynamic> json) => _$TestScript_CapabilityFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_CapabilityToJson(this);
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

TestScript_Fixture(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.autocreate,
      this._autocreate,
      this.autodelete,
      this._autodelete,
      this.resource,
      });

  factory TestScript_Fixture.fromJson(Map<String, dynamic> json) => _$TestScript_FixtureFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_FixtureToJson(this);
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

TestScript_Variable(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.defaultValue,
      this._defaultValue,
      this.description,
      this._description,
      this.expression,
      this._expression,
      this.headerField,
      this._headerField,
      this.hint,
      this._hint,
      this.path,
      this._path,
      this.sourceId,
      this._sourceId,
      });

  factory TestScript_Variable.fromJson(Map<String, dynamic> json) => _$TestScript_VariableFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_VariableToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Setup {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<TestScript_Action> action;

TestScript_Setup(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.action,
      });

  factory TestScript_Setup.fromJson(Map<String, dynamic> json) => _$TestScript_SetupFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_SetupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Action {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestScript_Operation operation;
TestScript_Assert assert;

TestScript_Action(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.operation,
      this.assert,
      });

  factory TestScript_Action.fromJson(Map<String, dynamic> json) => _$TestScript_ActionFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_ActionToJson(this);
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

TestScript_Operation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.resource,
      this._resource,
      this.label,
      this._label,
      this.description,
      this._description,
      this.accept,
      this._accept,
      this.contentType,
      this._contentType,
      this.destination,
      this._destination,
      this.encodeRequestUrl,
      this._encodeRequestUrl,
      this.method,
      this._method,
      this.origin,
      this._origin,
      this.params,
      this._params,
      this.requestHeader,
      this.requestId,
      this._requestId,
      this.responseId,
      this._responseId,
      this.sourceId,
      this._sourceId,
      this.targetId,
      this._targetId,
      this.url,
      this._url,
      });

  factory TestScript_Operation.fromJson(Map<String, dynamic> json) => _$TestScript_OperationFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_OperationToJson(this);
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

TestScript_RequestHeader(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.field,
      this._field,
      this.value,
      this._value,
      });

  factory TestScript_RequestHeader.fromJson(Map<String, dynamic> json) => _$TestScript_RequestHeaderFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_RequestHeaderToJson(this);
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

TestScript_Assert(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.label,
      this._label,
      this.description,
      this._description,
      this.direction,
      this._direction,
      this.compareToSourceId,
      this._compareToSourceId,
      this.compareToSourceExpression,
      this._compareToSourceExpression,
      this.compareToSourcePath,
      this._compareToSourcePath,
      this.contentType,
      this._contentType,
      this.expression,
      this._expression,
      this.headerField,
      this._headerField,
      this.minimumId,
      this._minimumId,
      this.navigationLinks,
      this._navigationLinks,
      this.operator,
      this._operator,
      this.path,
      this._path,
      this.requestMethod,
      this._requestMethod,
      this.requestURL,
      this._requestURL,
      this.resource,
      this._resource,
      this.response,
      this._response,
      this.responseCode,
      this._responseCode,
      this.sourceId,
      this._sourceId,
      this.validateProfileId,
      this._validateProfileId,
      this.value,
      this._value,
      this.warningOnly,
      this._warningOnly,
      });

  factory TestScript_Assert.fromJson(Map<String, dynamic> json) => _$TestScript_AssertFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_AssertToJson(this);
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

TestScript_Test(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.description,
      this._description,
      this.action,
      });

  factory TestScript_Test.fromJson(Map<String, dynamic> json) => _$TestScript_TestFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_TestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Action1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestScript_Operation operation;
TestScript_Assert assert;

TestScript_Action1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.operation,
      this.assert,
      });

  factory TestScript_Action1.fromJson(Map<String, dynamic> json) => _$TestScript_Action1FromJson(json);
  Map<String, dynamic> toJson() _$TestScript_Action1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Teardown {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<TestScript_Action2> action;

TestScript_Teardown(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.action,
      });

  factory TestScript_Teardown.fromJson(Map<String, dynamic> json) => _$TestScript_TeardownFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_TeardownToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Action2 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestScript_Operation operation;

TestScript_Action2(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.operation,
      });

  factory TestScript_Action2.fromJson(Map<String, dynamic> json) => _$TestScript_Action2FromJson(json);
  Map<String, dynamic> toJson() _$TestScript_Action2ToJson(this);
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

ValueSet(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.immutable,
      this._immutable,
      this.purpose,
      this._purpose,
      this.copyright,
      this._copyright,
      this.compose,
      this.expansion,
      });

  factory ValueSet.fromJson(Map<String, dynamic> json) => _$ValueSetFromJson(json);
  Map<String, dynamic> toJson() _$ValueSetToJson(this);
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

ValueSet_Compose(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.lockedDate,
      this._lockedDate,
      this.inactive,
      this._inactive,
      this.include,
      this.exclude,
      });

  factory ValueSet_Compose.fromJson(Map<String, dynamic> json) => _$ValueSet_ComposeFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_ComposeToJson(this);
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

ValueSet_Include(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.system,
      this._system,
      this.version,
      this._version,
      this.concept,
      this.filter,
      this.valueSet,
      });

  factory ValueSet_Include.fromJson(Map<String, dynamic> json) => _$ValueSet_IncludeFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_IncludeToJson(this);
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

ValueSet_Concept(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.display,
      this._display,
      this.designation,
      });

  factory ValueSet_Concept.fromJson(Map<String, dynamic> json) => _$ValueSet_ConceptFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_ConceptToJson(this);
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

ValueSet_Designation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.language,
      this._language,
      this.use,
      this.value,
      this._value,
      });

  factory ValueSet_Designation.fromJson(Map<String, dynamic> json) => _$ValueSet_DesignationFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_DesignationToJson(this);
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

ValueSet_Filter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.property,
      this._property,
      this.op,
      this._op,
      this.value,
      this._value,
      });

  factory ValueSet_Filter.fromJson(Map<String, dynamic> json) => _$ValueSet_FilterFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_FilterToJson(this);
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

ValueSet_Expansion(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this._identifier,
      this.timestamp,
      this._timestamp,
      this.total,
      this._total,
      this.offset,
      this._offset,
      this.parameter,
      this.contains,
      });

  factory ValueSet_Expansion.fromJson(Map<String, dynamic> json) => _$ValueSet_ExpansionFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_ExpansionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _valueDecimal;
String valueUri; //  pattern: ^\S*$
Element _valueUri;
String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$
Element _valueCode;
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _valueDateTime;

ValueSet_Parameter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.valueString,
      this._valueString,
      this.valueBoolean,
      this._valueBoolean,
      this.valueInteger,
      this._valueInteger,
      this.valueDecimal,
      this._valueDecimal,
      this.valueUri,
      this._valueUri,
      this.valueCode,
      this._valueCode,
      this.valueDateTime,
      this._valueDateTime,
      });

  factory ValueSet_Parameter.fromJson(Map<String, dynamic> json) => _$ValueSet_ParameterFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_ParameterToJson(this);
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

ValueSet_Contains(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.system,
      this._system,
      this.abstract,
      this._abstract,
      this.inactive,
      this._inactive,
      this.version,
      this._version,
      this.code,
      this._code,
      this.display,
      this._display,
      this.designation,
      this.contains,
      });

  factory ValueSet_Contains.fromJson(Map<String, dynamic> json) => _$ValueSet_ContainsFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_ContainsToJson(this);
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

VerificationResult(
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
      this.target,
      this.targetLocation,
      this._targetLocation,
      this.need,
      this.status,
      this._status,
      this.statusDate,
      this._statusDate,
      this.validationType,
      this.validationProcess,
      this.frequency,
      this.lastPerformed,
      this._lastPerformed,
      this.nextScheduled,
      this._nextScheduled,
      this.failureAction,
      this.primarySource,
      this.attestation,
      this.validator,
      });

  factory VerificationResult.fromJson(Map<String, dynamic> json) => _$VerificationResultFromJson(json);
  Map<String, dynamic> toJson() _$VerificationResultToJson(this);
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

VerificationResult_PrimarySource(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.who,
      this.type,
      this.communicationMethod,
      this.validationStatus,
      this.validationDate,
      this._validationDate,
      this.canPushUpdates,
      this.pushTypeAvailable,
      });

  factory VerificationResult_PrimarySource.fromJson(Map<String, dynamic> json) => _$VerificationResult_PrimarySourceFromJson(json);
  Map<String, dynamic> toJson() _$VerificationResult_PrimarySourceToJson(this);
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

VerificationResult_Attestation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.who,
      this.onBehalfOf,
      this.communicationMethod,
      this.date,
      this._date,
      this.sourceIdentityCertificate,
      this._sourceIdentityCertificate,
      this.proxyIdentityCertificate,
      this._proxyIdentityCertificate,
      this.proxySignature,
      this.sourceSignature,
      });

  factory VerificationResult_Attestation.fromJson(Map<String, dynamic> json) => _$VerificationResult_AttestationFromJson(json);
  Map<String, dynamic> toJson() _$VerificationResult_AttestationToJson(this);
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

VerificationResult_Validator(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.organization,
      this.identityCertificate,
      this._identityCertificate,
      this.attestationSignature,
      });

  factory VerificationResult_Validator.fromJson(Map<String, dynamic> json) => _$VerificationResult_ValidatorFromJson(json);
  Map<String, dynamic> toJson() _$VerificationResult_ValidatorToJson(this);
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

VisionPrescription(
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
      this.status,
      this._status,
      this.created,
      this._created,
      this.patient,
      this.encounter,
      this.dateWritten,
      this._dateWritten,
      this.prescriber,
      this.lensSpecification,
      });

  factory VisionPrescription.fromJson(Map<String, dynamic> json) => _$VisionPrescriptionFromJson(json);
  Map<String, dynamic> toJson() _$VisionPrescriptionToJson(this);
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

VisionPrescription_LensSpecification(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.product,
      this.eye,
      this._eye,
      this.sphere,
      this._sphere,
      this.cylinder,
      this._cylinder,
      this.axis,
      this._axis,
      this.prism,
      this.add,
      this._add,
      this.power,
      this._power,
      this.backCurve,
      this._backCurve,
      this.diameter,
      this._diameter,
      this.duration,
      this.color,
      this._color,
      this.brand,
      this._brand,
      this.note,
      });

  factory VisionPrescription_LensSpecification.fromJson(Map<String, dynamic> json) => _$VisionPrescription_LensSpecificationFromJson(json);
  Map<String, dynamic> toJson() _$VisionPrescription_LensSpecificationToJson(this);
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

VisionPrescription_Prism(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.amount,
      this._amount,
      this.base,
      this._base,
      });

  factory VisionPrescription_Prism.fromJson(Map<String, dynamic> json) => _$VisionPrescription_PrismFromJson(json);
  Map<String, dynamic> toJson() _$VisionPrescription_PrismToJson(this);
}

