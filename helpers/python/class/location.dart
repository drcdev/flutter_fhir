part 'location.g.dart';

@JsonSerializable(explicitToJson: true)
class Location {

Location resourceType;
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
String status; // <code> enum: active/suspended/inactive;
Element _status;
Coding operationalStatus;
String name;
Element _name;
List<String> alias;
List<Element> _alias;
String description;
Element _description;
String mode; // <code> enum: instance/kind;
Element _mode;
List<CodeableConcept> type;
List<ContactPoint> telecom;
Address address;
CodeableConcept physicalType;
Location_Position position;
Reference managingOrganization;
Reference partOf;
List<Location_HoursOfOperation> hoursOfOperation;
String availabilityExceptions;
Element _availabilityExceptions;
List<Reference> endpoint;

Location(
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
      this.operationalStatus,
      this.name,
      this._name,
      this.alias,
      this._alias,
      this.description,
      this._description,
      this.mode,
      this._mode,
      this.type,
      this.telecom,
      this.address,
      this.physicalType,
      this.position,
      this.managingOrganization,
      this.partOf,
      this.hoursOfOperation,
      this.availabilityExceptions,
      this._availabilityExceptions,
      this.endpoint,
      });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() _$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Location_Position {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
double longitude;
Element _longitude;
double latitude;
Element _latitude;
double altitude;
Element _altitude;

Location_Position(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.longitude,
      this._longitude,
      this.latitude,
      this._latitude,
      this.altitude,
      this._altitude,
      });

  factory Location_Position.fromJson(Map<String, dynamic> json) => _$Location_PositionFromJson(json);
  Map<String, dynamic> toJson() _$Location_PositionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Location_HoursOfOperation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<String> daysOfWeek;
List<Element> _daysOfWeek;
bool allDay;
Element _allDay;
String openingTime;
Element _openingTime;
String closingTime;
Element _closingTime;

Location_HoursOfOperation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.daysOfWeek,
      this._daysOfWeek,
      this.allDay,
      this._allDay,
      this.openingTime,
      this._openingTime,
      this.closingTime,
      this._closingTime,
      });

  factory Location_HoursOfOperation.fromJson(Map<String, dynamic> json) => _$Location_HoursOfOperationFromJson(json);
  Map<String, dynamic> toJson() _$Location_HoursOfOperationToJson(this);
}

