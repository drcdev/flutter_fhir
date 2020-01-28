part 'device.g.dart';

@JsonSerializable(explicitToJson: true)
class Device {

Device resourceType;
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
String status; // <code> enum: active/inactive/entered-in-error/unknown;
Element _status;
List<CodeableConcept> statusReason;
String distinctIdentifier;
Element _distinctIdentifier;
String manufacturer;
Element _manufacturer;
DateTime manufactureDate;
Element _manufactureDate;
DateTime expirationDate;
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
      this.parent,
      });

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
  Map<String, dynamic> toJson() _$DeviceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_UdiCarrier {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String deviceIdentifier;
Element _deviceIdentifier;
String issuer;
Element _issuer;
String jurisdiction;
Element _jurisdiction;
String carrierAIDC;
Element _carrierAIDC;
String carrierHRF;
Element _carrierHRF;
String entryType; // <code> enum: barcode/rfid/manual/card/self-reported/unknown;
Element _entryType;

Device_UdiCarrier(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.deviceIdentifier,
      this._deviceIdentifier,
      this.issuer,
      this._issuer,
      this.jurisdiction,
      this._jurisdiction,
      this.carrierAIDC,
      this._carrierAIDC,
      this.carrierHRF,
      this._carrierHRF,
      this.entryType,
      this._entryType,
      });

  factory Device_UdiCarrier.fromJson(Map<String, dynamic> json) => _$Device_UdiCarrierFromJson(json);
  Map<String, dynamic> toJson() _$Device_UdiCarrierToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_DeviceName {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String type; // <code> enum: udi-label-name/user-friendly-name/patient-reported-name/manufacturer-name/model-name/other;
Element _type;

Device_DeviceName(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.type,
      this._type,
      });

  factory Device_DeviceName.fromJson(Map<String, dynamic> json) => _$Device_DeviceNameFromJson(json);
  Map<String, dynamic> toJson() _$Device_DeviceNameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_Specialization {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept systemType;
String version;
Element _version;

Device_Specialization(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.systemType,
      this.version,
      this._version,
      });

  factory Device_Specialization.fromJson(Map<String, dynamic> json) => _$Device_SpecializationFromJson(json);
  Map<String, dynamic> toJson() _$Device_SpecializationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_Version {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Identifier component;
String value;
Element _value;

Device_Version(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.component,
      this.value,
      this._value,
      });

  factory Device_Version.fromJson(Map<String, dynamic> json) => _$Device_VersionFromJson(json);
  Map<String, dynamic> toJson() _$Device_VersionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_Property {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<Quantity> valueQuantity;
List<CodeableConcept> valueCode;

Device_Property(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.valueQuantity,
      this.valueCode,
      });

  factory Device_Property.fromJson(Map<String, dynamic> json) => _$Device_PropertyFromJson(json);
  Map<String, dynamic> toJson() _$Device_PropertyToJson(this);
}

