

part 'immunization.g.dart';

@JsonSerializable(explicitToJson: true)
class Immunization {

  This is a Immunization resource resourceType;
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
  CodeableConcept vaccineCode;
  Reference patient;
  Reference encounter;
  String occurrenceDateTime;
  Element _occurrenceDateTime;
  String occurrenceString;
  Element _occurrenceString;
  StringTime recorded;
  Element _recorded;
  bool primarySource;
  Element _primarySource;
  CodeableConcept reportOrigin;
  Reference location;
  Reference manufacturer;
  String lotNumber;
  Element _lotNumber;
  String expirationDate;
  Element _expirationDate;
  CodeableConcept site;
  CodeableConcept route;
  Quantity doseQuantity;
  List<Immunization_Performer> performer;
  List<Annotation> note;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  bool isSubpotent;
  Element _isSubpotent;
  List<CodeableConcept> subpotentReason;
  List<Immunization_Education> education;
  List<CodeableConcept> programEligibility;
  CodeableConcept fundingSource;
  List<Immunization_Reaction> reaction;
  List<Immunization_ProtocolApplied> protocolApplied;


Immunization(
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
this.vaccineCode,
this.patient,
this.encounter,
this.occurrenceDateTime,
this._occurrenceDateTime,
this.occurrenceString,
this._occurrenceString,
this.recorded,
this._recorded,
this.primarySource,
this._primarySource,
this.reportOrigin,
this.location,
this.manufacturer,
this.lotNumber,
this._lotNumber,
this.expirationDate,
this._expirationDate,
this.site,
this.route,
this.doseQuantity,
this.performer,
this.note,
this.reasonCode,
this.reasonReference,
this.isSubpotent,
this._isSubpotent,
this.subpotentReason,
this.education,
this.programEligibility,
this.fundingSource,
this.reaction,
this.protocolApplied});

  factory Immunization.fromJson(Map<String, dynamic> json) => _$ImmunizationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationToJson(this);
}