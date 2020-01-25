

part 'structureMap_Dependent.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureMap_Dependent {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  List<String> variable;
  List<Element> _variable;


StructureMap_Dependent(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.variable,
this._variable});

  factory StructureMap_Dependent.fromJson(Map<String, dynamic> json) => _$StructureMap_DependentFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_DependentToJson(this);
}