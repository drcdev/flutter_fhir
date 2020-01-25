

part 'elementDefinition_Constraint.g.dart';

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Constraint {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String key;
  Element _key;
  String requirements;
  Element _requirements;
  enum: errorwarning severity;
  Element _severity;
  String human;
  Element _human;
  String expression;
  Element _expression;
  String xpath;
  Element _xpath;
  String source;


ElementDefinition_Constraint(
      {this.id,
this.extension,
this.modifierExtension,
this.key,
this._key,
this.requirements,
this._requirements,
this.severity,
this._severity,
this.human,
this._human,
this.expression,
this._expression,
this.xpath,
this._xpath,
this.source});

  factory ElementDefinition_Constraint.fromJson(Map<String, dynamic> json) => _$ElementDefinition_ConstraintFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_ConstraintToJson(this);
}