

part 'structureDefinition_Differential.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Differential {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<ElementDefinition> element;


StructureDefinition_Differential(
      {this.id,
this.extension,
this.modifierExtension,
this.element});

  factory StructureDefinition_Differential.fromJson(Map<String, dynamic> json) => _$StructureDefinition_DifferentialFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinition_DifferentialToJson(this);
}