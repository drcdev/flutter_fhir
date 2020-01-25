

part 'coverageEligibilityResponse_Benefit.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Benefit {

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
  String usedString;
  Element _usedString;
  Money usedMoney;


CoverageEligibilityResponse_Benefit(
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
this.usedString,
this._usedString,
this.usedMoney});

  factory CoverageEligibilityResponse_Benefit.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_BenefitFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_BenefitToJson(this);
}