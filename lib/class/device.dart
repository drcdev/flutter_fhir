import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'device.g.dart';

@JsonSerializable(explicitToJson: true)
class Device {

//  This is a Device resource
String resourceType;

//  The logical id of the resource, as used in the URL for the resource.
// Once assigned, this value never changes.
String id;

//  The metadata about the resource. This is content that is maintained by
// the infrastructure. Changes to the content might not always be
// associated with version changes to the resource.
Meta meta;

//  A reference to a set of rules that were followed when the resource was
// constructed, and which must be understood when processing the content.
// Often, this is a reference to an implementation guide that defines the
// special rules along with other profiles etc.
String implicitRules;

//  Extensions for implicitRules
Element element_implicitRules;

//  The base language in which the resource is written.
String language;

//  Extensions for language
Element element_language;

//  A human-readable narrative that contains a summary of the resource and
// can be used to represent the content of the resource to a human. The
// narrative need not encode all the structured data, but is required to
// contain sufficient detail to make it "clinically safe" for a human to
// just read the narrative. Resource definitions may define what content
// should be represented in the narrative to ensure clinical safety.
Narrative text;

//  These resources do not have an independent existence apart from the
// resource that contains them - they cannot be identified independently,
// and nor can they have their own independent transaction scope.
List<ResourceList> contained;

//  May be used to represent additional information that is not part of
// the basic definition of the resource. To make the use of extensions
// safe and manageable, there is a strict set of governance  applied to
// the definition and use of extensions. Though any implementer can define
// an extension, there is a set of requirements that SHALL be met as part
// of the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the resource and that modifies the
// understanding of the element that contains it and/or the understanding
// of the containing element's descendants. Usually modifier elements
// provide negation or qualification. To make the use of extensions safe
// and manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer is allowed to
// define an extension, there is a set of requirements that SHALL be met
// as part of the definition of the extension. Applications processing a
// resource are required to check for modifier extensions. Modifier
// extensions SHALL NOT change the meaning of any elements on Resource or
// DomainResource (including cannot change the meaning of
// modifierExtension itself).
List<Extension> modifierExtension;

//  Unique instance identifiers assigned to a device by manufacturers
// other organizations or owners.
List<Identifier> identifier;

//  The reference to the definition for the device.
Reference definition;

//  Unique device identifier (UDI) assigned to device label or package. 
// Note that the Device may include multiple udiCarriers as it either may
// include just the udiCarrier for the jurisdiction it is sold, or for
// multiple jurisdictions it could have been sold.
List<Device_UdiCarrier> udiCarrier;

//  Status of the Device availability.
String status; // <code> enum: active/inactive/entered-in-error/unknown;

//  Extensions for status
Element element_status;

//  Reason for the dtatus of the Device availability.
List<CodeableConcept> statusReason;

//  The distinct identification string as required by regulation for a
// human cell, tissue, or cellular and tissue-based product.
String distinctIdentifier;

//  Extensions for distinctIdentifier
Element element_distinctIdentifier;

//  A name of the manufacturer.
String manufacturer;

//  Extensions for manufacturer
Element element_manufacturer;

//  The date and time when the device was manufactured.
DateTime manufactureDate;

//  Extensions for manufactureDate
Element element_manufactureDate;

//  The date and time beyond which this device is no longer valid or
// should not be used (if applicable).
DateTime expirationDate;

//  Extensions for expirationDate
Element element_expirationDate;

//  Lot number assigned by the manufacturer.
String lotNumber;

//  Extensions for lotNumber
Element element_lotNumber;

//  The serial number assigned by the organization when the device was
// manufactured.
String serialNumber;

//  Extensions for serialNumber
Element element_serialNumber;

//  This represents the manufacturer's name of the device as provided by
// the device, from a UDI label, or by a person describing the Device. 
// This typically would be used when a person provides the name(s) or when
// the device represents one of the names available from DeviceDefinition.
List<Device_DeviceName> deviceName;

//  The model number for the device.
String modelNumber;

//  Extensions for modelNumber
Element element_modelNumber;

//  The part number of the device.
String partNumber;

//  Extensions for partNumber
Element element_partNumber;

//  The kind or type of device.
CodeableConcept type;

//  The capabilities supported on a  device, the standards to which the
// device conforms for a particular purpose, and used for the
// communication.
List<Device_Specialization> specialization;

//  The actual design of the device or software version running on the
// device.
List<Device_Version> version;

//  The actual configuration settings of a device as it actually operates,
// e.g., regulation status, time properties.
List<Device_Property> property;

//  Patient information, If the device is affixed to a person.
Reference patient;

//  An organization that is responsible for the provision and ongoing
// maintenance of the device.
Reference owner;

//  Contact details for an organization or a particular human that is
// responsible for the device.
List<ContactPoint> contact;

//  The place where the device can be found.
Reference location;

//  A network address on which the device may be contacted directly.
String url;

//  Extensions for url
Element element_url;

//  Descriptive information, usage information or implantation information
// that is not captured in an existing element.
List<Annotation> note;

//  Provides additional safety characteristics about a medical device. 
// For example devices containing latex.
List<CodeableConcept> safety;

//  The parent device.
Reference parent;

Device(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.definition,
    this.udiCarrier,
    this.status,
    this.element_status,
    this.statusReason,
    this.distinctIdentifier,
    this.element_distinctIdentifier,
    this.manufacturer,
    this.element_manufacturer,
    this.manufactureDate,
    this.element_manufactureDate,
    this.expirationDate,
    this.element_expirationDate,
    this.lotNumber,
    this.element_lotNumber,
    this.serialNumber,
    this.element_serialNumber,
    this.deviceName,
    this.modelNumber,
    this.element_modelNumber,
    this.partNumber,
    this.element_partNumber,
    this.type,
    this.specialization,
    this.version,
    this.property,
    this.patient,
    this.owner,
    this.contact,
    this.location,
    this.url,
    this.element_url,
    this.note,
    this.safety,
    this.parent
    });

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_UdiCarrier {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  The device identifier (DI) is a mandatory, fixed portion of a UDI that
// identifies the labeler and the specific version or model of a device.
String deviceIdentifier;

//  Extensions for deviceIdentifier
Element element_deviceIdentifier;

//  Organization that is charged with issuing UDIs for devices.  For
// example, the US FDA issuers include : 1) GS1: 
// http://hl7.org/fhir/NamingSystem/gs1-di,  2) HIBCC:
// http://hl7.org/fhir/NamingSystem/hibcc-dI,  3) ICCBBA for blood
// containers: http://hl7.org/fhir/NamingSystem/iccbba-blood-di,  4) ICCBA
// for other devices: http://hl7.org/fhir/NamingSystem/iccbba-other-di.
String issuer;

//  Extensions for issuer
Element element_issuer;

//  The identity of the authoritative source for UDI generation within a 
// jurisdiction.  All UDIs are globally unique within a single namespace
// with the appropriate repository uri as the system.  For example,  UDIs
// of devices managed in the U.S. by the FDA, the value is 
// http://hl7.org/fhir/NamingSystem/fda-udi.
String jurisdiction;

//  Extensions for jurisdiction
Element element_jurisdiction;

//  The full UDI carrier of the Automatic Identification and Data Capture
// (AIDC) technology representation of the barcode string as printed on
// the packaging of the device - e.g., a barcode or RFID.   Because of
// limitations on character sets in XML and the need to round-trip JSON
// data through XML, AIDC Formats *SHALL* be base64 encoded.
String carrierAIDC;

//  Extensions for carrierAIDC
Element element_carrierAIDC;

//  The full UDI carrier as the human readable form (HRF) representation
// of the barcode string as printed on the packaging of the device.
String carrierHRF;

//  Extensions for carrierHRF
Element element_carrierHRF;

//  A coded entry to indicate how the data was entered.
String entryType; // <code> enum: barcode/rfid/manual/card/self-reported/unknown;

//  Extensions for entryType
Element element_entryType;

Device_UdiCarrier(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.deviceIdentifier,
    this.element_deviceIdentifier,
    this.issuer,
    this.element_issuer,
    this.jurisdiction,
    this.element_jurisdiction,
    this.carrierAIDC,
    this.element_carrierAIDC,
    this.carrierHRF,
    this.element_carrierHRF,
    this.entryType,
    this.element_entryType
    });

  factory Device_UdiCarrier.fromJson(Map<String, dynamic> json) => _$Device_UdiCarrierFromJson(json);
  Map<String, dynamic> toJson() => _$Device_UdiCarrierToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_DeviceName {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  The name of the device.
String name;

//  Extensions for name
Element element_name;

//  The type of deviceName. UDILabelName | UserFriendlyName |
// PatientReportedName | ManufactureDeviceName | ModelName.
String type; // <code> enum: udi-label-name/user-friendly-name/patient-reported-name/manufacturer-name/model-name/other;

//  Extensions for type
Element element_type;

Device_DeviceName(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.element_name,
    this.type,
    this.element_type
    });

  factory Device_DeviceName.fromJson(Map<String, dynamic> json) => _$Device_DeviceNameFromJson(json);
  Map<String, dynamic> toJson() => _$Device_DeviceNameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_Specialization {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  The standard that is used to operate and communicate.
CodeableConcept systemType;

//  The version of the standard that is used to operate and communicate.
String version;

//  Extensions for version
Element element_version;

Device_Specialization(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.systemType,
    this.version,
    this.element_version
    });

  factory Device_Specialization.fromJson(Map<String, dynamic> json) => _$Device_SpecializationFromJson(json);
  Map<String, dynamic> toJson() => _$Device_SpecializationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_Version {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  The type of the device version.
CodeableConcept type;

//  A single component of the device version.
Identifier component;

//  The version text.
String value;

//  Extensions for value
Element element_value;

Device_Version(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.component,
    this.value,
    this.element_value
    });

  factory Device_Version.fromJson(Map<String, dynamic> json) => _$Device_VersionFromJson(json);
  Map<String, dynamic> toJson() => _$Device_VersionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_Property {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  Code that specifies the property DeviceDefinitionPropetyCode
// (Extensible).
CodeableConcept type;

//  Property value as a quantity.
List<Quantity> valueQuantity;

//  Property value as a code, e.g., NTP4 (synced to NTP).
List<CodeableConcept> valueCode;

Device_Property(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.valueQuantity,
    this.valueCode
    });

  factory Device_Property.fromJson(Map<String, dynamic> json) => _$Device_PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$Device_PropertyToJson(this);
}

