import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 208)
class Device {

  //  This is a Device resource
  @HiveField(0)
  final String resourceType= 'Device';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
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
  @HiveField(10)
  List<Extension> modifierExtension;

  //  Unique instance identifiers assigned to a device by manufacturers
  // other organizations or owners.
  @HiveField(11)
  List<Identifier> identifier;

  //  The reference to the definition for the device.
  @HiveField(12)
  Reference definition;

  //  Unique device identifier (UDI) assigned to device label or package. 
  // Note that the Device may include multiple udiCarriers as it either may
  // include just the udiCarrier for the jurisdiction it is sold, or for
  // multiple jurisdictions it could have been sold.
  @HiveField(13)
  List<Device_UdiCarrier> udiCarrier;

  //  Status of the Device availability.
  @HiveField(14)
  String status; // <code> enum: active/inactive/entered-in-error/unknown;

  //  Extensions for status
  @HiveField(15)
  Element elementStatus;

  //  Reason for the dtatus of the Device availability.
  @HiveField(16)
  List<CodeableConcept> statusReason;

  //  The distinct identification string as required by regulation for a
  // human cell, tissue, or cellular and tissue-based product.
  @HiveField(17)
  String distinctIdentifier;

  //  Extensions for distinctIdentifier
  @HiveField(18)
  Element elementDistinctIdentifier;

  //  A name of the manufacturer.
  @HiveField(19)
  String manufacturer;

  //  Extensions for manufacturer
  @HiveField(20)
  Element elementManufacturer;

  //  The date and time when the device was manufactured.
  @HiveField(21)
  DateTime manufactureDate;

  //  Extensions for manufactureDate
  @HiveField(22)
  Element elementManufactureDate;

  //  The date and time beyond which this device is no longer valid or
  // should not be used (if applicable).
  @HiveField(23)
  DateTime expirationDate;

  //  Extensions for expirationDate
  @HiveField(24)
  Element elementExpirationDate;

  //  Lot number assigned by the manufacturer.
  @HiveField(25)
  String lotNumber;

  //  Extensions for lotNumber
  @HiveField(26)
  Element elementLotNumber;

  //  The serial number assigned by the organization when the device was
  // manufactured.
  @HiveField(27)
  String serialNumber;

  //  Extensions for serialNumber
  @HiveField(28)
  Element elementSerialNumber;

  //  This represents the manufacturer's name of the device as provided by
  // the device, from a UDI label, or by a person describing the Device. 
  // This typically would be used when a person provides the name(s) or when
  // the device represents one of the names available from DeviceDefinition.
  @HiveField(29)
  List<Device_DeviceName> deviceName;

  //  The model number for the device.
  @HiveField(30)
  String modelNumber;

  //  Extensions for modelNumber
  @HiveField(31)
  Element elementModelNumber;

  //  The part number of the device.
  @HiveField(32)
  String partNumber;

  //  Extensions for partNumber
  @HiveField(33)
  Element elementPartNumber;

  //  The kind or type of device.
  @HiveField(34)
  CodeableConcept type;

  //  The capabilities supported on a  device, the standards to which the
  // device conforms for a particular purpose, and used for the
  // communication.
  @HiveField(35)
  List<Device_Specialization> specialization;

  //  The actual design of the device or software version running on the
  // device.
  @HiveField(36)
  List<Device_Version> version;

  //  The actual configuration settings of a device as it actually operates,
  // e.g., regulation status, time properties.
  @HiveField(37)
  List<Device_Property> property;

  //  Patient information, If the device is affixed to a person.
  @HiveField(38)
  Reference patient;

  //  An organization that is responsible for the provision and ongoing
  // maintenance of the device.
  @HiveField(39)
  Reference owner;

  //  Contact details for an organization or a particular human that is
  // responsible for the device.
  @HiveField(40)
  List<ContactPoint> contact;

  //  The place where the device can be found.
  @HiveField(41)
  Reference location;

  //  A network address on which the device may be contacted directly.
  @HiveField(42)
  String url;

  //  Extensions for url
  @HiveField(43)
  Element elementUrl;

  //  Descriptive information, usage information or implantation information
  // that is not captured in an existing element.
  @HiveField(44)
  List<Annotation> note;

  //  Provides additional safety characteristics about a medical device. 
  // For example devices containing latex.
  @HiveField(45)
  List<CodeableConcept> safety;

