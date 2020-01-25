

part 'immunizationEvaluation.g.dart';

@JsonSerializable(explicitToJson: true)
class ImmunizationEvaluation {

  This is a ImmunizationEvaluation resource resourceType;
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
  Reference patient;
  StringTime date;
  Element _date;
  Reference authority;
  CodeableConcept targetDisease;
  Reference immunizationEvent;
  CodeableConcept doseStatus;
  List<CodeableConcept> doseStatusReason;
  String description;
  Element _description;
  String series;
  Element _series;
  number doseNumberPositiveInt;
  Element _doseNumberPositiveInt;
  String doseNumberString;
  Element _doseNumberString;
  number seriesDosesPositiveInt;
  Element _seriesDosesPositiveInt;
  String seriesDosesString;
  Element _seriesDosesString;


ImmunizationEvaluation(
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
this.patient,
this.date,
this._date,
this.authority,
this.targetDisease,
this.immunizationEvent,
this.doseStatus,
this.doseStatusReason,
this.description,
this._description,
this.series,
this._series,
this.doseNumberPositiveInt,
this._doseNumberPositiveInt,
this.doseNumberString,
this._doseNumberString,
this.seriesDosesPositiveInt,
this._seriesDosesPositiveInt,
this.seriesDosesString,
this._seriesDosesString});

  factory ImmunizationEvaluation.fromJson(Map<String, dynamic> json) => _$ImmunizationEvaluationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationEvaluationToJson(this);
}