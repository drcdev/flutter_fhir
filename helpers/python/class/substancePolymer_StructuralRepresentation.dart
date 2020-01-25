

part 'substancePolymer_StructuralRepresentation.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_StructuralRepresentation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String representation;
  Element _representation;
  Attachment attachment;


SubstancePolymer_StructuralRepresentation(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.representation,
this._representation,
this.attachment});

  factory SubstancePolymer_StructuralRepresentation.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_StructuralRepresentationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_StructuralRepresentationToJson(this);
}