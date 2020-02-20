import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
    Element elementReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Expression newExpression = new Expression(
      id: id ?? await fhirDb.newResourceId('Expression'),
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
  String language;
  Element elementLanguage;
  String expression;
  Element elementExpression;
  String reference;
  Element elementReference;

  Expression({
    this.id,
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
    this.elementReference,
  });

  factory Expression.fromJson(Map<String, dynamic> json) =>
      _$ExpressionFromJson(json);
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

Map<String, dynamic> _$ExpressionToJson(Expression instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('expression', instance.expression);
  writeNotNull('elementExpression', instance.elementExpression?.toJson());
  writeNotNull('reference', instance.reference);
  writeNotNull('elementReference', instance.elementReference?.toJson());
  return val;
}
