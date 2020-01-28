part 'deviceDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceDefinition {

DeviceDefinition resourceType;
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
List<DeviceDefinition_UdiDeviceIdentifier> udiDeviceIdentifier;
String manufacturerString; //  pattern: ^[ \r\n\t\S]+$
Element _manufacturerString;
Reference manufacturerReference;
List<DeviceDefinition_DeviceName> deviceName;
String modelNumber;
Element _modelNumber;
CodeableConcept type;
List<DeviceDefinition_Specialization> specialization;
List<String> version;
List<Element> _version;
List<CodeableConcept> safety;
List<ProductShelfLife> shelfLifeStorage;
ProdCharacteristic physicalCharacteristics;
List<CodeableConcept> languageCode;
List<DeviceDefinition_Capability> capability;
List<DeviceDefinition_Property> property;
Reference owner;
List<ContactPoint> contact;
String url;
Element _url;
String onlineInformation;
Element _onlineInformation;
List<Annotation> note;
Quantity quantity;
Reference parentDevice;
List<DeviceDefinition_Material> material;

DeviceDefinition(
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
      this.udiDeviceIdentifier,
      this.manufacturerString,
      this._manufacturerString,
      this.manufacturerReference,
      this.deviceName,
      this.modelNumber,
      this._modelNumber,
      this.type,
      this.specialization,
      this.version,
      this._version,
      this.safety,
      this.shelfLifeStorage,
      this.physicalCharacteristics,
      this.languageCode,
      this.capability,
      this.property,
      this.owner,
      this.contact,
      this.url,
      this._url,
      this.onlineInformation,
      this._onlineInformation,
      this.note,
      this.quantity,
      this.parentDevice,
      this.material,
      });

  factory DeviceDefinition.fromJson(Map<String, dynamic> json) => _$DeviceDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$DeviceDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_UdiDeviceIdentifier {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String deviceIdentifier;
Element _deviceIdentifier;
String issuer;
Element _issuer;
String jurisdiction;
Element _jurisdiction;

DeviceDefinition_UdiDeviceIdentifier(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.deviceIdentifier,
      this._deviceIdentifier,
      this.issuer,
      this._issuer,
      this.jurisdiction,
      this._jurisdiction,
      });

  factory DeviceDefinition_UdiDeviceIdentifier.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_UdiDeviceIdentifierFromJson(json);
  Map<String, dynamic> toJson() _$DeviceDefinition_UdiDeviceIdentifierToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_DeviceName {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String type; // <code> enum: udi-label-name/user-friendly-name/patient-reported-name/manufacturer-name/model-name/other;
Element _type;

DeviceDefinition_DeviceName(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.type,
      this._type,
      });

  factory DeviceDefinition_DeviceName.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_DeviceNameFromJson(json);
  Map<String, dynamic> toJson() _$DeviceDefinition_DeviceNameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Specialization {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String systemType;
Element _systemType;
String version;
Element _version;

DeviceDefinition_Specialization(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.systemType,
      this._systemType,
      this.version,
      this._version,
      });

  factory DeviceDefinition_Specialization.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_SpecializationFromJson(json);
  Map<String, dynamic> toJson() _$DeviceDefinition_SpecializationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Capability {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<CodeableConcept> description;

DeviceDefinition_Capability(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.description,
      });

  factory DeviceDefinition_Capability.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_CapabilityFromJson(json);
  Map<String, dynamic> toJson() _$DeviceDefinition_CapabilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Property {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<Quantity> valueQuantity;
List<CodeableConcept> valueCode;

DeviceDefinition_Property(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.valueQuantity,
      this.valueCode,
      });

  factory DeviceDefinition_Property.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_PropertyFromJson(json);
  Map<String, dynamic> toJson() _$DeviceDefinition_PropertyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Material {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept substance;
bool alternate;
Element _alternate;
bool allergenicIndicator;
Element _allergenicIndicator;

DeviceDefinition_Material(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.substance,
      this.alternate,
      this._alternate,
      this.allergenicIndicator,
      this._allergenicIndicator,
      });

  factory DeviceDefinition_Material.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_MaterialFromJson(json);
  Map<String, dynamic> toJson() _$DeviceDefinition_MaterialToJson(this);
}

