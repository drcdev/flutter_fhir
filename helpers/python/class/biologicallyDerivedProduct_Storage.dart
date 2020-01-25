

part 'biologicallyDerivedProduct_Storage.g.dart';

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Storage {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element _description;
  double temperature;
  Element _temperature;
  enum: farenheitcelsiuskelvin scale;
  Element _scale;
  Period duration;


BiologicallyDerivedProduct_Storage(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.temperature,
this._temperature,
this.scale,
this._scale,
this.duration});

  factory BiologicallyDerivedProduct_Storage.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_StorageFromJson(json);
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProduct_StorageToJson(this);
}