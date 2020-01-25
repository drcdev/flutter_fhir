

part 'researchElementDefinition_Characteristic.g.dart';

@JsonSerializable(explicitToJson: true)
class ResearchElementDefinition_Characteristic {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept definitionCodeableConcept;
  String definitionCanonical;
  Element _definitionCanonical;
  Expression definitionExpression;
  DataRequirement definitionDataRequirement;
  List<UsageContext> usageContext;
  bool exclude;
  Element _exclude;
  CodeableConcept unitOfMeasure;
  String studyEffectiveDescription;
  Element _studyEffectiveDescription;
  String studyEffectiveDateTime;
  Element _studyEffectiveDateTime;
  Period studyEffectivePeriod;
  Duration studyEffectiveDuration;
  Timing studyEffectiveTiming;
  Duration studyEffectiveTimeFromStart;
  enum: meanmedianmean-of-meanmean-of-medianmedian-of-meanmedian-of-median studyEffectiveGroupMeasure;
  Element _studyEffectiveGroupMeasure;
  String participantEffectiveDescription;
  Element _participantEffectiveDescription;
  String participantEffectiveDateTime;
  Element _participantEffectiveDateTime;
  Period participantEffectivePeriod;
  Duration participantEffectiveDuration;
  Timing participantEffectiveTiming;
  Duration participantEffectiveTimeFromStart;
  enum: meanmedianmean-of-meanmean-of-medianmedian-of-meanmedian-of-median participantEffectiveGroupMeasure;
  Element _participantEffectiveGroupMeasure;


ResearchElementDefinition_Characteristic(
      {this.id,
this.extension,
this.modifierExtension,
this.definitionCodeableConcept,
this.definitionCanonical,
this._definitionCanonical,
this.definitionExpression,
this.definitionDataRequirement,
this.usageContext,
this.exclude,
this._exclude,
this.unitOfMeasure,
this.studyEffectiveDescription,
this._studyEffectiveDescription,
this.studyEffectiveDateTime,
this._studyEffectiveDateTime,
this.studyEffectivePeriod,
this.studyEffectiveDuration,
this.studyEffectiveTiming,
this.studyEffectiveTimeFromStart,
this.studyEffectiveGroupMeasure,
this._studyEffectiveGroupMeasure,
this.participantEffectiveDescription,
this._participantEffectiveDescription,
this.participantEffectiveDateTime,
this._participantEffectiveDateTime,
this.participantEffectivePeriod,
this.participantEffectiveDuration,
this.participantEffectiveTiming,
this.participantEffectiveTimeFromStart,
this.participantEffectiveGroupMeasure,
this._participantEffectiveGroupMeasure});

  factory ResearchElementDefinition_Characteristic.fromJson(Map<String, dynamic> json) => _$ResearchElementDefinition_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchElementDefinition_CharacteristicToJson(this);
}