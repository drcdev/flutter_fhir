

part 'structureMap_Structure.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureMap_Structure {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String url;
  enum: sourcequeriedtargetproduced mode;
  Element _mode;
  String alias;
  Element _alias;
  String documentation;
  Element _documentation;


StructureMap_Structure(
      {this.id,
this.extension,
this.modifierExtension,
this.url,
this.mode,
this._mode,
this.alias,
this._alias,
this.documentation,
this._documentation});

  factory StructureMap_Structure.fromJson(Map<String, dynamic> json) => _$StructureMap_StructureFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_StructureToJson(this);
}