

part 'observation.g.dart';

@JsonSerializable(explicitToJson: true)
class Observation {

  This is a Observation resource resourceType;
  String id;
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
  enum: registeredpreliminaryfinalamendedcorrectedcancelledentered-in-errorunknown status;
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
this.component});

  factory Observation.fromJson(Map<String, dynamic> json) => _$ObservationFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationToJson(this);
}