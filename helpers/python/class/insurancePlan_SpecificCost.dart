

part 'insurancePlan_SpecificCost.g.dart';

@JsonSerializable(explicitToJson: true)
class InsurancePlan_SpecificCost {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  List<InsurancePlan_Benefit1> benefit;


InsurancePlan_SpecificCost(
      {this.id,
this.extension,
this.modifierExtension,
this.category,
this.benefit});

  factory InsurancePlan_SpecificCost.fromJson(Map<String, dynamic> json) => _$InsurancePlan_SpecificCostFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_SpecificCostToJson(this);
}