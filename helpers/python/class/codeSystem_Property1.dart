

part 'codeSystem_Property1.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeSystem_Property1 {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element _code;
  String valueCode;
  Element _valueCode;
  Coding valueCoding;
  String valueString;
  Element _valueString;
  number valueInteger;
  Element _valueInteger;
  bool valueBoolean;
  Element _valueBoolean;
  String valueDateTime;
  Element _valueDateTime;
  number valueDecimal;
  Element _valueDecimal;


CodeSystem_Property1(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.valueCode,
this._valueCode,
this.valueCoding,
this.valueString,
this._valueString,
this.valueInteger,
this._valueInteger,
this.valueBoolean,
this._valueBoolean,
this.valueDateTime,
this._valueDateTime,
this.valueDecimal,
this._valueDecimal});

  factory CodeSystem_Property1.fromJson(Map<String, dynamic> json) => _$CodeSystem_Property1FromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_Property1ToJson(this);
}