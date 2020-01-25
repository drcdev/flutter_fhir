

part 'measure_Stratifier.g.dart';

@JsonSerializable(explicitToJson: true)
class Measure_Stratifier {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  String description;
  Element _description;
  Expression criteria;
  List<Measure_Component> component;


Measure_Stratifier(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.description,
this._description,
this.criteria,
this.component});

  factory Measure_Stratifier.fromJson(Map<String, dynamic> json) => _$Measure_StratifierFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_StratifierToJson(this);
}