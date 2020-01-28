part 'practitionerRole.g.dart';

@JsonSerializable(explicitToJson: true)
class PractitionerRole {

PractitionerRole resourceType;
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
Period period;
Reference practitioner;
Reference organization;
List<CodeableConcept> code;
List<CodeableConcept> specialty;
List<Reference> location;
List<Reference> healthcareService;
List<ContactPoint> telecom;
List<PractitionerRole_AvailableTime> availableTime;
List<PractitionerRole_NotAvailable> notAvailable;
String availabilityExceptions;
Element _availabilityExceptions;
List<Reference> endpoint;

PractitionerRole(
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
      this.period,
      this.practitioner,
      this.organization,
      this.code,
      this.specialty,
      this.location,
      this.healthcareService,
      this.telecom,
      this.availableTime,
      this.notAvailable,
      this.availabilityExceptions,
      this._availabilityExceptions,
      this.endpoint,
      });

  factory PractitionerRole.fromJson(Map<String, dynamic> json) => _$PractitionerRoleFromJson(json);
  Map<String, dynamic> toJson() _$PractitionerRoleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PractitionerRole_AvailableTime {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<String> daysOfWeek;
List<Element> _daysOfWeek;
bool allDay;
Element _allDay;
String availableStartTime;
Element _availableStartTime;
String availableEndTime;
Element _availableEndTime;

PractitionerRole_AvailableTime(
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

  factory PractitionerRole_AvailableTime.fromJson(Map<String, dynamic> json) => _$PractitionerRole_AvailableTimeFromJson(json);
  Map<String, dynamic> toJson() _$PractitionerRole_AvailableTimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PractitionerRole_NotAvailable {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
Period during;

PractitionerRole_NotAvailable(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.during,
      });

  factory PractitionerRole_NotAvailable.fromJson(Map<String, dynamic> json) => _$PractitionerRole_NotAvailableFromJson(json);
  Map<String, dynamic> toJson() _$PractitionerRole_NotAvailableToJson(this);
}

