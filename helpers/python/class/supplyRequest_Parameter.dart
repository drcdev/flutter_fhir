

part 'supplyRequest_Parameter.g.dart';

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


SupplyRequest_Parameter(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.valueCodeableConcept,
this.valueQuantity,
this.valueRange,
this.valueBoolean,
this._valueBoolean});

  factory SupplyRequest_Parameter.fromJson(Map<String, dynamic> json) => _$SupplyRequest_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$SupplyRequest_ParameterToJson(this);
}