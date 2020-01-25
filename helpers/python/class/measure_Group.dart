

part 'measure_Group.g.dart';

@JsonSerializable(explicitToJson: true)
class Measure_Group {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  String description;
  Element _description;
  List<Measure_Population> population;
  List<Measure_Stratifier> stratifier;


Measure_Group(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.description,
this._description,
this.population,
this.stratifier});

  factory Measure_Group.fromJson(Map<String, dynamic> json) => _$Measure_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_GroupToJson(this);
}