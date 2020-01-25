

part 'substanceSpecification_Moiety.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Moiety {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept role;
  Identifier identifier;
  String name;
  Element _name;
  CodeableConcept stereochemistry;
  CodeableConcept opticalActivity;
  String molecularFormula;
  Element _molecularFormula;
  Quantity amountQuantity;
  String amountString;
  Element _amountString;


SubstanceSpecification_Moiety(
      {this.id,
this.extension,
this.modifierExtension,
this.role,
this.identifier,
this.name,
this._name,
this.stereochemistry,
this.opticalActivity,
this.molecularFormula,
this._molecularFormula,
this.amountQuantity,
this.amountString,
this._amountString});

  factory SubstanceSpecification_Moiety.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_MoietyFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_MoietyToJson(this);
}