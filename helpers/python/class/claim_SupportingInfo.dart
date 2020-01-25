

part 'claim_SupportingInfo.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim_SupportingInfo {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element _sequence;
  CodeableConcept category;
  CodeableConcept code;
  String timingDate;
  Element _timingDate;
  Period timingPeriod;
  bool valueBoolean;
  Element _valueBoolean;
  String valueString;
  Element _valueString;
  Quantity valueQuantity;
  Attachment valueAttachment;
  Reference valueReference;
  CodeableConcept reason;


Claim_SupportingInfo(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.category,
this.code,
this.timingDate,
this._timingDate,
this.timingPeriod,
this.valueBoolean,
this._valueBoolean,
this.valueString,
this._valueString,
this.valueQuantity,
this.valueAttachment,
this.valueReference,
this.reason});

  factory Claim_SupportingInfo.fromJson(Map<String, dynamic> json) => _$Claim_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_SupportingInfoToJson(this);
}