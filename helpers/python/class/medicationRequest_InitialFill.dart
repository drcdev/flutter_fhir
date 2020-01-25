

part 'medicationRequest_InitialFill.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationRequest_InitialFill {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Quantity quantity;
  Duration duration;


MedicationRequest_InitialFill(
      {this.id,
this.extension,
this.modifierExtension,
this.quantity,
this.duration});

  factory MedicationRequest_InitialFill.fromJson(Map<String, dynamic> json) => _$MedicationRequest_InitialFillFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationRequest_InitialFillToJson(this);
}