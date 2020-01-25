

part 'measureReport_Group.g.dart';

@JsonSerializable(explicitToJson: true)
class MeasureReport_Group {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  List<MeasureReport_Population> population;
  Quantity measureScore;
  List<MeasureReport_Stratifier> stratifier;


MeasureReport_Group(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.population,
this.measureScore,
this.stratifier});

  factory MeasureReport_Group.fromJson(Map<String, dynamic> json) => _$MeasureReport_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_GroupToJson(this);
}