import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class Expression {

	static Future<Expression> newInstance({
		String id,
		List<Extension> extension,
		String description,
		Element elementDescription,
		String name,
		Element elementName,
		String language,
		Element elementLanguage,
		String expression,
		Element elementExpression,
		String reference,
		Element elementReference}) async {
	Expression newExpression = new Expression(
			id: await newId('Expression'),
			extension: extension,
			description: description,
			elementDescription: elementDescription,
			name: name,
			elementName: elementName,
			language: language,
			elementLanguage: elementLanguage,
			expression: expression,
			elementExpression: elementExpression,
			reference: reference,
			elementReference: elementReference,
);
	return newExpression;
}
  String id;
  List<Extension> extension;
  String description;
  Element elementDescription;
  String name;
  Element elementName;
  String language; // <code> enum: text/cql/text/fhirpath/application/x-fhir-query;
  Element elementLanguage;
  String expression;
  Element elementExpression;
  String reference;
  Element elementReference;

Expression(
  {this.id,
    this.extension,
    this.description,
    this.elementDescription,
    this.name,
    this.elementName,
    this.language,
    this.elementLanguage,
    this.expression,
    this.elementExpression,
    this.reference,
    this.elementReference
    });

  factory Expression.fromJson(Map<String, dynamic> json) => _$ExpressionFromJson(json);
  Map<String, dynamic> toJson() => _$ExpressionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Expression _$ExpressionFromJson(Map<String, dynamic> json) {
  return Expression(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
    reference: json['reference'] as String,
    elementReference: json['elementReference'] == null
        ? null
        : Element.fromJson(json['elementReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExpressionToJson(Expression instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
      'reference': instance.reference,
      'elementReference': instance.elementReference?.toJson(),
    };
