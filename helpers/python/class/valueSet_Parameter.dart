

part 'valueSet_Parameter.g.dart';

@JsonSerializable(explicitToJson: true)
class ValueSet_Parameter {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  String valueString;
  Element _valueString;
  bool valueBoolean;
  Element _valueBoolean;
  number valueInteger;
  Element _valueInteger;
  number valueDecimal;
  Element _valueDecimal;
  String valueUri;
  Element _valueUri;
  String valueCode;
  Element _valueCode;
  String valueDateTime;
  Element _valueDateTime;


ValueSet_Parameter(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.valueString,
this._valueString,
this.valueBoolean,
this._valueBoolean,
this.valueInteger,
this._valueInteger,
this.valueDecimal,
this._valueDecimal,
this.valueUri,
this._valueUri,
this.valueCode,
this._valueCode,
this.valueDateTime,
this._valueDateTime});

  factory ValueSet_Parameter.fromJson(Map<String, dynamic> json) => _$ValueSet_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ParameterToJson(this);
}