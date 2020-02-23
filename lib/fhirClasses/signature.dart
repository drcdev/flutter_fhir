import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

class Signature {
  static Future<Signature> newInstance({
    String id,
    List<Extension> extension,
    List<Coding> type,
    DateTime when,
    Element elementWhen,
    Reference who,
    Reference onBehalfOf,
    String targetFormat,
    Element elementTargetFormat,
    String sigFormat,
    Element elementSigFormat,
    String data,
    Element elementData,
  }) async {
    var fhirDb = new DatabaseHelper();
    Signature newSignature = new Signature(
      id: id,
      extension: extension,
      type: type,
      when: when,
      elementWhen: elementWhen,
      who: who,
      onBehalfOf: onBehalfOf,
      targetFormat: targetFormat,
      elementTargetFormat: elementTargetFormat,
      sigFormat: sigFormat,
      elementSigFormat: elementSigFormat,
      data: data,
      elementData: elementData,
    );
    return newSignature;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Coding> type;
  @HiveField(3)
  DateTime when;
  @HiveField(4)
  Element elementWhen;
  @HiveField(5)
  Reference who;
  @HiveField(6)
  Reference onBehalfOf;
  @HiveField(7)
  String targetFormat;
  @HiveField(8)
  Element elementTargetFormat;
  @HiveField(9)
  String sigFormat;
  @HiveField(10)
  Element elementSigFormat;
  @HiveField(11)
  String data;
  @HiveField(12)
  Element elementData;

  Signature({
    this.id,
    this.extension,
    @required this.type,
    this.when,
    this.elementWhen,
    @required this.who,
    this.onBehalfOf,
    this.targetFormat,
    this.elementTargetFormat,
    this.sigFormat,
    this.elementSigFormat,
    this.data,
    this.elementData,
  });

  factory Signature.fromJson(Map<String, dynamic> json) =>
      _$SignatureFromJson(json);
  Map<String, dynamic> toJson() => _$SignatureToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Signature _$SignatureFromJson(Map<String, dynamic> json) {
  return Signature(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: (json['type'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    when: json['when'] == null ? null : DateTime.parse(json['when'] as String),
    elementWhen: json['elementWhen'] == null
        ? null
        : Element.fromJson(json['elementWhen'] as Map<String, dynamic>),
    who: json['who'] == null
        ? null
        : Reference.fromJson(json['who'] as Map<String, dynamic>),
    onBehalfOf: json['onBehalfOf'] == null
        ? null
        : Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>),
    targetFormat: json['targetFormat'] as String,
    elementTargetFormat: json['elementTargetFormat'] == null
        ? null
        : Element.fromJson(json['elementTargetFormat'] as Map<String, dynamic>),
    sigFormat: json['sigFormat'] as String,
    elementSigFormat: json['elementSigFormat'] == null
        ? null
        : Element.fromJson(json['elementSigFormat'] as Map<String, dynamic>),
    data: json['data'] as String,
    elementData: json['elementData'] == null
        ? null
        : Element.fromJson(json['elementData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SignatureToJson(Signature instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.map((e) => e?.toJson())?.toList());
  writeNotNull('when', instance.when?.toIso8601String());
  writeNotNull('elementWhen', instance.elementWhen?.toJson());
  writeNotNull('who', instance.who?.toJson());
  writeNotNull('onBehalfOf', instance.onBehalfOf?.toJson());
  writeNotNull('targetFormat', instance.targetFormat);
  writeNotNull('elementTargetFormat', instance.elementTargetFormat?.toJson());
  writeNotNull('sigFormat', instance.sigFormat);
  writeNotNull('elementSigFormat', instance.elementSigFormat?.toJson());
  writeNotNull('data', instance.data);
  writeNotNull('elementData', instance.elementData?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SignatureAdapter extends TypeAdapter<Signature> {
  @override
  Signature read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Signature(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      type: (fields[2] as List)?.cast<Coding>(),
      when: fields[3] as DateTime,
      elementWhen: fields[4] as Element,
      who: fields[5] as Reference,
      onBehalfOf: fields[6] as Reference,
      targetFormat: fields[7] as String,
      elementTargetFormat: fields[8] as Element,
      sigFormat: fields[9] as String,
      elementSigFormat: fields[10] as Element,
      data: fields[11] as String,
      elementData: fields[12] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Signature obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.when)
      ..writeByte(4)
      ..write(obj.elementWhen)
      ..writeByte(5)
      ..write(obj.who)
      ..writeByte(6)
      ..write(obj.onBehalfOf)
      ..writeByte(7)
      ..write(obj.targetFormat)
      ..writeByte(8)
      ..write(obj.elementTargetFormat)
      ..writeByte(9)
      ..write(obj.sigFormat)
      ..writeByte(10)
      ..write(obj.elementSigFormat)
      ..writeByte(11)
      ..write(obj.data)
      ..writeByte(12)
      ..write(obj.elementData);
  }
}
