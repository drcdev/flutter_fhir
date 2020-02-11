import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 27)
class Count {

	static Future<Count> newInstance({
		String id,
		List<Extension> extension,
		double value,
		Element elementValue,
		String comparator,
		Element elementComparator,
		String unit,
		Element elementUnit,
		String system,
		Element elementSystem,
		String code,
		Element elementCode}) async {
	 return Count(
			id: await newEntry('Count'),
			extension: extension,
			value: value,
			elementValue: elementValue,
			comparator: comparator,
			elementComparator: elementComparator,
			unit: unit,
			elementUnit: elementUnit,
			system: system,
			elementSystem: elementSystem,
			code: code,
			elementCode: elementCode);
	}

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  double value;
  @HiveField(3)
  Element elementValue;
  @HiveField(4)
  String comparator; // <code> enum: </<=/>=/>;
  @HiveField(5)
  Element elementComparator;
  @HiveField(6)
  String unit;
  @HiveField(7)
  Element elementUnit;
  @HiveField(8)
  String system;
  @HiveField(9)
  Element elementSystem;
  @HiveField(10)
  String code;
  @HiveField(11)
  Element elementCode;

Count(
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

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
  Map<String, dynamic> toJson() => _$CountToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountAdapter extends TypeAdapter<Count> {
  @override
  final typeId = 27;

  @override
  Count read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Count(
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
  void write(BinaryWriter writer, Count obj) {
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

Count _$CountFromJson(Map<String, dynamic> json) {
  return Count(
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

Map<String, dynamic> _$CountToJson(Count instance) => <String, dynamic>{
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
