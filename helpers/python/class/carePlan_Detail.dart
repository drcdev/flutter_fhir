

part 'carePlan_Detail.g.dart';

@JsonSerializable(explicitToJson: true)
class CarePlan_Detail {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String kind;
  Element _kind;
  List<String> instantiatesCanonical;
  List<String> instantiatesUri;
  List<Element> _instantiatesUri;
  CodeableConcept code;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Reference> goal;
  enum: not-startedscheduledin-progresson-holdcompletedcancelledstoppedunknownentered-in-error status;
  Element _status;
  CodeableConcept statusReason;
  bool doNotPerform;
  Element _doNotPerform;
  Timing scheduledTiming;
  Period scheduledPeriod;
  String scheduledString;
  Element _scheduledString;
  Reference location;
  List<Reference> performer;
  CodeableConcept productCodeableConcept;
  Reference productReference;
  Quantity dailyAmount;
  Quantity quantity;
  String description;
  Element _description;


CarePlan_Detail(
      {this.id,
this.extension,
this.modifierExtension,
this.kind,
this._kind,
this.instantiatesCanonical,
this.instantiatesUri,
this._instantiatesUri,
this.code,
this.reasonCode,
this.reasonReference,
this.goal,
this.status,
this._status,
this.statusReason,
this.doNotPerform,
this._doNotPerform,
this.scheduledTiming,
this.scheduledPeriod,
this.scheduledString,
this._scheduledString,
this.location,
this.performer,
this.productCodeableConcept,
this.productReference,
this.dailyAmount,
this.quantity,
this.description,
this._description});

  factory CarePlan_Detail.fromJson(Map<String, dynamic> json) => _$CarePlan_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$CarePlan_DetailToJson(this);
}