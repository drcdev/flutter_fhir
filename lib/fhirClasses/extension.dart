import 'package:json_annotation/json_annotation.dart';

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

part 'extension.g.dart';

@JsonSerializable(explicitToJson: true)
class Extension {

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

  //  Source of the definition for the extension code - a logical name or a
  // URL.
  String url;

  //  Extensions for url
  Element elementUrl;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for valueBase64Binary
  Element elementValueBase64Binary;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  Element elementValueBoolean;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  String valueCanonical; //  pattern: ^\S*$

  //  Extensions for valueCanonical
  Element elementValueCanonical;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for valueCode
  Element elementValueCode;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for valueDate
  Element elementValueDate;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for valueDateTime
  Element elementValueDateTime;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for valueDecimal
  Element elementValueDecimal;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for valueId
  Element elementValueId;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  String valueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for valueInstant
  Element elementValueInstant;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  Element elementValueInteger;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  String valueMarkdown; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueMarkdown
  Element elementValueMarkdown;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  String valueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

  //  Extensions for valueOid
  Element elementValueOid;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  int valuePositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for valuePositiveInt
  Element elementValuePositiveInt;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  Element elementValueString;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for valueTime
  Element elementValueTime;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  int valueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for valueUnsignedInt
  Element elementValueUnsignedInt;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  String valueUri; //  pattern: ^\S*$

  //  Extensions for valueUri
  Element elementValueUri;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  String valueUrl; //  pattern: ^\S*$

  //  Extensions for valueUrl
  Element elementValueUrl;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  String valueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

  //  Extensions for valueUuid
  Element elementValueUuid;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Address valueAddress;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Age valueAge;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Annotation valueAnnotation;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Attachment valueAttachment;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  CodeableConcept valueCodeableConcept;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Coding valueCoding;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  ContactPoint valueContactPoint;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Count valueCount;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Distance valueDistance;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Duration valueDuration;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  HumanName valueHumanName;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Identifier valueIdentifier;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Money valueMoney;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Period valuePeriod;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Quantity valueQuantity;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Range valueRange;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Ratio valueRatio;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Reference valueReference;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  SampledData valueSampledData;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Signature valueSignature;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Timing valueTiming;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  ContactDetail valueContactDetail;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Contributor valueContributor;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  DataRequirement valueDataRequirement;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Expression valueExpression;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  ParameterDefinition valueParameterDefinition;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  RelatedArtifact valueRelatedArtifact;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  TriggerDefinition valueTriggerDefinition;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  UsageContext valueUsageContext;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
  Dosage valueDosage;

  //  Value of extension - must be one of a constrained set of the data
  // types (see [Extensibility](extensibility.html) for a list).
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