  //  The parent device.
  @HiveField(46)
  Reference parent;

Device(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.definition,
    this.udiCarrier,
    this.status,
    this.elementStatus,
    this.statusReason,
    this.distinctIdentifier,
    this.elementDistinctIdentifier,
    this.manufacturer,
    this.elementManufacturer,
    this.manufactureDate,
    this.elementManufactureDate,
    this.expirationDate,
    this.elementExpirationDate,
    this.lotNumber,
    this.elementLotNumber,
    this.serialNumber,
    this.elementSerialNumber,
    this.deviceName,
    this.modelNumber,
    this.elementModelNumber,
    this.partNumber,
    this.elementPartNumber,
    this.type,
    this.specialization,
    this.version,
    this.property,
    this.patient,
    this.owner,
    this.contact,
    this.location,
    this.url,
    this.elementUrl,
    this.note,
    this.safety,
    this.parent
    });

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 209)
class Device_UdiCarrier {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The device identifier (DI) is a mandatory, fixed portion of a UDI that
  // identifies the labeler and the specific version or model of a device.
  @HiveField(3)
  String deviceIdentifier;

  //  Extensions for deviceIdentifier
  @HiveField(4)
  Element elementDeviceIdentifier;

  //  Organization that is charged with issuing UDIs for devices.  For
  // example, the US FDA issuers include : 1) GS1: 
  // http://hl7.org/fhir/NamingSystem/gs1-di,  2) HIBCC:
  // http://hl7.org/fhir/NamingSystem/hibcc-dI,  3) ICCBBA for blood
  // containers: http://hl7.org/fhir/NamingSystem/iccbba-blood-di,  4) ICCBA
  // for other devices: http://hl7.org/fhir/NamingSystem/iccbba-other-di.
  @HiveField(5)
  String issuer;

  //  Extensions for issuer
  @HiveField(6)
  Element elementIssuer;

  //  The identity of the authoritative source for UDI generation within a 
  // jurisdiction.  All UDIs are globally unique within a single namespace
  // with the appropriate repository uri as the system.  For example,  UDIs
  // of devices managed in the U.S. by the FDA, the value is 
  // http://hl7.org/fhir/NamingSystem/fda-udi.
  @HiveField(7)
  String jurisdiction;

  //  Extensions for jurisdiction
  @HiveField(8)
  Element elementJurisdiction;

  //  The full UDI carrier of the Automatic Identification and Data Capture
  // (AIDC) technology representation of the barcode string as printed on
  // the packaging of the device - e.g., a barcode or RFID.   Because of
  // limitations on character sets in XML and the need to round-trip JSON
  // data through XML, AIDC Formats *SHALL* be base64 encoded.
  @HiveField(9)
  String carrierAIDC;

  //  Extensions for carrierAIDC
  @HiveField(10)
  Element elementCarrierAIDC;

  //  The full UDI carrier as the human readable form (HRF) representation
  // of the barcode string as printed on the packaging of the device.
  @HiveField(11)
  String carrierHRF;

  //  Extensions for carrierHRF
  @HiveField(12)
  Element elementCarrierHRF;

  //  A coded entry to indicate how the data was entered.
  @HiveField(13)
  String entryType; // <code> enum: barcode/rfid/manual/card/self-reported/unknown;

  //  Extensions for entryType
  @HiveField(14)
  Element elementEntryType;

Device_UdiCarrier(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.deviceIdentifier,
    this.elementDeviceIdentifier,
    this.issuer,
    this.elementIssuer,
    this.jurisdiction,
    this.elementJurisdiction,
    this.carrierAIDC,
    this.elementCarrierAIDC,
    this.carrierHRF,
    this.elementCarrierHRF,
    this.entryType,
    this.elementEntryType
    });

  factory Device_UdiCarrier.fromJson(Map<String, dynamic> json) => _$Device_UdiCarrierFromJson(json);
  Map<String, dynamic> toJson() => _$Device_UdiCarrierToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 210)
class Device_DeviceName {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The name of the device.
  @HiveField(3)
  String name;

  //  Extensions for name
  @HiveField(4)
  Element elementName;

  //  The type of deviceName. UDILabelName | UserFriendlyName |
  // PatientReportedName | ManufactureDeviceName | ModelName.
  @HiveField(5)
  String type; // <code> enum: udi-label-name/user-friendly-name/patient-reported-name/manufacturer-name/model-name/other;

