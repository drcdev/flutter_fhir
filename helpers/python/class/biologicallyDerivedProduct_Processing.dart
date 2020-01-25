

part 'biologicallyDerivedProduct_Processing.g.dart';

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Processing {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element _description;
  CodeableConcept procedure;
  Reference additive;
  String timeDateTime;
  Element _timeDateTime;
  Period timePeriod;


BiologicallyDerivedProduct_Processing(
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

  factory BiologicallyDerivedProduct_Processing.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_ProcessingFromJson(json);
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProduct_ProcessingToJson(this);
}