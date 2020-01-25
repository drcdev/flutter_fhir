

part 'coverage_Class.g.dart';

@JsonSerializable(explicitToJson: true)
class Coverage_Class {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String value;
  Element _value;
  String name;
  Element _name;


Coverage_Class(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.value,
this._value,
this.name,
this._name});

  factory Coverage_Class.fromJson(Map<String, dynamic> json) => _$Coverage_ClassFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_ClassToJson(this);
}