part 'medicationStatement.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationStatement {

MedicationStatement resourceType;
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
String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _effectiveDateTime;
Period effectivePeriod;
DateTime dateAsserted;
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
      this.dosage,
      });

  factory MedicationStatement.fromJson(Map<String, dynamic> json) => _$MedicationStatementFromJson(json);
  Map<String, dynamic> toJson() _$MedicationStatementToJson(this);
}

