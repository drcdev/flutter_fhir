import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';


@JsonSerializable(explicitToJson: true)
class Money{

	static Future<Money> newInstance(
	{	String id,
	List<Extension> extension,
	double value,
	Element elementValue,
	String currency,
	Element elementCurrency,
}) async {
var fhirDb = new DatabaseHelper();
Money newMoney = new Money(
	id: id ?? await fhirDb.newResourceId('Money'),
	extension: extension,
	value: value,
	elementValue: elementValue,
	currency: currency,
	elementCurrency: elementCurrency,
);
	return newMoney;
}

	String id;
	List<Extension> extension;
	double value;
	Element elementValue;
	String currency;
	Element elementCurrency;

Money(
	{this.id,
this.extension,
this.value,
this.elementValue,
this.currency,
this.elementCurrency,
});

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);
  Map<String, dynamic> toJson() => _$MoneyToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Money _$MoneyFromJson(Map<String, dynamic> json) {
  return Money(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: (json['value'] as num)?.toDouble(),
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    currency: json['currency'] as String,
    elementCurrency: json['elementCurrency'] == null
        ? null
        : Element.fromJson(json['elementCurrency'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MoneyToJson(Money instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
      'currency': instance.currency,
      'elementCurrency': instance.elementCurrency?.toJson(),
    };
