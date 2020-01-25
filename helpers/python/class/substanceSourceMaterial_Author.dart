

part 'substanceSourceMaterial_Author.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_Author {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept authorType;
  String authorDescription;
  Element _authorDescription;


SubstanceSourceMaterial_Author(
      {this.id,
this.extension,
this.modifierExtension,
this.authorType,
this.authorDescription,
this._authorDescription});

  factory SubstanceSourceMaterial_Author.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_AuthorFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_AuthorToJson(this);
}