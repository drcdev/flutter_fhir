

part 'location.g.dart';

@JsonSerializable(explicitToJson: true)
class Location {

  This is a Location resource resourceType;
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
  enum: activesuspendedinactive status;
  Element _status;
  Coding operationalStatus;
  String name;
  Element _name;
  List<String> alias;
  List<Element> _alias;
  String description;
  Element _description;
  enum: instancekind mode;
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
this.endpoint});

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}