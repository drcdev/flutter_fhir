import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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

  //  This is a ObservationDefinition resource
  @HiveField(0)
  final String resourceType= 'ObservationDefinition';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  A code that classifies the general type of observation.
  @HiveField(11)
  List<CodeableConcept> category;

  //  Describes what will be observed. Sometimes this is called the
  // observation "name".
  @HiveField(12)
  CodeableConcept code;

  //  A unique identifier assigned to this ObservationDefinition artifact.
  @HiveField(13)
  List<Identifier> identifier;

  //  The data types allowed for the value element of the instance
  // observations conforming to this ObservationDefinition.
  @HiveField(14)
  List<String> permittedDataType; // <code> enum: Quantity/CodeableConcept/string/boolean/integer/Range/Ratio/SampledData/time/dateTime/Period> permittedDataType;

  //  Extensions for permittedDataType
  @HiveField(15)
  List<Element> elementPermittedDataType;

  //  Multiple results allowed for observations conforming to this
  // ObservationDefinition.
  @HiveField(16)
  bool multipleResultsAllowed;

  //  Extensions for multipleResultsAllowed
  @HiveField(17)
  Element elementMultipleResultsAllowed;

  //  The method or technique used to perform the observation.
  @HiveField(18)
  CodeableConcept method;

  //  The preferred name to be used when reporting the results of
  // observations conforming to this ObservationDefinition.
  @HiveField(19)
  String preferredReportName;

  //  Extensions for preferredReportName
  @HiveField(20)
  Element elementPreferredReportName;

  //  Characteristics for quantitative results of this observation.
  @HiveField(21)
  ObservationDefinition_QuantitativeDetails quantitativeDetails;

  //  Multiple  ranges of results qualified by different contexts for
  // ordinal or continuous observations conforming to this
  // ObservationDefinition.
  @HiveField(22)
  List<ObservationDefinition_QualifiedInterval> qualifiedInterval;

  //  The set of valid coded results for the observations  conforming to
  // this ObservationDefinition.
  @HiveField(23)
  Reference validCodedValueSet;

  //  The set of normal coded results for the observations conforming to
  // this ObservationDefinition.
  @HiveField(24)
  Reference normalCodedValueSet;

  //  The set of abnormal coded results for the observation conforming to
  // this ObservationDefinition.
  @HiveField(25)
  Reference abnormalCodedValueSet;

  //  The set of critical coded results for the observation conforming to
  // this ObservationDefinition.
  @HiveField(26)
  Reference criticalCodedValueSet;

ObservationDefinition(
  this.code,
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Customary unit used to report quantitative results of observations
  // conforming to this ObservationDefinition.
  CodeableConcept customaryUnit;

  //  SI unit used to report quantitative results of observations conforming
  // to this ObservationDefinition.
  CodeableConcept unit;

  //  Factor for converting value expressed with SI unit to value expressed
  // with customary unit.
  double conversionFactor;

  //  Extensions for conversionFactor
  Element elementConversionFactor;

  //  Number of digits after decimal separator when the results of such
  // observations are of type Quantity.
  int decimalPrecision;

  //  Extensions for decimalPrecision
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The category of interval of values for continuous or ordinal
  // observations conforming to this ObservationDefinition.
  String category; // <code> enum: reference/critical/absolute;

  //  Extensions for category
  Element elementCategory;

  //  The low and high values determining the interval. There may be only
  // one of the two.
  Range range;

  //  Codes to indicate the health context the range applies to. For
  // example, the normal or therapeutic range.
  CodeableConcept context;

  //  Codes to indicate the target population this reference range applies
  // to.
  List<CodeableConcept> appliesTo;

  //  Sex of the population the range applies to.
  String gender; // <code> enum: male/female/other/unknown;

  //  Extensions for gender
  Element elementGender;

  //  The age at which this reference range is applicable. This is a
  // neonatal age (e.g. number of weeks at term) if the meaning says so.
  Range age;

  //  The gestational age to which this reference range is applicable, in
  // the context of pregnancy.
  Range gestationalAge;

  //  Text based condition for which the reference range is valid.
  String condition;

  //  Extensions for condition
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
      fields[12] as CodeableConcept,
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
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
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
