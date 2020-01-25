

part 'medicationRequest_DispenseRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationRequest_DispenseRequest {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  MedicationRequest_InitialFill initialFill;
  Duration dispenseInterval;
  Period validityPeriod;
  int numberOfRepeatsAllowed;
  Element _numberOfRepeatsAllowed;
  Quantity quantity;
  Duration expectedSupplyDuration;
  Reference performer;


MedicationRequest_DispenseRequest(
      {this.id,
this.extension,
this.modifierExtension,
this.initialFill,
this.dispenseInterval,
this.validityPeriod,
this.numberOfRepeatsAllowed,
this._numberOfRepeatsAllowed,
this.quantity,
this.expectedSupplyDuration,
this.performer});

  factory MedicationRequest_DispenseRequest.fromJson(Map<String, dynamic> json) => _$MedicationRequest_DispenseRequestFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationRequest_DispenseRequestToJson(this);
}