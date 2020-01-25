

part 'explanationOfBenefit_SupportingInfo.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_SupportingInfo {

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
  Coding reason;


ExplanationOfBenefit_SupportingInfo(
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

  factory ExplanationOfBenefit_SupportingInfo.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_SupportingInfoToJson(this);
}