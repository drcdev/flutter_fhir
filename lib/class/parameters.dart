import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/resourceList.dart';
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
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'parameters.g.dart';

@JsonSerializable(explicitToJson: true)
class Parameters {

  //  This is a Parameters resource
  final String resourceType= 'Parameters';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element element_implicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element element_language;

  //  A parameter passed to or received from the operation.
  List<Parameters_Parameter> parameter;

Parameters(
  {this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.parameter
    });

  factory Parameters.fromJson(Map<String, dynamic> json) => _$ParametersFromJson(json);
  Map<String, dynamic> toJson() => _$ParametersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Parameters_Parameter {

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

  //  The name of the parameter (reference to the operation definition).
  String name;

  //  Extensions for name
  Element element_name;

  //  If the parameter is a data type.
  String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for valueBase64Binary
  Element element_valueBase64Binary;

  //  If the parameter is a data type.
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  Element element_valueBoolean;

  //  If the parameter is a data type.
  String valueCanonical; //  pattern: ^\S*$

  //  Extensions for valueCanonical
  Element element_valueCanonical;

  //  If the parameter is a data type.
  String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for valueCode
  Element element_valueCode;

  //  If the parameter is a data type.
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for valueDate
  Element element_valueDate;

  //  If the parameter is a data type.
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for valueDateTime
  Element element_valueDateTime;

  //  If the parameter is a data type.
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for valueDecimal
  Element element_valueDecimal;

  //  If the parameter is a data type.
  String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for valueId
  Element element_valueId;

  //  If the parameter is a data type.
  String valueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for valueInstant
  Element element_valueInstant;

  //  If the parameter is a data type.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  Element element_valueInteger;

  //  If the parameter is a data type.
  String valueMarkdown; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueMarkdown
  Element element_valueMarkdown;

  //  If the parameter is a data type.
  String valueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

  //  Extensions for valueOid
  Element element_valueOid;

  //  If the parameter is a data type.
  int valuePositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for valuePositiveInt
  Element element_valuePositiveInt;

  //  If the parameter is a data type.
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  Element element_valueString;

  //  If the parameter is a data type.
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for valueTime
  Element element_valueTime;

  //  If the parameter is a data type.
  int valueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for valueUnsignedInt
  Element element_valueUnsignedInt;

  //  If the parameter is a data type.
  String valueUri; //  pattern: ^\S*$

  //  Extensions for valueUri
  Element element_valueUri;

  //  If the parameter is a data type.
  String valueUrl; //  pattern: ^\S*$

  //  Extensions for valueUrl
  Element element_valueUrl;

  //  If the parameter is a data type.
  String valueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

  //  Extensions for valueUuid
  Element element_valueUuid;

  //  If the parameter is a data type.
  Address valueAddress;

  //  If the parameter is a data type.
  Age valueAge;

  //  If the parameter is a data type.
  Annotation valueAnnotation;

  //  If the parameter is a data type.
  Attachment valueAttachment;

  //  If the parameter is a data type.
  CodeableConcept valueCodeableConcept;

  //  If the parameter is a data type.
  Coding valueCoding;

  //  If the parameter is a data type.
  ContactPoint valueContactPoint;

  //  If the parameter is a data type.
  Count valueCount;

  //  If the parameter is a data type.
  Distance valueDistance;

  //  If the parameter is a data type.
  Duration valueDuration;

  //  If the parameter is a data type.
  HumanName valueHumanName;

  //  If the parameter is a data type.
  Identifier valueIdentifier;

  //  If the parameter is a data type.
  Money valueMoney;

  //  If the parameter is a data type.
  Period valuePeriod;

  //  If the parameter is a data type.
  Quantity valueQuantity;

  //  If the parameter is a data type.
  Range valueRange;

  //  If the parameter is a data type.
  Ratio valueRatio;

  //  If the parameter is a data type.
  Reference valueReference;

  //  If the parameter is a data type.
  SampledData valueSampledData;

  //  If the parameter is a data type.
  Signature valueSignature;

  //  If the parameter is a data type.
  Timing valueTiming;

  //  If the parameter is a data type.
  ContactDetail valueContactDetail;

  //  If the parameter is a data type.
  Contributor valueContributor;

  //  If the parameter is a data type.
  DataRequirement valueDataRequirement;

  //  If the parameter is a data type.
  Expression valueExpression;

  //  If the parameter is a data type.
  ParameterDefinition valueParameterDefinition;

  //  If the parameter is a data type.
  RelatedArtifact valueRelatedArtifact;

  //  If the parameter is a data type.
  TriggerDefinition valueTriggerDefinition;

  //  If the parameter is a data type.
  UsageContext valueUsageContext;

  //  If the parameter is a data type.
  Dosage valueDosage;

  //  If the parameter is a data type.
  Meta valueMeta;

  //  If the parameter is a whole resource.
  ResourceList resource;

  //  A named part of a multi-part parameter.
  List<Parameters_Parameter> part;

Parameters_Parameter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.element_name,
    this.valueBase64Binary,
    this.element_valueBase64Binary,
    this.valueBoolean,
    this.element_valueBoolean,
    this.valueCanonical,
    this.element_valueCanonical,
    this.valueCode,
    this.element_valueCode,
    this.valueDate,
    this.element_valueDate,
    this.valueDateTime,
    this.element_valueDateTime,
    this.valueDecimal,
    this.element_valueDecimal,
    this.valueId,
    this.element_valueId,
    this.valueInstant,
    this.element_valueInstant,
    this.valueInteger,
    this.element_valueInteger,
    this.valueMarkdown,
    this.element_valueMarkdown,
    this.valueOid,
    this.element_valueOid,
    this.valuePositiveInt,
    this.element_valuePositiveInt,
    this.valueString,
    this.element_valueString,
    this.valueTime,
    this.element_valueTime,
    this.valueUnsignedInt,
    this.element_valueUnsignedInt,
    this.valueUri,
    this.element_valueUri,
    this.valueUrl,
    this.element_valueUrl,
    this.valueUuid,
    this.element_valueUuid,
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

