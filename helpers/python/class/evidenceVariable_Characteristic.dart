

part 'evidenceVariable_Characteristic.g.dart';

@JsonSerializable(explicitToJson: true)
class EvidenceVariable_Characteristic {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element _description;
  Reference definitionReference;
  String definitionCanonical;
  Element _definitionCanonical;
  CodeableConcept definitionCodeableConcept;
  Expression definitionExpression;
  DataRequirement definitionDataRequirement;
  TriggerDefinition definitionTriggerDefinition;
  List<UsageContext> usageContext;
  bool exclude;
  Element _exclude;
  String participantEffectiveDateTime;
  Element _participantEffectiveDateTime;
  Period participantEffectivePeriod;
  Duration participantEffectiveDuration;
  Timing participantEffectiveTiming;
  Duration timeFromStart;
  enum: meanmedianmean-of-meanmean-of-medianmedian-of-meanmedian-of-median groupMeasure;
  Element _groupMeasure;


EvidenceVariable_Characteristic(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.definitionReference,
this.definitionCanonical,
this._definitionCanonical,
this.definitionCodeableConcept,
this.definitionExpression,
this.definitionDataRequirement,
this.definitionTriggerDefinition,
this.usageContext,
this.exclude,
this._exclude,
this.participantEffectiveDateTime,
this._participantEffectiveDateTime,
this.participantEffectivePeriod,
this.participantEffectiveDuration,
this.participantEffectiveTiming,
this.timeFromStart,
this.groupMeasure,
this._groupMeasure});

  factory EvidenceVariable_Characteristic.fromJson(Map<String, dynamic> json) => _$EvidenceVariable_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$EvidenceVariable_CharacteristicToJson(this);
}