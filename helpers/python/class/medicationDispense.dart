part 'medicationDispense.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationDispense {

MedicationDispense resourceType;
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
List<Reference> partOf;
String status;
Element _status;
CodeableConcept statusReasonCodeableConcept;
Reference statusReasonReference;
CodeableConcept category;
CodeableConcept medicationCodeableConcept;
Reference medicationReference;
Reference subject;
Reference context;
List<Reference> supportingInformation;
List<MedicationDispense_Performer> performer;
Reference location;
List<Reference> authorizingPrescription;
CodeableConcept type;
Quantity quantity;
Quantity daysSupply;
DateTime whenPrepared;
Element _whenPrepared;
DateTime whenHandedOver;
Element _whenHandedOver;
Reference destination;
List<Reference> receiver;
List<Annotation> note;
List<Dosage> dosageInstruction;
MedicationDispense_Substitution substitution;
List<Reference> detectedIssue;
List<Reference> eventHistory;

MedicationDispense(
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
      this.partOf,
      this.status,
      this._status,
      this.statusReasonCodeableConcept,
      this.statusReasonReference,
      this.category,
      this.medicationCodeableConcept,
      this.medicationReference,
      this.subject,
      this.context,
      this.supportingInformation,
      this.performer,
      this.location,
      this.authorizingPrescription,
      this.type,
      this.quantity,
      this.daysSupply,
      this.whenPrepared,
      this._whenPrepared,
      this.whenHandedOver,
      this._whenHandedOver,
      this.destination,
      this.receiver,
      this.note,
      this.dosageInstruction,
      this.substitution,
      this.detectedIssue,
      this.eventHistory,
      });

  factory MedicationDispense.fromJson(Map<String, dynamic> json) => _$MedicationDispenseFromJson(json);
  Map<String, dynamic> toJson() _$MedicationDispenseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationDispense_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;

MedicationDispense_Performer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.function,
      this.actor,
      });

  factory MedicationDispense_Performer.fromJson(Map<String, dynamic> json) => _$MedicationDispense_PerformerFromJson(json);
  Map<String, dynamic> toJson() _$MedicationDispense_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationDispense_Substitution {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool wasSubstituted;
Element _wasSubstituted;
CodeableConcept type;
List<CodeableConcept> reason;
List<Reference> responsibleParty;

MedicationDispense_Substitution(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.wasSubstituted,
      this._wasSubstituted,
      this.type,
      this.reason,
      this.responsibleParty,
      });

  factory MedicationDispense_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationDispense_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() _$MedicationDispense_SubstitutionToJson(this);
}

