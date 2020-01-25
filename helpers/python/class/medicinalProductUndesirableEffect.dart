

part 'medicinalProductUndesirableEffect.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductUndesirableEffect {

  This is a MedicinalProductUndesirableEffect resource resourceType;
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
  List<Reference> subject;
  CodeableConcept symptomConditionEffect;
  CodeableConcept classification;
  CodeableConcept frequencyOfOccurrence;
  List<Population> population;


MedicinalProductUndesirableEffect(
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
this.subject,
this.symptomConditionEffect,
this.classification,
this.frequencyOfOccurrence,
this.population});

  factory MedicinalProductUndesirableEffect.fromJson(Map<String, dynamic> json) => _$MedicinalProductUndesirableEffectFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductUndesirableEffectToJson(this);
}