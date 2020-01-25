

part 'coverage_CostToBeneficiary.g.dart';

@JsonSerializable(explicitToJson: true)
class Coverage_CostToBeneficiary {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Quantity valueQuantity;
  Money valueMoney;
  List<Coverage_Exception> exception;


Coverage_CostToBeneficiary(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.valueQuantity,
this.valueMoney,
this.exception});

  factory Coverage_CostToBeneficiary.fromJson(Map<String, dynamic> json) => _$Coverage_CostToBeneficiaryFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_CostToBeneficiaryToJson(this);
}