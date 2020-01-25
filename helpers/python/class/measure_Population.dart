

part 'measure_Population.g.dart';

@JsonSerializable(explicitToJson: true)
class Measure_Population {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  String description;
  Element _description;
  Expression criteria;


Measure_Population(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.description,
this._description,
this.criteria});

  factory Measure_Population.fromJson(Map<String, dynamic> json) => _$Measure_PopulationFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_PopulationToJson(this);
}