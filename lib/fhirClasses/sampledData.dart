import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 34)
class SampledData {

	static Future<SampledData> newInstance({
		String id,
		List<Extension> extension,
		Quantity origin,
		double period,
		Element elementPeriod,
		double factor,
		Element elementFactor,
		double lowerLimit,
		Element elementLowerLimit,
		double upperLimit,
		Element elementUpperLimit,
		int dimensions,
		Element elementDimensions,
		String data,
		Element elementData}) async {
	SampledData newSampledData = new SampledData(
			id: await newId('SampledData'),
			extension: extension,
			origin: origin,
			period: period,
			elementPeriod: elementPeriod,
			factor: factor,
			elementFactor: elementFactor,
			lowerLimit: lowerLimit,
			elementLowerLimit: elementLowerLimit,
			upperLimit: upperLimit,
			elementUpperLimit: elementUpperLimit,
			dimensions: dimensions,
			elementDimensions: elementDimensions,
			data: data,
			elementData: elementData);
	var sampledDataBox = await Hive.openBox<SampledData>('SampledDataBox');
	sampledDataBox.add(newSampledData);
	return newSampledData;
}
  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  Quantity origin;
  @HiveField(3)
  double period;
  @HiveField(4)
  Element elementPeriod;
  @HiveField(5)
  double factor;
  @HiveField(6)
  Element elementFactor;
  @HiveField(7)
  double lowerLimit;
  @HiveField(8)
  Element elementLowerLimit;
  @HiveField(9)
  double upperLimit;
  @HiveField(10)
  Element elementUpperLimit;
  @HiveField(11)
  int dimensions;
  @HiveField(12)
  Element elementDimensions;
  @HiveField(13)
  String data;
  @HiveField(14)
  Element elementData;

SampledData(
  {this.id,
    this.extension,
    @required this.origin,
    this.period,
    this.elementPeriod,
    this.factor,
    this.elementFactor,
    this.lowerLimit,
    this.elementLowerLimit,
    this.upperLimit,
    this.elementUpperLimit,
    this.dimensions,
    this.elementDimensions,
    this.data,
    this.elementData
    });

  factory SampledData.fromJson(Map<String, dynamic> json) => _$SampledDataFromJson(json);
  Map<String, dynamic> toJson() => _$SampledDataToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SampledDataAdapter extends TypeAdapter<SampledData> {
  @override
  final typeId = 34;

  @override
  SampledData read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SampledData(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      origin: fields[2] as Quantity,
      period: fields[3] as double,
      elementPeriod: fields[4] as Element,
      factor: fields[5] as double,
      elementFactor: fields[6] as Element,
      lowerLimit: fields[7] as double,
      elementLowerLimit: fields[8] as Element,
      upperLimit: fields[9] as double,
      elementUpperLimit: fields[10] as Element,
      dimensions: fields[11] as int,
      elementDimensions: fields[12] as Element,
      data: fields[13] as String,
      elementData: fields[14] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SampledData obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.origin)
      ..writeByte(3)
      ..write(obj.period)
      ..writeByte(4)
      ..write(obj.elementPeriod)
      ..writeByte(5)
      ..write(obj.factor)
      ..writeByte(6)
      ..write(obj.elementFactor)
      ..writeByte(7)
      ..write(obj.lowerLimit)
      ..writeByte(8)
      ..write(obj.elementLowerLimit)
      ..writeByte(9)
      ..write(obj.upperLimit)
      ..writeByte(10)
      ..write(obj.elementUpperLimit)
      ..writeByte(11)
      ..write(obj.dimensions)
      ..writeByte(12)
      ..write(obj.elementDimensions)
      ..writeByte(13)
      ..write(obj.data)
      ..writeByte(14)
      ..write(obj.elementData);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SampledData _$SampledDataFromJson(Map<String, dynamic> json) {
  return SampledData(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    origin: json['origin'] == null
        ? null
        : Quantity.fromJson(json['origin'] as Map<String, dynamic>),
    period: (json['period'] as num)?.toDouble(),
    elementPeriod: json['elementPeriod'] == null
        ? null
        : Element.fromJson(json['elementPeriod'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    elementFactor: json['elementFactor'] == null
        ? null
        : Element.fromJson(json['elementFactor'] as Map<String, dynamic>),
    lowerLimit: (json['lowerLimit'] as num)?.toDouble(),
    elementLowerLimit: json['elementLowerLimit'] == null
        ? null
        : Element.fromJson(json['elementLowerLimit'] as Map<String, dynamic>),
    upperLimit: (json['upperLimit'] as num)?.toDouble(),
    elementUpperLimit: json['elementUpperLimit'] == null
        ? null
        : Element.fromJson(json['elementUpperLimit'] as Map<String, dynamic>),
    dimensions: json['dimensions'] as int,
    elementDimensions: json['elementDimensions'] == null
        ? null
        : Element.fromJson(json['elementDimensions'] as Map<String, dynamic>),
    data: json['data'] as String,
    elementData: json['elementData'] == null
        ? null
        : Element.fromJson(json['elementData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SampledDataToJson(SampledData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'origin': instance.origin?.toJson(),
      'period': instance.period,
      'elementPeriod': instance.elementPeriod?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'lowerLimit': instance.lowerLimit,
      'elementLowerLimit': instance.elementLowerLimit?.toJson(),
      'upperLimit': instance.upperLimit,
      'elementUpperLimit': instance.elementUpperLimit?.toJson(),
      'dimensions': instance.dimensions,
      'elementDimensions': instance.elementDimensions?.toJson(),
      'data': instance.data,
      'elementData': instance.elementData?.toJson(),
    };
