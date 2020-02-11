import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/resourceList.dart';
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

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 468)
class Parameters {

  //  This is a Parameters resource
  @HiveField(0)
  final String resourceType= 'Parameters';

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

  //  A parameter passed to or received from the operation.
  @HiveField(7)
  List<Parameters_Parameter> parameter;

Parameters(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.parameter
    });

  factory Parameters.fromJson(Map<String, dynamic> json) => _$ParametersFromJson(json);
  Map<String, dynamic> toJson() => _$ParametersToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 469)
class Parameters_Parameter {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The name of the parameter (reference to the operation definition).
  @HiveField(3)
  String name;

  //  Extensions for name
  @HiveField(4)
  Element elementName;

  //  If the parameter is a data type.
  @HiveField(5)
  String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for valueBase64Binary
  @HiveField(6)
  Element elementValueBase64Binary;

  //  If the parameter is a data type.
  @HiveField(7)
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  @HiveField(8)
  Element elementValueBoolean;

  //  If the parameter is a data type.
  @HiveField(9)
  String valueCanonical; //  pattern: ^\S*$

  //  Extensions for valueCanonical
  @HiveField(10)
  Element elementValueCanonical;

  //  If the parameter is a data type.
  @HiveField(11)
  String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for valueCode
  @HiveField(12)
  Element elementValueCode;

  //  If the parameter is a data type.
  @HiveField(13)
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for valueDate
  @HiveField(14)
  Element elementValueDate;

  //  If the parameter is a data type.
  @HiveField(15)
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for valueDateTime
  @HiveField(16)
  Element elementValueDateTime;

  //  If the parameter is a data type.
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for valueDecimal
  @HiveField(18)
  Element elementValueDecimal;

  //  If the parameter is a data type.
  @HiveField(19)
  String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for valueId
  @HiveField(20)
  Element elementValueId;

  //  If the parameter is a data type.
  @HiveField(21)
  String valueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for valueInstant
  @HiveField(22)
  Element elementValueInstant;

  //  If the parameter is a data type.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  @HiveField(24)
  Element elementValueInteger;

  //  If the parameter is a data type.
  @HiveField(25)
  String valueMarkdown; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueMarkdown
  @HiveField(26)
  Element elementValueMarkdown;

  //  If the parameter is a data type.
  @HiveField(27)
  String valueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

  //  Extensions for valueOid
  @HiveField(28)
  Element elementValueOid;

  //  If the parameter is a data type.
  int valuePositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for valuePositiveInt
  @HiveField(30)
  Element elementValuePositiveInt;

  //  If the parameter is a data type.
  @HiveField(31)
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  @HiveField(32)
  Element elementValueString;

  //  If the parameter is a data type.
  @HiveField(33)
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for valueTime
  @HiveField(34)
  Element elementValueTime;

  //  If the parameter is a data type.
  int valueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for valueUnsignedInt
  @HiveField(36)
  Element elementValueUnsignedInt;

  //  If the parameter is a data type.
  @HiveField(37)
  String valueUri; //  pattern: ^\S*$

  //  Extensions for valueUri
  @HiveField(38)
  Element elementValueUri;

  //  If the parameter is a data type.
  @HiveField(39)
  String valueUrl; //  pattern: ^\S*$

  //  Extensions for valueUrl
  @HiveField(40)
  Element elementValueUrl;

  //  If the parameter is a data type.
  @HiveField(41)
  String valueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

  //  Extensions for valueUuid
  @HiveField(42)
  Element elementValueUuid;

  //  If the parameter is a data type.
  @HiveField(43)
  Address valueAddress;

  //  If the parameter is a data type.
  @HiveField(44)
  Age valueAge;

  //  If the parameter is a data type.
  @HiveField(45)
  Annotation valueAnnotation;

  //  If the parameter is a data type.
  @HiveField(46)
  Attachment valueAttachment;

  //  If the parameter is a data type.
  @HiveField(47)
  CodeableConcept valueCodeableConcept;

  //  If the parameter is a data type.
  @HiveField(48)
  Coding valueCoding;

  //  If the parameter is a data type.
  @HiveField(49)
  ContactPoint valueContactPoint;

