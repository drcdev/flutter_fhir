

part 'medicationKnowledge_Cost.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Cost {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String source;
  Element _source;
  Money cost;


MedicationKnowledge_Cost(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.source,
this._source,
this.cost});

  factory MedicationKnowledge_Cost.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_CostFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_CostToJson(this);
}