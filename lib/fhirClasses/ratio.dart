import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class Ratio {

	static Future<Ratio> newInstance({
		String id,
		List<Extension> extension,
		Quantity numerator,
		Quantity denominator}) async {
	Ratio newRatio = new Ratio(
			id: await newId('Ratio'),
			extension: extension,
			numerator: numerator,
			denominator: denominator);
	var ratioBox = await Hive.openBox<Ratio>('RatioBox');
	ratioBox.put(newRatio.id, newRatio);
	return newRatio;
}
  String id;
  List<Extension> extension;
  Quantity numerator;
  Quantity denominator;

Ratio(
  {this.id,
    this.extension,
    this.numerator,
    this.denominator
    });

  factory Ratio.fromJson(Map<String, dynamic> json) => _$RatioFromJson(json);
  Map<String, dynamic> toJson() => _$RatioToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ratio _$RatioFromJson(Map<String, dynamic> json) {
  return Ratio(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numerator: json['numerator'] == null
        ? null
        : Quantity.fromJson(json['numerator'] as Map<String, dynamic>),
    denominator: json['denominator'] == null
        ? null
        : Quantity.fromJson(json['denominator'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RatioToJson(Ratio instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'numerator': instance.numerator?.toJson(),
      'denominator': instance.denominator?.toJson(),
    };
