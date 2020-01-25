

part 'medicationKnowledge_DrugCharacteristic.g.dart';

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
this._valueBase64Binary});

  factory MedicationKnowledge_DrugCharacteristic.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_DrugCharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_DrugCharacteristicToJson(this);
}