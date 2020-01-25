

part 'insurancePlan_Limit.g.dart';

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Limit {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Quantity value;
  CodeableConcept code;


InsurancePlan_Limit(
      {this.id,
this.extension,
this.modifierExtension,
this.value,
this.code});

  factory InsurancePlan_Limit.fromJson(Map<String, dynamic> json) => _$InsurancePlan_LimitFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_LimitToJson(this);
}