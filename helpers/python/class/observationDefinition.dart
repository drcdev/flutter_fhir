part 'observationDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ObservationDefinition {

ObservationDefinition resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> category;
CodeableConcept code;
List<Identifier> identifier;
List<Element> _permittedDataType;
bool multipleResultsAllowed;
Element _multipleResultsAllowed;
CodeableConcept method;
String preferredReportName;
Element _preferredReportName;
ObservationDefinition_QuantitativeDetails quantitativeDetails;
List<ObservationDefinition_QualifiedInterval> qualifiedInterval;
Reference validCodedValueSet;
Reference normalCodedValueSet;
Reference abnormalCodedValueSet;
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
      this.criticalCodedValueSet,
      });

  factory ObservationDefinition.fromJson(Map<String, dynamic> json) => _$ObservationDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$ObservationDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ObservationDefinition_QuantitativeDetails {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept customaryUnit;
CodeableConcept unit;
double conversionFactor;
Element _conversionFactor;
int decimalPrecision;
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
      this._decimalPrecision,
      });

  factory ObservationDefinition_QuantitativeDetails.fromJson(Map<String, dynamic> json) => _$ObservationDefinition_QuantitativeDetailsFromJson(json);
  Map<String, dynamic> toJson() _$ObservationDefinition_QuantitativeDetailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ObservationDefinition_QualifiedInterval {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String category; // <code> enum: reference/critical/absolute;
Element _category;
Range range;
CodeableConcept context;
List<CodeableConcept> appliesTo;
String gender; // <code> enum: male/female/other/unknown;
Element _gender;
Range age;
Range gestationalAge;
String condition;
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
      this._condition,
      });

  factory ObservationDefinition_QualifiedInterval.fromJson(Map<String, dynamic> json) => _$ObservationDefinition_QualifiedIntervalFromJson(json);
  Map<String, dynamic> toJson() _$ObservationDefinition_QualifiedIntervalToJson(this);
}

