

part 'medicationKnowledge_Packaging.g.dart';

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
this.quantity});

  factory MedicationKnowledge_Packaging.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_PackagingFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_PackagingToJson(this);
}