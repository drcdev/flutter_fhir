import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 28)
class Money {

	static Future<Money> newInstance({
		String id,
		List<Extension> extension,
		double value,
		Element elementValue,
		String currency,
		Element elementCurrency}) async {
	Money newMoney = new Money(
			id: await newId('Money'),
			extension: extension,
			value: value,
			elementValue: elementValue,
			currency: currency,
			elementCurrency: elementCurrency);
	var moneyBox = await Hive.openBox<Money>('MoneyBox');
	moneyBox.put(newMoney.id, newMoney);
	return newMoney;
}
  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  double value;
  @HiveField(3)
  Element elementValue;
  @HiveField(4)
  String currency;
  @HiveField(5)
  Element elementCurrency;

Money(
  {this.id,
    this.extension,
    this.value,
    this.elementValue,
    this.currency,
    this.elementCurrency
    });

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);
  Map<String, dynamic> toJson() => _$MoneyToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MoneyAdapter extends TypeAdapter<Money> {
  @override
  final typeId = 28;

  @override
  Money read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Money(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      value: fields[2] as double,
      elementValue: fields[3] as Element,
      currency: fields[4] as String,
      elementCurrency: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Money obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.value)
      ..writeByte(3)
      ..write(obj.elementValue)
      ..writeByte(4)
      ..write(obj.currency)
      ..writeByte(5)
      ..write(obj.elementCurrency);
  }
}

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
