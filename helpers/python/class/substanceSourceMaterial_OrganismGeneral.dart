

part 'substanceSourceMaterial_OrganismGeneral.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_OrganismGeneral {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept kingdom;
  CodeableConcept phylum;
  CodeableConcept class;
  CodeableConcept order;


SubstanceSourceMaterial_OrganismGeneral(
      {this.id,
this.extension,
this.modifierExtension,
this.kingdom,
this.phylum,
this.class,
this.order});

  factory SubstanceSourceMaterial_OrganismGeneral.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_OrganismGeneralFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_OrganismGeneralToJson(this);
}