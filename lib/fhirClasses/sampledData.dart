import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
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
	var fhirDb = new DatabaseHelper();
	SampledData newSampledData = new SampledData(
			id: await fhirDb.newResourceId('SampledData'),
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
	int saved = await fhirDb.saveResource(newSampledData);
	return newSampledData;
}

save () async {
	var fhirDb = new DatabaseHelper();
	int saved = await fhirDb.save(this);
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
