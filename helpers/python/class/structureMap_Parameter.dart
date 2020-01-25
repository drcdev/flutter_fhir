

part 'structureMap_Parameter.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureMap_Parameter {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String valueId;
  Element _valueId;
  String valueString;
  Element _valueString;
  bool valueBoolean;
  Element _valueBoolean;
  number valueInteger;
  Element _valueInteger;
  number valueDecimal;
  Element _valueDecimal;


StructureMap_Parameter(
      {this.id,
this.extension,
this.modifierExtension,
this.valueId,
this._valueId,
this.valueString,
this._valueString,
this.valueBoolean,
this._valueBoolean,
this.valueInteger,
this._valueInteger,
this.valueDecimal,
this._valueDecimal});

  factory StructureMap_Parameter.fromJson(Map<String, dynamic> json) => _$StructureMap_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_ParameterToJson(this);
}