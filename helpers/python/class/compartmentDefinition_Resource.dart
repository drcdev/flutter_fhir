

part 'compartmentDefinition_Resource.g.dart';

@JsonSerializable(explicitToJson: true)
class CompartmentDefinition_Resource {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element _code;
  List<String> param;
  List<Element> _param;
  String documentation;
  Element _documentation;


CompartmentDefinition_Resource(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.param,
this._param,
this.documentation,
this._documentation});

  factory CompartmentDefinition_Resource.fromJson(Map<String, dynamic> json) => _$CompartmentDefinition_ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$CompartmentDefinition_ResourceToJson(this);
}