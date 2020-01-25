

part 'measure_Component.g.dart';

@JsonSerializable(explicitToJson: true)
class Measure_Component {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  String description;
  Element _description;
  Expression criteria;


Measure_Component(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.description,
this._description,
this.criteria});

  factory Measure_Component.fromJson(Map<String, dynamic> json) => _$Measure_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_ComponentToJson(this);
}