  //  Extensions for type
  @HiveField(6)
  Element elementType;

Device_DeviceName(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.type,
    this.elementType
    });

  factory Device_DeviceName.fromJson(Map<String, dynamic> json) => _$Device_DeviceNameFromJson(json);
  Map<String, dynamic> toJson() => _$Device_DeviceNameToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 211)
class Device_Specialization {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The standard that is used to operate and communicate.
  @HiveField(3)
  CodeableConcept systemType;

  //  The version of the standard that is used to operate and communicate.
  @HiveField(4)
  String version;

  //  Extensions for version
  @HiveField(5)
  Element elementVersion;

Device_Specialization(
  this.systemType,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.version,
    this.elementVersion
    });

  factory Device_Specialization.fromJson(Map<String, dynamic> json) => _$Device_SpecializationFromJson(json);
  Map<String, dynamic> toJson() => _$Device_SpecializationToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 212)
class Device_Version {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The type of the device version.
  @HiveField(3)
  CodeableConcept type;

  //  A single component of the device version.
  @HiveField(4)
  Identifier component;

  //  The version text.
  @HiveField(5)
  String value;

  //  Extensions for value
  @HiveField(6)
  Element elementValue;

Device_Version(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.component,
    this.value,
    this.elementValue
    });

  factory Device_Version.fromJson(Map<String, dynamic> json) => _$Device_VersionFromJson(json);
  Map<String, dynamic> toJson() => _$Device_VersionToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 213)
class Device_Property {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Code that specifies the property DeviceDefinitionPropetyCode
  // (Extensible).
  @HiveField(3)
  CodeableConcept type;

  //  Property value as a quantity.
  @HiveField(4)
  List<Quantity> valueQuantity;

  //  Property value as a code, e.g., NTP4 (synced to NTP).
  @HiveField(5)
  List<CodeableConcept> valueCode;

Device_Property(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.valueQuantity,
    this.valueCode
    });

  factory Device_Property.fromJson(Map<String, dynamic> json) => _$Device_PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$Device_PropertyToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeviceAdapter extends TypeAdapter<Device> {
  @override
  final typeId = 208;

  @override
  Device read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Device(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      definition: fields[12] as Reference,
      udiCarrier: (fields[13] as List)?.cast<Device_UdiCarrier>(),
      status: fields[14] as String,
      elementStatus: fields[15] as Element,
      statusReason: (fields[16] as List)?.cast<CodeableConcept>(),
      distinctIdentifier: fields[17] as String,
      elementDistinctIdentifier: fields[18] as Element,
      manufacturer: fields[19] as String,
      elementManufacturer: fields[20] as Element,
      manufactureDate: fields[21] as DateTime,
      elementManufactureDate: fields[22] as Element,
      expirationDate: fields[23] as DateTime,
      elementExpirationDate: fields[24] as Element,
      lotNumber: fields[25] as String,
      elementLotNumber: fields[26] as Element,
      serialNumber: fields[27] as String,
      elementSerialNumber: fields[28] as Element,
      deviceName: (fields[29] as List)?.cast<Device_DeviceName>(),
      modelNumber: fields[30] as String,
      elementModelNumber: fields[31] as Element,
      partNumber: fields[32] as String,
      elementPartNumber: fields[33] as Element,
      type: fields[34] as CodeableConcept,
      specialization: (fields[35] as List)?.cast<Device_Specialization>(),
      version: (fields[36] as List)?.cast<Device_Version>(),
      property: (fields[37] as List)?.cast<Device_Property>(),
      patient: fields[38] as Reference,
      owner: fields[39] as Reference,
      contact: (fields[40] as List)?.cast<ContactPoint>(),
      location: fields[41] as Reference,
      url: fields[42] as String,
      elementUrl: fields[43] as Element,
      note: (fields[44] as List)?.cast<Annotation>(),
      safety: (fields[45] as List)?.cast<CodeableConcept>(),
      parent: fields[46] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Device obj) {
    writer
      ..writeByte(47)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.definition)
      ..writeByte(13)
      ..write(obj.udiCarrier)
      ..writeByte(14)
      ..write(obj.status)
      ..writeByte(15)
      ..write(obj.elementStatus)
      ..writeByte(16)
      ..write(obj.statusReason)
      ..writeByte(17)
      ..write(obj.distinctIdentifier)
      ..writeByte(18)
      ..write(obj.elementDistinctIdentifier)
      ..writeByte(19)
      ..write(obj.manufacturer)
      ..writeByte(20)
      ..write(obj.elementManufacturer)
      ..writeByte(21)
      ..write(obj.manufactureDate)
      ..writeByte(22)
      ..write(obj.elementManufactureDate)
      ..writeByte(23)
      ..write(obj.expirationDate)
      ..writeByte(24)
      ..write(obj.elementExpirationDate)
      ..writeByte(25)
      ..write(obj.lotNumber)
      ..writeByte(26)
      ..write(obj.elementLotNumber)
      ..writeByte(27)
      ..write(obj.serialNumber)
      ..writeByte(28)
      ..write(obj.elementSerialNumber)
      ..writeByte(29)
      ..write(obj.deviceName)
      ..writeByte(30)
      ..write(obj.modelNumber)
      ..writeByte(31)
      ..write(obj.elementModelNumber)
      ..writeByte(32)
      ..write(obj.partNumber)
      ..writeByte(33)
      ..write(obj.elementPartNumber)
      ..writeByte(34)
      ..write(obj.type)
      ..writeByte(35)
      ..write(obj.specialization)
      ..writeByte(36)
      ..write(obj.version)
      ..writeByte(37)
      ..write(obj.property)
      ..writeByte(38)
      ..write(obj.patient)
      ..writeByte(39)
      ..write(obj.owner)
      ..writeByte(40)
      ..write(obj.contact)
      ..writeByte(41)
      ..write(obj.location)
      ..writeByte(42)
      ..write(obj.url)
      ..writeByte(43)
      ..write(obj.elementUrl)
      ..writeByte(44)
      ..write(obj.note)
      ..writeByte(45)
      ..write(obj.safety)
      ..writeByte(46)
      ..write(obj.parent);
  }
}

