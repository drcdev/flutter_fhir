

part 'familyMemberHistory.g.dart';

@JsonSerializable(explicitToJson: true)
class FamilyMemberHistory {

  This is a FamilyMemberHistory resource resourceType;
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
  enum: partialcompletedentered-in-errorhealth-unknown status;
  Element _status;
  CodeableConcept dataAbsentReason;
  Reference patient;
  StringTime date;
  Element _date;
  String name;
  Element _name;
  CodeableConcept relationship;
  CodeableConcept sex;
  Period bornPeriod;
  String bornDate;
  Element _bornDate;
  String bornString;
  Element _bornString;
  Age ageAge;
  Range ageRange;
  String ageString;
  Element _ageString;
  bool estimatedAge;
  Element _estimatedAge;
  bool deceasedBoolean;
  Element _deceasedBoolean;
  Age deceasedAge;
  Range deceasedRange;
  String deceasedDate;
  Element _deceasedDate;
  String deceasedString;
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
this.condition});

  factory FamilyMemberHistory.fromJson(Map<String, dynamic> json) => _$FamilyMemberHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$FamilyMemberHistoryToJson(this);
}