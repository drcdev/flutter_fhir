

part 'specimen_Processing.g.dart';

@JsonSerializable(explicitToJson: true)
class Specimen_Processing {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element _description;
  CodeableConcept procedure;
  List<Reference> additive;
  String timeDateTime;
  Element _timeDateTime;
  Period timePeriod;


Specimen_Processing(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.procedure,
this.additive,
this.timeDateTime,
this._timeDateTime,
this.timePeriod});

  factory Specimen_Processing.fromJson(Map<String, dynamic> json) => _$Specimen_ProcessingFromJson(json);
  Map<String, dynamic> toJson() => _$Specimen_ProcessingToJson(this);
}