

part 'medicationKnowledge_MaxDispense.g.dart';

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
this.period});

  factory MedicationKnowledge_MaxDispense.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MaxDispenseFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_MaxDispenseToJson(this);
}