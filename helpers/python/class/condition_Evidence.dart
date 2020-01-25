

part 'condition_Evidence.g.dart';

@JsonSerializable(explicitToJson: true)
class Condition_Evidence {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> code;
  List<Reference> detail;


Condition_Evidence(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.detail});

  factory Condition_Evidence.fromJson(Map<String, dynamic> json) => _$Condition_EvidenceFromJson(json);
  Map<String, dynamic> toJson() => _$Condition_EvidenceToJson(this);
}