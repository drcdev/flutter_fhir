part 'medicinalProductAuthorization.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductAuthorization {

MedicinalProductAuthorization resourceType;
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
DateTime statusDate;
Element _statusDate;
DateTime restoreDate;
Element _restoreDate;
Period validityPeriod;
Period dataExclusivityPeriod;
DateTime dateOfFirstAuthorization;
Element _dateOfFirstAuthorization;
DateTime internationalBirthDate;
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
      this.procedure,
      });

  factory MedicinalProductAuthorization.fromJson(Map<String, dynamic> json) => _$MedicinalProductAuthorizationFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductAuthorizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductAuthorization_JurisdictionalAuthorization {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
CodeableConcept country;
List<CodeableConcept> jurisdiction;
CodeableConcept legalStatusOfSupply;
Period validityPeriod;

MedicinalProductAuthorization_JurisdictionalAuthorization(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.country,
      this.jurisdiction,
      this.legalStatusOfSupply,
      this.validityPeriod,
      });

  factory MedicinalProductAuthorization_JurisdictionalAuthorization.fromJson(Map<String, dynamic> json) => _$MedicinalProductAuthorization_JurisdictionalAuthorizationFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductAuthorization_JurisdictionalAuthorizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductAuthorization_Procedure {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier identifier;
CodeableConcept type;
Period datePeriod;
String dateDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _dateDateTime;
List<MedicinalProductAuthorization_Procedure> application;

MedicinalProductAuthorization_Procedure(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.type,
      this.datePeriod,
      this.dateDateTime,
      this._dateDateTime,
      this.application,
      });

  factory MedicinalProductAuthorization_Procedure.fromJson(Map<String, dynamic> json) => _$MedicinalProductAuthorization_ProcedureFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductAuthorization_ProcedureToJson(this);
}

