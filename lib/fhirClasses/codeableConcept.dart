import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

class CodeableConcept {
  static Future<CodeableConcept> newInstance({
    String id,
    List<Extension> extension,
    List<Coding> coding,
    String text,
    Element elementText,
  }) async {
    var fhirDb = new DatabaseHelper();
    CodeableConcept newCodeableConcept = new CodeableConcept(
      id: id,
      extension: extension,
      coding: coding,
      text: text,
      elementText: elementText,
    );
    return newCodeableConcept;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Coding> coding;
  @HiveField(3)
  String text;
  @HiveField(4)
  Element elementText;

  CodeableConcept({
    this.id,
    this.extension,
    this.coding,
    this.text,
    this.elementText,
  });

  factory CodeableConcept.fromJson(Map<String, dynamic> json) =>
      _$CodeableConceptFromJson(json);
  Map<String, dynamic> toJson() => _$CodeableConceptToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeableConcept _$CodeableConceptFromJson(Map<String, dynamic> json) {
  return CodeableConcept(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    coding: (json['coding'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CodeableConceptToJson(CodeableConcept instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('coding', instance.coding?.map((e) => e?.toJson())?.toList());
  writeNotNull('text', instance.text);
  writeNotNull('elementText', instance.elementText?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CodeableConceptAdapter extends TypeAdapter<CodeableConcept> {
  @override
  CodeableConcept read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CodeableConcept(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      coding: (fields[2] as List)?.cast<Coding>(),
      text: fields[3] as String,
      elementText: fields[4] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, CodeableConcept obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.coding)
      ..writeByte(3)
      ..write(obj.text)
      ..writeByte(4)
      ..write(obj.elementText);
  }
}
