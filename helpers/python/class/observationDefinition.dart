
part 'observationDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ObservationDefinition {
  
  // This is a ObservationDefinition 
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

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A code that classifies the general type of observation.
  List<CodeableConcept category;

  // Describes what will be observed. Sometimes this is called the observation
  //  "name".
  CodeableConcept code;

  // A unique identifier assigned to this ObservationDefinition artifact.
  List<Identifier identifier
  
  List< permittedDataType;

  // Extensions for permittedDataType
  List<Element _permittedDataType;

  // Multiple results allowed for observations conforming to this
  //  ObservationDefinition.
  bool multipleResultsAllowed;

  // Extensions for multipleResultsAllowed
  Element _multipleResultsAllowed;

  // The method or technique used to perform the observation.
  CodeableConcept method;

  // The preferred name to be used when reporting the results of observations
  //  conforming to this ObservationDefinition.
  String preferredReportName;

  // Extensions for preferredReportName
  Element _preferredReportName;

  // Characteristics for quantitative results of this observation.
  ObservationDefinition_QuantitativeDetails quantitativeDetails;

  // Multiple  ranges of results qualified by different contexts for ordinal or
  //  continuous observations conforming to this ObservationDefinition.
  List<ObservationDefinition_QualifiedInterval qualifiedInterval;

  // The set of valid coded results for the observations  conforming to this
  //  ObservationDefinition.
  Reference validCodedValueSet;

  // The set of normal coded results for the observations conforming to this
  //  ObservationDefinition.
  Reference normalCodedValueSet;

  // The set of abnormal coded results for the observation conforming to this
  //  ObservationDefinition.
  Reference abnormalCodedValueSet;

  // The set of critical coded results for the observation conforming to this
  //  ObservationDefinition.
  Reference criticalCodedValueSet
