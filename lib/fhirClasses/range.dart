import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 14)
class Range {

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

  //  The low limit. The boundary is inclusive.
  @HiveField(2)
  Quantity low;

  //  The high limit. The boundary is inclusive.
  @HiveField(3)
  Quantity high;

Range(
  {this.id,
    this.extension,
    this.low,
    this.high
    });

  factory Range.fromJson(Map<String, dynamic> json) => _$RangeFromJson(json);
  Map<String, dynamic> toJson() => _$RangeToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RangeAdapter extends TypeAdapter<Range> {
  @override
  final typeId = 14;

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

Map<String, dynamic> _$RangeToJson(Range instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'low': instance.low?.toJson(),
      'high': instance.high?.toJson(),
    };
