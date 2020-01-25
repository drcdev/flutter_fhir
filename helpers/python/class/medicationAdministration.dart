

part 'medicationAdministration.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationAdministration {

  This is a MedicationAdministration resource resourceType;
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
  String effectiveDateTime;
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
this.eventHistory});

  factory MedicationAdministration.fromJson(Map<String, dynamic> json) => _$MedicationAdministrationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationAdministrationToJson(this);
}