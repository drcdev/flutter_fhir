import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';


@JsonSerializable(explicitToJson: true)
class UsageContext{

	static Future<UsageContext> newInstance(
	{	String id,
	List<Extension> extension,
	Coding code,
	CodeableConcept valueCodeableConcept,
	Quantity valueQuantity,
	Range valueRange,
	Reference valueReference,
}) async {
var fhirDb = new DatabaseHelper();
UsageContext newUsageContext = new UsageContext(
	id: id ?? await fhirDb.newResourceId('UsageContext'),
	extension: extension,
	code: code,
	valueCodeableConcept: valueCodeableConcept,
	valueQuantity: valueQuantity,
	valueRange: valueRange,
	valueReference: valueReference,
);
	return newUsageContext;
}

	String id;
	List<Extension> extension;
	Coding code;
	CodeableConcept valueCodeableConcept;
	Quantity valueQuantity;
	Range valueRange;
	Reference valueReference;

UsageContext(
	{this.id,
this.extension,
@required this.code,
this.valueCodeableConcept,
this.valueQuantity,
this.valueRange,
this.valueReference,
});

  factory UsageContext.fromJson(Map<String, dynamic> json) => _$UsageContextFromJson(json);
  Map<String, dynamic> toJson() => _$UsageContextToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
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
