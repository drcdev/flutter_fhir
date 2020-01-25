

part 'medicationStatement.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationStatement {

  This is a MedicationStatement resource resourceType;
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
  List<Reference> basedOn;
  List<Reference> partOf;
  String status;
  Element _status;
  List<CodeableConcept> statusReason;
  CodeableConcept category;
  CodeableConcept medicationCodeableConcept;
  Reference medicationReference;
  Reference subject;
  Reference context;
  String effectiveDateTime;
  Element _effectiveDateTime;
  Period effectivePeriod;
  StringTime dateAsserted;
  Element _dateAsserted;
  Reference informationSource;
  List<Reference> derivedFrom;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Annotation> note;
  List<Dosage> dosage;


MedicationStatement(
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
this.basedOn,
this.partOf,
this.status,
this._status,
this.statusReason,
this.category,
this.medicationCodeableConcept,
this.medicationReference,
this.subject,
this.context,
this.effectiveDateTime,
this._effectiveDateTime,
this.effectivePeriod,
this.dateAsserted,
this._dateAsserted,
this.informationSource,
this.derivedFrom,
this.reasonCode,
this.reasonReference,
this.note,
this.dosage});

  factory MedicationStatement.fromJson(Map<String, dynamic> json) => _$MedicationStatementFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationStatementToJson(this);
}