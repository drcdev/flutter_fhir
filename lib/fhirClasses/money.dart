import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

class Money {
  static Future<Money> newInstance({
    String id,
    List<Extension> extension,
    double value,
    Element elementValue,
    String currency,
    Element elementCurrency,
  }) async {
    var fhirDb = new DatabaseHelper();
    Money newMoney = new Money(
      id: id,
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

  Money({
    this.id,
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

Map<String, dynamic> _$MoneyToJson(Money instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('value', instance.value);
  writeNotNull('elementValue', instance.elementValue?.toJson());
  writeNotNull('currency', instance.currency);
  writeNotNull('elementCurrency', instance.elementCurrency?.toJson());
  return val;
}
