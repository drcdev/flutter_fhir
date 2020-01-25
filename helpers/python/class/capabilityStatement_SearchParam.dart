

part 'capabilityStatement_SearchParam.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_SearchParam {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  String definition;
  enum: numberdatestringtokenreferencecompositequantityurispecial type;
  Element _type;
  String documentation;
  Element _documentation;


CapabilityStatement_SearchParam(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.definition,
this.type,
this._type,
this.documentation,
this._documentation});

  factory CapabilityStatement_SearchParam.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SearchParamFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_SearchParamToJson(this);
}