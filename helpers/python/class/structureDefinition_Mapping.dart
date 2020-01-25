

part 'structureDefinition_Mapping.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Mapping {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String identity;
  Element _identity;
  String uri;
  Element _uri;
  String name;
  Element _name;
  String comment;
  Element _comment;


StructureDefinition_Mapping(
      {this.id,
this.extension,
this.modifierExtension,
this.identity,
this._identity,
this.uri,
this._uri,
this.name,
this._name,
this.comment,
this._comment});

  factory StructureDefinition_Mapping.fromJson(Map<String, dynamic> json) => _$StructureDefinition_MappingFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinition_MappingToJson(this);
}