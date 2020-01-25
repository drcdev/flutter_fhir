

part 'conceptMap_DependsOn.g.dart';

@JsonSerializable(explicitToJson: true)
class ConceptMap_DependsOn {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String property;
  Element _property;
  String system;
  String value;
  Element _value;
  String display;
  Element _display;


ConceptMap_DependsOn(
      {this.id,
this.extension,
this.modifierExtension,
this.property,
this._property,
this.system,
this.value,
this._value,
this.display,
this._display});

  factory ConceptMap_DependsOn.fromJson(Map<String, dynamic> json) => _$ConceptMap_DependsOnFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_DependsOnToJson(this);
}