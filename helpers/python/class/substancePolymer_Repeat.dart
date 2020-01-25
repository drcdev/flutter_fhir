

part 'substancePolymer_Repeat.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_Repeat {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int numberOfUnits;
  Element _numberOfUnits;
  String averageMolecularFormula;
  Element _averageMolecularFormula;
  CodeableConcept repeatUnitAmountType;
  List<SubstancePolymer_RepeatUnit> repeatUnit;


SubstancePolymer_Repeat(
      {this.id,
this.extension,
this.modifierExtension,
this.numberOfUnits,
this._numberOfUnits,
this.averageMolecularFormula,
this._averageMolecularFormula,
this.repeatUnitAmountType,
this.repeatUnit});

  factory SubstancePolymer_Repeat.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_RepeatFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_RepeatToJson(this);
}