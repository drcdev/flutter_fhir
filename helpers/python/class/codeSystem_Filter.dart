

part 'codeSystem_Filter.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeSystem_Filter {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element _code;
  String description;
  Element _description;
  List<String> operator;
  List<Element> _operator;
  String value;
  Element _value;


CodeSystem_Filter(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.description,
this._description,
this.operator,
this._operator,
this.value,
this._value});

  factory CodeSystem_Filter.fromJson(Map<String, dynamic> json) => _$CodeSystem_FilterFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_FilterToJson(this);
}