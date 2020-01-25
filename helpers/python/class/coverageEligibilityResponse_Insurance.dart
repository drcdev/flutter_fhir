

part 'coverageEligibilityResponse_Insurance.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Insurance {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference coverage;
  bool inforce;
  Element _inforce;
  Period benefitPeriod;
  List<CoverageEligibilityResponse_Item> item;


CoverageEligibilityResponse_Insurance(
      {this.id,
this.extension,
this.modifierExtension,
this.coverage,
this.inforce,
this._inforce,
this.benefitPeriod,
this.item});

  factory CoverageEligibilityResponse_Insurance.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_InsuranceToJson(this);
}