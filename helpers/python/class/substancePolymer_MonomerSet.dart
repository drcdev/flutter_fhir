

part 'substancePolymer_MonomerSet.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_MonomerSet {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept ratioType;
  List<SubstancePolymer_StartingMaterial> startingMaterial;


SubstancePolymer_MonomerSet(
      {this.id,
this.extension,
this.modifierExtension,
this.ratioType,
this.startingMaterial});

  factory SubstancePolymer_MonomerSet.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_MonomerSetFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_MonomerSetToJson(this);
}