

part 'molecularSequence_Variant.g.dart';

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Variant {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int start;
  Element _start;
  int end;
  Element _end;
  String observedAllele;
  Element _observedAllele;
  String referenceAllele;
  Element _referenceAllele;
  String cigar;
  Element _cigar;
  Reference variantPointer;


MolecularSequence_Variant(
      {this.id,
this.extension,
this.modifierExtension,
this.start,
this._start,
this.end,
this._end,
this.observedAllele,
this._observedAllele,
this.referenceAllele,
this._referenceAllele,
this.cigar,
this._cigar,
this.variantPointer});

  factory MolecularSequence_Variant.fromJson(Map<String, dynamic> json) => _$MolecularSequence_VariantFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_VariantToJson(this);
}