part 'healthcareService.g.dart';

@JsonSerializable(explicitToJson: true)
class HealthcareService {

HealthcareService resourceType;
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
      this.endpoint,
      });

  factory HealthcareService.fromJson(Map<String, dynamic> json) => _$HealthcareServiceFromJson(json);
  Map<String, dynamic> toJson() _$HealthcareServiceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HealthcareService_Eligibility {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
String comment;
Element _comment;

HealthcareService_Eligibility(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.comment,
      this._comment,
      });

  factory HealthcareService_Eligibility.fromJson(Map<String, dynamic> json) => _$HealthcareService_EligibilityFromJson(json);
  Map<String, dynamic> toJson() _$HealthcareService_EligibilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HealthcareService_AvailableTime {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Element> _daysOfWeek;
bool allDay;
Element _allDay;
String availableStartTime;
Element _availableStartTime;
String availableEndTime;
Element _availableEndTime;

HealthcareService_AvailableTime(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.daysOfWeek,
      this._daysOfWeek,
      this.allDay,
      this._allDay,
      this.availableStartTime,
      this._availableStartTime,
      this.availableEndTime,
      this._availableEndTime,
      });

  factory HealthcareService_AvailableTime.fromJson(Map<String, dynamic> json) => _$HealthcareService_AvailableTimeFromJson(json);
  Map<String, dynamic> toJson() _$HealthcareService_AvailableTimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HealthcareService_NotAvailable {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
Period during;

HealthcareService_NotAvailable(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.during,
      });

  factory HealthcareService_NotAvailable.fromJson(Map<String, dynamic> json) => _$HealthcareService_NotAvailableFromJson(json);
  Map<String, dynamic> toJson() _$HealthcareService_NotAvailableToJson(this);
}

