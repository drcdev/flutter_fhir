

part 'medicationKnowledge_Schedule.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Schedule {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept schedule;


MedicationKnowledge_Schedule(
      {this.id,
this.extension,
this.modifierExtension,
this.schedule});

  factory MedicationKnowledge_Schedule.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_ScheduleFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_ScheduleToJson(this);
}