

part 'device_UdiCarrier.g.dart';

@JsonSerializable(explicitToJson: true)
class Device_UdiCarrier {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String deviceIdentifier;
  Element _deviceIdentifier;
  String issuer;
  Element _issuer;
  String jurisdiction;
  Element _jurisdiction;
  String carrierAIDC;
  Element _carrierAIDC;
  String carrierHRF;
  Element _carrierHRF;
  enum: barcoderfidmanualcardself-reportedunknown entryType;
  Element _entryType;


Device_UdiCarrier(
      {this.id,
this.extension,
this.modifierExtension,
this.deviceIdentifier,
this._deviceIdentifier,
this.issuer,
this._issuer,
this.jurisdiction,
this._jurisdiction,
this.carrierAIDC,
this._carrierAIDC,
this.carrierHRF,
this._carrierHRF,
this.entryType,
this._entryType});

  factory Device_UdiCarrier.fromJson(Map<String, dynamic> json) => _$Device_UdiCarrierFromJson(json);
  Map<String, dynamic> toJson() => _$Device_UdiCarrierToJson(this);
}