

part 'medicationKnowledge_MonitoringProgram.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_MonitoringProgram {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String name;
  Element _name;


MedicationKnowledge_MonitoringProgram(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.name,
this._name});

  factory MedicationKnowledge_MonitoringProgram.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MonitoringProgramFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_MonitoringProgramToJson(this);
}