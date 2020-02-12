import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 36)
class HumanName {

	static Future<HumanName> newInstance({
		String id,
		List<Extension> extension,
		String use,
		Element elementUse,
		String text,
		Element elementText,
		String family,
		Element elementFamily,
		List<String> given,
		List<Element> elementGiven,
		List<String> prefix,
		List<Element> elementPrefix,
		List<String> suffix,
		List<Element> elementSuffix,
		Period period}) async {
	HumanName newHumanName = new HumanName(
			id: await newId('HumanName'),
			extension: extension,
			use: use,
			elementUse: elementUse,
			text: text,
			elementText: elementText,
			family: family,
			elementFamily: elementFamily,
			given: given,
			elementGiven: elementGiven,
			prefix: prefix,
			elementPrefix: elementPrefix,
			suffix: suffix,
			elementSuffix: elementSuffix,
			period: period);
	var humanNameBox = await Hive.openBox<HumanName>('HumanNameBox');
	humanNameBox.put(newHumanName.id, newHumanName);
	return newHumanName;
}
  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  String use; // <code> enum: usual/official/temp/nickname/anonymous/old/maiden;
  @HiveField(3)
  Element elementUse;
  @HiveField(4)
  String text;
  @HiveField(5)
  Element elementText;
  @HiveField(6)
  String family;
  @HiveField(7)
  Element elementFamily;
  @HiveField(8)
  List<String> given;
  @HiveField(9)
  List<Element> elementGiven;
  @HiveField(10)
  List<String> prefix;
  @HiveField(11)
  List<Element> elementPrefix;
  @HiveField(12)
  List<String> suffix;
  @HiveField(13)
  List<Element> elementSuffix;
  @HiveField(14)
  Period period;

HumanName(
  {this.id,
    this.extension,
    this.use,
    this.elementUse,
    this.text,
    this.elementText,
    this.family,
    this.elementFamily,
    this.given,
    this.elementGiven,
    this.prefix,
    this.elementPrefix,
    this.suffix,
    this.elementSuffix,
    this.period
    });

  factory HumanName.fromJson(Map<String, dynamic> json) => _$HumanNameFromJson(json);
  Map<String, dynamic> toJson() => _$HumanNameToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HumanNameAdapter extends TypeAdapter<HumanName> {
  @override
  final typeId = 36;

  @override
  HumanName read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HumanName(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      use: fields[2] as String,
      elementUse: fields[3] as Element,
      text: fields[4] as String,
      elementText: fields[5] as Element,
      family: fields[6] as String,
      elementFamily: fields[7] as Element,
      given: (fields[8] as List)?.cast<String>(),
      elementGiven: (fields[9] as List)?.cast<Element>(),
      prefix: (fields[10] as List)?.cast<String>(),
      elementPrefix: (fields[11] as List)?.cast<Element>(),
      suffix: (fields[12] as List)?.cast<String>(),
      elementSuffix: (fields[13] as List)?.cast<Element>(),
      period: fields[14] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, HumanName obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.use)
      ..writeByte(3)
      ..write(obj.elementUse)
      ..writeByte(4)
      ..write(obj.text)
      ..writeByte(5)
      ..write(obj.elementText)
      ..writeByte(6)
      ..write(obj.family)
      ..writeByte(7)
      ..write(obj.elementFamily)
      ..writeByte(8)
      ..write(obj.given)
      ..writeByte(9)
      ..write(obj.elementGiven)
      ..writeByte(10)
      ..write(obj.prefix)
      ..writeByte(11)
      ..write(obj.elementPrefix)
      ..writeByte(12)
      ..write(obj.suffix)
      ..writeByte(13)
      ..write(obj.elementSuffix)
      ..writeByte(14)
      ..write(obj.period);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HumanName _$HumanNameFromJson(Map<String, dynamic> json) {
  return HumanName(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    family: json['family'] as String,
    elementFamily: json['elementFamily'] == null
        ? null
        : Element.fromJson(json['elementFamily'] as Map<String, dynamic>),
    given: (json['given'] as List)?.map((e) => e as String)?.toList(),
    elementGiven: (json['elementGiven'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prefix: (json['prefix'] as List)?.map((e) => e as String)?.toList(),
    elementPrefix: (json['elementPrefix'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    suffix: (json['suffix'] as List)?.map((e) => e as String)?.toList(),
    elementSuffix: (json['elementSuffix'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HumanNameToJson(HumanName instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'use': instance.use,
      'elementUse': instance.elementUse?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'family': instance.family,
      'elementFamily': instance.elementFamily?.toJson(),
      'given': instance.given,
      'elementGiven': instance.elementGiven?.map((e) => e?.toJson())?.toList(),
      'prefix': instance.prefix,
      'elementPrefix':
          instance.elementPrefix?.map((e) => e?.toJson())?.toList(),
      'suffix': instance.suffix,
      'elementSuffix':
          instance.elementSuffix?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
    };
