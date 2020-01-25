

part 'allergyIntolerance_Reaction.g.dart';

@JsonSerializable(explicitToJson: true)
class AllergyIntolerance_Reaction {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept substance;
  List<CodeableConcept> manifestation;
  String description;
  Element _description;
  StringTime onset;
  Element _onset;
  enum: mildmoderatesevere severity;
  Element _severity;
  CodeableConcept exposureRoute;
  List<Annotation> note;


AllergyIntolerance_Reaction(
      {this.id,
this.extension,
this.modifierExtension,
this.substance,
this.manifestation,
this.description,
this._description,
this.onset,
this._onset,
this.severity,
this._severity,
this.exposureRoute,
this.note});

  factory AllergyIntolerance_Reaction.fromJson(Map<String, dynamic> json) => _$AllergyIntolerance_ReactionFromJson(json);
  Map<String, dynamic> toJson() => _$AllergyIntolerance_ReactionToJson(this);
}