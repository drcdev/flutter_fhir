

part 'medicinalProductPharmaceutical_WithdrawalPeriod.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_WithdrawalPeriod {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept tissue;
  Quantity value;
  String supportingInformation;
  Element _supportingInformation;


MedicinalProductPharmaceutical_WithdrawalPeriod(
      {this.id,
this.extension,
this.modifierExtension,
this.tissue,
this.value,
this.supportingInformation,
this._supportingInformation});

  factory MedicinalProductPharmaceutical_WithdrawalPeriod.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_WithdrawalPeriodFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_WithdrawalPeriodToJson(this);
}