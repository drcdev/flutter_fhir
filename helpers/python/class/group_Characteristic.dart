

part 'group_Characteristic.g.dart';

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
this.period});

  factory Group_Characteristic.fromJson(Map<String, dynamic> json) => _$Group_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$Group_CharacteristicToJson(this);
}