part 'clinicalImpression.g.dart';

@JsonSerializable(explicitToJson: true)
class ClinicalImpression {

ClinicalImpression resourceType;
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
String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _effectiveDateTime;
Period effectivePeriod;
DateTime date;
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
      this.note,
      });

  factory ClinicalImpression.fromJson(Map<String, dynamic> json) => _$ClinicalImpressionFromJson(json);
  Map<String, dynamic> toJson() _$ClinicalImpressionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClinicalImpression_Investigation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
List<Reference> item;

ClinicalImpression_Investigation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.item,
      });

  factory ClinicalImpression_Investigation.fromJson(Map<String, dynamic> json) => _$ClinicalImpression_InvestigationFromJson(json);
  Map<String, dynamic> toJson() _$ClinicalImpression_InvestigationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClinicalImpression_Finding {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept itemCodeableConcept;
Reference itemReference;
String basis;
Element _basis;

ClinicalImpression_Finding(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemCodeableConcept,
      this.itemReference,
      this.basis,
      this._basis,
      });

  factory ClinicalImpression_Finding.fromJson(Map<String, dynamic> json) => _$ClinicalImpression_FindingFromJson(json);
  Map<String, dynamic> toJson() _$ClinicalImpression_FindingToJson(this);
}

