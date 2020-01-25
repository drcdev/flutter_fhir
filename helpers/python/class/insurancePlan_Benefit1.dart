

part 'insurancePlan_Benefit1.g.dart';

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Benefit1 {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<InsurancePlan_Cost> cost;


InsurancePlan_Benefit1(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.cost});

  factory InsurancePlan_Benefit1.fromJson(Map<String, dynamic> json) => _$InsurancePlan_Benefit1FromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_Benefit1ToJson(this);
}