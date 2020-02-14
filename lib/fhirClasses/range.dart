import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class Range {

	static Future<Range> newInstance({
		String id,
		List<Extension> extension,
		Quantity low,
		Quantity high}) async {
	var fhirDb = new DatabaseHelper();
	Range newRange = new Range(
			id: await fhirDb.newResourceId('Range'),
			extension: extension,
			low: low,
			high: high,
);
	int saved = await fhirDb.saveResource(newRange);
	return newRange;
}
  String id;
  List<Extension> extension;
  Quantity low;
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
