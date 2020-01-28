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

