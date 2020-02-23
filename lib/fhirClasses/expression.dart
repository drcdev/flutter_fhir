import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  String description;
  @HiveField(3)
  Element elementDescription;
  @HiveField(4)
  String name;
  @HiveField(5)
  Element elementName;
  @HiveField(6)
  String language;
  @HiveField(7)
  Element elementLanguage;
  @HiveField(8)
  String expression;
  @HiveField(9)
  Element elementExpression;
  @HiveField(10)
  String reference;
  @HiveField(11)
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

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExpressionAdapter extends TypeAdapter<Expression> {
  @override
  Expression read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Expression(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      description: fields[2] as String,
      elementDescription: fields[3] as Element,
      name: fields[4] as String,
      elementName: fields[5] as Element,
      language: fields[6] as String,
      elementLanguage: fields[7] as Element,
      expression: fields[8] as String,
      elementExpression: fields[9] as Element,
      reference: fields[10] as String,
      elementReference: fields[11] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Expression obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.elementDescription)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.elementName)
      ..writeByte(6)
      ..write(obj.language)
      ..writeByte(7)
      ..write(obj.elementLanguage)
      ..writeByte(8)
      ..write(obj.expression)
      ..writeByte(9)
      ..write(obj.elementExpression)
      ..writeByte(10)
      ..write(obj.reference)
      ..writeByte(11)
      ..write(obj.elementReference);
  }
}
