import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 54)
class Expression {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  A brief, natural language description of the condition that
  // effectively communicates the intended semantics.
  @HiveField(2)
  String description;

  //  Extensions for description
  @HiveField(3)
  Element elementDescription;

  //  A short name assigned to the expression to allow for multiple reuse of
  // the expression in the context where it is defined.
  @HiveField(4)
  String name;

  //  Extensions for name
  @HiveField(5)
  Element elementName;

  //  The media type of the language for the expression.
  @HiveField(6)
  String language; // <code> enum: text/cql/text/fhirpath/application/x-fhir-query;

  //  Extensions for language
  @HiveField(7)
  Element elementLanguage;

  //  An expression in the specified language that returns a value.
  @HiveField(8)
  String expression;

  //  Extensions for expression
  @HiveField(9)
  Element elementExpression;

  //  A URI that defines where the expression is found.
  @HiveField(10)
  String reference;

  //  Extensions for reference
  @HiveField(11)
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
// TypeAdapterGenerator
// **************************************************************************

class ExpressionAdapter extends TypeAdapter<Expression> {
  @override
  final typeId = 54;

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
