

part 'elementDefinition_Mapping.g.dart';

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Mapping {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String identity;
  Element _identity;
  String language;
  Element _language;
  String map;
  Element _map;
  String comment;
  Element _comment;


ElementDefinition_Mapping(
      {this.id,
this.extension,
this.modifierExtension,
this.identity,
this._identity,
this.language,
this._language,
this.map,
this._map,
this.comment,
this._comment});

  factory ElementDefinition_Mapping.fromJson(Map<String, dynamic> json) => _$ElementDefinition_MappingFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_MappingToJson(this);
}