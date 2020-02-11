import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/meta.dart';
import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/triggerDefinition.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/parameterDefinition.dart';
import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/contributor.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/signature.dart';
import 'package:flutter_fhir/fhirClasses/sampledData.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/distance.dart';
import 'package:flutter_fhir/fhirClasses/count.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 17)
class Extension {

	static Future<Extension> newInstance({
		String id,
		List<Extension> extension,
		String url,
		Element elementUrl,
		String valueBase64Binary,
		Element elementValueBase64Binary,
		bool valueBoolean,
		Element elementValueBoolean,
		String valueCanonical,
		Element elementValueCanonical,
		String valueCode,
		Element elementValueCode,
		String valueDate,
		Element elementValueDate,
		String valueDateTime,
		Element elementValueDateTime,
		double valueDecimal,
		Element elementValueDecimal,
		String valueId,
		Element elementValueId,
		String valueInstant,
		Element elementValueInstant,
		int valueInteger,
		Element elementValueInteger,
		String valueMarkdown,
		Element elementValueMarkdown,
		String valueOid,
		Element elementValueOid,
		int valuePositiveInt,
		Element elementValuePositiveInt,
		String valueString,
		Element elementValueString,
		String valueTime,
		Element elementValueTime,
		int valueUnsignedInt,
		Element elementValueUnsignedInt,
		String valueUri,
		Element elementValueUri,
		String valueUrl,
		Element elementValueUrl,
		String valueUuid,
		Element elementValueUuid,
		Address valueAddress,
		Age valueAge,
		Annotation valueAnnotation,
		Attachment valueAttachment,
		CodeableConcept valueCodeableConcept,
		Coding valueCoding,
		ContactPoint valueContactPoint,
		Count valueCount,
		Distance valueDistance,
		Duration valueDuration,
		HumanName valueHumanName,
		Identifier valueIdentifier,
		Money valueMoney,
		Period valuePeriod,
		Quantity valueQuantity,
		Range valueRange,
		Ratio valueRatio,
		Reference valueReference,
		SampledData valueSampledData,
		Signature valueSignature,
		Timing valueTiming,
		ContactDetail valueContactDetail,
		Contributor valueContributor,
		DataRequirement valueDataRequirement,
		Expression valueExpression,
		ParameterDefinition valueParameterDefinition,
		RelatedArtifact valueRelatedArtifact,
		TriggerDefinition valueTriggerDefinition,
		UsageContext valueUsageContext,
		Dosage valueDosage,
		Meta valueMeta}) async {
	 return Extension(
			id: await newEntry('Extension'),
			extension: extension,
			url: url,
			elementUrl: elementUrl,
			valueBase64Binary: valueBase64Binary,
			elementValueBase64Binary: elementValueBase64Binary,
			valueBoolean: valueBoolean,
			elementValueBoolean: elementValueBoolean,
			valueCanonical: valueCanonical,
			elementValueCanonical: elementValueCanonical,
			valueCode: valueCode,
			elementValueCode: elementValueCode,
			valueDate: valueDate,
			elementValueDate: elementValueDate,
			valueDateTime: valueDateTime,
			elementValueDateTime: elementValueDateTime,
			valueDecimal: valueDecimal,
			elementValueDecimal: elementValueDecimal,
			valueId: valueId,
			elementValueId: elementValueId,
			valueInstant: valueInstant,
			elementValueInstant: elementValueInstant,
			valueInteger: valueInteger,
			elementValueInteger: elementValueInteger,
			valueMarkdown: valueMarkdown,
			elementValueMarkdown: elementValueMarkdown,
			valueOid: valueOid,
			elementValueOid: elementValueOid,
			valuePositiveInt: valuePositiveInt,
			elementValuePositiveInt: elementValuePositiveInt,
			valueString: valueString,
			elementValueString: elementValueString,
			valueTime: valueTime,
			elementValueTime: elementValueTime,
			valueUnsignedInt: valueUnsignedInt,
			elementValueUnsignedInt: elementValueUnsignedInt,
			valueUri: valueUri,
			elementValueUri: elementValueUri,
			valueUrl: valueUrl,
			elementValueUrl: elementValueUrl,
			valueUuid: valueUuid,
			elementValueUuid: elementValueUuid,
			valueAddress: valueAddress,
			valueAge: valueAge,
			valueAnnotation: valueAnnotation,
			valueAttachment: valueAttachment,
			valueCodeableConcept: valueCodeableConcept,
			valueCoding: valueCoding,
			valueContactPoint: valueContactPoint,
			valueCount: valueCount,
			valueDistance: valueDistance,
			valueDuration: valueDuration,
			valueHumanName: valueHumanName,
			valueIdentifier: valueIdentifier,
			valueMoney: valueMoney,
			valuePeriod: valuePeriod,
			valueQuantity: valueQuantity,
			valueRange: valueRange,
			valueRatio: valueRatio,
			valueReference: valueReference,
			valueSampledData: valueSampledData,
			valueSignature: valueSignature,
			valueTiming: valueTiming,
			valueContactDetail: valueContactDetail,
			valueContributor: valueContributor,
			valueDataRequirement: valueDataRequirement,
			valueExpression: valueExpression,
			valueParameterDefinition: valueParameterDefinition,
			valueRelatedArtifact: valueRelatedArtifact,
			valueTriggerDefinition: valueTriggerDefinition,
			valueUsageContext: valueUsageContext,
			valueDosage: valueDosage,
			valueMeta: valueMeta);
	}

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  String url;
  @HiveField(3)
  Element elementUrl;
  @HiveField(4)
  String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
  @HiveField(5)
  Element elementValueBase64Binary;
  @HiveField(6)
  bool valueBoolean; //  pattern: ^true|false$
  @HiveField(7)
  Element elementValueBoolean;
  @HiveField(8)
  String valueCanonical; //  pattern: ^\S*$
  @HiveField(9)
  Element elementValueCanonical;
  @HiveField(10)
  String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$
  @HiveField(11)
  Element elementValueCode;
  @HiveField(12)
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
  @HiveField(13)
  Element elementValueDate;
  @HiveField(14)
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  @HiveField(15)
  Element elementValueDateTime;
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
  @HiveField(17)
  Element elementValueDecimal;
  @HiveField(18)
  String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$
  @HiveField(19)
  Element elementValueId;
  @HiveField(20)
  String valueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
  @HiveField(21)
  Element elementValueInstant;
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
  @HiveField(23)
  Element elementValueInteger;
  @HiveField(24)
  String valueMarkdown; //  pattern: ^[ \r\n\t\S]+$
  @HiveField(25)
  Element elementValueMarkdown;
  @HiveField(26)
  String valueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
  @HiveField(27)
  Element elementValueOid;
  int valuePositiveInt; //  pattern: ^[1-9][0-9]*$
  @HiveField(29)
  Element elementValuePositiveInt;
  @HiveField(30)
  String valueString; //  pattern: ^[ \r\n\t\S]+$
  @HiveField(31)
  Element elementValueString;
  @HiveField(32)
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
  @HiveField(33)
  Element elementValueTime;
  int valueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
  @HiveField(35)
  Element elementValueUnsignedInt;
  @HiveField(36)
  String valueUri; //  pattern: ^\S*$
  @HiveField(37)
  Element elementValueUri;
  @HiveField(38)
  String valueUrl; //  pattern: ^\S*$
  @HiveField(39)
  Element elementValueUrl;
  @HiveField(40)
  String valueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
  @HiveField(41)
  Element elementValueUuid;
  @HiveField(42)
  Address valueAddress;
  @HiveField(43)
  Age valueAge;
  @HiveField(44)
  Annotation valueAnnotation;
  @HiveField(45)
  Attachment valueAttachment;
  @HiveField(46)
  CodeableConcept valueCodeableConcept;
  @HiveField(47)
  Coding valueCoding;
  @HiveField(48)
  ContactPoint valueContactPoint;
  @HiveField(49)
  Count valueCount;
  @HiveField(50)
  Distance valueDistance;
  @HiveField(51)
  Duration valueDuration;
  @HiveField(52)
  HumanName valueHumanName;
  @HiveField(53)
  Identifier valueIdentifier;
  @HiveField(54)
  Money valueMoney;
  @HiveField(55)
  Period valuePeriod;
  @HiveField(56)
  Quantity valueQuantity;
  @HiveField(57)
  Range valueRange;
  @HiveField(58)
  Ratio valueRatio;
  @HiveField(59)
  Reference valueReference;
  @HiveField(60)
  SampledData valueSampledData;
  @HiveField(61)
  Signature valueSignature;
  @HiveField(62)
  Timing valueTiming;
  @HiveField(63)
  ContactDetail valueContactDetail;
  @HiveField(64)
  Contributor valueContributor;
  @HiveField(65)
  DataRequirement valueDataRequirement;
  @HiveField(66)
  Expression valueExpression;
  @HiveField(67)
  ParameterDefinition valueParameterDefinition;
  @HiveField(68)
  RelatedArtifact valueRelatedArtifact;
  @HiveField(69)
  TriggerDefinition valueTriggerDefinition;
  @HiveField(70)
  UsageContext valueUsageContext;
  @HiveField(71)
  Dosage valueDosage;
  @HiveField(72)
  Meta valueMeta;

Extension(
  {this.id,
    this.extension,
    this.url,
    this.elementUrl,
    this.valueBase64Binary,
    this.elementValueBase64Binary,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueCanonical,
    this.elementValueCanonical,
    this.valueCode,
    this.elementValueCode,
    this.valueDate,
    this.elementValueDate,
    this.valueDateTime,
    this.elementValueDateTime,
    this.valueDecimal,
    this.elementValueDecimal,
    this.valueId,
    this.elementValueId,
    this.valueInstant,
    this.elementValueInstant,
    this.valueInteger,
    this.elementValueInteger,
    this.valueMarkdown,
    this.elementValueMarkdown,
    this.valueOid,
    this.elementValueOid,
    this.valuePositiveInt,
    this.elementValuePositiveInt,
    this.valueString,
    this.elementValueString,
    this.valueTime,
    this.elementValueTime,
    this.valueUnsignedInt,
    this.elementValueUnsignedInt,
    this.valueUri,
    this.elementValueUri,
    this.valueUrl,
    this.elementValueUrl,
    this.valueUuid,
    this.elementValueUuid,
    this.valueAddress,
    this.valueAge,
    this.valueAnnotation,
    this.valueAttachment,
    this.valueCodeableConcept,
    this.valueCoding,
    this.valueContactPoint,
    this.valueCount,
    this.valueDistance,
    this.valueDuration,
    this.valueHumanName,
    this.valueIdentifier,
    this.valueMoney,
    this.valuePeriod,
    this.valueQuantity,
    this.valueRange,
    this.valueRatio,
    this.valueReference,
    this.valueSampledData,
    this.valueSignature,
    this.valueTiming,
    this.valueContactDetail,
    this.valueContributor,
    this.valueDataRequirement,
    this.valueExpression,
    this.valueParameterDefinition,
    this.valueRelatedArtifact,
    this.valueTriggerDefinition,
    this.valueUsageContext,
    this.valueDosage,
    this.valueMeta
    });

