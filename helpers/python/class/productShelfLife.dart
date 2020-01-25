

part 'productShelfLife.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductShelfLife {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  CodeableConcept type;
  Quantity period;
  List<CodeableConcept> specialPrecautionsForStorage;


ProductShelfLife(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.type,
this.period,
this.specialPrecautionsForStorage});

  factory ProductShelfLife.fromJson(Map<String, dynamic> json) => _$ProductShelfLifeFromJson(json);
  Map<String, dynamic> toJson() => _$ProductShelfLifeToJson(this);
}