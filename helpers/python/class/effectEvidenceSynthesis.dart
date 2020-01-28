part 'effectEvidenceSynthesis.g.dart';

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis {

EffectEvidenceSynthesis resourceType;
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
Reference exposureAlternative;
Reference outcome;
EffectEvidenceSynthesis_SampleSize sampleSize;
List<EffectEvidenceSynthesis_ResultsByExposure> resultsByExposure;
List<EffectEvidenceSynthesis_EffectEstimate> effectEstimate;
List<EffectEvidenceSynthesis_Certainty> certainty;

EffectEvidenceSynthesis(
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
      this.exposureAlternative,
      this.outcome,
      this.sampleSize,
      this.resultsByExposure,
      this.effectEstimate,
      this.certainty,
      });

  factory EffectEvidenceSynthesis.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesisFromJson(json);
  Map<String, dynamic> toJson() _$EffectEvidenceSynthesisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_SampleSize {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
int numberOfStudies;
Element _numberOfStudies;
int numberOfParticipants;
Element _numberOfParticipants;

EffectEvidenceSynthesis_SampleSize(
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

  factory EffectEvidenceSynthesis_SampleSize.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_SampleSizeFromJson(json);
  Map<String, dynamic> toJson() _$EffectEvidenceSynthesis_SampleSizeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_ResultsByExposure {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
String exposureState; // <code> enum: exposure/exposure-alternative;
Element _exposureState;
CodeableConcept variantState;
Reference riskEvidenceSynthesis;

EffectEvidenceSynthesis_ResultsByExposure(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.exposureState,
      this._exposureState,
      this.variantState,
      this.riskEvidenceSynthesis,
      });

  factory EffectEvidenceSynthesis_ResultsByExposure.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_ResultsByExposureFromJson(json);
  Map<String, dynamic> toJson() _$EffectEvidenceSynthesis_ResultsByExposureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_EffectEstimate {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
CodeableConcept type;
CodeableConcept variantState;
double value;
Element _value;
CodeableConcept unitOfMeasure;
List<EffectEvidenceSynthesis_PrecisionEstimate> precisionEstimate;

EffectEvidenceSynthesis_EffectEstimate(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.type,
      this.variantState,
      this.value,
      this._value,
      this.unitOfMeasure,
      this.precisionEstimate,
      });

  factory EffectEvidenceSynthesis_EffectEstimate.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_EffectEstimateFromJson(json);
  Map<String, dynamic> toJson() _$EffectEvidenceSynthesis_EffectEstimateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_PrecisionEstimate {

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

EffectEvidenceSynthesis_PrecisionEstimate(
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

  factory EffectEvidenceSynthesis_PrecisionEstimate.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_PrecisionEstimateFromJson(json);
  Map<String, dynamic> toJson() _$EffectEvidenceSynthesis_PrecisionEstimateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_Certainty {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> rating;
List<Annotation> note;
List<EffectEvidenceSynthesis_CertaintySubcomponent> certaintySubcomponent;

EffectEvidenceSynthesis_Certainty(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.rating,
      this.note,
      this.certaintySubcomponent,
      });

  factory EffectEvidenceSynthesis_Certainty.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_CertaintyFromJson(json);
  Map<String, dynamic> toJson() _$EffectEvidenceSynthesis_CertaintyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_CertaintySubcomponent {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<CodeableConcept> rating;
List<Annotation> note;

EffectEvidenceSynthesis_CertaintySubcomponent(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.rating,
      this.note,
      });

  factory EffectEvidenceSynthesis_CertaintySubcomponent.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_CertaintySubcomponentFromJson(json);
  Map<String, dynamic> toJson() _$EffectEvidenceSynthesis_CertaintySubcomponentToJson(this);
}

