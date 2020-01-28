part 'immunizationEvaluation.g.dart';

@JsonSerializable(explicitToJson: true)
class ImmunizationEvaluation {

ImmunizationEvaluation resourceType;
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
DateTime date;
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
int doseNumberPositiveInt; //  pattern: ^[1-9][0-9]*$
Element _doseNumberPositiveInt;
String doseNumberString; //  pattern: ^[ \r\n\t\S]+$
Element _doseNumberString;
int seriesDosesPositiveInt; //  pattern: ^[1-9][0-9]*$
Element _seriesDosesPositiveInt;
String seriesDosesString; //  pattern: ^[ \r\n\t\S]+$
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
      this._seriesDosesString,
      });

  factory ImmunizationEvaluation.fromJson(Map<String, dynamic> json) => _$ImmunizationEvaluationFromJson(json);
  Map<String, dynamic> toJson() _$ImmunizationEvaluationToJson(this);
}

