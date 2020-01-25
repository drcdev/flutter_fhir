

part 'population.g.dart';

@JsonSerializable(explicitToJson: true)
class Population {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Range ageRange;
  CodeableConcept ageCodeableConcept;
  CodeableConcept gender;
  CodeableConcept race;
  CodeableConcept physiologicalCondition;


Population(
      {this.id,
this.extension,
this.modifierExtension,
this.ageRange,
this.ageCodeableConcept,
this.gender,
this.race,
this.physiologicalCondition});

  factory Population.fromJson(Map<String, dynamic> json) => _$PopulationFromJson(json);
  Map<String, dynamic> toJson() => _$PopulationToJson(this);
}