class Device_UdiCarrierAdapter extends TypeAdapter<Device_UdiCarrier> {
  @override
  final typeId = 209;

  @override
  Device_UdiCarrier read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Device_UdiCarrier(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      deviceIdentifier: fields[3] as String,
      elementDeviceIdentifier: fields[4] as Element,
      issuer: fields[5] as String,
      elementIssuer: fields[6] as Element,
      jurisdiction: fields[7] as String,
      elementJurisdiction: fields[8] as Element,
      carrierAIDC: fields[9] as String,
      elementCarrierAIDC: fields[10] as Element,
      carrierHRF: fields[11] as String,
      elementCarrierHRF: fields[12] as Element,
      entryType: fields[13] as String,
      elementEntryType: fields[14] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Device_UdiCarrier obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.deviceIdentifier)
      ..writeByte(4)
      ..write(obj.elementDeviceIdentifier)
      ..writeByte(5)
      ..write(obj.issuer)
      ..writeByte(6)
      ..write(obj.elementIssuer)
      ..writeByte(7)
      ..write(obj.jurisdiction)
      ..writeByte(8)
      ..write(obj.elementJurisdiction)
      ..writeByte(9)
      ..write(obj.carrierAIDC)
      ..writeByte(10)
      ..write(obj.elementCarrierAIDC)
      ..writeByte(11)
      ..write(obj.carrierHRF)
      ..writeByte(12)
      ..write(obj.elementCarrierHRF)
      ..writeByte(13)
      ..write(obj.entryType)
      ..writeByte(14)
      ..write(obj.elementEntryType);
  }
}

class Device_DeviceNameAdapter extends TypeAdapter<Device_DeviceName> {
  @override
  final typeId = 210;

  @override
  Device_DeviceName read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Device_DeviceName(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      type: fields[5] as String,
      elementType: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Device_DeviceName obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.elementName)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.elementType);
  }
}

class Device_SpecializationAdapter extends TypeAdapter<Device_Specialization> {
  @override
  final typeId = 211;

  @override
  Device_Specialization read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Device_Specialization(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      version: fields[4] as String,
      elementVersion: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Device_Specialization obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.systemType)
      ..writeByte(4)
      ..write(obj.version)
      ..writeByte(5)
      ..write(obj.elementVersion);
  }
}

class Device_VersionAdapter extends TypeAdapter<Device_Version> {
  @override
  final typeId = 212;

