part 'riskAssessment.g.dart';

@JsonSerializable(explicitToJson: true)
class RiskAssessment {

RiskAssessment resourceType;
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
List<Identifier> identifier;
Reference basedOn;
Reference parent;
String status;
Element _status;
CodeableConcept method;
CodeableConcept code;
Reference subject;
Reference encounter;
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _occurrenceDateTime;
Period occurrencePeriod;
Reference condition;
Reference performer;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Reference> basis;
List<RiskAssessment_Prediction> prediction;
String mitigation;
Element _mitigation;
List<Annotation> note;

RiskAssessment(
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
      this.identifier,
      this.basedOn,
      this.parent,
      this.status,
      this._status,
      this.method,
      this.code,
      this.subject,
      this.encounter,
      this.occurrenceDateTime,
      this._occurrenceDateTime,
      this.occurrencePeriod,
      this.condition,
      this.performer,
      this.reasonCode,
      this.reasonReference,
      this.basis,
      this.prediction,
      this.mitigation,
      this._mitigation,
      this.note,
      });

  factory RiskAssessment.fromJson(Map<String, dynamic> json) => _$RiskAssessmentFromJson(json);
  Map<String, dynamic> toJson() _$RiskAssessmentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskAssessment_Prediction {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept outcome;
double probabilityDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _probabilityDecimal;
Range probabilityRange;
CodeableConcept qualitativeRisk;
double relativeRisk;
Element _relativeRisk;
Period whenPeriod;
Range whenRange;
String rationale;
Element _rationale;

RiskAssessment_Prediction(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.outcome,
      this.probabilityDecimal,
      this._probabilityDecimal,
      this.probabilityRange,
      this.qualitativeRisk,
      this.relativeRisk,
      this._relativeRisk,
      this.whenPeriod,
      this.whenRange,
      this.rationale,
      this._rationale,
      });

  factory RiskAssessment_Prediction.fromJson(Map<String, dynamic> json) => _$RiskAssessment_PredictionFromJson(json);
  Map<String, dynamic> toJson() _$RiskAssessment_PredictionToJson(this);
}

