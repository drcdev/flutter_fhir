

part 'measureReport_Stratifier.g.dart';

@JsonSerializable(explicitToJson: true)
class MeasureReport_Stratifier {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> code;
  List<MeasureReport_Stratum> stratum;


MeasureReport_Stratifier(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.stratum});

  factory MeasureReport_Stratifier.fromJson(Map<String, dynamic> json) => _$MeasureReport_StratifierFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_StratifierToJson(this);
}