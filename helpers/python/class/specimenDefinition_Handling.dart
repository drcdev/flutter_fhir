

part 'specimenDefinition_Handling.g.dart';

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Handling {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept temperatureQualifier;
  Range temperatureRange;
  Duration maxDuration;
  String instruction;
  Element _instruction;


SpecimenDefinition_Handling(
      {this.id,
this.extension,
this.modifierExtension,
this.temperatureQualifier,
this.temperatureRange,
this.maxDuration,
this.instruction,
this._instruction});

  factory SpecimenDefinition_Handling.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_HandlingFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_HandlingToJson(this);
}