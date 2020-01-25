

part 'expression.g.dart';

@JsonSerializable(explicitToJson: true)
class Expression {

  String id;
  List<Extension> extension;
  String description;
  Element _description;
  String name;
  Element _name;
  enum: text/cqltext/fhirpathapplication/x-fhir-query language;
  Element _language;
  String expression;
  Element _expression;
  String reference;
  Element _reference;


Expression(
      {this.id,
this.extension,
this.description,
this._description,
this.name,
this._name,
this.language,
this._language,
this.expression,
this._expression,
this.reference,
this._reference});

  factory Expression.fromJson(Map<String, dynamic> json) => _$ExpressionFromJson(json);
  Map<String, dynamic> toJson() => _$ExpressionToJson(this);
}