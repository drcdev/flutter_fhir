import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
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
	var fhirDb = new DatabaseHelper();
	SubstanceAmount newSubstanceAmount = new SubstanceAmount(
			id: await fhirDb.newResourceId('SubstanceAmount'),
			extension: extension,
			modifierExtension: modifierExtension,
			amountQuantity: amountQuantity,
			amountRange: amountRange,
			amountString: amountString,
			elementAmountString: elementAmountString,
			amountType: amountType,
			amountText: amountText,
			elementAmountText: elementAmountText,
			referenceRange: referenceRange,
);
	int saved = await fhirDb.newResource(newSubstanceAmount);
	return newSubstanceAmount;
}

save () async {
	var fhirDb = new DatabaseHelper();
	int saved = await fhirDb.saveResource(this);
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Quantity amountQuantity;
  Range amountRange;
  String amountString; //  pattern: ^[ \r\n\t\S]+$
  Element elementAmountString;
  CodeableConcept amountType;
  String amountText;
  Element elementAmountText;
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
	var fhirDb = new DatabaseHelper();
	SubstanceAmount_ReferenceRange newSubstanceAmount_ReferenceRange = new SubstanceAmount_ReferenceRange(
			id: await fhirDb.newResourceId('SubstanceAmount_ReferenceRange'),
			extension: extension,
			modifierExtension: modifierExtension,
			lowLimit: lowLimit,
			highLimit: highLimit,
);
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