  factory Extension.fromJson(Map<String, dynamic> json) => _$ExtensionFromJson(json);
  Map<String, dynamic> toJson() => _$ExtensionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExtensionAdapter extends TypeAdapter<Extension> {
  @override
  final typeId = 17;

  @override
  Extension read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Extension(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      url: fields[2] as String,
      elementUrl: fields[3] as Element,
      valueBase64Binary: fields[4] as String,
      elementValueBase64Binary: fields[5] as Element,
      valueBoolean: fields[6] as bool,
      elementValueBoolean: fields[7] as Element,
      valueCanonical: fields[8] as String,
      elementValueCanonical: fields[9] as Element,
      valueCode: fields[10] as String,
      elementValueCode: fields[11] as Element,
      valueDate: fields[12] as String,
      elementValueDate: fields[13] as Element,
      valueDateTime: fields[14] as String,
      elementValueDateTime: fields[15] as Element,
      elementValueDecimal: fields[17] as Element,
      valueId: fields[18] as String,
      elementValueId: fields[19] as Element,
      valueInstant: fields[20] as String,
      elementValueInstant: fields[21] as Element,
      elementValueInteger: fields[23] as Element,
      valueMarkdown: fields[24] as String,
      elementValueMarkdown: fields[25] as Element,
      valueOid: fields[26] as String,
      elementValueOid: fields[27] as Element,
      elementValuePositiveInt: fields[29] as Element,
      valueString: fields[30] as String,
      elementValueString: fields[31] as Element,
      valueTime: fields[32] as String,
      elementValueTime: fields[33] as Element,
      elementValueUnsignedInt: fields[35] as Element,
      valueUri: fields[36] as String,
      elementValueUri: fields[37] as Element,
      valueUrl: fields[38] as String,
      elementValueUrl: fields[39] as Element,
      valueUuid: fields[40] as String,
      elementValueUuid: fields[41] as Element,
      valueAddress: fields[42] as Address,
      valueAge: fields[43] as Age,
      valueAnnotation: fields[44] as Annotation,
      valueAttachment: fields[45] as Attachment,
      valueCodeableConcept: fields[46] as CodeableConcept,
      valueCoding: fields[47] as Coding,
      valueContactPoint: fields[48] as ContactPoint,
      valueCount: fields[49] as Count,
      valueDistance: fields[50] as Distance,
      valueDuration: fields[51] as Duration,
      valueHumanName: fields[52] as HumanName,
      valueIdentifier: fields[53] as Identifier,
      valueMoney: fields[54] as Money,
      valuePeriod: fields[55] as Period,
      valueQuantity: fields[56] as Quantity,
      valueRange: fields[57] as Range,
      valueRatio: fields[58] as Ratio,
      valueReference: fields[59] as Reference,
      valueSampledData: fields[60] as SampledData,
      valueSignature: fields[61] as Signature,
      valueTiming: fields[62] as Timing,
      valueContactDetail: fields[63] as ContactDetail,
      valueContributor: fields[64] as Contributor,
      valueDataRequirement: fields[65] as DataRequirement,
      valueExpression: fields[66] as Expression,
      valueParameterDefinition: fields[67] as ParameterDefinition,
      valueRelatedArtifact: fields[68] as RelatedArtifact,
      valueTriggerDefinition: fields[69] as TriggerDefinition,
      valueUsageContext: fields[70] as UsageContext,
      valueDosage: fields[71] as Dosage,
      valueMeta: fields[72] as Meta,
    );
  }

