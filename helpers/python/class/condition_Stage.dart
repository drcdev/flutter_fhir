

part 'condition_Stage.g.dart';

@JsonSerializable(explicitToJson: true)
class Condition_Stage {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept summary;
  List<Reference> assessment;
  CodeableConcept type;


Condition_Stage(
      {this.id,
this.extension,
this.modifierExtension,
this.summary,
this.assessment,
this.type});

  factory Condition_Stage.fromJson(Map<String, dynamic> json) => _$Condition_StageFromJson(json);
  Map<String, dynamic> toJson() => _$Condition_StageToJson(this);
}