

part 'structureDefinition_Snapshot.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Snapshot {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<ElementDefinition> element;


StructureDefinition_Snapshot(
      {this.id,
this.extension,
this.modifierExtension,
this.element});

  factory StructureDefinition_Snapshot.fromJson(Map<String, dynamic> json) => _$StructureDefinition_SnapshotFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinition_SnapshotToJson(this);
}