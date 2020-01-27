
part 'verificationResult.g.dart';

@JsonSerializable(explicitToJson: true)
class VerificationResult {
  
  // This is a VerificationResult 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A resource that was validated.
  List<Reference target;

  // The fhirpath location(s) within the resource that was validated.
  List<String targetLocation;

  // Extensions for targetLocation
  List<Element _targetLocation;

  // The frequency with which the target must be validated (none; initial;
  //  periodic).
  CodeableConcept need;

  // The validation status of the target (attested; validated; in process;
  //  requires revalidation; validation failed; revalidation failed).
  String status;

  // Extensions for status
  Element _status;

  // When the validation status was updated.
  StringTime statusDate;

  // Extensions for statusDate
  Element _statusDate;

  // What the target is validated against (nothing; primary source; multiple
  //  sources).
  CodeableConcept validationType;

  // The primary process by which the target is validated (edit check; value
  //  set; primary source; multiple sources; standalone; in context).
  List<CodeableConcept validationProcess;

  // Frequency of revalidation.
  Timing frequency;

  // The date/time validation was last completed (including failed validations).
  StringTime lastPerformed;

  // Extensions for lastPerformed
  Element _lastPerformed;

  // The date when target is next validated, if appropriate.
  String nextScheduled;

  // Extensions for nextScheduled
  Element _nextScheduled;

  // The result if validation fails (fatal; warning; record only; none).
  CodeableConcept failureAction;

  // Information about the primary source(s) involved in validation.
  List<VerificationResult_PrimarySource primarySource;

  // Information about the entity attesting to information.
  VerificationResult_Attestation attestation;

  // Information about the entity validating information.
  List<VerificationResult_Validator validator
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

@JsonSerializable(explicitToJson: true)
class VerificationResult_Attestation {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The individual or organization attesting to information.
  Reference who;

  // When the who is asserting on behalf of another (organization or
  //  individual).
  Reference onBehalfOf;

  // The method by which attested information was submitted/retrieved (manual;
  //  API; Push).
  CodeableConcept communicationMethod;

  // The date the information was attested to.
  String date;

  // Extensions for date
  Element _date;

  // A digital identity certificate associated with the attestation source.
  String sourceIdentityCertificate;

  // Extensions for sourceIdentityCertificate
  Element _sourceIdentityCertificate;

  // A digital identity certificate associated with the proxy entity submitting
  //  attested information on behalf of the attestation source.
  String proxyIdentityCertificate;

  // Extensions for proxyIdentityCertificate
  Element _proxyIdentityCertificate;

  // Signed assertion by the proxy entity indicating that they have the right to
  //  submit attested information on behalf of the attestation source.
  Signature proxySignature;

  // Signed assertion by the attestation source that they have attested to the
  //  information.
  Signature sourceSignature
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
this.sourceSignature});

  factory VerificationResult_Attestation.fromJson(Map<String, dynamic> json) => _$VerificationResult_AttestationFromJson(json);
  Map<String, dynamic> toJson() => _$VerificationResult_AttestationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VerificationResult_PrimarySource {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Reference to the primary source.
  Reference who;

  // Type of primary source (License Board; Primary Education; Continuing
  //  Education; Postal Service; Relationship owner; Registration Authority; legal
  //  source; issuing source; authoritative source).
  List<CodeableConcept type;

  // Method for communicating with the primary source (manual; API; Push).
  List<CodeableConcept communicationMethod;

  // Status of the validation of the target against the primary source
  //  (successful; failed; unknown).
  CodeableConcept validationStatus;

  // When the target was validated against the primary source.
  StringTime validationDate;

  // Extensions for validationDate
  Element _validationDate;

  // Ability of the primary source to push updates/alerts (yes; no;
  //  undetermined).
  CodeableConcept canPushUpdates;

  // Type of alerts/updates the primary source can send (specific requested
  //  changes; any changes; as defined by source).
  List<CodeableConcept pushTypeAvailable
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

@JsonSerializable(explicitToJson: true)
class VerificationResult_Validator {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Reference to the organization validating information.
  Reference organization;

  // A digital identity certificate associated with the validator.
  String identityCertificate;

  // Extensions for identityCertificate
  Element _identityCertificate;

  // Signed assertion by the validator that they have validated the information.
  Signature attestationSignature
VerificationResult_Validator(
      {this.id,
this.extension,
this.modifierExtension,
this.organization,
this.identityCertificate,
this._identityCertificate,
this.attestationSignature});

  factory VerificationResult_Validator.fromJson(Map<String, dynamic> json) => _$VerificationResult_ValidatorFromJson(json);
  Map<String, dynamic> toJson() => _$VerificationResult_ValidatorToJson(this);
}
