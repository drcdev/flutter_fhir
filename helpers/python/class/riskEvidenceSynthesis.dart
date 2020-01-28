part 'riskEvidenceSynthesis.g.dart';

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis {

RiskEvidenceSynthesis resourceType;
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
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<Annotation> note;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
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
CodeableConcept synthesisType;
CodeableConcept studyType;
Reference population;
Reference exposure;
Reference outcome;
RiskEvidenceSynthesis_SampleSize sampleSize;
RiskEvidenceSynthesis_RiskEstimate riskEstimate;
List<RiskEvidenceSynthesis_Certainty> certainty;

RiskEvidenceSynthesis(
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
      this.status,
      this._status,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.note,
      this.useContext,
      this.jurisdiction,
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
      this.synthesisType,
      this.studyType,
      this.population,
      this.exposure,
      this.outcome,
      this.sampleSize,
      this.riskEstimate,
      this.certainty,
      });

  factory RiskEvidenceSynthesis.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesisFromJson(json);
  Map<String, dynamic> toJson() _$RiskEvidenceSynthesisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_SampleSize {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
int numberOfStudies;
Element _numberOfStudies;
int numberOfParticipants;
Element _numberOfParticipants;

RiskEvidenceSynthesis_SampleSize(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.numberOfStudies,
      this._numberOfStudies,
      this.numberOfParticipants,
      this._numberOfParticipants,
      });

  factory RiskEvidenceSynthesis_SampleSize.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_SampleSizeFromJson(json);
  Map<String, dynamic> toJson() _$RiskEvidenceSynthesis_SampleSizeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_RiskEstimate {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
CodeableConcept type;
double value;
Element _value;
CodeableConcept unitOfMeasure;
int denominatorCount;
Element _denominatorCount;
int numeratorCount;
Element _numeratorCount;
List<RiskEvidenceSynthesis_PrecisionEstimate> precisionEstimate;

RiskEvidenceSynthesis_RiskEstimate(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.type,
      this.value,
      this._value,
      this.unitOfMeasure,
      this.denominatorCount,
      this._denominatorCount,
      this.numeratorCount,
      this._numeratorCount,
      this.precisionEstimate,
      });

  factory RiskEvidenceSynthesis_RiskEstimate.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_RiskEstimateFromJson(json);
  Map<String, dynamic> toJson() _$RiskEvidenceSynthesis_RiskEstimateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_PrecisionEstimate {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
double level;
Element _level;
double from;
Element _from;
double to;
Element _to;

RiskEvidenceSynthesis_PrecisionEstimate(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.level,
      this._level,
      this.from,
      this._from,
      this.to,
      this._to,
      });

  factory RiskEvidenceSynthesis_PrecisionEstimate.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_PrecisionEstimateFromJson(json);
  Map<String, dynamic> toJson() _$RiskEvidenceSynthesis_PrecisionEstimateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_Certainty {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> rating;
List<Annotation> note;
List<RiskEvidenceSynthesis_CertaintySubcomponent> certaintySubcomponent;

RiskEvidenceSynthesis_Certainty(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.rating,
      this.note,
      this.certaintySubcomponent,
      });

  factory RiskEvidenceSynthesis_Certainty.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_CertaintyFromJson(json);
  Map<String, dynamic> toJson() _$RiskEvidenceSynthesis_CertaintyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_CertaintySubcomponent {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<CodeableConcept> rating;
List<Annotation> note;

RiskEvidenceSynthesis_CertaintySubcomponent(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.rating,
      this.note,
      });

  factory RiskEvidenceSynthesis_CertaintySubcomponent.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_CertaintySubcomponentFromJson(json);
  Map<String, dynamic> toJson() _$RiskEvidenceSynthesis_CertaintySubcomponentToJson(this);
}

