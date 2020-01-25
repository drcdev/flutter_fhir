

part 'substanceAmount.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceAmount {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Quantity amountQuantity;
  Range amountRange;
  String amountString;
  Element _amountString;
  CodeableConcept amountType;
  String amountText;
  Element _amountText;
  SubstanceAmount_ReferenceRange referenceRange;


SubstanceAmount(
      {this.id,
this.extension,
this.modifierExtension,
this.amountQuantity,
this.amountRange,
this.amountString,
this._amountString,
this.amountType,
this.amountText,
this._amountText,
this.referenceRange});

  factory SubstanceAmount.fromJson(Map<String, dynamic> json) => _$SubstanceAmountFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceAmountToJson(this);
}