  @override
  void write(BinaryWriter writer, Extension obj) {
    writer
      ..writeByte(69)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.elementUrl)
      ..writeByte(4)
      ..write(obj.valueBase64Binary)
      ..writeByte(5)
      ..write(obj.elementValueBase64Binary)
      ..writeByte(6)
      ..write(obj.valueBoolean)
      ..writeByte(7)
      ..write(obj.elementValueBoolean)
      ..writeByte(8)
      ..write(obj.valueCanonical)
      ..writeByte(9)
      ..write(obj.elementValueCanonical)
      ..writeByte(10)
      ..write(obj.valueCode)
      ..writeByte(11)
      ..write(obj.elementValueCode)
      ..writeByte(12)
      ..write(obj.valueDate)
      ..writeByte(13)
      ..write(obj.elementValueDate)
      ..writeByte(14)
      ..write(obj.valueDateTime)
      ..writeByte(15)
      ..write(obj.elementValueDateTime)
      ..writeByte(17)
      ..write(obj.elementValueDecimal)
      ..writeByte(18)
      ..write(obj.valueId)
      ..writeByte(19)
      ..write(obj.elementValueId)
      ..writeByte(20)
      ..write(obj.valueInstant)
      ..writeByte(21)
      ..write(obj.elementValueInstant)
      ..writeByte(23)
      ..write(obj.elementValueInteger)
      ..writeByte(24)
      ..write(obj.valueMarkdown)
      ..writeByte(25)
      ..write(obj.elementValueMarkdown)
      ..writeByte(26)
      ..write(obj.valueOid)
      ..writeByte(27)
      ..write(obj.elementValueOid)
      ..writeByte(29)
      ..write(obj.elementValuePositiveInt)
      ..writeByte(30)
      ..write(obj.valueString)
      ..writeByte(31)
      ..write(obj.elementValueString)
      ..writeByte(32)
      ..write(obj.valueTime)
      ..writeByte(33)
      ..write(obj.elementValueTime)
      ..writeByte(35)
      ..write(obj.elementValueUnsignedInt)
      ..writeByte(36)
      ..write(obj.valueUri)
      ..writeByte(37)
      ..write(obj.elementValueUri)
      ..writeByte(38)
      ..write(obj.valueUrl)
      ..writeByte(39)
      ..write(obj.elementValueUrl)
      ..writeByte(40)
      ..write(obj.valueUuid)
      ..writeByte(41)
      ..write(obj.elementValueUuid)
      ..writeByte(42)
      ..write(obj.valueAddress)
      ..writeByte(43)
      ..write(obj.valueAge)
      ..writeByte(44)
      ..write(obj.valueAnnotation)
      ..writeByte(45)
      ..write(obj.valueAttachment)
      ..writeByte(46)
      ..write(obj.valueCodeableConcept)
      ..writeByte(47)
      ..write(obj.valueCoding)
      ..writeByte(48)
      ..write(obj.valueContactPoint)
      ..writeByte(49)
      ..write(obj.valueCount)
      ..writeByte(50)
      ..write(obj.valueDistance)
      ..writeByte(51)
      ..write(obj.valueDuration)
      ..writeByte(52)
      ..write(obj.valueHumanName)
      ..writeByte(53)
      ..write(obj.valueIdentifier)
      ..writeByte(54)
      ..write(obj.valueMoney)
      ..writeByte(55)
      ..write(obj.valuePeriod)
      ..writeByte(56)
      ..write(obj.valueQuantity)
      ..writeByte(57)
      ..write(obj.valueRange)
      ..writeByte(58)
      ..write(obj.valueRatio)
      ..writeByte(59)
      ..write(obj.valueReference)
      ..writeByte(60)
      ..write(obj.valueSampledData)
      ..writeByte(61)
      ..write(obj.valueSignature)
      ..writeByte(62)
      ..write(obj.valueTiming)
      ..writeByte(63)
      ..write(obj.valueContactDetail)
      ..writeByte(64)
      ..write(obj.valueContributor)
      ..writeByte(65)
      ..write(obj.valueDataRequirement)
      ..writeByte(66)
      ..write(obj.valueExpression)
      ..writeByte(67)
      ..write(obj.valueParameterDefinition)
      ..writeByte(68)
      ..write(obj.valueRelatedArtifact)
      ..writeByte(69)
      ..write(obj.valueTriggerDefinition)
      ..writeByte(70)
      ..write(obj.valueUsageContext)
      ..writeByte(71)
      ..write(obj.valueDosage)
      ..writeByte(72)
      ..write(obj.valueMeta);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Extension _$ExtensionFromJson(Map<String, dynamic> json) {
  return Extension(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    valueBase64Binary: json['valueBase64Binary'] as String,
    elementValueBase64Binary: json['elementValueBase64Binary'] == null
        ? null
        : Element.fromJson(
            json['elementValueBase64Binary'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueCanonical: json['valueCanonical'] as String,
    elementValueCanonical: json['elementValueCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementValueCanonical'] as Map<String, dynamic>),
    valueCode: json['valueCode'] as String,
    elementValueCode: json['elementValueCode'] == null
        ? null
        : Element.fromJson(json['elementValueCode'] as Map<String, dynamic>),
    valueDate: json['valueDate'] as String,
    elementValueDate: json['elementValueDate'] == null
        ? null
        : Element.fromJson(json['elementValueDate'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
    elementValueDecimal: json['elementValueDecimal'] == null
        ? null
        : Element.fromJson(json['elementValueDecimal'] as Map<String, dynamic>),
    valueId: json['valueId'] as String,
    elementValueId: json['elementValueId'] == null
        ? null
        : Element.fromJson(json['elementValueId'] as Map<String, dynamic>),
    valueInstant: json['valueInstant'] as String,
    elementValueInstant: json['elementValueInstant'] == null
        ? null
        : Element.fromJson(json['elementValueInstant'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueMarkdown: json['valueMarkdown'] as String,
    elementValueMarkdown: json['elementValueMarkdown'] == null
        ? null
        : Element.fromJson(
            json['elementValueMarkdown'] as Map<String, dynamic>),
    valueOid: json['valueOid'] as String,
    elementValueOid: json['elementValueOid'] == null
        ? null
        : Element.fromJson(json['elementValueOid'] as Map<String, dynamic>),
    valuePositiveInt: json['valuePositiveInt'] as int,
    elementValuePositiveInt: json['elementValuePositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementValuePositiveInt'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    elementValueTime: json['elementValueTime'] == null
        ? null
        : Element.fromJson(json['elementValueTime'] as Map<String, dynamic>),
    valueUnsignedInt: json['valueUnsignedInt'] as int,
    elementValueUnsignedInt: json['elementValueUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementValueUnsignedInt'] as Map<String, dynamic>),
    valueUri: json['valueUri'] as String,
    elementValueUri: json['elementValueUri'] == null
        ? null
        : Element.fromJson(json['elementValueUri'] as Map<String, dynamic>),
    valueUrl: json['valueUrl'] as String,
    elementValueUrl: json['elementValueUrl'] == null
        ? null
        : Element.fromJson(json['elementValueUrl'] as Map<String, dynamic>),
    valueUuid: json['valueUuid'] as String,
    elementValueUuid: json['elementValueUuid'] == null
        ? null
        : Element.fromJson(json['elementValueUuid'] as Map<String, dynamic>),
    valueAddress: json['valueAddress'] == null
        ? null
        : Address.fromJson(json['valueAddress'] as Map<String, dynamic>),
    valueAge: json['valueAge'] == null
        ? null
        : Age.fromJson(json['valueAge'] as Map<String, dynamic>),
    valueAnnotation: json['valueAnnotation'] == null
        ? null
        : Annotation.fromJson(json['valueAnnotation'] as Map<String, dynamic>),
    valueAttachment: json['valueAttachment'] == null
        ? null
        : Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>),
    valueCodeableConcept: json['valueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['valueCodeableConcept'] as Map<String, dynamic>),
    valueCoding: json['valueCoding'] == null
        ? null
        : Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
    valueContactPoint: json['valueContactPoint'] == null
        ? null
        : ContactPoint.fromJson(
            json['valueContactPoint'] as Map<String, dynamic>),
    valueCount: json['valueCount'] == null
        ? null
        : Count.fromJson(json['valueCount'] as Map<String, dynamic>),
    valueDistance: json['valueDistance'] == null
        ? null
        : Distance.fromJson(json['valueDistance'] as Map<String, dynamic>),
    valueDuration: json['valueDuration'] == null
        ? null
        : Duration.fromJson(json['valueDuration'] as Map<String, dynamic>),
    valueHumanName: json['valueHumanName'] == null
        ? null
        : HumanName.fromJson(json['valueHumanName'] as Map<String, dynamic>),
    valueIdentifier: json['valueIdentifier'] == null
        ? null
        : Identifier.fromJson(json['valueIdentifier'] as Map<String, dynamic>),
    valueMoney: json['valueMoney'] == null
        ? null
        : Money.fromJson(json['valueMoney'] as Map<String, dynamic>),
    valuePeriod: json['valuePeriod'] == null
        ? null
        : Period.fromJson(json['valuePeriod'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueRange: json['valueRange'] == null
        ? null
        : Range.fromJson(json['valueRange'] as Map<String, dynamic>),
    valueRatio: json['valueRatio'] == null
        ? null
        : Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
    valueSampledData: json['valueSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['valueSampledData'] as Map<String, dynamic>),
    valueSignature: json['valueSignature'] == null
        ? null
        : Signature.fromJson(json['valueSignature'] as Map<String, dynamic>),
    valueTiming: json['valueTiming'] == null
        ? null
        : Timing.fromJson(json['valueTiming'] as Map<String, dynamic>),
    valueContactDetail: json['valueContactDetail'] == null
        ? null
        : ContactDetail.fromJson(
            json['valueContactDetail'] as Map<String, dynamic>),
    valueContributor: json['valueContributor'] == null
        ? null
        : Contributor.fromJson(
            json['valueContributor'] as Map<String, dynamic>),
    valueDataRequirement: json['valueDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['valueDataRequirement'] as Map<String, dynamic>),
    valueExpression: json['valueExpression'] == null
        ? null
        : Expression.fromJson(json['valueExpression'] as Map<String, dynamic>),
    valueParameterDefinition: json['valueParameterDefinition'] == null
        ? null
        : ParameterDefinition.fromJson(
            json['valueParameterDefinition'] as Map<String, dynamic>),
    valueRelatedArtifact: json['valueRelatedArtifact'] == null
        ? null
        : RelatedArtifact.fromJson(
            json['valueRelatedArtifact'] as Map<String, dynamic>),
    valueTriggerDefinition: json['valueTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['valueTriggerDefinition'] as Map<String, dynamic>),
    valueUsageContext: json['valueUsageContext'] == null
        ? null
        : UsageContext.fromJson(
            json['valueUsageContext'] as Map<String, dynamic>),
    valueDosage: json['valueDosage'] == null
        ? null
        : Dosage.fromJson(json['valueDosage'] as Map<String, dynamic>),
    valueMeta: json['valueMeta'] == null
        ? null
        : Meta.fromJson(json['valueMeta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtensionToJson(Extension instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'valueBase64Binary': instance.valueBase64Binary,
      'elementValueBase64Binary': instance.elementValueBase64Binary?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueCanonical': instance.valueCanonical,
      'elementValueCanonical': instance.elementValueCanonical?.toJson(),
      'valueCode': instance.valueCode,
      'elementValueCode': instance.elementValueCode?.toJson(),
      'valueDate': instance.valueDate,
      'elementValueDate': instance.elementValueDate?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'elementValueDateTime': instance.elementValueDateTime?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'elementValueDecimal': instance.elementValueDecimal?.toJson(),
      'valueId': instance.valueId,
      'elementValueId': instance.elementValueId?.toJson(),
      'valueInstant': instance.valueInstant,
      'elementValueInstant': instance.elementValueInstant?.toJson(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueMarkdown': instance.valueMarkdown,
      'elementValueMarkdown': instance.elementValueMarkdown?.toJson(),
      'valueOid': instance.valueOid,
      'elementValueOid': instance.elementValueOid?.toJson(),
      'valuePositiveInt': instance.valuePositiveInt,
      'elementValuePositiveInt': instance.elementValuePositiveInt?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueTime': instance.valueTime,
      'elementValueTime': instance.elementValueTime?.toJson(),
      'valueUnsignedInt': instance.valueUnsignedInt,
      'elementValueUnsignedInt': instance.elementValueUnsignedInt?.toJson(),
      'valueUri': instance.valueUri,
      'elementValueUri': instance.elementValueUri?.toJson(),
      'valueUrl': instance.valueUrl,
      'elementValueUrl': instance.elementValueUrl?.toJson(),
      'valueUuid': instance.valueUuid,
      'elementValueUuid': instance.elementValueUuid?.toJson(),
      'valueAddress': instance.valueAddress?.toJson(),
      'valueAge': instance.valueAge?.toJson(),
      'valueAnnotation': instance.valueAnnotation?.toJson(),
      'valueAttachment': instance.valueAttachment?.toJson(),
      'valueCodeableConcept': instance.valueCodeableConcept?.toJson(),
      'valueCoding': instance.valueCoding?.toJson(),
      'valueContactPoint': instance.valueContactPoint?.toJson(),
      'valueCount': instance.valueCount?.toJson(),
      'valueDistance': instance.valueDistance?.toJson(),
      'valueDuration': instance.valueDuration?.toJson(),
      'valueHumanName': instance.valueHumanName?.toJson(),
      'valueIdentifier': instance.valueIdentifier?.toJson(),
      'valueMoney': instance.valueMoney?.toJson(),
      'valuePeriod': instance.valuePeriod?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueRange': instance.valueRange?.toJson(),
      'valueRatio': instance.valueRatio?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
      'valueSampledData': instance.valueSampledData?.toJson(),
      'valueSignature': instance.valueSignature?.toJson(),
      'valueTiming': instance.valueTiming?.toJson(),
      'valueContactDetail': instance.valueContactDetail?.toJson(),
      'valueContributor': instance.valueContributor?.toJson(),
      'valueDataRequirement': instance.valueDataRequirement?.toJson(),
      'valueExpression': instance.valueExpression?.toJson(),
      'valueParameterDefinition': instance.valueParameterDefinition?.toJson(),
      'valueRelatedArtifact': instance.valueRelatedArtifact?.toJson(),
      'valueTriggerDefinition': instance.valueTriggerDefinition?.toJson(),
      'valueUsageContext': instance.valueUsageContext?.toJson(),
      'valueDosage': instance.valueDosage?.toJson(),
      'valueMeta': instance.valueMeta?.toJson(),
    };
