

part 'specimenDefinition_Additive.g.dart';

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Additive {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept additiveCodeableConcept;
  Reference additiveReference;


SpecimenDefinition_Additive(
      {this.id,
this.extension,
this.modifierExtension,
this.additiveCodeableConcept,
this.additiveReference});

  factory SpecimenDefinition_Additive.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_AdditiveFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_AdditiveToJson(this);
}