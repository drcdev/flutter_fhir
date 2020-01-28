import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/dosage.dart';
import 'package:flutter_fhir/class/usageContext.dart';
import 'package:flutter_fhir/class/triggerDefinition.dart';
import 'package:flutter_fhir/class/relatedArtifact.dart';
import 'package:flutter_fhir/class/parameterDefinition.dart';
import 'package:flutter_fhir/class/expression.dart';
import 'package:flutter_fhir/class/dataRequirement.dart';
import 'package:flutter_fhir/class/contributor.dart';
import 'package:flutter_fhir/class/contactDetail.dart';
import 'package:flutter_fhir/class/timing.dart';
import 'package:flutter_fhir/class/signature.dart';
import 'package:flutter_fhir/class/sampledData.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/money.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/humanName.dart';
import 'package:flutter_fhir/class/duration.dart';
import 'package:flutter_fhir/class/distance.dart';
import 'package:flutter_fhir/class/count.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/age.dart';
import 'package:flutter_fhir/class/address.dart';

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

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
bool valueBoolean; //  pattern: ^true|false$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
String valueCanonical; //  pattern: ^\S*$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
String valueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
String valueMarkdown; //  pattern: ^[ \r\n\t\S]+$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
String valueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
int valuePositiveInt; //  pattern: ^[1-9][0-9]*$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
String valueString; //  pattern: ^[ \r\n\t\S]+$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
int valueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
String valueUri; //  pattern: ^\S*$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
String valueUrl; //  pattern: ^\S*$

//  Value of extension - must be one of a constrained set of the data
// types (see [Extensibility](extensibility.html) for a list).
String valueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

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
    this.valueBase64Binary,
    this.valueBoolean,
    this.valueCanonical,
    this.valueCode,
    this.valueDate,
    this.valueDateTime,
    this.valueDecimal,
    this.valueId,
    this.valueInstant,
    this.valueInteger,
    this.valueMarkdown,
    this.valueOid,
    this.valuePositiveInt,
    this.valueString,
    this.valueTime,
    this.valueUnsignedInt,
    this.valueUri,
    this.valueUrl,
    this.valueUuid,
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

