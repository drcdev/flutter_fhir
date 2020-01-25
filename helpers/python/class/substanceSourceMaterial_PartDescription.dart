

part 'substanceSourceMaterial_PartDescription.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_PartDescription {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept part;
  CodeableConcept partLocation;


SubstanceSourceMaterial_PartDescription(
      {this.id,
this.extension,
this.modifierExtension,
this.part,
this.partLocation});

  factory SubstanceSourceMaterial_PartDescription.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_PartDescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_PartDescriptionToJson(this);
}