import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 34)
class SampledData {

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

  //  The base quantity that a measured value of zero represents. In
  // addition, this provides the units of the entire measurement series.
  @HiveField(2)
  Quantity origin;

  //  The length of time between sampling times, measured in milliseconds.
  @HiveField(3)
  double period;

  //  Extensions for period
  @HiveField(4)
  Element elementPeriod;

  //  A correction factor that is applied to the sampled data points before
  // they are added to the origin.
  @HiveField(5)
  double factor;

  //  Extensions for factor
  @HiveField(6)
  Element elementFactor;

  //  The lower limit of detection of the measured points. This is needed if
  // any of the data points have the value "L" (lower than detection limit).
  @HiveField(7)
  double lowerLimit;

  //  Extensions for lowerLimit
  @HiveField(8)
  Element elementLowerLimit;

  //  The upper limit of detection of the measured points. This is needed if
  // any of the data points have the value "U" (higher than detection
  // limit).
  @HiveField(9)
  double upperLimit;

  //  Extensions for upperLimit
  @HiveField(10)
  Element elementUpperLimit;

  //  The number of sample points at each time point. If this value is
  // greater than one, then the dimensions will be interlaced - all the
  // sample points for a point in time will be recorded at once.
  @HiveField(11)
  int dimensions;

  //  Extensions for dimensions
  @HiveField(12)
  Element elementDimensions;

  //  A series of data points which are decimal values separated by a single
  // space (character u20). The special values "E" (error), "L" (below
  // detection limit) and "U" (above detection limit) can also be used in
  // place of a decimal value.
  @HiveField(13)
  String data;

  //  Extensions for data
  @HiveField(14)
  Element elementData;

SampledData(
  this.origin,
    {this.id,
    this.extension,
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
      fields[2] as Quantity,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
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
    json['origin'] == null
        ? null
        : Quantity.fromJson(json['origin'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
