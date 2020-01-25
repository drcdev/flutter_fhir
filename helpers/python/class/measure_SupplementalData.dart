

part 'measure_SupplementalData.g.dart';

@JsonSerializable(explicitToJson: true)
class Measure_SupplementalData {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  List<CodeableConcept> usage;
  String description;
  Element _description;
  Expression criteria;


Measure_SupplementalData(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.usage,
this.description,
this._description,
this.criteria});

  factory Measure_SupplementalData.fromJson(Map<String, dynamic> json) => _$Measure_SupplementalDataFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_SupplementalDataToJson(this);
}