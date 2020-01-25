

part 'observation_Component.g.dart';

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
this.referenceRange});

  factory Observation_Component.fromJson(Map<String, dynamic> json) => _$Observation_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$Observation_ComponentToJson(this);
}