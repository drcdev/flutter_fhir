import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

class Range {
  static Future<Range> newInstance({
    String id,
    List<Extension> extension,
    Quantity low,
    Quantity high,
  }) async {
    var fhirDb = new DatabaseHelper();
    Range newRange = new Range(
      id: id,
      extension: extension,
      low: low,
      high: high,
    );
    return newRange;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  Quantity low;
  @HiveField(3)
  Quantity high;

  Range({
    this.id,
    this.extension,
    this.low,
    this.high,
  });

  factory Range.fromJson(Map<String, dynamic> json) => _$RangeFromJson(json);
  Map<String, dynamic> toJson() => _$RangeToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Range _$RangeFromJson(Map<String, dynamic> json) {
  return Range(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    low: json['low'] == null
        ? null
        : Quantity.fromJson(json['low'] as Map<String, dynamic>),
    high: json['high'] == null
        ? null
        : Quantity.fromJson(json['high'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RangeToJson(Range instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('low', instance.low?.toJson());
  writeNotNull('high', instance.high?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RangeAdapter extends TypeAdapter<Range> {
  @override
  Range read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Range(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      low: fields[2] as Quantity,
      high: fields[3] as Quantity,
    );
  }

  @override
  void write(BinaryWriter writer, Range obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.low)
      ..writeByte(3)
      ..write(obj.high);
  }
}