ObservationDefinition(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.text,
this.contained,
this.extension,
this.modifierExtension,
this.category,
this.code,
this.identifier,
this.permittedDataType,
this._permittedDataType,
this.multipleResultsAllowed,
this._multipleResultsAllowed,
this.method,
this.preferredReportName,
this._preferredReportName,
this.quantitativeDetails,
this.qualifiedInterval,
this.validCodedValueSet,
this.normalCodedValueSet,
this.abnormalCodedValueSet,
this.criticalCodedValueSet});

  factory ObservationDefinition.fromJson(Map<String, dynamic> json) => _$ObservationDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ObservationDefinition_QualifiedInterval {

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

  // The category of interval of values for continuous or ordinal observations
  //  conforming to this ObservationDefinition.Enum enum; //
  //  referencecriticalabsolute category;

  // Extensions for category
  Element _category;

  // The low and high values determining the interval. There may be only one of
  //  the two.
  Range range;

  // Codes to indicate the health context the range applies to. For example, the
  //  normal or therapeutic range.
  CodeableConcept context;

  // Codes to indicate the target population this reference range applies to.
  List<CodeableConcept appliesTo;

  // Sex of the population the range applies to.Enum enum; //
  //  malefemaleotherunknown gender;

  // Extensions for gender
  Element _gender;

  // The age at which this reference range is applicable.   // This is a
  //  neonatal age (e.g. number of weeks at term) if the meaning says so.
  Range age;

  // The gestational age to which this reference range is applicable, in the
  //  context of pregnancy.
  Range gestationalAge;

  // Text based condition for which the reference range is valid.
  String condition;

  // Extensions for condition
  Element _condition
ObservationDefinition_QualifiedInterval(
      {this.id,
this.extension,
this.modifierExtension,
this.category,
this._category,
this.range,
this.context,
this.appliesTo,
this.gender,
this._gender,
this.age,
this.gestationalAge,
this.condition,
this._condition});

  factory ObservationDefinition_QualifiedInterval.fromJson(Map<String, dynamic> json) => _$ObservationDefinition_QualifiedIntervalFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationDefinition_QualifiedIntervalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ObservationDefinition_QuantitativeDetails {

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

  // Customary unit used to report quantitative results of observations
  //  conforming to this ObservationDefinition.
  CodeableConcept customaryUnit;

  // SI unit used to report quantitative results of observations conforming to
  //  this ObservationDefinition.
  CodeableConcept unit;

  // Factor for converting value expressed with SI unit to value expressed with
  //  customary unit.
  double conversionFactor;

  // Extensions for conversionFactor
  Element _conversionFactor;

  // Number of digits after decimal separator when the results of such
  //  observations are of type Quantity.
  int decimalPrecision;

  // Extensions for decimalPrecision
  Element _decimalPrecision
ObservationDefinition_QuantitativeDetails(
      {this.id,
this.extension,
this.modifierExtension,
this.customaryUnit,
this.unit,
this.conversionFactor,
this._conversionFactor,
this.decimalPrecision,
this._decimalPrecision});

  factory ObservationDefinition_QuantitativeDetails.fromJson(Map<String, dynamic> json) => _$ObservationDefinition_QuantitativeDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationDefinition_QuantitativeDetailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Observation_Component {

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

  // Describes what was observed. Sometimes this is called the observation
  //  "code".
  CodeableConcept code;

  // The information determined as a result of making the observation, if the
  //  information has a simple value.
  Quantity valueQuantity;

  // The information determined as a result of making the observation, if the
  //  information has a simple value.
  CodeableConcept valueCodeableConcept;

  // The information determined as a result of making the observation, if the
  //  information has a simple value. string valueString;

  // Extensions for valueString
  Element _valueString;

  // The information determined as a result of making the observation, if the
  //  information has a simple value. boolean valueBoolean;

  // Extensions for valueBoolean
  Element _valueBoolean;

  // The information determined as a result of making the observation, if the
  //  information has a simple value. number valueInteger;

  // Extensions for valueInteger
  Element _valueInteger;

  // The information determined as a result of making the observation, if the
  //  information has a simple value.
  Range valueRange;

  // The information determined as a result of making the observation, if the
  //  information has a simple value.
  Ratio valueRatio;

  // The information determined as a result of making the observation, if the
  //  information has a simple value.
  SampledData valueSampledData;

  // The information determined as a result of making the observation, if the
  //  information has a simple value. string valueTime;

  // Extensions for valueTime
  Element _valueTime;

  // The information determined as a result of making the observation, if the
  //  information has a simple value. string valueDateTime;

  // Extensions for valueDateTime
  Element _valueDateTime;

  // The information determined as a result of making the observation, if the
  //  information has a simple value.
  Period valuePeriod;

  // Provides a reason why the expected value in the element
  //  Observation.component.value[x] is missing.
  CodeableConcept dataAbsentReason;

  // A categorical assessment of an observation value.  For example, high, low,
  //  normal.
  List<CodeableConcept interpretation;

  // Guidance on how to interpret the value by comparison to a normal or
  //  recommended range.
  List<Observation_ReferenceRange referenceRange
Observation_Component(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.valueQuantity,
this.valueCodeableConcept,
this.valueString,
this._valueString,
this.valueBoolean,
this._valueBoolean,
this.valueInteger,
this._valueInteger,
this.valueRange,
this.valueRatio,
this.valueSampledData,
this.valueTime,
this._valueTime,
this.valueDateTime,
this._valueDateTime,
this.valuePeriod,
this.dataAbsentReason,
this.interpretation,
this.referenceRange});

  factory Observation_Component.fromJson(Map<String, dynamic> json) => _$Observation_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$Observation_ComponentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Observation_ReferenceRange {

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

  // The value of the low bound of the reference range.  The low bound of the
  //  reference range endpoint is inclusive of the value (e.g.  reference range is
  //  >=5 - <=9). If the low bound is omitted,  it is assumed to be meaningless (e.g.
  //  reference range is <=2.3).
  Quantity low;

  // The value of the high bound of the reference range.  The high bound of the
  //  reference range endpoint is inclusive of the value (e.g.  reference range is
  //  >=5 - <=9). If the high bound is omitted,  it is assumed to be meaningless
  //  (e.g. reference range is >= 2.3).
  Quantity high;

  // Codes to indicate the what part of the targeted reference population it
  //  applies to. For example, the normal or therapeutic range.
  CodeableConcept type;

  // Codes to indicate the target population this reference range applies to. 
  //  For example, a reference range may be based on the normal population or a
  //  particular sex or race.  Multiple `appliesTo`  are interpreted as an "AND" of
  //  the target populations.  For example, to represent a target population of
  //  African American females, both a code of female and a code for African American would be used.
  List<CodeableConcept appliesTo;

  // The age at which this reference range is applicable.   // This is a
  //  neonatal age (e.g. number of weeks at term) if the meaning says so.
  Range age;

  // Text based reference range in an observation which may be used when a
  //  quantitative range is not appropriate for an observation.  An example would be
  //  a reference value of "Negative" or a list or table of "normals".
  String text;

  // Extensions for text
  Element _text
Observation_ReferenceRange(
      {this.id,
this.extension,
this.modifierExtension,
this.low,
this.high,
this.type,
this.appliesTo,
this.age,
this.text,
this._text});

  factory Observation_ReferenceRange.fromJson(Map<String, dynamic> json) => _$Observation_ReferenceRangeFromJson(json);
  Map<String, dynamic> toJson() => _$Observation_ReferenceRangeToJson(this);
}
