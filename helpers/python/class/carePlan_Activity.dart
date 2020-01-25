

part 'carePlan_Activity.g.dart';

@JsonSerializable(explicitToJson: true)
class CarePlan_Activity {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> outcomeCodeableConcept;
  List<Reference> outcomeReference;
  List<Annotation> progress;
  Reference reference;
  CarePlan_Detail detail;


CarePlan_Activity(
      {this.id,
this.extension,
this.modifierExtension,
this.outcomeCodeableConcept,
this.outcomeReference,
this.progress,
this.reference,
this.detail});

  factory CarePlan_Activity.fromJson(Map<String, dynamic> json) => _$CarePlan_ActivityFromJson(json);
  Map<String, dynamic> toJson() => _$CarePlan_ActivityToJson(this);
}