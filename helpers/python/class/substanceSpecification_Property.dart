

part 'substanceSpecification_Property.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Property {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  CodeableConcept code;
  String parameters;
  Element _parameters;
  Reference definingSubstanceReference;
  CodeableConcept definingSubstanceCodeableConcept;
  Quantity amountQuantity;
  String amountString;
  Element _amountString;


SubstanceSpecification_Property(
      {this.id,
this.extension,
this.modifierExtension,
this.category,
this.code,
this.parameters,
this._parameters,
this.definingSubstanceReference,
this.definingSubstanceCodeableConcept,
this.amountQuantity,
this.amountString,
this._amountString});

  factory SubstanceSpecification_Property.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_PropertyToJson(this);
}