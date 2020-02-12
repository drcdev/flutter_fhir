import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 53)
class SubstanceAmount {

	static Future<SubstanceAmount> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Quantity amountQuantity,
		Range amountRange,
		String amountString,
		Element elementAmountString,
		CodeableConcept amountType,
		String amountText,
		Element elementAmountText,
		SubstanceAmount_ReferenceRange referenceRange}) async {
	SubstanceAmount newSubstanceAmount = new SubstanceAmount(
			id: await newId('SubstanceAmount'),
			extension: extension,
			modifierExtension: modifierExtension,
			amountQuantity: amountQuantity,
			amountRange: amountRange,
			amountString: amountString,
			elementAmountString: elementAmountString,
			amountType: amountType,
			amountText: amountText,
			elementAmountText: elementAmountText,
			referenceRange: referenceRange);
	var substanceAmountBox = await Hive.openBox<SubstanceAmount>('SubstanceAmountBox');
	substanceAmountBox.add(newSubstanceAmount);
	return newSubstanceAmount;
}
  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Quantity amountQuantity;
  @HiveField(4)
  Range amountRange;
  @HiveField(5)
  String amountString; //  pattern: ^[ \r\n\t\S]+$
  @HiveField(6)
  Element elementAmountString;
  @HiveField(7)
  CodeableConcept amountType;
  @HiveField(8)
  String amountText;
  @HiveField(9)
  Element elementAmountText;
  @HiveField(10)
  SubstanceAmount_ReferenceRange referenceRange;

SubstanceAmount(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.amountQuantity,
    this.amountRange,
    this.amountString,
    this.elementAmountString,
    this.amountType,
    this.amountText,
    this.elementAmountText,
    this.referenceRange
    });

  factory SubstanceAmount.fromJson(Map<String, dynamic> json) => _$SubstanceAmountFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceAmountToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceAmount_ReferenceRange {

	static Future<SubstanceAmount_ReferenceRange> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Quantity lowLimit,
		Quantity highLimit}) async {
	SubstanceAmount_ReferenceRange newSubstanceAmount_ReferenceRange = new SubstanceAmount_ReferenceRange(
			id: await newId('SubstanceAmount_ReferenceRange'),
			extension: extension,
			modifierExtension: modifierExtension,
			lowLimit: lowLimit,
			highLimit: highLimit);
	var substanceAmount_ReferenceRangeBox = await Hive.openBox<SubstanceAmount_ReferenceRange>('SubstanceAmount_ReferenceRangeBox');
	substanceAmount_ReferenceRangeBox.add(newSubstanceAmount_ReferenceRange);
	return newSubstanceAmount_ReferenceRange;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Quantity lowLimit;
  Quantity highLimit;

SubstanceAmount_ReferenceRange(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.lowLimit,
    this.highLimit
    });

  factory SubstanceAmount_ReferenceRange.fromJson(Map<String, dynamic> json) => _$SubstanceAmount_ReferenceRangeFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceAmount_ReferenceRangeToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstanceAmountAdapter extends TypeAdapter<SubstanceAmount> {
  @override
  final typeId = 53;

  @override
  SubstanceAmount read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceAmount(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      amountQuantity: fields[3] as Quantity,
      amountRange: fields[4] as Range,
      amountString: fields[5] as String,
      elementAmountString: fields[6] as Element,
      amountType: fields[7] as CodeableConcept,
      amountText: fields[8] as String,
      elementAmountText: fields[9] as Element,
      referenceRange: fields[10] as SubstanceAmount_ReferenceRange,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceAmount obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.amountQuantity)
      ..writeByte(4)
      ..write(obj.amountRange)
      ..writeByte(5)
      ..write(obj.amountString)
      ..writeByte(6)
      ..write(obj.elementAmountString)
      ..writeByte(7)
      ..write(obj.amountType)
      ..writeByte(8)
      ..write(obj.amountText)
      ..writeByte(9)
      ..write(obj.elementAmountText)
      ..writeByte(10)
      ..write(obj.referenceRange);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceAmount _$SubstanceAmountFromJson(Map<String, dynamic> json) {
  return SubstanceAmount(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    amountQuantity: json['amountQuantity'] == null
        ? null
        : Quantity.fromJson(json['amountQuantity'] as Map<String, dynamic>),
    amountRange: json['amountRange'] == null
        ? null
        : Range.fromJson(json['amountRange'] as Map<String, dynamic>),
    amountString: json['amountString'] as String,
    elementAmountString: json['elementAmountString'] == null
        ? null
        : Element.fromJson(json['elementAmountString'] as Map<String, dynamic>),
    amountType: json['amountType'] == null
        ? null
        : CodeableConcept.fromJson(json['amountType'] as Map<String, dynamic>),
    amountText: json['amountText'] as String,
    elementAmountText: json['elementAmountText'] == null
        ? null
        : Element.fromJson(json['elementAmountText'] as Map<String, dynamic>),
    referenceRange: json['referenceRange'] == null
        ? null
        : SubstanceAmount_ReferenceRange.fromJson(
            json['referenceRange'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceAmountToJson(SubstanceAmount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'amountQuantity': instance.amountQuantity?.toJson(),
      'amountRange': instance.amountRange?.toJson(),
      'amountString': instance.amountString,
      'elementAmountString': instance.elementAmountString?.toJson(),
      'amountType': instance.amountType?.toJson(),
      'amountText': instance.amountText,
      'elementAmountText': instance.elementAmountText?.toJson(),
      'referenceRange': instance.referenceRange?.toJson(),
    };

SubstanceAmount_ReferenceRange _$SubstanceAmount_ReferenceRangeFromJson(
    Map<String, dynamic> json) {
  return SubstanceAmount_ReferenceRange(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lowLimit: json['lowLimit'] == null
        ? null
        : Quantity.fromJson(json['lowLimit'] as Map<String, dynamic>),
    highLimit: json['highLimit'] == null
        ? null
        : Quantity.fromJson(json['highLimit'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceAmount_ReferenceRangeToJson(
        SubstanceAmount_ReferenceRange instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'lowLimit': instance.lowLimit?.toJson(),
      'highLimit': instance.highLimit?.toJson(),
    };
