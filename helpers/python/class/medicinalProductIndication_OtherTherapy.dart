

part 'medicinalProductIndication_OtherTherapy.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductIndication_OtherTherapy {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept therapyRelationshipType;
  CodeableConcept medicationCodeableConcept;
  Reference medicationReference;


MedicinalProductIndication_OtherTherapy(
      {this.id,
this.extension,
this.modifierExtension,
this.therapyRelationshipType,
this.medicationCodeableConcept,
this.medicationReference});

  factory MedicinalProductIndication_OtherTherapy.fromJson(Map<String, dynamic> json) => _$MedicinalProductIndication_OtherTherapyFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIndication_OtherTherapyToJson(this);
}