  //  If the parameter is a data type.
  @HiveField(50)
  Count valueCount;

  //  If the parameter is a data type.
  @HiveField(51)
  Distance valueDistance;

  //  If the parameter is a data type.
  @HiveField(52)
  Duration valueDuration;

  //  If the parameter is a data type.
  @HiveField(53)
  HumanName valueHumanName;

  //  If the parameter is a data type.
  @HiveField(54)
  Identifier valueIdentifier;

  //  If the parameter is a data type.
  @HiveField(55)
  Money valueMoney;

  //  If the parameter is a data type.
  @HiveField(56)
  Period valuePeriod;

  //  If the parameter is a data type.
  @HiveField(57)
  Quantity valueQuantity;

  //  If the parameter is a data type.
  @HiveField(58)
  Range valueRange;

  //  If the parameter is a data type.
  @HiveField(59)
  Ratio valueRatio;

  //  If the parameter is a data type.
  @HiveField(60)
  Reference valueReference;

  //  If the parameter is a data type.
  @HiveField(61)
  SampledData valueSampledData;

  //  If the parameter is a data type.
  @HiveField(62)
  Signature valueSignature;

  //  If the parameter is a data type.
  @HiveField(63)
  Timing valueTiming;

  //  If the parameter is a data type.
  @HiveField(64)
  ContactDetail valueContactDetail;

  //  If the parameter is a data type.
  @HiveField(65)
  Contributor valueContributor;

  //  If the parameter is a data type.
  @HiveField(66)
  DataRequirement valueDataRequirement;

  //  If the parameter is a data type.
  @HiveField(67)
  Expression valueExpression;

  //  If the parameter is a data type.
  @HiveField(68)
  ParameterDefinition valueParameterDefinition;

  //  If the parameter is a data type.
  @HiveField(69)
  RelatedArtifact valueRelatedArtifact;

  //  If the parameter is a data type.
  @HiveField(70)
  TriggerDefinition valueTriggerDefinition;

  //  If the parameter is a data type.
  @HiveField(71)
  UsageContext valueUsageContext;

  //  If the parameter is a data type.
  @HiveField(72)
  Dosage valueDosage;

  //  If the parameter is a data type.
  @HiveField(73)
  Meta valueMeta;

  //  If the parameter is a whole resource.
  @HiveField(74)
  dynamic resource;

  //  A named part of a multi-part parameter.
  @HiveField(75)
  List<Parameters_Parameter> part;

Parameters_Parameter(
  {this.id,
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
    this.part
    });

  factory Parameters_Parameter.fromJson(Map<String, dynamic> json) => _$Parameters_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$Parameters_ParameterToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ParametersAdapter extends TypeAdapter<Parameters> {
  @override
  final typeId = 468;

  @override
  Parameters read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Parameters(
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
  final typeId = 469;

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
      elementValueDecimal: fields[18] as Element,
      valueId: fields[19] as String,
      elementValueId: fields[20] as Element,
      valueInstant: fields[21] as String,
      elementValueInstant: fields[22] as Element,
      elementValueInteger: fields[24] as Element,
      valueMarkdown: fields[25] as String,
      elementValueMarkdown: fields[26] as Element,
      valueOid: fields[27] as String,
      elementValueOid: fields[28] as Element,
      elementValuePositiveInt: fields[30] as Element,
      valueString: fields[31] as String,
      elementValueString: fields[32] as Element,
      valueTime: fields[33] as String,
      elementValueTime: fields[34] as Element,
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
      ..writeByte(72)
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parameters _$ParametersFromJson(Map<String, dynamic> json) {
  return Parameters(
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

Map<String, dynamic> _$ParametersToJson(Parameters instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
    };

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
        resource: json['resource'] == null
        ? null
        : ResourceTypes(json['resource']['resourceType'], json['resource'] as Map<String, dynamic>),
    part: (json['part'] as List)
        ?.map((e) => e == null
            ? null
            : Parameters_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Parameters_ParameterToJson(
        Parameters_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
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
      'resource': instance.resource,
      'part': instance.part?.map((e) => e?.toJson())?.toList(),
    };
