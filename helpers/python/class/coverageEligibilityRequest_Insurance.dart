

part 'coverageEligibilityRequest_Insurance.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Insurance {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool focal;
  Element _focal;
  Reference coverage;
  String businessArrangement;
  Element _businessArrangement;


CoverageEligibilityRequest_Insurance(
      {this.id,
this.extension,
this.modifierExtension,
this.focal,
this._focal,
this.coverage,
this.businessArrangement,
this._businessArrangement});

  factory CoverageEligibilityRequest_Insurance.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequest_InsuranceToJson(this);
}