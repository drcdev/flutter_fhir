

part 'deviceDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceDefinition {

  This is a DeviceDefinition resource resourceType;
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
  String manufacturerString;
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
this.material});

  factory DeviceDefinition.fromJson(Map<String, dynamic> json) => _$DeviceDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinitionToJson(this);
}