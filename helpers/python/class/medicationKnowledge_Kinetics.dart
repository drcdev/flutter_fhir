

part 'medicationKnowledge_Kinetics.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Kinetics {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Quantity> areaUnderCurve;
  List<Quantity> lethalDose50;
  Duration halfLifePeriod;


MedicationKnowledge_Kinetics(
      {this.id,
this.extension,
this.modifierExtension,
this.areaUnderCurve,
this.lethalDose50,
this.halfLifePeriod});

  factory MedicationKnowledge_Kinetics.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_KineticsFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_KineticsToJson(this);
}