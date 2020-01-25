

part 'medicinalProductContraindication_OtherTherapy.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductContraindication_OtherTherapy {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept therapyRelationshipType;
  CodeableConcept medicationCodeableConcept;
  Reference medicationReference;


MedicinalProductContraindication_OtherTherapy(
      {this.id,
this.extension,
this.modifierExtension,
this.therapyRelationshipType,
this.medicationCodeableConcept,
this.medicationReference});

  factory MedicinalProductContraindication_OtherTherapy.fromJson(Map<String, dynamic> json) => _$MedicinalProductContraindication_OtherTherapyFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductContraindication_OtherTherapyToJson(this);
}