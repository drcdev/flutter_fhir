import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 47)
class UsageContext {

	static Future<UsageContext> newInstance({
		String id,
		List<Extension> extension,
		Coding code,
		CodeableConcept valueCodeableConcept,
		Quantity valueQuantity,
		Range valueRange,
		Reference valueReference}) async {
	UsageContext newUsageContext = new UsageContext(
			id: await newId('UsageContext'),
			extension: extension,
			code: code,
			valueCodeableConcept: valueCodeableConcept,
			valueQuantity: valueQuantity,
			valueRange: valueRange,
			valueReference: valueReference);
	var usageContextBox = await Hive.openBox<UsageContext>('UsageContextBox');
	usageContextBox.put(newUsageContext.id, newUsageContext);
	return newUsageContext;
}
  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  Coding code;
  @HiveField(3)
  CodeableConcept valueCodeableConcept;
  @HiveField(4)
  Quantity valueQuantity;
  @HiveField(5)
  Range valueRange;
  @HiveField(6)
  Reference valueReference;

UsageContext(
  {this.id,
    this.extension,
    @required this.code,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueReference
    });

  factory UsageContext.fromJson(Map<String, dynamic> json) => _$UsageContextFromJson(json);
  Map<String, dynamic> toJson() => _$UsageContextToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UsageContextAdapter extends TypeAdapter<UsageContext> {
  @override
  final typeId = 47;

  @override
  UsageContext read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UsageContext(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      code: fields[2] as Coding,
      valueCodeableConcept: fields[3] as CodeableConcept,
      valueQuantity: fields[4] as Quantity,
      valueRange: fields[5] as Range,
      valueReference: fields[6] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, UsageContext obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.code)
      ..writeByte(3)
      ..write(obj.valueCodeableConcept)
      ..writeByte(4)
      ..write(obj.valueQuantity)
      ..writeByte(5)
      ..write(obj.valueRange)
      ..writeByte(6)
      ..write(obj.valueReference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsageContext _$UsageContextFromJson(Map<String, dynamic> json) {
  return UsageContext(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : Coding.fromJson(json['code'] as Map<String, dynamic>),
    valueCodeableConcept: json['valueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['valueCodeableConcept'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueRange: json['valueRange'] == null
        ? null
        : Range.fromJson(json['valueRange'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UsageContextToJson(UsageContext instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'valueCodeableConcept': instance.valueCodeableConcept?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueRange': instance.valueRange?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
    };
