

part 'verificationResult_PrimarySource.g.dart';

@JsonSerializable(explicitToJson: true)
class VerificationResult_PrimarySource {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference who;
  List<CodeableConcept> type;
  List<CodeableConcept> communicationMethod;
  CodeableConcept validationStatus;
  StringTime validationDate;
  Element _validationDate;
  CodeableConcept canPushUpdates;
  List<CodeableConcept> pushTypeAvailable;


VerificationResult_PrimarySource(
      {this.id,
this.extension,
this.modifierExtension,
this.who,
this.type,
this.communicationMethod,
this.validationStatus,
this.validationDate,
this._validationDate,
this.canPushUpdates,
this.pushTypeAvailable});

  factory VerificationResult_PrimarySource.fromJson(Map<String, dynamic> json) => _$VerificationResult_PrimarySourceFromJson(json);
  Map<String, dynamic> toJson() => _$VerificationResult_PrimarySourceToJson(this);
}