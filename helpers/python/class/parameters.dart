
part 'parameters.g.dart';

@JsonSerializable(explicitToJson: true)
class Parameters {
  
  // This is a Parameters 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A parameter passed to or received from the operation.
  List<Parameters_Parameter parameter
Parameters(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.parameter});

  factory Parameters.fromJson(Map<String, dynamic> json) => _$ParametersFromJson(json);
  Map<String, dynamic> toJson() => _$ParametersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Parameters_Parameter {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The name of the parameter (reference to the operation definition).
  String name;

  // Extensions for name
  Element _name;

  // If the parameter is a data type. string valueBase64Binary;

  // Extensions for valueBase64Binary
  Element _valueBase64Binary;

  // If the parameter is a data type. boolean valueBoolean;

  // Extensions for valueBoolean
  Element _valueBoolean;

  // If the parameter is a data type. string valueCanonical;

  // Extensions for valueCanonical
  Element _valueCanonical;

  // If the parameter is a data type. string valueCode;

  // Extensions for valueCode
  Element _valueCode;

  // If the parameter is a data type. string valueDate;

  // Extensions for valueDate
  Element _valueDate;

  // If the parameter is a data type. string valueDateTime;

  // Extensions for valueDateTime
  Element _valueDateTime;

  // If the parameter is a data type. number valueDecimal;

  // Extensions for valueDecimal
  Element _valueDecimal;

  // If the parameter is a data type. string valueId;

  // Extensions for valueId
  Element _valueId;

  // If the parameter is a data type. string valueInstant;

  // Extensions for valueInstant
  Element _valueInstant;

  // If the parameter is a data type. number valueInteger;

  // Extensions for valueInteger
  Element _valueInteger;

  // If the parameter is a data type. string valueMarkdown;

  // Extensions for valueMarkdown
  Element _valueMarkdown;

  // If the parameter is a data type. string valueOid;

  // Extensions for valueOid
  Element _valueOid;

  // If the parameter is a data type. number valuePositiveInt;

  // Extensions for valuePositiveInt
  Element _valuePositiveInt;

  // If the parameter is a data type. string valueString;

  // Extensions for valueString
  Element _valueString;

  // If the parameter is a data type. string valueTime;

  // Extensions for valueTime
  Element _valueTime;

  // If the parameter is a data type. number valueUnsignedInt;

  // Extensions for valueUnsignedInt
  Element _valueUnsignedInt;

  // If the parameter is a data type. string valueUri;

  // Extensions for valueUri
  Element _valueUri;

  // If the parameter is a data type. string valueUrl;

  // Extensions for valueUrl
  Element _valueUrl;

  // If the parameter is a data type. string valueUuid;

  // Extensions for valueUuid
  Element _valueUuid;

  // If the parameter is a data type.
  Address valueAddress;

  // If the parameter is a data type.
  Age valueAge;

  // If the parameter is a data type.
  Annotation valueAnnotation;

  // If the parameter is a data type.
  Attachment valueAttachment;

  // If the parameter is a data type.
  CodeableConcept valueCodeableConcept;

  // If the parameter is a data type.
  Coding valueCoding;

  // If the parameter is a data type.
  ContactPoint valueContactPoint;

  // If the parameter is a data type.
  Count valueCount;

  // If the parameter is a data type.
  Distance valueDistance;

  // If the parameter is a data type.
  Duration valueDuration;

  // If the parameter is a data type.
  HumanName valueHumanName;

  // If the parameter is a data type.
  Identifier valueIdentifier;

  // If the parameter is a data type.
  Money valueMoney;

  // If the parameter is a data type.
  Period valuePeriod;

  // If the parameter is a data type.
  Quantity valueQuantity;

  // If the parameter is a data type.
  Range valueRange;

  // If the parameter is a data type.
  Ratio valueRatio;

  // If the parameter is a data type.
  Reference valueReference;

  // If the parameter is a data type.
  SampledData valueSampledData;

  // If the parameter is a data type.
  Signature valueSignature;

  // If the parameter is a data type.
  Timing valueTiming;

  // If the parameter is a data type.
  ContactDetail valueContactDetail;

  // If the parameter is a data type.
  Contributor valueContributor;

  // If the parameter is a data type.
  DataRequirement valueDataRequirement;

  // If the parameter is a data type.
  Expression valueExpression;

  // If the parameter is a data type.
  ParameterDefinition valueParameterDefinition;

  // If the parameter is a data type.
  RelatedArtifact valueRelatedArtifact;

  // If the parameter is a data type.
  TriggerDefinition valueTriggerDefinition;

  // If the parameter is a data type.
  UsageContext valueUsageContext;

  // If the parameter is a data type.
  Dosage valueDosage;

  // If the parameter is a data type.
  Meta valueMeta;

  // If the parameter is a whole resource.
  ResourceList resource;

  // A named part of a multi-part parameter.
  List<Parameters_Parameter part
Parameters_Parameter(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.valueBase64Binary,
this._valueBase64Binary,
this.valueBoolean,
this._valueBoolean,
this.valueCanonical,
this._valueCanonical,
this.valueCode,
this._valueCode,
this.valueDate,
this._valueDate,
this.valueDateTime,
this._valueDateTime,
this.valueDecimal,
this._valueDecimal,
this.valueId,
this._valueId,
this.valueInstant,
this._valueInstant,
this.valueInteger,
this._valueInteger,
this.valueMarkdown,
this._valueMarkdown,
this.valueOid,
this._valueOid,
this.valuePositiveInt,
this._valuePositiveInt,
this.valueString,
this._valueString,
this.valueTime,
this._valueTime,
this.valueUnsignedInt,
this._valueUnsignedInt,
this.valueUri,
this._valueUri,
this.valueUrl,
this._valueUrl,
this.valueUuid,
this._valueUuid,
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
this.part});

  factory Parameters_Parameter.fromJson(Map<String, dynamic> json) => _$Parameters_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$Parameters_ParameterToJson(this);
}
