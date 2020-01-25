

part 'detectedIssue_Mitigation.g.dart';

@JsonSerializable(explicitToJson: true)
class DetectedIssue_Mitigation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept action;
  StringTime date;
  Element _date;
  Reference author;


DetectedIssue_Mitigation(
      {this.id,
this.extension,
this.modifierExtension,
this.action,
this.date,
this._date,
this.author});

  factory DetectedIssue_Mitigation.fromJson(Map<String, dynamic> json) => _$DetectedIssue_MitigationFromJson(json);
  Map<String, dynamic> toJson() => _$DetectedIssue_MitigationToJson(this);
}