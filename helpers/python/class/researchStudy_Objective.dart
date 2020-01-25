

part 'researchStudy_Objective.g.dart';

@JsonSerializable(explicitToJson: true)
class ResearchStudy_Objective {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  CodeableConcept type;


ResearchStudy_Objective(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.type});

  factory ResearchStudy_Objective.fromJson(Map<String, dynamic> json) => _$ResearchStudy_ObjectiveFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchStudy_ObjectiveToJson(this);
}