  @override
  Device_Version read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Device_Version(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      component: fields[4] as Identifier,
      value: fields[5] as String,
      elementValue: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Device_Version obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.component)
      ..writeByte(5)
      ..write(obj.value)
      ..writeByte(6)
      ..write(obj.elementValue);
  }
}

class Device_PropertyAdapter extends TypeAdapter<Device_Property> {
  @override
  final typeId = 213;

  @override
  Device_Property read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Device_Property(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      valueQuantity: (fields[4] as List)?.cast<Quantity>(),
      valueCode: (fields[5] as List)?.cast<CodeableConcept>(),
    );
  }

  @override
  void write(BinaryWriter writer, Device_Property obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.valueQuantity)
      ..writeByte(5)
      ..write(obj.valueCode);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return Device(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    definition: json['definition'] == null
        ? null
        : Reference.fromJson(json['definition'] as Map<String, dynamic>),
    udiCarrier: (json['udiCarrier'] as List)
        ?.map((e) => e == null
            ? null
            : Device_UdiCarrier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusReason: (json['statusReason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    distinctIdentifier: json['distinctIdentifier'] as String,
    elementDistinctIdentifier: json['elementDistinctIdentifier'] == null
        ? null
        : Element.fromJson(
            json['elementDistinctIdentifier'] as Map<String, dynamic>),
    manufacturer: json['manufacturer'] as String,
    elementManufacturer: json['elementManufacturer'] == null
        ? null
        : Element.fromJson(json['elementManufacturer'] as Map<String, dynamic>),
    manufactureDate: json['manufactureDate'] == null
        ? null
        : DateTime.parse(json['manufactureDate'] as String),
    elementManufactureDate: json['elementManufactureDate'] == null
        ? null
        : Element.fromJson(
            json['elementManufactureDate'] as Map<String, dynamic>),
    expirationDate: json['expirationDate'] == null
        ? null
        : DateTime.parse(json['expirationDate'] as String),
    elementExpirationDate: json['elementExpirationDate'] == null
        ? null
        : Element.fromJson(
            json['elementExpirationDate'] as Map<String, dynamic>),
    lotNumber: json['lotNumber'] as String,
    elementLotNumber: json['elementLotNumber'] == null
        ? null
        : Element.fromJson(json['elementLotNumber'] as Map<String, dynamic>),
    serialNumber: json['serialNumber'] as String,
    elementSerialNumber: json['elementSerialNumber'] == null
        ? null
        : Element.fromJson(json['elementSerialNumber'] as Map<String, dynamic>),
    deviceName: (json['deviceName'] as List)
        ?.map((e) => e == null
            ? null
            : Device_DeviceName.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modelNumber: json['modelNumber'] as String,
    elementModelNumber: json['elementModelNumber'] == null
        ? null
        : Element.fromJson(json['elementModelNumber'] as Map<String, dynamic>),
    partNumber: json['partNumber'] as String,
    elementPartNumber: json['elementPartNumber'] == null
        ? null
        : Element.fromJson(json['elementPartNumber'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    specialization: (json['specialization'] as List)
        ?.map((e) => e == null
            ? null
            : Device_Specialization.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: (json['version'] as List)
        ?.map((e) => e == null
            ? null
            : Device_Version.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    property: (json['property'] as List)
        ?.map((e) => e == null
            ? null
            : Device_Property.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    owner: json['owner'] == null
        ? null
        : Reference.fromJson(json['owner'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    safety: (json['safety'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    parent: json['parent'] == null
        ? null
        : Reference.fromJson(json['parent'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'definition': instance.definition?.toJson(),
      'udiCarrier': instance.udiCarrier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusReason': instance.statusReason?.map((e) => e?.toJson())?.toList(),
      'distinctIdentifier': instance.distinctIdentifier,
      'elementDistinctIdentifier': instance.elementDistinctIdentifier?.toJson(),
      'manufacturer': instance.manufacturer,
      'elementManufacturer': instance.elementManufacturer?.toJson(),
      'manufactureDate': instance.manufactureDate?.toIso8601String(),
      'elementManufactureDate': instance.elementManufactureDate?.toJson(),
      'expirationDate': instance.expirationDate?.toIso8601String(),
      'elementExpirationDate': instance.elementExpirationDate?.toJson(),
      'lotNumber': instance.lotNumber,
      'elementLotNumber': instance.elementLotNumber?.toJson(),
      'serialNumber': instance.serialNumber,
      'elementSerialNumber': instance.elementSerialNumber?.toJson(),
      'deviceName': instance.deviceName?.map((e) => e?.toJson())?.toList(),
      'modelNumber': instance.modelNumber,
      'elementModelNumber': instance.elementModelNumber?.toJson(),
      'partNumber': instance.partNumber,
      'elementPartNumber': instance.elementPartNumber?.toJson(),
      'type': instance.type?.toJson(),
      'specialization':
          instance.specialization?.map((e) => e?.toJson())?.toList(),
      'version': instance.version?.map((e) => e?.toJson())?.toList(),
      'property': instance.property?.map((e) => e?.toJson())?.toList(),
      'patient': instance.patient?.toJson(),
      'owner': instance.owner?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.toJson(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'safety': instance.safety?.map((e) => e?.toJson())?.toList(),
      'parent': instance.parent?.toJson(),
    };

Device_UdiCarrier _$Device_UdiCarrierFromJson(Map<String, dynamic> json) {
  return Device_UdiCarrier(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    deviceIdentifier: json['deviceIdentifier'] as String,
    elementDeviceIdentifier: json['elementDeviceIdentifier'] == null
        ? null
        : Element.fromJson(
            json['elementDeviceIdentifier'] as Map<String, dynamic>),
    issuer: json['issuer'] as String,
    elementIssuer: json['elementIssuer'] == null
        ? null
        : Element.fromJson(json['elementIssuer'] as Map<String, dynamic>),
    jurisdiction: json['jurisdiction'] as String,
    elementJurisdiction: json['elementJurisdiction'] == null
        ? null
        : Element.fromJson(json['elementJurisdiction'] as Map<String, dynamic>),
    carrierAIDC: json['carrierAIDC'] as String,
    elementCarrierAIDC: json['elementCarrierAIDC'] == null
        ? null
        : Element.fromJson(json['elementCarrierAIDC'] as Map<String, dynamic>),
    carrierHRF: json['carrierHRF'] as String,
    elementCarrierHRF: json['elementCarrierHRF'] == null
        ? null
        : Element.fromJson(json['elementCarrierHRF'] as Map<String, dynamic>),
    entryType: json['entryType'] as String,
    elementEntryType: json['elementEntryType'] == null
        ? null
        : Element.fromJson(json['elementEntryType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Device_UdiCarrierToJson(Device_UdiCarrier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'deviceIdentifier': instance.deviceIdentifier,
      'elementDeviceIdentifier': instance.elementDeviceIdentifier?.toJson(),
      'issuer': instance.issuer,
      'elementIssuer': instance.elementIssuer?.toJson(),
      'jurisdiction': instance.jurisdiction,
      'elementJurisdiction': instance.elementJurisdiction?.toJson(),
      'carrierAIDC': instance.carrierAIDC,
      'elementCarrierAIDC': instance.elementCarrierAIDC?.toJson(),
      'carrierHRF': instance.carrierHRF,
      'elementCarrierHRF': instance.elementCarrierHRF?.toJson(),
      'entryType': instance.entryType,
      'elementEntryType': instance.elementEntryType?.toJson(),
    };

Device_DeviceName _$Device_DeviceNameFromJson(Map<String, dynamic> json) {
  return Device_DeviceName(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Device_DeviceNameToJson(Device_DeviceName instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
    };

Device_Specialization _$Device_SpecializationFromJson(
    Map<String, dynamic> json) {
  return Device_Specialization(
    json['systemType'] == null
        ? null
        : CodeableConcept.fromJson(json['systemType'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Device_SpecializationToJson(
        Device_Specialization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'systemType': instance.systemType?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
    };

Device_Version _$Device_VersionFromJson(Map<String, dynamic> json) {
  return Device_Version(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    component: json['component'] == null
        ? null
        : Identifier.fromJson(json['component'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Device_VersionToJson(Device_Version instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'component': instance.component?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
    };

Device_Property _$Device_PropertyFromJson(Map<String, dynamic> json) {
  return Device_Property(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueQuantity: (json['valueQuantity'] as List)
        ?.map((e) =>
            e == null ? null : Quantity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueCode: (json['valueCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Device_PropertyToJson(Device_Property instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'valueQuantity':
          instance.valueQuantity?.map((e) => e?.toJson())?.toList(),
      'valueCode': instance.valueCode?.map((e) => e?.toJson())?.toList(),
    };
