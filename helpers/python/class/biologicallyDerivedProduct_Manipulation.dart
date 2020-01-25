

part 'biologicallyDerivedProduct_Manipulation.g.dart';

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Manipulation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element _description;
  String timeDateTime;
  Element _timeDateTime;
  Period timePeriod;


BiologicallyDerivedProduct_Manipulation(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.timeDateTime,
this._timeDateTime,
this.timePeriod});

  factory BiologicallyDerivedProduct_Manipulation.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_ManipulationFromJson(json);
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProduct_ManipulationToJson(this);
}