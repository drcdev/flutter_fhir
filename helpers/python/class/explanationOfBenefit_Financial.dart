

part 'explanationOfBenefit_Financial.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Financial {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  number allowedUnsignedInt;
  Element _allowedUnsignedInt;
  String allowedString;
  Element _allowedString;
  Money allowedMoney;
  number usedUnsignedInt;
  Element _usedUnsignedInt;
  Money usedMoney;


ExplanationOfBenefit_Financial(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.allowedUnsignedInt,
this._allowedUnsignedInt,
this.allowedString,
this._allowedString,
this.allowedMoney,
this.usedUnsignedInt,
this._usedUnsignedInt,
this.usedMoney});

  factory ExplanationOfBenefit_Financial.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_FinancialFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_FinancialToJson(this);
}