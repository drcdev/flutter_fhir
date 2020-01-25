

part 'encounter.g.dart';

@JsonSerializable(explicitToJson: true)
class Encounter {

  This is a Encounter resource resourceType;
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
  enum: plannedarrivedtriagedin-progressonleavefinishedcancelledentered-in-errorunknown status;
  Element _status;
  List<Encounter_StatusHistory> statusHistory;
  Coding class;
  List<Encounter_ClassHistory> classHistory;
  List<CodeableConcept> type;
  CodeableConcept serviceType;
  CodeableConcept priority;
  Reference subject;
  List<Reference> episodeOfCare;
  List<Reference> basedOn;
  List<Encounter_Participant> participant;
  List<Reference> appointment;
  Period period;
  Duration length;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Encounter_Diagnosis> diagnosis;
  List<Reference> account;
  Encounter_Hospitalization hospitalization;
  List<Encounter_Location> location;
  Reference serviceProvider;
  Reference partOf;


Encounter(
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
this.statusHistory,
this.class,
this.classHistory,
this.type,
this.serviceType,
this.priority,
this.subject,
this.episodeOfCare,
this.basedOn,
this.participant,
this.appointment,
this.period,
this.length,
this.reasonCode,
this.reasonReference,
this.diagnosis,
this.account,
this.hospitalization,
this.location,
this.serviceProvider,
this.partOf});

  factory Encounter.fromJson(Map<String, dynamic> json) => _$EncounterFromJson(json);
  Map<String, dynamic> toJson() => _$EncounterToJson(this);
}