part 'familyMemberHistory.g.dart';

@JsonSerializable(explicitToJson: true)
class FamilyMemberHistory {

FamilyMemberHistory resourceType;
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
List<String> instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
String status; // <code> enum: partial/completed/entered-in-error/health-unknown;
Element _status;
CodeableConcept dataAbsentReason;
Reference patient;
DateTime date;
Element _date;
String name;
Element _name;
CodeableConcept relationship;
CodeableConcept sex;
Period bornPeriod;
String bornDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _bornDate;
String bornString; //  pattern: ^[ \r\n\t\S]+$
Element _bornString;
Age ageAge;
Range ageRange;
String ageString; //  pattern: ^[ \r\n\t\S]+$
Element _ageString;
bool estimatedAge;
Element _estimatedAge;
bool deceasedBoolean; //  pattern: ^true|false$
Element _deceasedBoolean;
Age deceasedAge;
Range deceasedRange;
String deceasedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _deceasedDate;
String deceasedString; //  pattern: ^[ \r\n\t\S]+$
Element _deceasedString;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Annotation> note;
List<FamilyMemberHistory_Condition> condition;

FamilyMemberHistory(
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
      this.instantiatesCanonical,
      this.instantiatesUri,
      this._instantiatesUri,
      this.status,
      this._status,
      this.dataAbsentReason,
      this.patient,
      this.date,
      this._date,
      this.name,
      this._name,
      this.relationship,
      this.sex,
      this.bornPeriod,
      this.bornDate,
      this._bornDate,
      this.bornString,
      this._bornString,
      this.ageAge,
      this.ageRange,
      this.ageString,
      this._ageString,
      this.estimatedAge,
      this._estimatedAge,
      this.deceasedBoolean,
      this._deceasedBoolean,
      this.deceasedAge,
      this.deceasedRange,
      this.deceasedDate,
      this._deceasedDate,
      this.deceasedString,
      this._deceasedString,
      this.reasonCode,
      this.reasonReference,
      this.note,
      this.condition,
      });

  factory FamilyMemberHistory.fromJson(Map<String, dynamic> json) => _$FamilyMemberHistoryFromJson(json);
  Map<String, dynamic> toJson() _$FamilyMemberHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FamilyMemberHistory_Condition {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept outcome;
bool contributedToDeath;
Element _contributedToDeath;
Age onsetAge;
Range onsetRange;
Period onsetPeriod;
String onsetString; //  pattern: ^[ \r\n\t\S]+$
Element _onsetString;
List<Annotation> note;

FamilyMemberHistory_Condition(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.outcome,
      this.contributedToDeath,
      this._contributedToDeath,
      this.onsetAge,
      this.onsetRange,
      this.onsetPeriod,
      this.onsetString,
      this._onsetString,
      this.note,
      });

  factory FamilyMemberHistory_Condition.fromJson(Map<String, dynamic> json) => _$FamilyMemberHistory_ConditionFromJson(json);
  Map<String, dynamic> toJson() _$FamilyMemberHistory_ConditionToJson(this);
}

