import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
    Element elementData,
  }) async {
    var fhirDb = new DatabaseHelper();
    SampledData newSampledData = new SampledData(
      id: id,
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
      elementData: elementData,
    );
    return newSampledData;
  }

  String id;
  List<Extension> extension;
  Quantity origin;
  double period;
  Element elementPeriod;
  double factor;
  Element elementFactor;
  double lowerLimit;
  Element elementLowerLimit;
  double upperLimit;
  Element elementUpperLimit;
  int dimensions;
  Element elementDimensions;
  String data;
  Element elementData;

  SampledData({
    this.id,
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
    this.elementData,
  });

  factory SampledData.fromJson(Map<String, dynamic> json) =>
      _$SampledDataFromJson(json);
  Map<String, dynamic> toJson() => _$SampledDataToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
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

Map<String, dynamic> _$SampledDataToJson(SampledData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('origin', instance.origin?.toJson());
  writeNotNull('period', instance.period);
  writeNotNull('elementPeriod', instance.elementPeriod?.toJson());
  writeNotNull('factor', instance.factor);
  writeNotNull('elementFactor', instance.elementFactor?.toJson());
  writeNotNull('lowerLimit', instance.lowerLimit);
  writeNotNull('elementLowerLimit', instance.elementLowerLimit?.toJson());
  writeNotNull('upperLimit', instance.upperLimit);
  writeNotNull('elementUpperLimit', instance.elementUpperLimit?.toJson());
  writeNotNull('dimensions', instance.dimensions);
  writeNotNull('elementDimensions', instance.elementDimensions?.toJson());
  writeNotNull('data', instance.data);
  writeNotNull('elementData', instance.elementData?.toJson());
  return val;
}
