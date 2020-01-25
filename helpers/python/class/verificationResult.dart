

part 'verificationResult.g.dart';

@JsonSerializable(explicitToJson: true)
class VerificationResult {

  This is a VerificationResult resource resourceType;
  String id;
  Meta meta;
  String implicitRules;
  Element _implicitRules;
  String language;
  Element _language;
  Narrative text;
  List<ResourceList> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Reference> target;
  List<String> targetLocation;
  List<Element> _targetLocation;
  CodeableConcept need;
  String status;
  Element _status;
  StringTime statusDate;
  Element _statusDate;
  CodeableConcept validationType;
  List<CodeableConcept> validationProcess;
  Timing frequency;
  StringTime lastPerformed;
  Element _lastPerformed;
  String nextScheduled;
  Element _nextScheduled;
  CodeableConcept failureAction;
  List<VerificationResult_PrimarySource> primarySource;
  VerificationResult_Attestation attestation;
  List<VerificationResult_Validator> validator;


VerificationResult(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.text,
this.contained,
this.extension,
this.modifierExtension,
this.target,
this.targetLocation,
this._targetLocation,
this.need,
this.status,
this._status,
this.statusDate,
this._statusDate,
this.validationType,
this.validationProcess,
this.frequency,
this.lastPerformed,
this._lastPerformed,
this.nextScheduled,
this._nextScheduled,
this.failureAction,
this.primarySource,
this.attestation,
this.validator});

  factory VerificationResult.fromJson(Map<String, dynamic> json) => _$VerificationResultFromJson(json);
  Map<String, dynamic> toJson() => _$VerificationResultToJson(this);
}