

part 'familyMemberHistory_Condition.g.dart';

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
  String onsetString;
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
this.note});

  factory FamilyMemberHistory_Condition.fromJson(Map<String, dynamic> json) => _$FamilyMemberHistory_ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$FamilyMemberHistory_ConditionToJson(this);
}