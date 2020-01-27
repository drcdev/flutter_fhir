
part 'device.g.dart';

@JsonSerializable(explicitToJson: true)
class Device {
  
  // This is a Device 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Unique instance identifiers assigned to a device by manufacturers other
  //  organizations or owners.
  List<Identifier identifier;

  // The reference to the definition for the device.
  Reference definition;

  // Unique device identifier (UDI) assigned to device label or package.  Note
  //  that the Device may include multiple udiCarriers as it either may include just
  //  the udiCarrier for the jurisdiction it is sold, or for multiple jurisdictions
  //  it could have been sold.
  List<Device_UdiCarrier udiCarrier;

  // Status of the Device availability.Enum enum; //
  //  activeinactiveentered-in-errorunknown status;

  // Extensions for status
  Element _status;

  // Reason for the dtatus of the Device availability.
  List<CodeableConcept statusReason;

  // The distinct identification string as required by regulation for a human
  //  cell, tissue, or cellular and tissue-based product.
  String distinctIdentifier;

  // Extensions for distinctIdentifier
  Element _distinctIdentifier;

  // A name of the manufacturer.
  String manufacturer;

  // Extensions for manufacturer
  Element _manufacturer;

  // The date and time when the device was manufactured.
  StringTime manufactureDate;

  // Extensions for manufactureDate
  Element _manufactureDate;

  // The date and time beyond which this device is no longer valid or should not
  //  be used (if applicable).
  StringTime expirationDate;

  // Extensions for expirationDate
  Element _expirationDate;

  // Lot number assigned by the manufacturer.
  String lotNumber;

  // Extensions for lotNumber
  Element _lotNumber;

  // The serial number assigned by the organization when the device was
  //  manufactured.
  String serialNumber;

  // Extensions for serialNumber
  Element _serialNumber;

  // This represents the manufacturer's name of the device as provided by the
  //  device, from a UDI label, or by a person describing the Device.  This typically
  //  would be used when a person provides the name(s) or when the device represents
  //  one of the names available from DeviceDefinition.
  List<Device_DeviceName deviceName;

  // The model number for the device.
  String modelNumber;

  // Extensions for modelNumber
  Element _modelNumber;

  // The part number of the device.
  String partNumber;

  // Extensions for partNumber
  Element _partNumber;

  // The kind or type of device.
  CodeableConcept type;

  // The capabilities supported on a  device, the standards to which the device
  //  conforms for a particular purpose, and used for the communication.
  List<Device_Specialization specialization;

  // The actual design of the device or software version running on the device.
  List<Device_Version version;

  // The actual configuration settings of a device as it actually operates,
  //  e.g., regulation status, time properties.
  List<Device_Property property;

  // Patient information, If the device is affixed to a person.
  Reference patient;

  // An organization that is responsible for the provision and ongoing
  //  maintenance of the device.
  Reference owner;

  // Contact details for an organization or a particular human that is
  //  responsible for the device.
  List<ContactPoint contact;

  // The place where the device can be found.
  Reference location;

  // A network address on which the device may be contacted directly.
  String url;

  // Extensions for url
  Element _url;

  // Descriptive information, usage information or implantation information that
  //  is not captured in an existing element.
  List<Annotation note;

  // Provides additional safety characteristics about a medical device.  For
  //  example devices containing latex.
  List<CodeableConcept safety;

  // The parent device.
  Reference parent
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
