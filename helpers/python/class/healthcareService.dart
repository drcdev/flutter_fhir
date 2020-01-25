

part 'healthcareService.g.dart';

@JsonSerializable(explicitToJson: true)
class HealthcareService {

  This is a HealthcareService resource resourceType;
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
  bool active;
  Element _active;
  Reference providedBy;
  List<CodeableConcept> category;
  List<CodeableConcept> type;
  List<CodeableConcept> specialty;
  List<Reference> location;
  String name;
  Element _name;
  String comment;
  Element _comment;
  String extraDetails;
  Element _extraDetails;
  Attachment photo;
  List<ContactPoint> telecom;
  List<Reference> coverageArea;
  List<CodeableConcept> serviceProvisionCode;
  List<HealthcareService_Eligibility> eligibility;
  List<CodeableConcept> program;
  List<CodeableConcept> characteristic;
  List<CodeableConcept> communication;
  List<CodeableConcept> referralMethod;
  bool appointmentRequired;
  Element _appointmentRequired;
  List<HealthcareService_AvailableTime> availableTime;
  List<HealthcareService_NotAvailable> notAvailable;
  String availabilityExceptions;
  Element _availabilityExceptions;
  List<Reference> endpoint;


HealthcareService(
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
this.active,
this._active,
this.providedBy,
this.category,
this.type,
this.specialty,
this.location,
this.name,
this._name,
this.comment,
this._comment,
this.extraDetails,
this._extraDetails,
this.photo,
this.telecom,
this.coverageArea,
this.serviceProvisionCode,
this.eligibility,
this.program,
this.characteristic,
this.communication,
this.referralMethod,
this.appointmentRequired,
this._appointmentRequired,
this.availableTime,
this.notAvailable,
this.availabilityExceptions,
this._availabilityExceptions,
this.endpoint});

  factory HealthcareService.fromJson(Map<String, dynamic> json) => _$HealthcareServiceFromJson(json);
  Map<String, dynamic> toJson() => _$HealthcareServiceToJson(this);
}