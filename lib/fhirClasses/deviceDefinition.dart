import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/prodCharacteristic.dart';
import 'package:flutter_fhir/fhirClasses/productShelfLife.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 214)
class DeviceDefinition {

  //  This is a DeviceDefinition resource
  @HiveField(0)
  final String resourceType= 'DeviceDefinition';

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

  //  Unique instance identifiers assigned to a device by the software,
  // manufacturers, other organizations or owners. For example: handle ID.
  @HiveField(11)
  List<Identifier> identifier;

  //  Unique device identifier (UDI) assigned to device label or package. 
  // Note that the Device may include multiple udiCarriers as it either may
  // include just the udiCarrier for the jurisdiction it is sold, or for
  // multiple jurisdictions it could have been sold.
  @HiveField(12)
  List<DeviceDefinition_UdiDeviceIdentifier> udiDeviceIdentifier;

  //  A name of the manufacturer.
  @HiveField(13)
  String manufacturerString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for manufacturerString
  @HiveField(14)
  Element elementManufacturerString;

  //  A name of the manufacturer.
  @HiveField(15)
  Reference manufacturerReference;

  //  A name given to the device to identify it.
  @HiveField(16)
  List<DeviceDefinition_DeviceName> deviceName;

  //  The model number for the device.
  @HiveField(17)
  String modelNumber;

  //  Extensions for modelNumber
  @HiveField(18)
  Element elementModelNumber;

  //  What kind of device or device system this is.
  @HiveField(19)
  CodeableConcept type;

  //  The capabilities supported on a  device, the standards to which the
  // device conforms for a particular purpose, and used for the
  // communication.
  @HiveField(20)
  List<DeviceDefinition_Specialization> specialization;

  //  The available versions of the device, e.g., software versions.
  @HiveField(21)
  List<String> version;

  //  Extensions for version
  @HiveField(22)
  List<Element> elementVersion;

  //  Safety characteristics of the device.
  @HiveField(23)
  List<CodeableConcept> safety;

  //  Shelf Life and storage information.
  @HiveField(24)
  List<ProductShelfLife> shelfLifeStorage;

  //  Dimensions, color etc.
  @HiveField(25)
  ProdCharacteristic physicalCharacteristics;

  //  Language code for the human-readable text strings produced by the
  // device (all supported).
  @HiveField(26)
  List<CodeableConcept> languageCode;

  //  Device capabilities.
  @HiveField(27)
  List<DeviceDefinition_Capability> capability;

  //  The actual configuration settings of a device as it actually operates,
  // e.g., regulation status, time properties.
  @HiveField(28)
  List<DeviceDefinition_Property> property;

  //  An organization that is responsible for the provision and ongoing
  // maintenance of the device.
  @HiveField(29)
  Reference owner;

  //  Contact details for an organization or a particular human that is
  // responsible for the device.
  @HiveField(30)
  List<ContactPoint> contact;

  //  A network address on which the device may be contacted directly.
  @HiveField(31)
  String url;

  //  Extensions for url
  @HiveField(32)
  Element elementUrl;

  //  Access to on-line information about the device.
  @HiveField(33)
  String onlineInformation;

  //  Extensions for onlineInformation
  @HiveField(34)
  Element elementOnlineInformation;

  //  Descriptive information, usage information or implantation information
  // that is not captured in an existing element.
  @HiveField(35)
  List<Annotation> note;

  //  The quantity of the device present in the packaging (e.g. the number
  // of devices present in a pack, or the number of devices in the same
  // package of the medicinal product).
  @HiveField(36)
  Quantity quantity;

  //  The parent device it can be part of.
  @HiveField(37)
  Reference parentDevice;

