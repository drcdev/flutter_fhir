

part 'substancePolymer_StartingMaterial.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_StartingMaterial {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept material;
  CodeableConcept type;
  bool isDefining;
  Element _isDefining;
  SubstanceAmount amount;


SubstancePolymer_StartingMaterial(
      {this.id,
this.extension,
this.modifierExtension,
this.material,
this.type,
this.isDefining,
this._isDefining,
this.amount});

  factory SubstancePolymer_StartingMaterial.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_StartingMaterialFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_StartingMaterialToJson(this);
}