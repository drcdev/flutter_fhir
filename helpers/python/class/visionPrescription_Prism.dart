

part 'visionPrescription_Prism.g.dart';

@JsonSerializable(explicitToJson: true)
class VisionPrescription_Prism {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  double amount;
  Element _amount;
  enum: updowninout base;
  Element _base;


VisionPrescription_Prism(
      {this.id,
this.extension,
this.modifierExtension,
this.amount,
this._amount,
this.base,
this._base});

  factory VisionPrescription_Prism.fromJson(Map<String, dynamic> json) => _$VisionPrescription_PrismFromJson(json);
  Map<String, dynamic> toJson() => _$VisionPrescription_PrismToJson(this);
}