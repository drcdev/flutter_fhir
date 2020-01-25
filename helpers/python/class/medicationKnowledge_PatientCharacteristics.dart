

part 'medicationKnowledge_PatientCharacteristics.g.dart';

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
this._value});

  factory MedicationKnowledge_PatientCharacteristics.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_PatientCharacteristicsFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_PatientCharacteristicsToJson(this);
}