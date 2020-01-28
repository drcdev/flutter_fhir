part 'substanceAmount.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceAmount {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity amountQuantity;
Range amountRange;
String amountString; //  pattern: ^[ \r\n\t\S]+$
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
      this.referenceRange,
      });

  factory SubstanceAmount.fromJson(Map<String, dynamic> json) => _$SubstanceAmountFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceAmountToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceAmount_ReferenceRange {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity lowLimit;
Quantity highLimit;

SubstanceAmount_ReferenceRange(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.lowLimit,
      this.highLimit,
      });

  factory SubstanceAmount_ReferenceRange.fromJson(Map<String, dynamic> json) => _$SubstanceAmount_ReferenceRangeFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceAmount_ReferenceRangeToJson(this);
}

