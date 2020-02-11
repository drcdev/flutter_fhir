import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 13)
class Age {

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

  //  The value of the measured amount. The value includes an implicit
  // precision in the presentation of the value.
  @HiveField(2)
  double value;

  //  Extensions for value
  @HiveField(3)
  Element elementValue;

  //  How the value should be understood and represented - whether the
  // actual value is greater or less than the stated value due to
  // measurement issues; e.g. if the comparator is "<" , then the real value
  // is < stated value.
  @HiveField(4)
  String comparator; // <code> enum: </<=/>=/>;

  //  Extensions for comparator
  @HiveField(5)
  Element elementComparator;

  //  A human-readable form of the unit.
  @HiveField(6)
  String unit;

  //  Extensions for unit
  @HiveField(7)
  Element elementUnit;

  //  The identification of the system that provides the coded form of the
  // unit.
  @HiveField(8)
  String system;

  //  Extensions for system
  @HiveField(9)
  Element elementSystem;

  //  A computer processable form of the unit in some unit representation
  // system.
  @HiveField(10)
  String code;

  //  Extensions for code
  @HiveField(11)
  Element elementCode;

Age(
  {this.id,
    this.extension,
    this.value,
    this.elementValue,
    this.comparator,
    this.elementComparator,
    this.unit,
    this.elementUnit,
    this.system,
    this.elementSystem,
    this.code,
    this.elementCode
    });

  factory Age.fromJson(Map<String, dynamic> json) => _$AgeFromJson(json);
  Map<String, dynamic> toJson() => _$AgeToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AgeAdapter extends TypeAdapter<Age> {
  @override
  final typeId = 13;

  @override
  Age read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Age(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      value: fields[2] as double,
      elementValue: fields[3] as Element,
      comparator: fields[4] as String,
      elementComparator: fields[5] as Element,
      unit: fields[6] as String,
      elementUnit: fields[7] as Element,
      system: fields[8] as String,
      elementSystem: fields[9] as Element,
      code: fields[10] as String,
      elementCode: fields[11] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Age obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.value)
      ..writeByte(3)
      ..write(obj.elementValue)
      ..writeByte(4)
      ..write(obj.comparator)
      ..writeByte(5)
      ..write(obj.elementComparator)
      ..writeByte(6)
      ..write(obj.unit)
      ..writeByte(7)
      ..write(obj.elementUnit)
      ..writeByte(8)
      ..write(obj.system)
      ..writeByte(9)
      ..write(obj.elementSystem)
      ..writeByte(10)
      ..write(obj.code)
      ..writeByte(11)
      ..write(obj.elementCode);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Age _$AgeFromJson(Map<String, dynamic> json) {
  return Age(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: (json['value'] as num)?.toDouble(),
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    comparator: json['comparator'] as String,
    elementComparator: json['elementComparator'] == null
        ? null
        : Element.fromJson(json['elementComparator'] as Map<String, dynamic>),
    unit: json['unit'] as String,
    elementUnit: json['elementUnit'] == null
        ? null
        : Element.fromJson(json['elementUnit'] as Map<String, dynamic>),
    system: json['system'] as String,
    elementSystem: json['elementSystem'] == null
        ? null
        : Element.fromJson(json['elementSystem'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AgeToJson(Age instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
      'comparator': instance.comparator,
      'elementComparator': instance.elementComparator?.toJson(),
      'unit': instance.unit,
      'elementUnit': instance.elementUnit?.toJson(),
      'system': instance.system,
      'elementSystem': instance.elementSystem?.toJson(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
    };
