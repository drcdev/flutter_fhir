

part 'immunizationRecommendation_DateCriterion.g.dart';

@JsonSerializable(explicitToJson: true)
class ImmunizationRecommendation_DateCriterion {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  StringTime value;
  Element _value;


ImmunizationRecommendation_DateCriterion(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.value,
this._value});

  factory ImmunizationRecommendation_DateCriterion.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendation_DateCriterionFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationRecommendation_DateCriterionToJson(this);
}