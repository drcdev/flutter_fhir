

part 'insurancePlan_Benefit.g.dart';

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Benefit {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String requirement;
  Element _requirement;
  List<InsurancePlan_Limit> limit;


InsurancePlan_Benefit(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.requirement,
this._requirement,
this.limit});

  factory InsurancePlan_Benefit.fromJson(Map<String, dynamic> json) => _$InsurancePlan_BenefitFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_BenefitToJson(this);
}