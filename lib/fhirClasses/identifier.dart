import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

class Identifier {
  static Future<Identifier> newInstance({
    String id,
    List<Extension> extension,
    String use,
    Element elementUse,
    CodeableConcept type,
    String system,
    Element elementSystem,
    String value,
    Element elementValue,
    Period period,
    Reference assigner,
  }) async {
    var fhirDb = new DatabaseHelper();
    Identifier newIdentifier = new Identifier(
      id: id,
      extension: extension,
      use: use,
      elementUse: elementUse,
      type: type,
      system: system,
      elementSystem: elementSystem,
      value: value,
      elementValue: elementValue,
      period: period,
      assigner: assigner,
    );
    return newIdentifier;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  String use;
  @HiveField(3)
  Element elementUse;
  @HiveField(4)
  CodeableConcept type;
  @HiveField(5)
  String system;
  @HiveField(6)
  Element elementSystem;
  @HiveField(7)
  String value;
  @HiveField(8)
  Element elementValue;
  @HiveField(9)
  Period period;
  @HiveField(10)
  Reference assigner;

  Identifier({
    this.id,
    this.extension,
    this.use,
    this.elementUse,
    this.type,
    this.system,
    this.elementSystem,
    this.value,
    this.elementValue,
    this.period,
    this.assigner,
  });

  factory Identifier.fromJson(Map<String, dynamic> json) =>
      _$IdentifierFromJson(json);
  Map<String, dynamic> toJson() => _$IdentifierToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Identifier _$IdentifierFromJson(Map<String, dynamic> json) {
  return Identifier(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    system: json['system'] as String,
    elementSystem: json['elementSystem'] == null
        ? null
        : Element.fromJson(json['elementSystem'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    assigner: json['assigner'] == null
        ? null
        : Reference.fromJson(json['assigner'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IdentifierToJson(Identifier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('use', instance.use);
  writeNotNull('elementUse', instance.elementUse?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('system', instance.system);
  writeNotNull('elementSystem', instance.elementSystem?.toJson());
  writeNotNull('value', instance.value);
  writeNotNull('elementValue', instance.elementValue?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('assigner', instance.assigner?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IdentifierAdapter extends TypeAdapter<Identifier> {
  @override
  Identifier read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Identifier(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      use: fields[2] as String,
      elementUse: fields[3] as Element,
      type: fields[4] as CodeableConcept,
      system: fields[5] as String,
      elementSystem: fields[6] as Element,
      value: fields[7] as String,
      elementValue: fields[8] as Element,
      period: fields[9] as Period,
      assigner: fields[10] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Identifier obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.use)
      ..writeByte(3)
      ..write(obj.elementUse)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.system)
      ..writeByte(6)
      ..write(obj.elementSystem)
      ..writeByte(7)
      ..write(obj.value)
      ..writeByte(8)
      ..write(obj.elementValue)
      ..writeByte(9)
      ..write(obj.period)
      ..writeByte(10)
      ..write(obj.assigner);
  }
}
