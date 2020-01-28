part 'verificationResult.g.dart';

@JsonSerializable(explicitToJson: true)
class VerificationResult {

VerificationResult resourceType;
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
DateTime statusDate;
Element _statusDate;
CodeableConcept validationType;
List<CodeableConcept> validationProcess;
Timing frequency;
DateTime lastPerformed;
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
      this.validator,
      });

  factory VerificationResult.fromJson(Map<String, dynamic> json) => _$VerificationResultFromJson(json);
  Map<String, dynamic> toJson() _$VerificationResultToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VerificationResult_PrimarySource {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference who;
List<CodeableConcept> type;
List<CodeableConcept> communicationMethod;
CodeableConcept validationStatus;
DateTime validationDate;
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
      this.pushTypeAvailable,
      });

  factory VerificationResult_PrimarySource.fromJson(Map<String, dynamic> json) => _$VerificationResult_PrimarySourceFromJson(json);
  Map<String, dynamic> toJson() _$VerificationResult_PrimarySourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VerificationResult_Attestation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference who;
Reference onBehalfOf;
CodeableConcept communicationMethod;
String date;
Element _date;
String sourceIdentityCertificate;
Element _sourceIdentityCertificate;
String proxyIdentityCertificate;
Element _proxyIdentityCertificate;
Signature proxySignature;
Signature sourceSignature;

VerificationResult_Attestation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.who,
      this.onBehalfOf,
      this.communicationMethod,
      this.date,
      this._date,
      this.sourceIdentityCertificate,
      this._sourceIdentityCertificate,
      this.proxyIdentityCertificate,
      this._proxyIdentityCertificate,
      this.proxySignature,
      this.sourceSignature,
      });

  factory VerificationResult_Attestation.fromJson(Map<String, dynamic> json) => _$VerificationResult_AttestationFromJson(json);
  Map<String, dynamic> toJson() _$VerificationResult_AttestationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VerificationResult_Validator {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference organization;
String identityCertificate;
Element _identityCertificate;
Signature attestationSignature;

VerificationResult_Validator(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.organization,
      this.identityCertificate,
      this._identityCertificate,
      this.attestationSignature,
      });

  factory VerificationResult_Validator.fromJson(Map<String, dynamic> json) => _$VerificationResult_ValidatorFromJson(json);
  Map<String, dynamic> toJson() _$VerificationResult_ValidatorToJson(this);
}

