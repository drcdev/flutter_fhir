

part 'observationDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ObservationDefinition {

  This is a ObservationDefinition resource resourceType;
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
  array permittedDataType;
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
this.criticalCodedValueSet});

  factory ObservationDefinition.fromJson(Map<String, dynamic> json) => _$ObservationDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationDefinitionToJson(this);
}