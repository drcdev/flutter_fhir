

part 'structureMap_Rule.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureMap_Rule {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  List<StructureMap_Source> source;
  List<StructureMap_Target> target;
  List<StructureMap_Rule> rule;
  List<StructureMap_Dependent> dependent;
  String documentation;
  Element _documentation;


StructureMap_Rule(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.source,
this.target,
this.rule,
this.dependent,
this.documentation,
this._documentation});

  factory StructureMap_Rule.fromJson(Map<String, dynamic> json) => _$StructureMap_RuleFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_RuleToJson(this);
}