  //  A substance used to create the material(s) of which the device is
  // made.
  @HiveField(38)
  List<DeviceDefinition_Material> material;

DeviceDefinition(
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
    this.udiDeviceIdentifier,
    this.manufacturerString,
    this.elementManufacturerString,
    this.manufacturerReference,
    this.deviceName,
    this.modelNumber,
    this.elementModelNumber,
    this.type,
    this.specialization,
    this.version,
    this.elementVersion,
    this.safety,
    this.shelfLifeStorage,
    this.physicalCharacteristics,
    this.languageCode,
    this.capability,
    this.property,
    this.owner,
    this.contact,
    this.url,
    this.elementUrl,
    this.onlineInformation,
    this.elementOnlineInformation,
    this.note,
    this.quantity,
    this.parentDevice,
    this.material
    });

  factory DeviceDefinition.fromJson(Map<String, dynamic> json) => _$DeviceDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_UdiDeviceIdentifier {

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

  //  The identifier that is to be associated with every Device that
  // references this DeviceDefintiion for the issuer and jurisdication
  // porvided in the DeviceDefinition.udiDeviceIdentifier.
  String deviceIdentifier;

  //  Extensions for deviceIdentifier
  Element elementDeviceIdentifier;

  //  The organization that assigns the identifier algorithm.
  String issuer;

  //  Extensions for issuer
  Element elementIssuer;

  //  The jurisdiction to which the deviceIdentifier applies.
  String jurisdiction;

  //  Extensions for jurisdiction
  Element elementJurisdiction;

DeviceDefinition_UdiDeviceIdentifier(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.deviceIdentifier,
    this.elementDeviceIdentifier,
    this.issuer,
    this.elementIssuer,
    this.jurisdiction,
    this.elementJurisdiction
    });

  factory DeviceDefinition_UdiDeviceIdentifier.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_UdiDeviceIdentifierFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_UdiDeviceIdentifierToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_DeviceName {

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
  Element elementName;

  //  The type of deviceName. UDILabelName | UserFriendlyName |
  // PatientReportedName | ManufactureDeviceName | ModelName.
  String type; // <code> enum: udi-label-name/user-friendly-name/patient-reported-name/manufacturer-name/model-name/other;

  //  Extensions for type
  Element elementType;

DeviceDefinition_DeviceName(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.type,
    this.elementType
    });

  factory DeviceDefinition_DeviceName.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_DeviceNameFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_DeviceNameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Specialization {

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
  String systemType;

  //  Extensions for systemType
  Element elementSystemType;

  //  The version of the standard that is used to operate and communicate.
  String version;

  //  Extensions for version
  Element elementVersion;

DeviceDefinition_Specialization(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.systemType,
    this.elementSystemType,
    this.version,
    this.elementVersion
    });

  factory DeviceDefinition_Specialization.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_SpecializationFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_SpecializationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Capability {

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

  //  Type of capability.
  CodeableConcept type;

  //  Description of capability.
  List<CodeableConcept> description;

DeviceDefinition_Capability(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.description
    });

  factory DeviceDefinition_Capability.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_CapabilityFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_CapabilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Property {

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

DeviceDefinition_Property(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.valueQuantity,
    this.valueCode
    });

  factory DeviceDefinition_Property.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_PropertyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Material {

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

  //  The substance.
  CodeableConcept substance;

  //  Indicates an alternative material of the device.
  bool alternate;

  //  Extensions for alternate
  Element elementAlternate;

  //  Whether the substance is a known or suspected allergen.
  bool allergenicIndicator;

  //  Extensions for allergenicIndicator
  Element elementAllergenicIndicator;

DeviceDefinition_Material(
  this.substance,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.alternate,
    this.elementAlternate,
    this.allergenicIndicator,
    this.elementAllergenicIndicator
    });

  factory DeviceDefinition_Material.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_MaterialFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_MaterialToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeviceDefinitionAdapter extends TypeAdapter<DeviceDefinition> {
  @override
  final typeId = 214;

  @override
  DeviceDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeviceDefinition(
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
      udiDeviceIdentifier:
          (fields[12] as List)?.cast<DeviceDefinition_UdiDeviceIdentifier>(),
      manufacturerString: fields[13] as String,
      elementManufacturerString: fields[14] as Element,
      manufacturerReference: fields[15] as Reference,
      deviceName: (fields[16] as List)?.cast<DeviceDefinition_DeviceName>(),
      modelNumber: fields[17] as String,
      elementModelNumber: fields[18] as Element,
      type: fields[19] as CodeableConcept,
      specialization:
          (fields[20] as List)?.cast<DeviceDefinition_Specialization>(),
      version: (fields[21] as List)?.cast<String>(),
      elementVersion: (fields[22] as List)?.cast<Element>(),
      safety: (fields[23] as List)?.cast<CodeableConcept>(),
      shelfLifeStorage: (fields[24] as List)?.cast<ProductShelfLife>(),
      physicalCharacteristics: fields[25] as ProdCharacteristic,
      languageCode: (fields[26] as List)?.cast<CodeableConcept>(),
      capability: (fields[27] as List)?.cast<DeviceDefinition_Capability>(),
      property: (fields[28] as List)?.cast<DeviceDefinition_Property>(),
      owner: fields[29] as Reference,
      contact: (fields[30] as List)?.cast<ContactPoint>(),
      url: fields[31] as String,
      elementUrl: fields[32] as Element,
      onlineInformation: fields[33] as String,
      elementOnlineInformation: fields[34] as Element,
      note: (fields[35] as List)?.cast<Annotation>(),
      quantity: fields[36] as Quantity,
      parentDevice: fields[37] as Reference,
      material: (fields[38] as List)?.cast<DeviceDefinition_Material>(),
    );
  }

  @override
  void write(BinaryWriter writer, DeviceDefinition obj) {
    writer
      ..writeByte(39)
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
      ..write(obj.udiDeviceIdentifier)
      ..writeByte(13)
      ..write(obj.manufacturerString)
      ..writeByte(14)
      ..write(obj.elementManufacturerString)
      ..writeByte(15)
      ..write(obj.manufacturerReference)
      ..writeByte(16)
      ..write(obj.deviceName)
      ..writeByte(17)
      ..write(obj.modelNumber)
      ..writeByte(18)
      ..write(obj.elementModelNumber)
      ..writeByte(19)
      ..write(obj.type)
      ..writeByte(20)
      ..write(obj.specialization)
      ..writeByte(21)
      ..write(obj.version)
      ..writeByte(22)
      ..write(obj.elementVersion)
      ..writeByte(23)
      ..write(obj.safety)
      ..writeByte(24)
      ..write(obj.shelfLifeStorage)
      ..writeByte(25)
      ..write(obj.physicalCharacteristics)
      ..writeByte(26)
      ..write(obj.languageCode)
      ..writeByte(27)
      ..write(obj.capability)
      ..writeByte(28)
      ..write(obj.property)
      ..writeByte(29)
      ..write(obj.owner)
      ..writeByte(30)
      ..write(obj.contact)
      ..writeByte(31)
      ..write(obj.url)
      ..writeByte(32)
      ..write(obj.elementUrl)
      ..writeByte(33)
      ..write(obj.onlineInformation)
      ..writeByte(34)
      ..write(obj.elementOnlineInformation)
      ..writeByte(35)
      ..write(obj.note)
      ..writeByte(36)
      ..write(obj.quantity)
      ..writeByte(37)
      ..write(obj.parentDevice)
      ..writeByte(38)
      ..write(obj.material);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceDefinition _$DeviceDefinitionFromJson(Map<String, dynamic> json) {
  return DeviceDefinition(
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
    udiDeviceIdentifier: (json['udiDeviceIdentifier'] as List)
        ?.map((e) => e == null
            ? null
            : DeviceDefinition_UdiDeviceIdentifier.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    manufacturerString: json['manufacturerString'] as String,
    elementManufacturerString: json['elementManufacturerString'] == null
        ? null
        : Element.fromJson(
            json['elementManufacturerString'] as Map<String, dynamic>),
    manufacturerReference: json['manufacturerReference'] == null
        ? null
        : Reference.fromJson(
            json['manufacturerReference'] as Map<String, dynamic>),
    deviceName: (json['deviceName'] as List)
        ?.map((e) => e == null
            ? null
            : DeviceDefinition_DeviceName.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modelNumber: json['modelNumber'] as String,
    elementModelNumber: json['elementModelNumber'] == null
        ? null
        : Element.fromJson(json['elementModelNumber'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    specialization: (json['specialization'] as List)
        ?.map((e) => e == null
            ? null
            : DeviceDefinition_Specialization.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    version: (json['version'] as List)?.map((e) => e as String)?.toList(),
    elementVersion: (json['elementVersion'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    safety: (json['safety'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    shelfLifeStorage: (json['shelfLifeStorage'] as List)
        ?.map((e) => e == null
            ? null
            : ProductShelfLife.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    physicalCharacteristics: json['physicalCharacteristics'] == null
        ? null
        : ProdCharacteristic.fromJson(
            json['physicalCharacteristics'] as Map<String, dynamic>),
    languageCode: (json['languageCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    capability: (json['capability'] as List)
        ?.map((e) => e == null
            ? null
            : DeviceDefinition_Capability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    property: (json['property'] as List)
        ?.map((e) => e == null
            ? null
            : DeviceDefinition_Property.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    owner: json['owner'] == null
        ? null
        : Reference.fromJson(json['owner'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    onlineInformation: json['onlineInformation'] as String,
    elementOnlineInformation: json['elementOnlineInformation'] == null
        ? null
        : Element.fromJson(
            json['elementOnlineInformation'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    parentDevice: json['parentDevice'] == null
        ? null
        : Reference.fromJson(json['parentDevice'] as Map<String, dynamic>),
    material: (json['material'] as List)
        ?.map((e) => e == null
            ? null
            : DeviceDefinition_Material.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DeviceDefinitionToJson(DeviceDefinition instance) =>
    <String, dynamic>{
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
      'udiDeviceIdentifier':
          instance.udiDeviceIdentifier?.map((e) => e?.toJson())?.toList(),
      'manufacturerString': instance.manufacturerString,
      'elementManufacturerString': instance.elementManufacturerString?.toJson(),
      'manufacturerReference': instance.manufacturerReference?.toJson(),
      'deviceName': instance.deviceName?.map((e) => e?.toJson())?.toList(),
      'modelNumber': instance.modelNumber,
      'elementModelNumber': instance.elementModelNumber?.toJson(),
      'type': instance.type?.toJson(),
      'specialization':
          instance.specialization?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'elementVersion':
          instance.elementVersion?.map((e) => e?.toJson())?.toList(),
      'safety': instance.safety?.map((e) => e?.toJson())?.toList(),
      'shelfLifeStorage':
          instance.shelfLifeStorage?.map((e) => e?.toJson())?.toList(),
      'physicalCharacteristics': instance.physicalCharacteristics?.toJson(),
      'languageCode': instance.languageCode?.map((e) => e?.toJson())?.toList(),
      'capability': instance.capability?.map((e) => e?.toJson())?.toList(),
      'property': instance.property?.map((e) => e?.toJson())?.toList(),
      'owner': instance.owner?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'onlineInformation': instance.onlineInformation,
      'elementOnlineInformation': instance.elementOnlineInformation?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'parentDevice': instance.parentDevice?.toJson(),
      'material': instance.material?.map((e) => e?.toJson())?.toList(),
    };

DeviceDefinition_UdiDeviceIdentifier
    _$DeviceDefinition_UdiDeviceIdentifierFromJson(Map<String, dynamic> json) {
  return DeviceDefinition_UdiDeviceIdentifier(
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
  );
}

Map<String, dynamic> _$DeviceDefinition_UdiDeviceIdentifierToJson(
        DeviceDefinition_UdiDeviceIdentifier instance) =>
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
    };

DeviceDefinition_DeviceName _$DeviceDefinition_DeviceNameFromJson(
    Map<String, dynamic> json) {
  return DeviceDefinition_DeviceName(
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

Map<String, dynamic> _$DeviceDefinition_DeviceNameToJson(
        DeviceDefinition_DeviceName instance) =>
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

DeviceDefinition_Specialization _$DeviceDefinition_SpecializationFromJson(
    Map<String, dynamic> json) {
  return DeviceDefinition_Specialization(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    systemType: json['systemType'] as String,
    elementSystemType: json['elementSystemType'] == null
        ? null
        : Element.fromJson(json['elementSystemType'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeviceDefinition_SpecializationToJson(
        DeviceDefinition_Specialization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'systemType': instance.systemType,
      'elementSystemType': instance.elementSystemType?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
    };

DeviceDefinition_Capability _$DeviceDefinition_CapabilityFromJson(
    Map<String, dynamic> json) {
  return DeviceDefinition_Capability(
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
    description: (json['description'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DeviceDefinition_CapabilityToJson(
        DeviceDefinition_Capability instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'description': instance.description?.map((e) => e?.toJson())?.toList(),
    };

DeviceDefinition_Property _$DeviceDefinition_PropertyFromJson(
    Map<String, dynamic> json) {
  return DeviceDefinition_Property(
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

Map<String, dynamic> _$DeviceDefinition_PropertyToJson(
        DeviceDefinition_Property instance) =>
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

DeviceDefinition_Material _$DeviceDefinition_MaterialFromJson(
    Map<String, dynamic> json) {
  return DeviceDefinition_Material(
    json['substance'] == null
        ? null
        : CodeableConcept.fromJson(json['substance'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    alternate: json['alternate'] as bool,
    elementAlternate: json['elementAlternate'] == null
        ? null
        : Element.fromJson(json['elementAlternate'] as Map<String, dynamic>),
    allergenicIndicator: json['allergenicIndicator'] as bool,
    elementAllergenicIndicator: json['elementAllergenicIndicator'] == null
        ? null
        : Element.fromJson(
            json['elementAllergenicIndicator'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeviceDefinition_MaterialToJson(
        DeviceDefinition_Material instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'substance': instance.substance?.toJson(),
      'alternate': instance.alternate,
      'elementAlternate': instance.elementAlternate?.toJson(),
      'allergenicIndicator': instance.allergenicIndicator,
      'elementAllergenicIndicator':
          instance.elementAllergenicIndicator?.toJson(),
    };
