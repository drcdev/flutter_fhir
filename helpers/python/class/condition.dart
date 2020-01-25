

part 'condition.g.dart';

@JsonSerializable(explicitToJson: true)
class Condition {

  This is a Condition resource resourceType;
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
  CodeableConcept clinicalStatus;
  CodeableConcept verificationStatus;
  List<CodeableConcept> category;
  CodeableConcept severity;
  CodeableConcept code;
  List<CodeableConcept> bodySite;
  Reference subject;
  Reference encounter;
  String onsetDateTime;
  Element _onsetDateTime;
  Age onsetAge;
  Period onsetPeriod;
  Range onsetRange;
  String onsetString;
  Element _onsetString;
  String abatementDateTime;
  Element _abatementDateTime;
  Age abatementAge;
  Period abatementPeriod;
  Range abatementRange;
  String abatementString;
  Element _abatementString;
  StringTime recordedDate;
  Element _recordedDate;
  Reference recorder;
  Reference asserter;
  List<Condition_Stage> stage;
  List<Condition_Evidence> evidence;
  List<Annotation> note;


Condition(
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
this.clinicalStatus,
this.verificationStatus,
this.category,
this.severity,
this.code,
this.bodySite,
this.subject,
this.encounter,
this.onsetDateTime,
this._onsetDateTime,
this.onsetAge,
this.onsetPeriod,
this.onsetRange,
this.onsetString,
this._onsetString,
this.abatementDateTime,
this._abatementDateTime,
this.abatementAge,
this.abatementPeriod,
this.abatementRange,
this.abatementString,
this._abatementString,
this.recordedDate,
this._recordedDate,
this.recorder,
this.asserter,
this.stage,
this.evidence,
this.note});

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}