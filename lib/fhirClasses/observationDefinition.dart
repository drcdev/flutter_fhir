import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 152)
class ObservationDefinition {

	static Future<ObservationDefinition> newInstance({
		String id,
		Meta meta,
		String implicitRules,
		Element elementImplicitRules,
		String language,
		Element elementLanguage,
		Narrative text,
		List<dynamic> contained,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<CodeableConcept> category,
		CodeableConcept code,
		List<Identifier> identifier,
		List<String> permittedDataType,
		List<Element> elementPermittedDataType,
		bool multipleResultsAllowed,
		Element elementMultipleResultsAllowed,
		CodeableConcept method,
		String preferredReportName,
		Element elementPreferredReportName,
		ObservationDefinition_QuantitativeDetails quantitativeDetails,
		List<ObservationDefinition_QualifiedInterval> qualifiedInterval,
		Reference validCodedValueSet,
		Reference normalCodedValueSet,
		Reference abnormalCodedValueSet,
		Reference criticalCodedValueSet}) async {
	ObservationDefinition newObservationDefinition = new ObservationDefinition(
			id: await newId('ObservationDefinition'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			category: category,
			code: code,
			identifier: identifier,
			permittedDataType: permittedDataType,
			elementPermittedDataType: elementPermittedDataType,
			multipleResultsAllowed: multipleResultsAllowed,
			elementMultipleResultsAllowed: elementMultipleResultsAllowed,
			method: method,
			preferredReportName: preferredReportName,
			elementPreferredReportName: elementPreferredReportName,
			quantitativeDetails: quantitativeDetails,
			qualifiedInterval: qualifiedInterval,
			validCodedValueSet: validCodedValueSet,
			normalCodedValueSet: normalCodedValueSet,
			abnormalCodedValueSet: abnormalCodedValueSet,
			criticalCodedValueSet: criticalCodedValueSet);
	var observationDefinitionBox = await Hive.openBox<ObservationDefinition>('ObservationDefinitionBox');
	observationDefinitionBox.put(newObservationDefinition.id, newObservationDefinition);
	return newObservationDefinition;
}
  @HiveField(0)
  final String resourceType= 'ObservationDefinition';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<CodeableConcept> category;
  @HiveField(12)
  CodeableConcept code;
  @HiveField(13)
  List<Identifier> identifier;
  @HiveField(14)
  List<String> permittedDataType; // <code> enum: Quantity/CodeableConcept/string/boolean/integer/Range/Ratio/SampledData/time/dateTime/Period> permittedDataType;
  @HiveField(15)
  List<Element> elementPermittedDataType;
  @HiveField(16)
  bool multipleResultsAllowed;
  @HiveField(17)
  Element elementMultipleResultsAllowed;
  @HiveField(18)
  CodeableConcept method;
  @HiveField(19)
  String preferredReportName;
  @HiveField(20)
  Element elementPreferredReportName;
  @HiveField(21)
  ObservationDefinition_QuantitativeDetails quantitativeDetails;
  @HiveField(22)
  List<ObservationDefinition_QualifiedInterval> qualifiedInterval;
  @HiveField(23)
  Reference validCodedValueSet;
  @HiveField(24)
  Reference normalCodedValueSet;
  @HiveField(25)
  Reference abnormalCodedValueSet;
  @HiveField(26)
  Reference criticalCodedValueSet;

ObservationDefinition(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.category,
    @required this.code,
    this.identifier,
    this.permittedDataType,
    this.elementPermittedDataType,
    this.multipleResultsAllowed,
    this.elementMultipleResultsAllowed,
    this.method,
    this.preferredReportName,
    this.elementPreferredReportName,
    this.quantitativeDetails,
    this.qualifiedInterval,
    this.validCodedValueSet,
    this.normalCodedValueSet,
    this.abnormalCodedValueSet,
    this.criticalCodedValueSet
    });

