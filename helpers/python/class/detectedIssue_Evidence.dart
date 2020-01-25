

part 'detectedIssue_Evidence.g.dart';

@JsonSerializable(explicitToJson: true)
class DetectedIssue_Evidence {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> code;
  List<Reference> detail;


DetectedIssue_Evidence(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.detail});

  factory DetectedIssue_Evidence.fromJson(Map<String, dynamic> json) => _$DetectedIssue_EvidenceFromJson(json);
  Map<String, dynamic> toJson() => _$DetectedIssue_EvidenceToJson(this);
}