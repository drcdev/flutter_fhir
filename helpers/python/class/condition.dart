part 'condition.g.dart';

@JsonSerializable(explicitToJson: true)
class Condition {

Condition resourceType;
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
String onsetDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _onsetDateTime;
Age onsetAge;
Period onsetPeriod;
Range onsetRange;
String onsetString; //  pattern: ^[ \r\n\t\S]+$
Element _onsetString;
String abatementDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _abatementDateTime;
Age abatementAge;
Period abatementPeriod;
Range abatementRange;
String abatementString; //  pattern: ^[ \r\n\t\S]+$
Element _abatementString;
DateTime recordedDate;
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
      this.note,
      });

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
  Map<String, dynamic> toJson() _$ConditionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Condition_Stage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept summary;
List<Reference> assessment;
CodeableConcept type;

Condition_Stage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.summary,
      this.assessment,
      this.type,
      });

  factory Condition_Stage.fromJson(Map<String, dynamic> json) => _$Condition_StageFromJson(json);
  Map<String, dynamic> toJson() _$Condition_StageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Condition_Evidence {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> code;
List<Reference> detail;

Condition_Evidence(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.detail,
      });

  factory Condition_Evidence.fromJson(Map<String, dynamic> json) => _$Condition_EvidenceFromJson(json);
  Map<String, dynamic> toJson() _$Condition_EvidenceToJson(this);
}

