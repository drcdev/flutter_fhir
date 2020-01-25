

part 'measureReport_Population.g.dart';

@JsonSerializable(explicitToJson: true)
class MeasureReport_Population {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  int count;
  Element _count;
  Reference subjectResults;


MeasureReport_Population(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.count,
this._count,
this.subjectResults});

  factory MeasureReport_Population.fromJson(Map<String, dynamic> json) => _$MeasureReport_PopulationFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_PopulationToJson(this);
}