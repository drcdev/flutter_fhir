
part 'extension.g.dart';

@JsonSerializable(explicitToJson: true)
class Extension {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // Source of the definition for the extension code - a logical name or a URL.
  String url;

  // Extensions for url
  Element _url;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  string valueBase64Binary;

  // Extensions for valueBase64Binary
  Element _valueBase64Binary;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  boolean valueBoolean;

  // Extensions for valueBoolean
  Element _valueBoolean;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  string valueCanonical;

  // Extensions for valueCanonical
  Element _valueCanonical;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  string valueCode;

  // Extensions for valueCode
  Element _valueCode;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  string valueDate;

  // Extensions for valueDate
  Element _valueDate;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  string valueDateTime;

  // Extensions for valueDateTime
  Element _valueDateTime;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  number valueDecimal;

  // Extensions for valueDecimal
  Element _valueDecimal;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  string valueId;

  // Extensions for valueId
  Element _valueId;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  string valueInstant;

  // Extensions for valueInstant
  Element _valueInstant;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  number valueInteger;

  // Extensions for valueInteger
  Element _valueInteger;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  string valueMarkdown;

  // Extensions for valueMarkdown
  Element _valueMarkdown;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  string valueOid;

  // Extensions for valueOid
  Element _valueOid;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  number valuePositiveInt;

  // Extensions for valuePositiveInt
  Element _valuePositiveInt;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  string valueString;

  // Extensions for valueString
  Element _valueString;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  string valueTime;

  // Extensions for valueTime
  Element _valueTime;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  number valueUnsignedInt;

  // Extensions for valueUnsignedInt
  Element _valueUnsignedInt;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  string valueUri;

  // Extensions for valueUri
  Element _valueUri;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  string valueUrl;

  // Extensions for valueUrl
  Element _valueUrl;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).  
  string valueUuid;

  // Extensions for valueUuid
  Element _valueUuid;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Address valueAddress;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Age valueAge;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Annotation valueAnnotation;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Attachment valueAttachment;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  CodeableConcept valueCodeableConcept;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Coding valueCoding;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  ContactPoint valueContactPoint;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Count valueCount;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Distance valueDistance;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Duration valueDuration;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  HumanName valueHumanName;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Identifier valueIdentifier;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Money valueMoney;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Period valuePeriod;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Quantity valueQuantity;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Range valueRange;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Ratio valueRatio;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Reference valueReference;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  SampledData valueSampledData;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Signature valueSignature;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Timing valueTiming;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  ContactDetail valueContactDetail;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Contributor valueContributor;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  DataRequirement valueDataRequirement;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Expression valueExpression;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  ParameterDefinition valueParameterDefinition;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  RelatedArtifact valueRelatedArtifact;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  TriggerDefinition valueTriggerDefinition;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  UsageContext valueUsageContext;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Dosage valueDosage;

  // Value of extension - must be one of a constrained set of the data types
  //  (see [Extensibility](extensibility.html) for a list).
  Meta valueMeta
Extension(
      {this.id,
this.extension,
this.url,
this._url,
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
this.valueMeta});

  factory Extension.fromJson(Map<String, dynamic> json) => _$ExtensionFromJson(json);
  Map<String, dynamic> toJson() => _$ExtensionToJson(this);
}
