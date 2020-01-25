

part 'specimen_Container.g.dart';

@JsonSerializable(explicitToJson: true)
class Specimen_Container {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  String description;
  Element _description;
  CodeableConcept type;
  Quantity capacity;
  Quantity specimenQuantity;
  CodeableConcept additiveCodeableConcept;
  Reference additiveReference;


Specimen_Container(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.description,
this._description,
this.type,
this.capacity,
this.specimenQuantity,
this.additiveCodeableConcept,
this.additiveReference});

  factory Specimen_Container.fromJson(Map<String, dynamic> json) => _$Specimen_ContainerFromJson(json);
  Map<String, dynamic> toJson() => _$Specimen_ContainerToJson(this);
}