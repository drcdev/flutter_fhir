import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/util/resourceList.dart';
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
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Parameters {
  static Future<Parameters> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    List<Parameters_Parameter> parameter,
  }) async {
    var fhirDb = new DatabaseHelper();
    Parameters newParameters = new Parameters(
      resourceType: 'Parameters',
      id: id ?? await fhirDb.newResourceId('Parameters'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      parameter: parameter,
    );
    newParameters.meta.createdAt = DateTime.now();
    newParameters.meta.lastUpdated = newParameters.meta.createdAt;
    int saved = await fhirDb.saveResource(newParameters);
    return newParameters;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'Parameters';
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
  List<Parameters_Parameter> parameter;

  Parameters({
    @required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.parameter,
  });

  factory Parameters.fromJson(Map<String, dynamic> json) =>
      _$ParametersFromJson(json);
  Map<String, dynamic> toJson() => _$ParametersToJson(this);
}

class Parameters_Parameter {
  static Future<Parameters_Parameter> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
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
    int valueDecimal,
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
    Meta valueMeta,
    dynamic resource,
    List<Parameters_Parameter> part,
  }) async {
    var fhirDb = new DatabaseHelper();
    Parameters_Parameter newParameters_Parameter = new Parameters_Parameter(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
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
      valueMeta: valueMeta,
      resource: resource,
      part: part,
    );
    return newParameters_Parameter;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String name;
  @HiveField(4)
  Element elementName;
  @HiveField(5)
  String valueBase64Binary;
  @HiveField(6)
  Element elementValueBase64Binary;
  @HiveField(7)
  bool valueBoolean;
  @HiveField(8)
  Element elementValueBoolean;
  @HiveField(9)
  String valueCanonical;
  @HiveField(10)
  Element elementValueCanonical;
  @HiveField(11)
  String valueCode;
  @HiveField(12)
  Element elementValueCode;
  @HiveField(13)
  String valueDate;
  @HiveField(14)
  Element elementValueDate;
  @HiveField(15)
  String valueDateTime;
  @HiveField(16)
  Element elementValueDateTime;
  @HiveField(17)
  int valueDecimal;
  @HiveField(18)
  Element elementValueDecimal;
  @HiveField(19)
  String valueId;
  @HiveField(20)
  Element elementValueId;
  @HiveField(21)
  String valueInstant;
  @HiveField(22)
  Element elementValueInstant;
  @HiveField(23)
  int valueInteger;
  @HiveField(24)
  Element elementValueInteger;
  @HiveField(25)
  String valueMarkdown;
  @HiveField(26)
  Element elementValueMarkdown;
  @HiveField(27)
  String valueOid;
  @HiveField(28)
  Element elementValueOid;
  @HiveField(29)
  int valuePositiveInt;
  @HiveField(30)
  Element elementValuePositiveInt;
  @HiveField(31)
  String valueString;
  @HiveField(32)
  Element elementValueString;
  @HiveField(33)
  String valueTime;
  @HiveField(34)
  Element elementValueTime;
  @HiveField(35)
  int valueUnsignedInt;
  @HiveField(36)
  Element elementValueUnsignedInt;
  @HiveField(37)
  String valueUri;
  @HiveField(38)
  Element elementValueUri;
  @HiveField(39)
  String valueUrl;
  @HiveField(40)
  Element elementValueUrl;
  @HiveField(41)
  String valueUuid;
  @HiveField(42)
  Element elementValueUuid;
  @HiveField(43)
  Address valueAddress;
  @HiveField(44)
  Age valueAge;
  @HiveField(45)
  Annotation valueAnnotation;
  @HiveField(46)
  Attachment valueAttachment;
  @HiveField(47)
  CodeableConcept valueCodeableConcept;
  @HiveField(48)
  Coding valueCoding;
  @HiveField(49)
  ContactPoint valueContactPoint;
  @HiveField(50)
  Count valueCount;
  @HiveField(51)
  Distance valueDistance;
  @HiveField(52)
  Duration valueDuration;
  @HiveField(53)
  HumanName valueHumanName;
  @HiveField(54)
  Identifier valueIdentifier;
  @HiveField(55)
  Money valueMoney;
  @HiveField(56)
  Period valuePeriod;
  @HiveField(57)
  Quantity valueQuantity;
  @HiveField(58)
  Range valueRange;
  @HiveField(59)
  Ratio valueRatio;
  @HiveField(60)
  Reference valueReference;
  @HiveField(61)
  SampledData valueSampledData;
  @HiveField(62)
  Signature valueSignature;
  @HiveField(63)
  Timing valueTiming;
  @HiveField(64)
  ContactDetail valueContactDetail;
  @HiveField(65)
  Contributor valueContributor;
  @HiveField(66)
  DataRequirement valueDataRequirement;
  @HiveField(67)
  Expression valueExpression;
  @HiveField(68)
  ParameterDefinition valueParameterDefinition;
  @HiveField(69)
  RelatedArtifact valueRelatedArtifact;
  @HiveField(70)
  TriggerDefinition valueTriggerDefinition;
  @HiveField(71)
  UsageContext valueUsageContext;
  @HiveField(72)
  Dosage valueDosage;
  @HiveField(73)
  Meta valueMeta;
  @HiveField(74)
  dynamic resource;
  @HiveField(75)
  List<Parameters_Parameter> part;

  Parameters_Parameter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
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
    this.valueMeta,
    this.resource,
    this.part,
  });

  factory Parameters_Parameter.fromJson(Map<String, dynamic> json) =>
      _$Parameters_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$Parameters_ParameterToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parameters _$ParametersFromJson(Map<String, dynamic> json) {
  return Parameters(
    resourceType: json['resourceType'] as String,
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
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : Parameters_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ParametersToJson(Parameters instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull(
      'parameter', instance.parameter?.map((e) => e?.toJson())?.toList());
  return val;
}

Parameters_Parameter _$Parameters_ParameterFromJson(Map<String, dynamic> json) {
  return Parameters_Parameter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
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
    valueDecimal: json['valueDecimal'] as int,
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
    resource: json['resource'] == null
        ? null
        : ResourceTypes(json['resource']['resourceType'],
            json['resource'] as Map<String, dynamic>),
    part: (json['part'] as List)
        ?.map((e) => e == null
            ? null
            : Parameters_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Parameters_ParameterToJson(
    Parameters_Parameter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('valueBase64Binary', instance.valueBase64Binary);
  writeNotNull(
      'elementValueBase64Binary', instance.elementValueBase64Binary?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean);
  writeNotNull('elementValueBoolean', instance.elementValueBoolean?.toJson());
  writeNotNull('valueCanonical', instance.valueCanonical);
  writeNotNull(
      'elementValueCanonical', instance.elementValueCanonical?.toJson());
  writeNotNull('valueCode', instance.valueCode);
  writeNotNull('elementValueCode', instance.elementValueCode?.toJson());
  writeNotNull('valueDate', instance.valueDate);
  writeNotNull('elementValueDate', instance.elementValueDate?.toJson());
  writeNotNull('valueDateTime', instance.valueDateTime);
  writeNotNull('elementValueDateTime', instance.elementValueDateTime?.toJson());
  writeNotNull('valueDecimal', instance.valueDecimal);
  writeNotNull('elementValueDecimal', instance.elementValueDecimal?.toJson());
  writeNotNull('valueId', instance.valueId);
  writeNotNull('elementValueId', instance.elementValueId?.toJson());
  writeNotNull('valueInstant', instance.valueInstant);
  writeNotNull('elementValueInstant', instance.elementValueInstant?.toJson());
  writeNotNull('valueInteger', instance.valueInteger);
  writeNotNull('elementValueInteger', instance.elementValueInteger?.toJson());
  writeNotNull('valueMarkdown', instance.valueMarkdown);
  writeNotNull('elementValueMarkdown', instance.elementValueMarkdown?.toJson());
  writeNotNull('valueOid', instance.valueOid);
  writeNotNull('elementValueOid', instance.elementValueOid?.toJson());
  writeNotNull('valuePositiveInt', instance.valuePositiveInt);
  writeNotNull(
      'elementValuePositiveInt', instance.elementValuePositiveInt?.toJson());
  writeNotNull('valueString', instance.valueString);
  writeNotNull('elementValueString', instance.elementValueString?.toJson());
  writeNotNull('valueTime', instance.valueTime);
  writeNotNull('elementValueTime', instance.elementValueTime?.toJson());
  writeNotNull('valueUnsignedInt', instance.valueUnsignedInt);
  writeNotNull(
      'elementValueUnsignedInt', instance.elementValueUnsignedInt?.toJson());
  writeNotNull('valueUri', instance.valueUri);
  writeNotNull('elementValueUri', instance.elementValueUri?.toJson());
  writeNotNull('valueUrl', instance.valueUrl);
  writeNotNull('elementValueUrl', instance.elementValueUrl?.toJson());
  writeNotNull('valueUuid', instance.valueUuid);
  writeNotNull('elementValueUuid', instance.elementValueUuid?.toJson());
  writeNotNull('valueAddress', instance.valueAddress?.toJson());
  writeNotNull('valueAge', instance.valueAge?.toJson());
  writeNotNull('valueAnnotation', instance.valueAnnotation?.toJson());
  writeNotNull('valueAttachment', instance.valueAttachment?.toJson());
  writeNotNull('valueCodeableConcept', instance.valueCodeableConcept?.toJson());
  writeNotNull('valueCoding', instance.valueCoding?.toJson());
  writeNotNull('valueContactPoint', instance.valueContactPoint?.toJson());
  writeNotNull('valueCount', instance.valueCount?.toJson());
  writeNotNull('valueDistance', instance.valueDistance?.toJson());
  writeNotNull('valueDuration', instance.valueDuration?.toJson());
  writeNotNull('valueHumanName', instance.valueHumanName?.toJson());
  writeNotNull('valueIdentifier', instance.valueIdentifier?.toJson());
  writeNotNull('valueMoney', instance.valueMoney?.toJson());
  writeNotNull('valuePeriod', instance.valuePeriod?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueRange', instance.valueRange?.toJson());
  writeNotNull('valueRatio', instance.valueRatio?.toJson());
  writeNotNull('valueReference', instance.valueReference?.toJson());
  writeNotNull('valueSampledData', instance.valueSampledData?.toJson());
  writeNotNull('valueSignature', instance.valueSignature?.toJson());
  writeNotNull('valueTiming', instance.valueTiming?.toJson());
  writeNotNull('valueContactDetail', instance.valueContactDetail?.toJson());
  writeNotNull('valueContributor', instance.valueContributor?.toJson());
  writeNotNull('valueDataRequirement', instance.valueDataRequirement?.toJson());
  writeNotNull('valueExpression', instance.valueExpression?.toJson());
  writeNotNull(
      'valueParameterDefinition', instance.valueParameterDefinition?.toJson());
  writeNotNull('valueRelatedArtifact', instance.valueRelatedArtifact?.toJson());
  writeNotNull(
      'valueTriggerDefinition', instance.valueTriggerDefinition?.toJson());
  writeNotNull('valueUsageContext', instance.valueUsageContext?.toJson());
  writeNotNull('valueDosage', instance.valueDosage?.toJson());
  writeNotNull('valueMeta', instance.valueMeta?.toJson());
  writeNotNull('resource', instance.resource);
  writeNotNull('part', instance.part?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ParametersAdapter extends TypeAdapter<Parameters> {
  @override
  Parameters read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Parameters(
      resourceType: fields[0] as String,
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      parameter: (fields[7] as List)?.cast<Parameters_Parameter>(),
    );
  }

  @override
  void write(BinaryWriter writer, Parameters obj) {
    writer
      ..writeByte(8)
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
      ..write(obj.parameter);
  }
}

class Parameters_ParameterAdapter extends TypeAdapter<Parameters_Parameter> {
  @override
  Parameters_Parameter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Parameters_Parameter(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      valueBase64Binary: fields[5] as String,
      elementValueBase64Binary: fields[6] as Element,
      valueBoolean: fields[7] as bool,
      elementValueBoolean: fields[8] as Element,
      valueCanonical: fields[9] as String,
      elementValueCanonical: fields[10] as Element,
      valueCode: fields[11] as String,
      elementValueCode: fields[12] as Element,
      valueDate: fields[13] as String,
      elementValueDate: fields[14] as Element,
      valueDateTime: fields[15] as String,
      elementValueDateTime: fields[16] as Element,
      valueDecimal: fields[17] as int,
      elementValueDecimal: fields[18] as Element,
      valueId: fields[19] as String,
      elementValueId: fields[20] as Element,
      valueInstant: fields[21] as String,
      elementValueInstant: fields[22] as Element,
      valueInteger: fields[23] as int,
      elementValueInteger: fields[24] as Element,
      valueMarkdown: fields[25] as String,
      elementValueMarkdown: fields[26] as Element,
      valueOid: fields[27] as String,
      elementValueOid: fields[28] as Element,
      valuePositiveInt: fields[29] as int,
      elementValuePositiveInt: fields[30] as Element,
      valueString: fields[31] as String,
      elementValueString: fields[32] as Element,
      valueTime: fields[33] as String,
      elementValueTime: fields[34] as Element,
      valueUnsignedInt: fields[35] as int,
      elementValueUnsignedInt: fields[36] as Element,
      valueUri: fields[37] as String,
      elementValueUri: fields[38] as Element,
      valueUrl: fields[39] as String,
      elementValueUrl: fields[40] as Element,
      valueUuid: fields[41] as String,
      elementValueUuid: fields[42] as Element,
      valueAddress: fields[43] as Address,
      valueAge: fields[44] as Age,
      valueAnnotation: fields[45] as Annotation,
      valueAttachment: fields[46] as Attachment,
      valueCodeableConcept: fields[47] as CodeableConcept,
      valueCoding: fields[48] as Coding,
      valueContactPoint: fields[49] as ContactPoint,
      valueCount: fields[50] as Count,
      valueDistance: fields[51] as Distance,
      valueDuration: fields[52] as Duration,
      valueHumanName: fields[53] as HumanName,
      valueIdentifier: fields[54] as Identifier,
      valueMoney: fields[55] as Money,
      valuePeriod: fields[56] as Period,
      valueQuantity: fields[57] as Quantity,
      valueRange: fields[58] as Range,
      valueRatio: fields[59] as Ratio,
      valueReference: fields[60] as Reference,
      valueSampledData: fields[61] as SampledData,
      valueSignature: fields[62] as Signature,
      valueTiming: fields[63] as Timing,
      valueContactDetail: fields[64] as ContactDetail,
      valueContributor: fields[65] as Contributor,
      valueDataRequirement: fields[66] as DataRequirement,
      valueExpression: fields[67] as Expression,
      valueParameterDefinition: fields[68] as ParameterDefinition,
      valueRelatedArtifact: fields[69] as RelatedArtifact,
      valueTriggerDefinition: fields[70] as TriggerDefinition,
      valueUsageContext: fields[71] as UsageContext,
      valueDosage: fields[72] as Dosage,
      valueMeta: fields[73] as Meta,
      resource: fields[74] as dynamic,
      part: (fields[75] as List)?.cast<Parameters_Parameter>(),
    );
  }

  @override
  void write(BinaryWriter writer, Parameters_Parameter obj) {
    writer
      ..writeByte(76)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.elementName)
      ..writeByte(5)
      ..write(obj.valueBase64Binary)
      ..writeByte(6)
      ..write(obj.elementValueBase64Binary)
      ..writeByte(7)
      ..write(obj.valueBoolean)
      ..writeByte(8)
      ..write(obj.elementValueBoolean)
      ..writeByte(9)
      ..write(obj.valueCanonical)
      ..writeByte(10)
      ..write(obj.elementValueCanonical)
      ..writeByte(11)
      ..write(obj.valueCode)
      ..writeByte(12)
      ..write(obj.elementValueCode)
      ..writeByte(13)
      ..write(obj.valueDate)
      ..writeByte(14)
      ..write(obj.elementValueDate)
      ..writeByte(15)
      ..write(obj.valueDateTime)
      ..writeByte(16)
      ..write(obj.elementValueDateTime)
      ..writeByte(17)
      ..write(obj.valueDecimal)
      ..writeByte(18)
      ..write(obj.elementValueDecimal)
      ..writeByte(19)
      ..write(obj.valueId)
      ..writeByte(20)
      ..write(obj.elementValueId)
      ..writeByte(21)
      ..write(obj.valueInstant)
      ..writeByte(22)
      ..write(obj.elementValueInstant)
      ..writeByte(23)
      ..write(obj.valueInteger)
      ..writeByte(24)
      ..write(obj.elementValueInteger)
      ..writeByte(25)
      ..write(obj.valueMarkdown)
      ..writeByte(26)
      ..write(obj.elementValueMarkdown)
      ..writeByte(27)
      ..write(obj.valueOid)
      ..writeByte(28)
      ..write(obj.elementValueOid)
      ..writeByte(29)
      ..write(obj.valuePositiveInt)
      ..writeByte(30)
      ..write(obj.elementValuePositiveInt)
      ..writeByte(31)
      ..write(obj.valueString)
      ..writeByte(32)
      ..write(obj.elementValueString)
      ..writeByte(33)
      ..write(obj.valueTime)
      ..writeByte(34)
      ..write(obj.elementValueTime)
      ..writeByte(35)
      ..write(obj.valueUnsignedInt)
      ..writeByte(36)
      ..write(obj.elementValueUnsignedInt)
      ..writeByte(37)
      ..write(obj.valueUri)
      ..writeByte(38)
      ..write(obj.elementValueUri)
      ..writeByte(39)
      ..write(obj.valueUrl)
      ..writeByte(40)
      ..write(obj.elementValueUrl)
      ..writeByte(41)
      ..write(obj.valueUuid)
      ..writeByte(42)
      ..write(obj.elementValueUuid)
      ..writeByte(43)
      ..write(obj.valueAddress)
      ..writeByte(44)
      ..write(obj.valueAge)
      ..writeByte(45)
      ..write(obj.valueAnnotation)
      ..writeByte(46)
      ..write(obj.valueAttachment)
      ..writeByte(47)
      ..write(obj.valueCodeableConcept)
      ..writeByte(48)
      ..write(obj.valueCoding)
      ..writeByte(49)
      ..write(obj.valueContactPoint)
      ..writeByte(50)
      ..write(obj.valueCount)
      ..writeByte(51)
      ..write(obj.valueDistance)
      ..writeByte(52)
      ..write(obj.valueDuration)
      ..writeByte(53)
      ..write(obj.valueHumanName)
      ..writeByte(54)
      ..write(obj.valueIdentifier)
      ..writeByte(55)
      ..write(obj.valueMoney)
      ..writeByte(56)
      ..write(obj.valuePeriod)
      ..writeByte(57)
      ..write(obj.valueQuantity)
      ..writeByte(58)
      ..write(obj.valueRange)
      ..writeByte(59)
      ..write(obj.valueRatio)
      ..writeByte(60)
      ..write(obj.valueReference)
      ..writeByte(61)
      ..write(obj.valueSampledData)
      ..writeByte(62)
      ..write(obj.valueSignature)
      ..writeByte(63)
      ..write(obj.valueTiming)
      ..writeByte(64)
      ..write(obj.valueContactDetail)
      ..writeByte(65)
      ..write(obj.valueContributor)
      ..writeByte(66)
      ..write(obj.valueDataRequirement)
      ..writeByte(67)
      ..write(obj.valueExpression)
      ..writeByte(68)
      ..write(obj.valueParameterDefinition)
      ..writeByte(69)
      ..write(obj.valueRelatedArtifact)
      ..writeByte(70)
      ..write(obj.valueTriggerDefinition)
      ..writeByte(71)
      ..write(obj.valueUsageContext)
      ..writeByte(72)
      ..write(obj.valueDosage)
      ..writeByte(73)
      ..write(obj.valueMeta)
      ..writeByte(74)
      ..write(obj.resource)
      ..writeByte(75)
      ..write(obj.part);
  }
}
