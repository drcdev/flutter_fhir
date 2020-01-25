

part 'measureReport_Stratum.g.dart';

@JsonSerializable(explicitToJson: true)
class MeasureReport_Stratum {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept value;
  List<MeasureReport_Component> component;
  List<MeasureReport_Population1> population;
  Quantity measureScore;


MeasureReport_Stratum(
      {this.id,
this.extension,
this.modifierExtension,
this.value,
this.component,
this.population,
this.measureScore});

  factory MeasureReport_Stratum.fromJson(Map<String, dynamic> json) => _$MeasureReport_StratumFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_StratumToJson(this);
}