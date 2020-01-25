

part 'molecularSequence_StructureVariant.g.dart';

@JsonSerializable(explicitToJson: true)
class MolecularSequence_StructureVariant {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept variantType;
  bool exact;
  Element _exact;
  int length;
  Element _length;
  MolecularSequence_Outer outer;
  MolecularSequence_Inner inner;


MolecularSequence_StructureVariant(
      {this.id,
this.extension,
this.modifierExtension,
this.variantType,
this.exact,
this._exact,
this.length,
this._length,
this.outer,
this.inner});

  factory MolecularSequence_StructureVariant.fromJson(Map<String, dynamic> json) => _$MolecularSequence_StructureVariantFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_StructureVariantToJson(this);
}