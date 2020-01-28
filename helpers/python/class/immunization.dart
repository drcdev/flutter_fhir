part 'immunization.g.dart';

@JsonSerializable(explicitToJson: true)
class Immunization {

Immunization resourceType;
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
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _occurrenceDateTime;
String occurrenceString; //  pattern: ^[ \r\n\t\S]+$
Element _occurrenceString;
DateTime recorded;
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
      this.protocolApplied,
      });

  factory Immunization.fromJson(Map<String, dynamic> json) => _$ImmunizationFromJson(json);
  Map<String, dynamic> toJson() _$ImmunizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;

Immunization_Performer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.function,
      this.actor,
      });

  factory Immunization_Performer.fromJson(Map<String, dynamic> json) => _$Immunization_PerformerFromJson(json);
  Map<String, dynamic> toJson() _$Immunization_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_Education {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String documentType;
Element _documentType;
String reference;
Element _reference;
DateTime publicationDate;
Element _publicationDate;
DateTime presentationDate;
Element _presentationDate;

Immunization_Education(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.documentType,
      this._documentType,
      this.reference,
      this._reference,
      this.publicationDate,
      this._publicationDate,
      this.presentationDate,
      this._presentationDate,
      });

  factory Immunization_Education.fromJson(Map<String, dynamic> json) => _$Immunization_EducationFromJson(json);
  Map<String, dynamic> toJson() _$Immunization_EducationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_Reaction {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
DateTime date;
Element _date;
Reference detail;
bool reported;
Element _reported;

Immunization_Reaction(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.date,
      this._date,
      this.detail,
      this.reported,
      this._reported,
      });

  factory Immunization_Reaction.fromJson(Map<String, dynamic> json) => _$Immunization_ReactionFromJson(json);
  Map<String, dynamic> toJson() _$Immunization_ReactionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_ProtocolApplied {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String series;
Element _series;
Reference authority;
List<CodeableConcept> targetDisease;
int doseNumberPositiveInt; //  pattern: ^[1-9][0-9]*$
Element _doseNumberPositiveInt;
String doseNumberString; //  pattern: ^[ \r\n\t\S]+$
Element _doseNumberString;
int seriesDosesPositiveInt; //  pattern: ^[1-9][0-9]*$
Element _seriesDosesPositiveInt;
String seriesDosesString; //  pattern: ^[ \r\n\t\S]+$
Element _seriesDosesString;

Immunization_ProtocolApplied(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.series,
      this._series,
      this.authority,
      this.targetDisease,
      this.doseNumberPositiveInt,
      this._doseNumberPositiveInt,
      this.doseNumberString,
      this._doseNumberString,
      this.seriesDosesPositiveInt,
      this._seriesDosesPositiveInt,
      this.seriesDosesString,
      this._seriesDosesString,
      });

  factory Immunization_ProtocolApplied.fromJson(Map<String, dynamic> json) => _$Immunization_ProtocolAppliedFromJson(json);
  Map<String, dynamic> toJson() _$Immunization_ProtocolAppliedToJson(this);
}

