import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/extension.dart';

part 'expression.g.dart';

@JsonSerializable(explicitToJson: true)
class Expression {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  A brief, natural language description of the condition that
// effectively communicates the intended semantics.
String description;

//  A short name assigned to the expression to allow for multiple reuse of
// the expression in the context where it is defined.
String name;

//  The media type of the language for the expression.
String language; // <code> enum: text/cql/text/fhirpath/application/x-fhir-query;

//  An expression in the specified language that returns a value.
String expression;

//  A URI that defines where the expression is found.
String reference;

Expression(
  {this.id,
    this.extension,
    this.description,
    this.name,
    this.language,
    this.expression,
    this.reference
    });

  factory Expression.fromJson(Map<String, dynamic> json) => _$ExpressionFromJson(json);
  Map<String, dynamic> toJson() => _$ExpressionToJson(this);
}

