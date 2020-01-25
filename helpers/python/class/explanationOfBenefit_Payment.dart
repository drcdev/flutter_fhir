

part 'explanationOfBenefit_Payment.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Payment {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Money adjustment;
  CodeableConcept adjustmentReason;
  String date;
  Element _date;
  Money amount;
  Identifier identifier;


ExplanationOfBenefit_Payment(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.adjustment,
this.adjustmentReason,
this.date,
this._date,
this.amount,
this.identifier});

  factory ExplanationOfBenefit_Payment.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_PaymentToJson(this);
}