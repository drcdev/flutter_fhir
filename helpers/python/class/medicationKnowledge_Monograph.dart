

part 'medicationKnowledge_Monograph.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Monograph {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Reference source;


MedicationKnowledge_Monograph(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.source});

  factory MedicationKnowledge_Monograph.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MonographFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_MonographToJson(this);
}