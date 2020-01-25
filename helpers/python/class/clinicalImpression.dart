

part 'clinicalImpression.g.dart';

@JsonSerializable(explicitToJson: true)
class ClinicalImpression {

  This is a ClinicalImpression resource resourceType;
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
  String status;
  Element _status;
  CodeableConcept statusReason;
  CodeableConcept code;
  String description;
  Element _description;
  Reference subject;
  Reference encounter;
  String effectiveDateTime;
  Element _effectiveDateTime;
  Period effectivePeriod;
  StringTime date;
  Element _date;
  Reference assessor;
  Reference previous;
  List<Reference> problem;
  List<ClinicalImpression_Investigation> investigation;
  List<String> protocol;
  List<Element> _protocol;
  String summary;
  Element _summary;
  List<ClinicalImpression_Finding> finding;
  List<CodeableConcept> prognosisCodeableConcept;
  List<Reference> prognosisReference;
  List<Reference> supportingInfo;
  List<Annotation> note;


ClinicalImpression(
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
this.status,
this._status,
this.statusReason,
this.code,
this.description,
this._description,
this.subject,
this.encounter,
this.effectiveDateTime,
this._effectiveDateTime,
this.effectivePeriod,
this.date,
this._date,
this.assessor,
this.previous,
this.problem,
this.investigation,
this.protocol,
this._protocol,
this.summary,
this._summary,
this.finding,
this.prognosisCodeableConcept,
this.prognosisReference,
this.supportingInfo,
this.note});

  factory ClinicalImpression.fromJson(Map<String, dynamic> json) => _$ClinicalImpressionFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicalImpressionToJson(this);
}