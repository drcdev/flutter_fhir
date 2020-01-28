part 'medicationAdministration.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationAdministration {

MedicationAdministration resourceType;
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
List<String> instantiates;
List<Element> _instantiates;
List<Reference> partOf;
String status;
Element _status;
List<CodeableConcept> statusReason;
CodeableConcept category;
CodeableConcept medicationCodeableConcept;
Reference medicationReference;
Reference subject;
Reference context;
List<Reference> supportingInformation;
String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _effectiveDateTime;
Period effectivePeriod;
List<MedicationAdministration_Performer> performer;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
Reference request;
List<Reference> device;
List<Annotation> note;
MedicationAdministration_Dosage dosage;
List<Reference> eventHistory;

MedicationAdministration(
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
      this.instantiates,
      this._instantiates,
      this.partOf,
      this.status,
      this._status,
      this.statusReason,
      this.category,
      this.medicationCodeableConcept,
      this.medicationReference,
      this.subject,
      this.context,
      this.supportingInformation,
      this.effectiveDateTime,
      this._effectiveDateTime,
      this.effectivePeriod,
      this.performer,
      this.reasonCode,
      this.reasonReference,
      this.request,
      this.device,
      this.note,
      this.dosage,
      this.eventHistory,
      });

  factory MedicationAdministration.fromJson(Map<String, dynamic> json) => _$MedicationAdministrationFromJson(json);
  Map<String, dynamic> toJson() _$MedicationAdministrationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationAdministration_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;

MedicationAdministration_Performer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.function,
      this.actor,
      });

  factory MedicationAdministration_Performer.fromJson(Map<String, dynamic> json) => _$MedicationAdministration_PerformerFromJson(json);
  Map<String, dynamic> toJson() _$MedicationAdministration_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationAdministration_Dosage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String text;
Element _text;
CodeableConcept site;
CodeableConcept route;
CodeableConcept method;
Quantity dose;
Ratio rateRatio;
Quantity rateQuantity;

MedicationAdministration_Dosage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.text,
      this._text,
      this.site,
      this.route,
      this.method,
      this.dose,
      this.rateRatio,
      this.rateQuantity,
      });

  factory MedicationAdministration_Dosage.fromJson(Map<String, dynamic> json) => _$MedicationAdministration_DosageFromJson(json);
  Map<String, dynamic> toJson() _$MedicationAdministration_DosageToJson(this);
}

