

part 'researchStudy_Arm.g.dart';

@JsonSerializable(explicitToJson: true)
class ResearchStudy_Arm {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  CodeableConcept type;
  String description;
  Element _description;


ResearchStudy_Arm(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.type,
this.description,
this._description});

  factory ResearchStudy_Arm.fromJson(Map<String, dynamic> json) => _$ResearchStudy_ArmFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchStudy_ArmToJson(this);
}