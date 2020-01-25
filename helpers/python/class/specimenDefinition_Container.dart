

part 'specimenDefinition_Container.g.dart';

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Container {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept material;
  CodeableConcept type;
  CodeableConcept cap;
  String description;
  Element _description;
  Quantity capacity;
  Quantity minimumVolumeQuantity;
  String minimumVolumeString;
  Element _minimumVolumeString;
  List<SpecimenDefinition_Additive> additive;
  String preparation;
  Element _preparation;


SpecimenDefinition_Container(
      {this.id,
this.extension,
this.modifierExtension,
this.material,
this.type,
this.cap,
this.description,
this._description,
this.capacity,
this.minimumVolumeQuantity,
this.minimumVolumeString,
this._minimumVolumeString,
this.additive,
this.preparation,
this._preparation});

  factory SpecimenDefinition_Container.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_ContainerFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_ContainerToJson(this);
}