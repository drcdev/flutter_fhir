import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

class ParameterDefinition {
  static Future<ParameterDefinition> newInstance({
    String id,
    List<Extension> extension,
    String name,
    Element elementName,
    String use,
    Element elementUse,
    int min,
    Element elementMin,
    String max,
    Element elementMax,
    String documentation,
    Element elementDocumentation,
    String type,
    Element elementType,
    String profile,
  }) async {
    var fhirDb = new DatabaseHelper();
    ParameterDefinition newParameterDefinition = new ParameterDefinition(
      id: id,
      extension: extension,
      name: name,
      elementName: elementName,
      use: use,
      elementUse: elementUse,
      min: min,
      elementMin: elementMin,
      max: max,
      elementMax: elementMax,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
      type: type,
      elementType: elementType,
      profile: profile,
    );
    return newParameterDefinition;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  String name;
  @HiveField(3)
  Element elementName;
  @HiveField(4)
  String use;
  @HiveField(5)
  Element elementUse;
  @HiveField(6)
  int min;
  @HiveField(7)
  Element elementMin;
  @HiveField(8)
  String max;
  @HiveField(9)
  Element elementMax;
  @HiveField(10)
  String documentation;
  @HiveField(11)
  Element elementDocumentation;
  @HiveField(12)
  String type;
  @HiveField(13)
  Element elementType;
  @HiveField(14)
  String profile;

  ParameterDefinition({
    this.id,
    this.extension,
    this.name,
    this.elementName,
    this.use,
    this.elementUse,
    this.min,
    this.elementMin,
    this.max,
    this.elementMax,
    this.documentation,
    this.elementDocumentation,
    this.type,
    this.elementType,
    this.profile,
  });

  factory ParameterDefinition.fromJson(Map<String, dynamic> json) =>
      _$ParameterDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ParameterDefinitionToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParameterDefinition _$ParameterDefinitionFromJson(Map<String, dynamic> json) {
  return ParameterDefinition(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    min: json['min'] as int,
    elementMin: json['elementMin'] == null
        ? null
        : Element.fromJson(json['elementMin'] as Map<String, dynamic>),
    max: json['max'] as String,
    elementMax: json['elementMax'] == null
        ? null
        : Element.fromJson(json['elementMax'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    profile: json['profile'] as String,
  );
}

Map<String, dynamic> _$ParameterDefinitionToJson(ParameterDefinition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('use', instance.use);
  writeNotNull('elementUse', instance.elementUse?.toJson());
  writeNotNull('min', instance.min);
  writeNotNull('elementMin', instance.elementMin?.toJson());
  writeNotNull('max', instance.max);
  writeNotNull('elementMax', instance.elementMax?.toJson());
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('profile', instance.profile);
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ParameterDefinitionAdapter extends TypeAdapter<ParameterDefinition> {
  @override
  ParameterDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ParameterDefinition(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      name: fields[2] as String,
      elementName: fields[3] as Element,
      use: fields[4] as String,
      elementUse: fields[5] as Element,
      min: fields[6] as int,
      elementMin: fields[7] as Element,
      max: fields[8] as String,
      elementMax: fields[9] as Element,
      documentation: fields[10] as String,
      elementDocumentation: fields[11] as Element,
      type: fields[12] as String,
      elementType: fields[13] as Element,
      profile: fields[14] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ParameterDefinition obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.elementName)
      ..writeByte(4)
      ..write(obj.use)
      ..writeByte(5)
      ..write(obj.elementUse)
      ..writeByte(6)
      ..write(obj.min)
      ..writeByte(7)
      ..write(obj.elementMin)
      ..writeByte(8)
      ..write(obj.max)
      ..writeByte(9)
      ..write(obj.elementMax)
      ..writeByte(10)
      ..write(obj.documentation)
      ..writeByte(11)
      ..write(obj.elementDocumentation)
      ..writeByte(12)
      ..write(obj.type)
      ..writeByte(13)
      ..write(obj.elementType)
      ..writeByte(14)
      ..write(obj.profile);
  }
}
