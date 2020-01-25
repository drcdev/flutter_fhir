

part 'measureReport_Population1.g.dart';

@JsonSerializable(explicitToJson: true)
class MeasureReport_Population1 {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  int count;
  Element _count;
  Reference subjectResults;


MeasureReport_Population1(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.count,
this._count,
this.subjectResults});

  factory MeasureReport_Population1.fromJson(Map<String, dynamic> json) => _$MeasureReport_Population1FromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_Population1ToJson(this);
}