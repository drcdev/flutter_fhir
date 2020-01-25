

part 'testScript_Variable.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_Variable {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  String defaultValue;
  Element _defaultValue;
  String description;
  Element _description;
  String expression;
  Element _expression;
  String headerField;
  Element _headerField;
  String hint;
  Element _hint;
  String path;
  Element _path;
  String sourceId;
  Element _sourceId;


TestScript_Variable(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.defaultValue,
this._defaultValue,
this.description,
this._description,
this.expression,
this._expression,
this.headerField,
this._headerField,
this.hint,
this._hint,
this.path,
this._path,
this.sourceId,
this._sourceId});

  factory TestScript_Variable.fromJson(Map<String, dynamic> json) => _$TestScript_VariableFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_VariableToJson(this);
}