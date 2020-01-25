

part 'substanceSpecification_Relationship.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Relationship {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference substanceReference;
  CodeableConcept substanceCodeableConcept;
  CodeableConcept relationship;
  bool isDefining;
  Element _isDefining;
  Quantity amountQuantity;
  Range amountRange;
  Ratio amountRatio;
  String amountString;
  Element _amountString;
  Ratio amountRatioLowLimit;
  CodeableConcept amountType;
  List<Reference> source;


SubstanceSpecification_Relationship(
      {this.id,
this.extension,
this.modifierExtension,
this.substanceReference,
this.substanceCodeableConcept,
this.relationship,
this.isDefining,
this._isDefining,
this.amountQuantity,
this.amountRange,
this.amountRatio,
this.amountString,
this._amountString,
this.amountRatioLowLimit,
this.amountType,
this.source});

  factory SubstanceSpecification_Relationship.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_RelationshipFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_RelationshipToJson(this);
}