part 'measure.g.dart';

@JsonSerializable(explicitToJson: true)
class Measure {

Measure resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String subtitle;
Element _subtitle;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
CodeableConcept subjectCodeableConcept;
Reference subjectReference;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String usage;
Element _usage;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
List<CodeableConcept> topic;
List<ContactDetail> author;
List<ContactDetail> editor;
List<ContactDetail> reviewer;
List<ContactDetail> endorser;
List<RelatedArtifact> relatedArtifact;
List<String> library;
String disclaimer;
Element _disclaimer;
CodeableConcept scoring;
CodeableConcept compositeScoring;
List<CodeableConcept> type;
String riskAdjustment;
Element _riskAdjustment;
String rateAggregation;
Element _rateAggregation;
String rationale;
Element _rationale;
String clinicalRecommendationStatement;
Element _clinicalRecommendationStatement;
CodeableConcept improvementNotation;
List<String> definition;
List<Element> _definition;
String guidance;
Element _guidance;
List<Measure_Group> group;
List<Measure_SupplementalData> supplementalData;

Measure(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.subtitle,
      this._subtitle,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.subjectCodeableConcept,
      this.subjectReference,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.usage,
      this._usage,
      this.copyright,
      this._copyright,
      this.approvalDate,
      this._approvalDate,
      this.lastReviewDate,
      this._lastReviewDate,
      this.effectivePeriod,
      this.topic,
      this.author,
      this.editor,
      this.reviewer,
      this.endorser,
      this.relatedArtifact,
      this.library,
      this.disclaimer,
      this._disclaimer,
      this.scoring,
      this.compositeScoring,
      this.type,
      this.riskAdjustment,
      this._riskAdjustment,
      this.rateAggregation,
      this._rateAggregation,
      this.rationale,
      this._rationale,
      this.clinicalRecommendationStatement,
      this._clinicalRecommendationStatement,
      this.improvementNotation,
      this.definition,
      this._definition,
      this.guidance,
      this._guidance,
      this.group,
      this.supplementalData,
      });

  factory Measure.fromJson(Map<String, dynamic> json) => _$MeasureFromJson(json);
  Map<String, dynamic> toJson() _$MeasureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Measure_Group {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
String description;
Element _description;
List<Measure_Population> population;
List<Measure_Stratifier> stratifier;

Measure_Group(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.description,
      this._description,
      this.population,
      this.stratifier,
      });

  factory Measure_Group.fromJson(Map<String, dynamic> json) => _$Measure_GroupFromJson(json);
  Map<String, dynamic> toJson() _$Measure_GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Measure_Population {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
String description;
Element _description;
Expression criteria;

Measure_Population(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.description,
      this._description,
      this.criteria,
      });

  factory Measure_Population.fromJson(Map<String, dynamic> json) => _$Measure_PopulationFromJson(json);
  Map<String, dynamic> toJson() _$Measure_PopulationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Measure_Stratifier {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
String description;
Element _description;
Expression criteria;
List<Measure_Component> component;

Measure_Stratifier(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.description,
      this._description,
      this.criteria,
      this.component,
      });

  factory Measure_Stratifier.fromJson(Map<String, dynamic> json) => _$Measure_StratifierFromJson(json);
  Map<String, dynamic> toJson() _$Measure_StratifierToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Measure_Component {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
String description;
Element _description;
Expression criteria;

Measure_Component(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.description,
      this._description,
      this.criteria,
      });

  factory Measure_Component.fromJson(Map<String, dynamic> json) => _$Measure_ComponentFromJson(json);
  Map<String, dynamic> toJson() _$Measure_ComponentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Measure_SupplementalData {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
List<CodeableConcept> usage;
String description;
Element _description;
Expression criteria;

Measure_SupplementalData(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.usage,
      this.description,
      this._description,
      this.criteria,
      });

  factory Measure_SupplementalData.fromJson(Map<String, dynamic> json) => _$Measure_SupplementalDataFromJson(json);
  Map<String, dynamic> toJson() _$Measure_SupplementalDataToJson(this);
}

