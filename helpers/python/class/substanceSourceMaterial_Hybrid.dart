

part 'substanceSourceMaterial_Hybrid.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_Hybrid {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String maternalOrganismId;
  Element _maternalOrganismId;
  String maternalOrganismName;
  Element _maternalOrganismName;
  String paternalOrganismId;
  Element _paternalOrganismId;
  String paternalOrganismName;
  Element _paternalOrganismName;
  CodeableConcept hybridType;


SubstanceSourceMaterial_Hybrid(
      {this.id,
this.extension,
this.modifierExtension,
this.maternalOrganismId,
this._maternalOrganismId,
this.maternalOrganismName,
this._maternalOrganismName,
this.paternalOrganismId,
this._paternalOrganismId,
this.paternalOrganismName,
this._paternalOrganismName,
this.hybridType});

  factory SubstanceSourceMaterial_Hybrid.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_HybridFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_HybridToJson(this);
}