

part 'medicinalProductPharmaceutical_Characteristics.g.dart';

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
this.status});

  factory MedicinalProductPharmaceutical_Characteristics.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_CharacteristicsFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_CharacteristicsToJson(this);
}