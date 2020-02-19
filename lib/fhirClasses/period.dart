import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';


@JsonSerializable(explicitToJson: true)
class Period{

	static Future<Period> newInstance(
	{	String id,
	List<Extension> extension,
	DateTime start,
	Element elementStart,
	DateTime end,
	Element elementEnd,
}) async {
var fhirDb = new DatabaseHelper();
Period newPeriod = new Period(
	id: id ?? await fhirDb.newResourceId('Period'),
	extension: extension,
	start: start,
	elementStart: elementStart,
	end: end,
	elementEnd: elementEnd,
);
	return newPeriod;
}

	String id;
	List<Extension> extension;
	DateTime start;
	Element elementStart;
	DateTime end;
	Element elementEnd;

Period(
	{this.id,
this.extension,
this.start,
this.elementStart,
this.end,
this.elementEnd,
});

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);
  Map<String, dynamic> toJson() => _$PeriodToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Period _$PeriodFromJson(Map<String, dynamic> json) {
  return Period(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    start:
        json['start'] == null ? null : DateTime.parse(json['start'] as String),
    elementStart: json['elementStart'] == null
        ? null
        : Element.fromJson(json['elementStart'] as Map<String, dynamic>),
    end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    elementEnd: json['elementEnd'] == null
        ? null
        : Element.fromJson(json['elementEnd'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PeriodToJson(Period instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'start': instance.start?.toIso8601String(),
      'elementStart': instance.elementStart?.toJson(),
      'end': instance.end?.toIso8601String(),
      'elementEnd': instance.elementEnd?.toJson(),
    };
