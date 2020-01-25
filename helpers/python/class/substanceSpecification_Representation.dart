

part 'substanceSpecification_Representation.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Representation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String representation;
  Element _representation;
  Attachment attachment;


SubstanceSpecification_Representation(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.representation,
this._representation,
this.attachment});

  factory SubstanceSpecification_Representation.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_RepresentationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_RepresentationToJson(this);
}