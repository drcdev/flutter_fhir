

part 'insurancePlan_Plan.g.dart';

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Plan {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  CodeableConcept type;
  List<Reference> coverageArea;
  List<Reference> network;
  List<InsurancePlan_GeneralCost> generalCost;
  List<InsurancePlan_SpecificCost> specificCost;


InsurancePlan_Plan(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.type,
this.coverageArea,
this.network,
this.generalCost,
this.specificCost});

  factory InsurancePlan_Plan.fromJson(Map<String, dynamic> json) => _$InsurancePlan_PlanFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_PlanToJson(this);
}