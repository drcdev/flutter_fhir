

part 'insurancePlan_GeneralCost.g.dart';

@JsonSerializable(explicitToJson: true)
class InsurancePlan_GeneralCost {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  int groupSize;
  Element _groupSize;
  Money cost;
  String comment;
  Element _comment;


InsurancePlan_GeneralCost(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.groupSize,
this._groupSize,
this.cost,
this.comment,
this._comment});

  factory InsurancePlan_GeneralCost.fromJson(Map<String, dynamic> json) => _$InsurancePlan_GeneralCostFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_GeneralCostToJson(this);
}