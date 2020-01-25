

part 'encounter_Diagnosis.g.dart';

@JsonSerializable(explicitToJson: true)
class Encounter_Diagnosis {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference condition;
  CodeableConcept use;
  int rank;
  Element _rank;


Encounter_Diagnosis(
      {this.id,
this.extension,
this.modifierExtension,
this.condition,
this.use,
this.rank,
this._rank});

  factory Encounter_Diagnosis.fromJson(Map<String, dynamic> json) => _$Encounter_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_DiagnosisToJson(this);
}