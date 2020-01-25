

part 'riskAssessment.g.dart';

@JsonSerializable(explicitToJson: true)
class RiskAssessment {

  This is a RiskAssessment resource resourceType;
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
  String occurrenceDateTime;
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
this.note});

  factory RiskAssessment.fromJson(Map<String, dynamic> json) => _$RiskAssessmentFromJson(json);
  Map<String, dynamic> toJson() => _$RiskAssessmentToJson(this);
}