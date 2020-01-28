part 'medicationRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationRequest {

MedicationRequest resourceType;
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
List<Identifier> identifier;
String status;
Element _status;
CodeableConcept statusReason;
String intent;
Element _intent;
List<CodeableConcept> category;
String priority;
Element _priority;
bool doNotPerform;
Element _doNotPerform;
bool reportedBoolean; //  pattern: ^true|false$
Element _reportedBoolean;
Reference reportedReference;
CodeableConcept medicationCodeableConcept;
Reference medicationReference;
Reference subject;
Reference encounter;
List<Reference> supportingInformation;
DateTime authoredOn;
Element _authoredOn;
Reference requester;
Reference performer;
CodeableConcept performerType;
Reference recorder;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<String> instantiatesCanonical;
List<Element> _instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
List<Reference> basedOn;
Identifier groupIdentifier;
CodeableConcept courseOfTherapyType;
List<Reference> insurance;
List<Annotation> note;
List<Dosage> dosageInstruction;
MedicationRequest_DispenseRequest dispenseRequest;
MedicationRequest_Substitution substitution;
Reference priorPrescription;
List<Reference> detectedIssue;
List<Reference> eventHistory;

MedicationRequest(
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
      this.identifier,
      this.status,
      this._status,
      this.statusReason,
      this.intent,
      this._intent,
      this.category,
      this.priority,
      this._priority,
      this.doNotPerform,
      this._doNotPerform,
      this.reportedBoolean,
      this._reportedBoolean,
      this.reportedReference,
      this.medicationCodeableConcept,
      this.medicationReference,
      this.subject,
      this.encounter,
      this.supportingInformation,
      this.authoredOn,
      this._authoredOn,
      this.requester,
      this.performer,
      this.performerType,
      this.recorder,
      this.reasonCode,
      this.reasonReference,
      this.instantiatesCanonical,
      this._instantiatesCanonical,
      this.instantiatesUri,
      this._instantiatesUri,
      this.basedOn,
      this.groupIdentifier,
      this.courseOfTherapyType,
      this.insurance,
      this.note,
      this.dosageInstruction,
      this.dispenseRequest,
      this.substitution,
      this.priorPrescription,
      this.detectedIssue,
      this.eventHistory,
      });

  factory MedicationRequest.fromJson(Map<String, dynamic> json) => _$MedicationRequestFromJson(json);
  Map<String, dynamic> toJson() _$MedicationRequestToJson(this);
}

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
      this.performer,
      });

  factory MedicationRequest_DispenseRequest.fromJson(Map<String, dynamic> json) => _$MedicationRequest_DispenseRequestFromJson(json);
  Map<String, dynamic> toJson() _$MedicationRequest_DispenseRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationRequest_InitialFill {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity quantity;
Duration duration;

MedicationRequest_InitialFill(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.quantity,
      this.duration,
      });

  factory MedicationRequest_InitialFill.fromJson(Map<String, dynamic> json) => _$MedicationRequest_InitialFillFromJson(json);
  Map<String, dynamic> toJson() _$MedicationRequest_InitialFillToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationRequest_Substitution {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool allowedBoolean; //  pattern: ^true|false$
Element _allowedBoolean;
CodeableConcept allowedCodeableConcept;
CodeableConcept reason;

MedicationRequest_Substitution(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.allowedBoolean,
      this._allowedBoolean,
      this.allowedCodeableConcept,
      this.reason,
      });

  factory MedicationRequest_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationRequest_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() _$MedicationRequest_SubstitutionToJson(this);
}

