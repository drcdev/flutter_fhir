

part 'structureMap_Group.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureMap_Group {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  String extends;
  Element _extends;
  enum: nonetypestype-and-types typeMode;
  Element _typeMode;
  String documentation;
  Element _documentation;
  List<StructureMap_Input> input;
  List<StructureMap_Rule> rule;


StructureMap_Group(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.extends,
this._extends,
this.typeMode,
this._typeMode,
this.documentation,
this._documentation,
this.input,
this.rule});

  factory StructureMap_Group.fromJson(Map<String, dynamic> json) => _$StructureMap_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_GroupToJson(this);
}