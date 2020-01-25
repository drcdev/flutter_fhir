

part 'structureMap_Input.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureMap_Input {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  String type;
  Element _type;
  enum: sourcetarget mode;
  Element _mode;
  String documentation;
  Element _documentation;


StructureMap_Input(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.type,
this._type,
this.mode,
this._mode,
this.documentation,
this._documentation});

  factory StructureMap_Input.fromJson(Map<String, dynamic> json) => _$StructureMap_InputFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_InputToJson(this);
}