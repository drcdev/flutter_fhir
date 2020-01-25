

part 'insurancePlan_Coverage.g.dart';

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Coverage {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<Reference> network;
  List<InsurancePlan_Benefit> benefit;


InsurancePlan_Coverage(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.network,
this.benefit});

  factory InsurancePlan_Coverage.fromJson(Map<String, dynamic> json) => _$InsurancePlan_CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_CoverageToJson(this);
}