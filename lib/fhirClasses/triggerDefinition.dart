import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

class TriggerDefinition {
  static Future<TriggerDefinition> newInstance({
    String id,
    List<Extension> extension,
    String type,
    Element elementType,
    String name,
    Element elementName,
    Timing timingTiming,
    Reference timingReference,
    String timingDate,
    Element elementTimingDate,
    String timingDateTime,
    Element elementTimingDateTime,
    List<DataRequirement> data,
    Expression condition,
  }) async {
    var fhirDb = new DatabaseHelper();
    TriggerDefinition newTriggerDefinition = new TriggerDefinition(
      id: id,
      extension: extension,
      type: type,
      elementType: elementType,
      name: name,
      elementName: elementName,
      timingTiming: timingTiming,
      timingReference: timingReference,
      timingDate: timingDate,
      elementTimingDate: elementTimingDate,
      timingDateTime: timingDateTime,
      elementTimingDateTime: elementTimingDateTime,
      data: data,
      condition: condition,
    );
    return newTriggerDefinition;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  String type;
  @HiveField(3)
  Element elementType;
  @HiveField(4)
  String name;
  @HiveField(5)
  Element elementName;
  @HiveField(6)
  Timing timingTiming;
  @HiveField(7)
  Reference timingReference;
  @HiveField(8)
  String timingDate;
  @HiveField(9)
  Element elementTimingDate;
  @HiveField(10)
  String timingDateTime;
  @HiveField(11)
  Element elementTimingDateTime;
  @HiveField(12)
  List<DataRequirement> data;
  @HiveField(13)
  Expression condition;

  TriggerDefinition({
    this.id,
    this.extension,
    this.type,
    this.elementType,
    this.name,
    this.elementName,
    this.timingTiming,
    this.timingReference,
    this.timingDate,
    this.elementTimingDate,
    this.timingDateTime,
    this.elementTimingDateTime,
    this.data,
    this.condition,
  });

  factory TriggerDefinition.fromJson(Map<String, dynamic> json) =>
      _$TriggerDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$TriggerDefinitionToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TriggerDefinition _$TriggerDefinitionFromJson(Map<String, dynamic> json) {
  return TriggerDefinition(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    timingTiming: json['timingTiming'] == null
        ? null
        : Timing.fromJson(json['timingTiming'] as Map<String, dynamic>),
    timingReference: json['timingReference'] == null
        ? null
        : Reference.fromJson(json['timingReference'] as Map<String, dynamic>),
    timingDate: json['timingDate'] as String,
    elementTimingDate: json['elementTimingDate'] == null
        ? null
        : Element.fromJson(json['elementTimingDate'] as Map<String, dynamic>),
    timingDateTime: json['timingDateTime'] as String,
    elementTimingDateTime: json['elementTimingDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementTimingDateTime'] as Map<String, dynamic>),
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : DataRequirement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: json['condition'] == null
        ? null
        : Expression.fromJson(json['condition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TriggerDefinitionToJson(TriggerDefinition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('timingTiming', instance.timingTiming?.toJson());
  writeNotNull('timingReference', instance.timingReference?.toJson());
  writeNotNull('timingDate', instance.timingDate);
  writeNotNull('elementTimingDate', instance.elementTimingDate?.toJson());
  writeNotNull('timingDateTime', instance.timingDateTime);
  writeNotNull(
      'elementTimingDateTime', instance.elementTimingDateTime?.toJson());
  writeNotNull('data', instance.data?.map((e) => e?.toJson())?.toList());
  writeNotNull('condition', instance.condition?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TriggerDefinitionAdapter extends TypeAdapter<TriggerDefinition> {
  @override
  TriggerDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TriggerDefinition(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      type: fields[2] as String,
      elementType: fields[3] as Element,
      name: fields[4] as String,
      elementName: fields[5] as Element,
      timingTiming: fields[6] as Timing,
      timingReference: fields[7] as Reference,
      timingDate: fields[8] as String,
      elementTimingDate: fields[9] as Element,
      timingDateTime: fields[10] as String,
      elementTimingDateTime: fields[11] as Element,
      data: (fields[12] as List)?.cast<DataRequirement>(),
      condition: fields[13] as Expression,
    );
  }

  @override
  void write(BinaryWriter writer, TriggerDefinition obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.elementType)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.elementName)
      ..writeByte(6)
      ..write(obj.timingTiming)
      ..writeByte(7)
      ..write(obj.timingReference)
      ..writeByte(8)
      ..write(obj.timingDate)
      ..writeByte(9)
      ..write(obj.elementTimingDate)
      ..writeByte(10)
      ..write(obj.timingDateTime)
      ..writeByte(11)
      ..write(obj.elementTimingDateTime)
      ..writeByte(12)
      ..write(obj.data)
      ..writeByte(13)
      ..write(obj.condition);
  }
}
