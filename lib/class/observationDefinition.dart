import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'observationDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ObservationDefinition {


// This is a ObservationDefinition resource
String resourceType;

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

// A human-readable narrative that contains a summary of the resource and can be
//  used to represent the content of the resource to a human. The narrative need
//  not encode all the structured data, but is required to contain sufficient
//  detail to make it "clinically safe" for a human to just read the narrative.
//  Resource definitions may define what content should be represented in the
//  narrative to ensure clinical safety.
Narrative text;

// These resources do not have an independent existence apart from the resource
//  that contains them - they cannot be identified independently, and nor can they
//  have their own independent transaction scope.
List<ResourceList> contained;

// May be used to represent additional information that is not part of the basic
//  definition of the resource. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the resource and that modifies the understanding of the element
//  that contains it and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer is allowed to define an extension, there is a set of requirements
//  that SHALL be met as part of the definition of the extension. Applications
//  processing a resource are required to check for modifier extensions.
// Modifier
//  extensions SHALL NOT change the meaning of any elements on Resource or
//  DomainResource (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// A code that classifies the general type of observation.
List<CodeableConcept> category;

// Describes what will be observed. Sometimes this is called the observation
//  "name".
CodeableConcept code;

// A unique identifier assigned to this ObservationDefinition artifact.
List<Identifier> identifier;

// The data types allowed for the value element of the instance observations
//  conforming to this ObservationDefinition.

// Extensions for permittedDataType
List<Element> _permittedDataType;

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
List<ObservationDefinition_QualifiedInterval> qualifiedInterval;

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
Reference criticalCodedValueSet;

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
    this.criticalCodedValueSet
    });

  factory ObservationDefinition.fromJson(Map<String, dynamic> json) => _$ObservationDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ObservationDefinition_QuantitativeDetails {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Customary unit used to report quantitative results of observations conforming to
//  this ObservationDefinition.
CodeableConcept customaryUnit;

// SI unit used to report quantitative results of observations conforming to this
//  ObservationDefinition.
CodeableConcept unit;

// Factor for converting value expressed with SI unit to value expressed with
//  customary unit.
double conversionFactor;

// Extensions for conversionFactor
Element _conversionFactor;

// Number of digits after decimal separator when the results of such observations
//  are of type Quantity.
int decimalPrecision;

// Extensions for decimalPrecision
Element _decimalPrecision;

ObservationDefinition_QuantitativeDetails(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.customaryUnit,
    this.unit,
    this.conversionFactor,
    this._conversionFactor,
    this.decimalPrecision,
    this._decimalPrecision
    });

  factory ObservationDefinition_QuantitativeDetails.fromJson(Map<String, dynamic> json) => _$ObservationDefinition_QuantitativeDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationDefinition_QuantitativeDetailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ObservationDefinition_QualifiedInterval {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// The category of interval of values for continuous or ordinal observations
//  conforming to this ObservationDefinition.
String category; // <code> enum: reference/critical/absolute;

// Extensions for category
Element _category;

// The low and high values determining the interval. There may be only one of the
//  two.
Range range;

// Codes to indicate the health context the range applies to. For example, the
//  normal or therapeutic range.
CodeableConcept context;

// Codes to indicate the target population this reference range applies to.
List<CodeableConcept> appliesTo;

// Sex of the population the range applies to.
String gender; // <code> enum: male/female/other/unknown;

// Extensions for gender
Element _gender;

// The age at which this reference range is applicable. This is a neonatal age
//  (e.g. number of weeks at term) if the meaning says so.
Range age;

// The gestational age to which this reference range is applicable, in the context
//  of pregnancy.
Range gestationalAge;

// Text based condition for which the reference range is valid.
String condition;

// Extensions for condition
Element _condition;

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
    this._condition
    });

  factory ObservationDefinition_QualifiedInterval.fromJson(Map<String, dynamic> json) => _$ObservationDefinition_QualifiedIntervalFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationDefinition_QualifiedIntervalToJson(this);
}

