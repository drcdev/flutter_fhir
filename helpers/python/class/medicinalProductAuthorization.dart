

part 'medicinalProductAuthorization.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductAuthorization {

  This is a MedicinalProductAuthorization resource resourceType;
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
  Reference subject;
  List<CodeableConcept> country;
  List<CodeableConcept> jurisdiction;
  CodeableConcept status;
  StringTime statusDate;
  Element _statusDate;
  StringTime restoreDate;
  Element _restoreDate;
  Period validityPeriod;
  Period dataExclusivityPeriod;
  StringTime dateOfFirstAuthorization;
  Element _dateOfFirstAuthorization;
  StringTime internationalBirthDate;
  Element _internationalBirthDate;
  CodeableConcept legalBasis;
  List<MedicinalProductAuthorization_JurisdictionalAuthorization> jurisdictionalAuthorization;
  Reference holder;
  Reference regulator;
  MedicinalProductAuthorization_Procedure procedure;


MedicinalProductAuthorization(
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
this.subject,
this.country,
this.jurisdiction,
this.status,
this.statusDate,
this._statusDate,
this.restoreDate,
this._restoreDate,
this.validityPeriod,
this.dataExclusivityPeriod,
this.dateOfFirstAuthorization,
this._dateOfFirstAuthorization,
this.internationalBirthDate,
this._internationalBirthDate,
this.legalBasis,
this.jurisdictionalAuthorization,
this.holder,
this.regulator,
this.procedure});

  factory MedicinalProductAuthorization.fromJson(Map<String, dynamic> json) => _$MedicinalProductAuthorizationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductAuthorizationToJson(this);
}