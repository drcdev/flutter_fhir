

part 'insurancePlan_Cost.g.dart';

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Cost {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  CodeableConcept applicability;
  List<CodeableConcept> qualifiers;
  Quantity value;


InsurancePlan_Cost(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.applicability,
this.qualifiers,
this.value});

  factory InsurancePlan_Cost.fromJson(Map<String, dynamic> json) => _$InsurancePlan_CostFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_CostToJson(this);
}