  factory ObservationDefinition.fromJson(Map<String, dynamic> json) => _$ObservationDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ObservationDefinition_QuantitativeDetails {

	static Future<ObservationDefinition_QuantitativeDetails> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept customaryUnit,
		CodeableConcept unit,
		double conversionFactor,
		Element elementConversionFactor,
		int decimalPrecision,
		Element elementDecimalPrecision}) async {
	ObservationDefinition_QuantitativeDetails newObservationDefinition_QuantitativeDetails = new ObservationDefinition_QuantitativeDetails(
			id: await newId('ObservationDefinition_QuantitativeDetails'),
			extension: extension,
			modifierExtension: modifierExtension,
			customaryUnit: customaryUnit,
			unit: unit,
			conversionFactor: conversionFactor,
			elementConversionFactor: elementConversionFactor,
			decimalPrecision: decimalPrecision,
			elementDecimalPrecision: elementDecimalPrecision);
	var observationDefinition_QuantitativeDetailsBox = await Hive.openBox<ObservationDefinition_QuantitativeDetails>('ObservationDefinition_QuantitativeDetailsBox');
	observationDefinition_QuantitativeDetailsBox.put(newObservationDefinition_QuantitativeDetails.id, newObservationDefinition_QuantitativeDetails);
	return newObservationDefinition_QuantitativeDetails;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept customaryUnit;
  CodeableConcept unit;
  double conversionFactor;
  Element elementConversionFactor;
  int decimalPrecision;
  Element elementDecimalPrecision;

ObservationDefinition_QuantitativeDetails(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.customaryUnit,
    this.unit,
    this.conversionFactor,
    this.elementConversionFactor,
    this.decimalPrecision,
    this.elementDecimalPrecision
    });

  factory ObservationDefinition_QuantitativeDetails.fromJson(Map<String, dynamic> json) => _$ObservationDefinition_QuantitativeDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationDefinition_QuantitativeDetailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ObservationDefinition_QualifiedInterval {

	static Future<ObservationDefinition_QualifiedInterval> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String category,
		Element elementCategory,
		Range range,
		CodeableConcept context,
		List<CodeableConcept> appliesTo,
		String gender,
		Element elementGender,
		Range age,
		Range gestationalAge,
		String condition,
		Element elementCondition}) async {
	ObservationDefinition_QualifiedInterval newObservationDefinition_QualifiedInterval = new ObservationDefinition_QualifiedInterval(
			id: await newId('ObservationDefinition_QualifiedInterval'),
			extension: extension,
			modifierExtension: modifierExtension,
			category: category,
			elementCategory: elementCategory,
			range: range,
			context: context,
			appliesTo: appliesTo,
			gender: gender,
			elementGender: elementGender,
			age: age,
			gestationalAge: gestationalAge,
			condition: condition,
			elementCondition: elementCondition);
	var observationDefinition_QualifiedIntervalBox = await Hive.openBox<ObservationDefinition_QualifiedInterval>('ObservationDefinition_QualifiedIntervalBox');
	observationDefinition_QualifiedIntervalBox.put(newObservationDefinition_QualifiedInterval.id, newObservationDefinition_QualifiedInterval);
	return newObservationDefinition_QualifiedInterval;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String category; // <code> enum: reference/critical/absolute;
  Element elementCategory;
  Range range;
  CodeableConcept context;
  List<CodeableConcept> appliesTo;
  String gender; // <code> enum: male/female/other/unknown;
  Element elementGender;
  Range age;
  Range gestationalAge;
  String condition;
  Element elementCondition;

ObservationDefinition_QualifiedInterval(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.category,
    this.elementCategory,
    this.range,
    this.context,
    this.appliesTo,
    this.gender,
    this.elementGender,
    this.age,
    this.gestationalAge,
    this.condition,
    this.elementCondition
    });

  factory ObservationDefinition_QualifiedInterval.fromJson(Map<String, dynamic> json) => _$ObservationDefinition_QualifiedIntervalFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationDefinition_QualifiedIntervalToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ObservationDefinitionAdapter extends TypeAdapter<ObservationDefinition> {
  @override
  final typeId = 152;

  @override
  ObservationDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ObservationDefinition(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      category: (fields[11] as List)?.cast<CodeableConcept>(),
      code: fields[12] as CodeableConcept,
      identifier: (fields[13] as List)?.cast<Identifier>(),
      permittedDataType: (fields[14] as List)?.cast<String>(),
      elementPermittedDataType: (fields[15] as List)?.cast<Element>(),
      multipleResultsAllowed: fields[16] as bool,
      elementMultipleResultsAllowed: fields[17] as Element,
      method: fields[18] as CodeableConcept,
      preferredReportName: fields[19] as String,
      elementPreferredReportName: fields[20] as Element,
      quantitativeDetails:
          fields[21] as ObservationDefinition_QuantitativeDetails,
      qualifiedInterval:
          (fields[22] as List)?.cast<ObservationDefinition_QualifiedInterval>(),
      validCodedValueSet: fields[23] as Reference,
      normalCodedValueSet: fields[24] as Reference,
      abnormalCodedValueSet: fields[25] as Reference,
      criticalCodedValueSet: fields[26] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, ObservationDefinition obj) {
    writer
      ..writeByte(27)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.category)
      ..writeByte(12)
      ..write(obj.code)
      ..writeByte(13)
      ..write(obj.identifier)
      ..writeByte(14)
      ..write(obj.permittedDataType)
      ..writeByte(15)
      ..write(obj.elementPermittedDataType)
      ..writeByte(16)
      ..write(obj.multipleResultsAllowed)
      ..writeByte(17)
      ..write(obj.elementMultipleResultsAllowed)
      ..writeByte(18)
      ..write(obj.method)
      ..writeByte(19)
      ..write(obj.preferredReportName)
      ..writeByte(20)
      ..write(obj.elementPreferredReportName)
      ..writeByte(21)
      ..write(obj.quantitativeDetails)
      ..writeByte(22)
      ..write(obj.qualifiedInterval)
      ..writeByte(23)
      ..write(obj.validCodedValueSet)
      ..writeByte(24)
      ..write(obj.normalCodedValueSet)
      ..writeByte(25)
      ..write(obj.abnormalCodedValueSet)
      ..writeByte(26)
      ..write(obj.criticalCodedValueSet);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObservationDefinition _$ObservationDefinitionFromJson(
    Map<String, dynamic> json) {
  return ObservationDefinition(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    permittedDataType:
        (json['permittedDataType'] as List)?.map((e) => e as String)?.toList(),
    elementPermittedDataType: (json['elementPermittedDataType'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    multipleResultsAllowed: json['multipleResultsAllowed'] as bool,
    elementMultipleResultsAllowed: json['elementMultipleResultsAllowed'] == null
        ? null
        : Element.fromJson(
            json['elementMultipleResultsAllowed'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    preferredReportName: json['preferredReportName'] as String,
    elementPreferredReportName: json['elementPreferredReportName'] == null
        ? null
        : Element.fromJson(
            json['elementPreferredReportName'] as Map<String, dynamic>),
    quantitativeDetails: json['quantitativeDetails'] == null
        ? null
        : ObservationDefinition_QuantitativeDetails.fromJson(
            json['quantitativeDetails'] as Map<String, dynamic>),
    qualifiedInterval: (json['qualifiedInterval'] as List)
        ?.map((e) => e == null
            ? null
            : ObservationDefinition_QualifiedInterval.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    validCodedValueSet: json['validCodedValueSet'] == null
        ? null
        : Reference.fromJson(
            json['validCodedValueSet'] as Map<String, dynamic>),
    normalCodedValueSet: json['normalCodedValueSet'] == null
        ? null
        : Reference.fromJson(
            json['normalCodedValueSet'] as Map<String, dynamic>),
    abnormalCodedValueSet: json['abnormalCodedValueSet'] == null
        ? null
        : Reference.fromJson(
            json['abnormalCodedValueSet'] as Map<String, dynamic>),
    criticalCodedValueSet: json['criticalCodedValueSet'] == null
        ? null
        : Reference.fromJson(
            json['criticalCodedValueSet'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ObservationDefinitionToJson(
        ObservationDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'permittedDataType': instance.permittedDataType,
      'elementPermittedDataType':
          instance.elementPermittedDataType?.map((e) => e?.toJson())?.toList(),
      'multipleResultsAllowed': instance.multipleResultsAllowed,
      'elementMultipleResultsAllowed':
          instance.elementMultipleResultsAllowed?.toJson(),
      'method': instance.method?.toJson(),
      'preferredReportName': instance.preferredReportName,
      'elementPreferredReportName':
          instance.elementPreferredReportName?.toJson(),
      'quantitativeDetails': instance.quantitativeDetails?.toJson(),
      'qualifiedInterval':
          instance.qualifiedInterval?.map((e) => e?.toJson())?.toList(),
      'validCodedValueSet': instance.validCodedValueSet?.toJson(),
      'normalCodedValueSet': instance.normalCodedValueSet?.toJson(),
      'abnormalCodedValueSet': instance.abnormalCodedValueSet?.toJson(),
      'criticalCodedValueSet': instance.criticalCodedValueSet?.toJson(),
    };

ObservationDefinition_QuantitativeDetails
    _$ObservationDefinition_QuantitativeDetailsFromJson(
        Map<String, dynamic> json) {
  return ObservationDefinition_QuantitativeDetails(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    customaryUnit: json['customaryUnit'] == null
        ? null
        : CodeableConcept.fromJson(
            json['customaryUnit'] as Map<String, dynamic>),
    unit: json['unit'] == null
        ? null
        : CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>),
    conversionFactor: (json['conversionFactor'] as num)?.toDouble(),
    elementConversionFactor: json['elementConversionFactor'] == null
        ? null
        : Element.fromJson(
            json['elementConversionFactor'] as Map<String, dynamic>),
    decimalPrecision: json['decimalPrecision'] as int,
    elementDecimalPrecision: json['elementDecimalPrecision'] == null
        ? null
        : Element.fromJson(
            json['elementDecimalPrecision'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ObservationDefinition_QuantitativeDetailsToJson(
        ObservationDefinition_QuantitativeDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'customaryUnit': instance.customaryUnit?.toJson(),
      'unit': instance.unit?.toJson(),
      'conversionFactor': instance.conversionFactor,
      'elementConversionFactor': instance.elementConversionFactor?.toJson(),
      'decimalPrecision': instance.decimalPrecision,
      'elementDecimalPrecision': instance.elementDecimalPrecision?.toJson(),
    };

ObservationDefinition_QualifiedInterval
    _$ObservationDefinition_QualifiedIntervalFromJson(
        Map<String, dynamic> json) {
  return ObservationDefinition_QualifiedInterval(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    category: json['category'] as String,
    elementCategory: json['elementCategory'] == null
        ? null
        : Element.fromJson(json['elementCategory'] as Map<String, dynamic>),
    range: json['range'] == null
        ? null
        : Range.fromJson(json['range'] as Map<String, dynamic>),
    context: json['context'] == null
        ? null
        : CodeableConcept.fromJson(json['context'] as Map<String, dynamic>),
    appliesTo: (json['appliesTo'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    gender: json['gender'] as String,
    elementGender: json['elementGender'] == null
        ? null
        : Element.fromJson(json['elementGender'] as Map<String, dynamic>),
    age: json['age'] == null
        ? null
        : Range.fromJson(json['age'] as Map<String, dynamic>),
    gestationalAge: json['gestationalAge'] == null
        ? null
        : Range.fromJson(json['gestationalAge'] as Map<String, dynamic>),
    condition: json['condition'] as String,
    elementCondition: json['elementCondition'] == null
        ? null
        : Element.fromJson(json['elementCondition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ObservationDefinition_QualifiedIntervalToJson(
        ObservationDefinition_QualifiedInterval instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category,
      'elementCategory': instance.elementCategory?.toJson(),
      'range': instance.range?.toJson(),
      'context': instance.context?.toJson(),
      'appliesTo': instance.appliesTo?.map((e) => e?.toJson())?.toList(),
      'gender': instance.gender,
      'elementGender': instance.elementGender?.toJson(),
      'age': instance.age?.toJson(),
      'gestationalAge': instance.gestationalAge?.toJson(),
      'condition': instance.condition,
      'elementCondition': instance.elementCondition?.toJson(),
    };
