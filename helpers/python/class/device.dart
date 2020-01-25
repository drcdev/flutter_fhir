

part 'device.g.dart';

@JsonSerializable(explicitToJson: true)
class Device {

  This is a Device resource resourceType;
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
  Reference definition;
  List<Device_UdiCarrier> udiCarrier;
  enum: activeinactiveentered-in-errorunknown status;
  Element _status;
  List<CodeableConcept> statusReason;
  String distinctIdentifier;
  Element _distinctIdentifier;
  String manufacturer;
  Element _manufacturer;
  StringTime manufactureDate;
  Element _manufactureDate;
  StringTime expirationDate;
  Element _expirationDate;
  String lotNumber;
  Element _lotNumber;
  String serialNumber;
  Element _serialNumber;
  List<Device_DeviceName> deviceName;
  String modelNumber;
  Element _modelNumber;
  String partNumber;
  Element _partNumber;
  CodeableConcept type;
  List<Device_Specialization> specialization;
  List<Device_Version> version;
  List<Device_Property> property;
  Reference patient;
  Reference owner;
  List<ContactPoint> contact;
  Reference location;
  String url;
  Element _url;
  List<Annotation> note;
  List<CodeableConcept> safety;
  Reference parent;


Device(
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
this.definition,
this.udiCarrier,
this.status,
this._status,
this.statusReason,
this.distinctIdentifier,
this._distinctIdentifier,
this.manufacturer,
this._manufacturer,
this.manufactureDate,
this._manufactureDate,
this.expirationDate,
this._expirationDate,
this.lotNumber,
this._lotNumber,
this.serialNumber,
this._serialNumber,
this.deviceName,
this.modelNumber,
this._modelNumber,
this.partNumber,
this._partNumber,
this.type,
this.specialization,
this.version,
this.property,
this.patient,
this.owner,
this.contact,
this.location,
this.url,
this._url,
this.note,
this.safety,
this.parent});

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceToJson(this);
}