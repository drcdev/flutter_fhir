import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Device {
  static Future<Device> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    Narrative text,
    List<dynamic> contained,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Identifier> identifier,
    Reference definition,
    List<Device_UdiCarrier> udiCarrier,
    String status,
    Element elementStatus,
    List<CodeableConcept> statusReason,
    String distinctIdentifier,
    Element elementDistinctIdentifier,
    String manufacturer,
    Element elementManufacturer,
    DateTime manufactureDate,
    Element elementManufactureDate,
    DateTime expirationDate,
    Element elementExpirationDate,
    String lotNumber,
    Element elementLotNumber,
    String serialNumber,
    Element elementSerialNumber,
    List<Device_DeviceName> deviceName,
    String modelNumber,
    Element elementModelNumber,
    String partNumber,
    Element elementPartNumber,
    CodeableConcept type,
    List<Device_Specialization> specialization,
    List<Device_Version> version,
    List<Device_Property> property,
    Reference patient,
    Reference owner,
    List<ContactPoint> contact,
    Reference location,
    String url,
    Element elementUrl,
    List<Annotation> note,
    List<CodeableConcept> safety,
    Reference parent,
  }) async {
    var fhirDb = new DatabaseHelper();
    Device newDevice = new Device(
      resourceType: 'Device',
      id: id ?? await fhirDb.newResourceId('Device'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      definition: definition,
      udiCarrier: udiCarrier,
      status: status,
      elementStatus: elementStatus,
      statusReason: statusReason,
      distinctIdentifier: distinctIdentifier,
      elementDistinctIdentifier: elementDistinctIdentifier,
      manufacturer: manufacturer,
      elementManufacturer: elementManufacturer,
      manufactureDate: manufactureDate,
      elementManufactureDate: elementManufactureDate,
      expirationDate: expirationDate,
      elementExpirationDate: elementExpirationDate,
      lotNumber: lotNumber,
      elementLotNumber: elementLotNumber,
      serialNumber: serialNumber,
      elementSerialNumber: elementSerialNumber,
      deviceName: deviceName,
      modelNumber: modelNumber,
      elementModelNumber: elementModelNumber,
      partNumber: partNumber,
      elementPartNumber: elementPartNumber,
      type: type,
      specialization: specialization,
      version: version,
      property: property,
      patient: patient,
      owner: owner,
      contact: contact,
      location: location,
      url: url,
      elementUrl: elementUrl,
      note: note,
      safety: safety,
      parent: parent,
    );
    newDevice.meta.createdAt = DateTime.now();
    newDevice.meta.lastUpdated = newDevice.meta.createdAt;
    int saved = await fhirDb.saveResource(newDevice);
    return newDevice;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'Device';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Identifier> identifier;
  @HiveField(12)
  Reference definition;
  @HiveField(13)
  List<Device_UdiCarrier> udiCarrier;
  @HiveField(14)
  String status;
  @HiveField(15)
  Element elementStatus;
  @HiveField(16)
  List<CodeableConcept> statusReason;
  @HiveField(17)
  String distinctIdentifier;
  @HiveField(18)
  Element elementDistinctIdentifier;
  @HiveField(19)
  String manufacturer;
  @HiveField(20)
  Element elementManufacturer;
  @HiveField(21)
  DateTime manufactureDate;
  @HiveField(22)
  Element elementManufactureDate;
  @HiveField(23)
  DateTime expirationDate;
  @HiveField(24)
  Element elementExpirationDate;
  @HiveField(25)
  String lotNumber;
  @HiveField(26)
  Element elementLotNumber;
  @HiveField(27)
  String serialNumber;
  @HiveField(28)
  Element elementSerialNumber;
  @HiveField(29)
  List<Device_DeviceName> deviceName;
  @HiveField(30)
  String modelNumber;
  @HiveField(31)
  Element elementModelNumber;
  @HiveField(32)
  String partNumber;
  @HiveField(33)
  Element elementPartNumber;
  @HiveField(34)
  CodeableConcept type;
  @HiveField(35)
  List<Device_Specialization> specialization;
  @HiveField(36)
  List<Device_Version> version;
  @HiveField(37)
  List<Device_Property> property;
  @HiveField(38)
  Reference patient;
  @HiveField(39)
  Reference owner;
  @HiveField(40)
  List<ContactPoint> contact;
  @HiveField(41)
  Reference location;
  @HiveField(42)
  String url;
  @HiveField(43)
  Element elementUrl;
  @HiveField(44)
  List<Annotation> note;
  @HiveField(45)
  List<CodeableConcept> safety;
  @HiveField(46)
  Reference parent;

  Device({
    @required this.resourceType,
    this.id,
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
    this.parent,
  });

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceToJson(this);
}

class Device_UdiCarrier {
  static Future<Device_UdiCarrier> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String deviceIdentifier,
    Element elementDeviceIdentifier,
    String issuer,
    Element elementIssuer,
    String jurisdiction,
    Element elementJurisdiction,
    String carrierAIDC,
    Element elementCarrierAIDC,
    String carrierHRF,
    Element elementCarrierHRF,
    String entryType,
    Element elementEntryType,
  }) async {
    var fhirDb = new DatabaseHelper();
    Device_UdiCarrier newDevice_UdiCarrier = new Device_UdiCarrier(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      deviceIdentifier: deviceIdentifier,
      elementDeviceIdentifier: elementDeviceIdentifier,
      issuer: issuer,
      elementIssuer: elementIssuer,
      jurisdiction: jurisdiction,
      elementJurisdiction: elementJurisdiction,
      carrierAIDC: carrierAIDC,
      elementCarrierAIDC: elementCarrierAIDC,
      carrierHRF: carrierHRF,
      elementCarrierHRF: elementCarrierHRF,
      entryType: entryType,
      elementEntryType: elementEntryType,
    );
    return newDevice_UdiCarrier;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String deviceIdentifier;
  @HiveField(4)
  Element elementDeviceIdentifier;
  @HiveField(5)
  String issuer;
  @HiveField(6)
  Element elementIssuer;
  @HiveField(7)
  String jurisdiction;
  @HiveField(8)
  Element elementJurisdiction;
  @HiveField(9)
  String carrierAIDC;
  @HiveField(10)
  Element elementCarrierAIDC;
  @HiveField(11)
  String carrierHRF;
  @HiveField(12)
  Element elementCarrierHRF;
  @HiveField(13)
  String entryType;
  @HiveField(14)
  Element elementEntryType;

  Device_UdiCarrier({
    this.id,
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
    this.elementEntryType,
  });

  factory Device_UdiCarrier.fromJson(Map<String, dynamic> json) =>
      _$Device_UdiCarrierFromJson(json);
  Map<String, dynamic> toJson() => _$Device_UdiCarrierToJson(this);
}

class Device_DeviceName {
  static Future<Device_DeviceName> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String type,
    Element elementType,
  }) async {
    var fhirDb = new DatabaseHelper();
    Device_DeviceName newDevice_DeviceName = new Device_DeviceName(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      type: type,
      elementType: elementType,
    );
    return newDevice_DeviceName;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String name;
  @HiveField(4)
  Element elementName;
  @HiveField(5)
  String type;
  @HiveField(6)
  Element elementType;

  Device_DeviceName({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.type,
    this.elementType,
  });

  factory Device_DeviceName.fromJson(Map<String, dynamic> json) =>
      _$Device_DeviceNameFromJson(json);
  Map<String, dynamic> toJson() => _$Device_DeviceNameToJson(this);
}

class Device_Specialization {
  static Future<Device_Specialization> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept systemType,
    String version,
    Element elementVersion,
  }) async {
    var fhirDb = new DatabaseHelper();
    Device_Specialization newDevice_Specialization = new Device_Specialization(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      systemType: systemType,
      version: version,
      elementVersion: elementVersion,
    );
    return newDevice_Specialization;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept systemType;
  @HiveField(4)
  String version;
  @HiveField(5)
  Element elementVersion;

  Device_Specialization({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.systemType,
    this.version,
    this.elementVersion,
  });

  factory Device_Specialization.fromJson(Map<String, dynamic> json) =>
      _$Device_SpecializationFromJson(json);
  Map<String, dynamic> toJson() => _$Device_SpecializationToJson(this);
}

class Device_Version {
  static Future<Device_Version> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    Identifier component,
    String value,
    Element elementValue,
  }) async {
    var fhirDb = new DatabaseHelper();
    Device_Version newDevice_Version = new Device_Version(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      component: component,
      value: value,
      elementValue: elementValue,
    );
    return newDevice_Version;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept type;
  @HiveField(4)
  Identifier component;
  @HiveField(5)
  String value;
  @HiveField(6)
  Element elementValue;

  Device_Version({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.component,
    this.value,
    this.elementValue,
  });

  factory Device_Version.fromJson(Map<String, dynamic> json) =>
      _$Device_VersionFromJson(json);
  Map<String, dynamic> toJson() => _$Device_VersionToJson(this);
}

class Device_Property {
  static Future<Device_Property> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    List<Quantity> valueQuantity,
    List<CodeableConcept> valueCode,
  }) async {
    var fhirDb = new DatabaseHelper();
    Device_Property newDevice_Property = new Device_Property(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      valueQuantity: valueQuantity,
      valueCode: valueCode,
    );
    return newDevice_Property;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept type;
  @HiveField(4)
  List<Quantity> valueQuantity;
  @HiveField(5)
  List<CodeableConcept> valueCode;

  Device_Property({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.valueQuantity,
    this.valueCode,
  });

  factory Device_Property.fromJson(Map<String, dynamic> json) =>
      _$Device_PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$Device_PropertyToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return Device(
    resourceType: json['resourceType'] as String,
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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

Map<String, dynamic> _$DeviceToJson(Device instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('definition', instance.definition?.toJson());
  writeNotNull(
      'udiCarrier', instance.udiCarrier?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull(
      'statusReason', instance.statusReason?.map((e) => e?.toJson())?.toList());
  writeNotNull('distinctIdentifier', instance.distinctIdentifier);
  writeNotNull('elementDistinctIdentifier',
      instance.elementDistinctIdentifier?.toJson());
  writeNotNull('manufacturer', instance.manufacturer);
  writeNotNull('elementManufacturer', instance.elementManufacturer?.toJson());
  writeNotNull('manufactureDate', instance.manufactureDate?.toIso8601String());
  writeNotNull(
      'elementManufactureDate', instance.elementManufactureDate?.toJson());
  writeNotNull('expirationDate', instance.expirationDate?.toIso8601String());
  writeNotNull(
      'elementExpirationDate', instance.elementExpirationDate?.toJson());
  writeNotNull('lotNumber', instance.lotNumber);
  writeNotNull('elementLotNumber', instance.elementLotNumber?.toJson());
  writeNotNull('serialNumber', instance.serialNumber);
  writeNotNull('elementSerialNumber', instance.elementSerialNumber?.toJson());
  writeNotNull(
      'deviceName', instance.deviceName?.map((e) => e?.toJson())?.toList());
  writeNotNull('modelNumber', instance.modelNumber);
  writeNotNull('elementModelNumber', instance.elementModelNumber?.toJson());
  writeNotNull('partNumber', instance.partNumber);
  writeNotNull('elementPartNumber', instance.elementPartNumber?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('specialization',
      instance.specialization?.map((e) => e?.toJson())?.toList());
  writeNotNull('version', instance.version?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'property', instance.property?.map((e) => e?.toJson())?.toList());
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull('location', instance.location?.toJson());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull('safety', instance.safety?.map((e) => e?.toJson())?.toList());
  writeNotNull('parent', instance.parent?.toJson());
  return val;
}

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

Map<String, dynamic> _$Device_UdiCarrierToJson(Device_UdiCarrier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('deviceIdentifier', instance.deviceIdentifier);
  writeNotNull(
      'elementDeviceIdentifier', instance.elementDeviceIdentifier?.toJson());
  writeNotNull('issuer', instance.issuer);
  writeNotNull('elementIssuer', instance.elementIssuer?.toJson());
  writeNotNull('jurisdiction', instance.jurisdiction);
  writeNotNull('elementJurisdiction', instance.elementJurisdiction?.toJson());
  writeNotNull('carrierAIDC', instance.carrierAIDC);
  writeNotNull('elementCarrierAIDC', instance.elementCarrierAIDC?.toJson());
  writeNotNull('carrierHRF', instance.carrierHRF);
  writeNotNull('elementCarrierHRF', instance.elementCarrierHRF?.toJson());
  writeNotNull('entryType', instance.entryType);
  writeNotNull('elementEntryType', instance.elementEntryType?.toJson());
  return val;
}

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

Map<String, dynamic> _$Device_DeviceNameToJson(Device_DeviceName instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  return val;
}

Device_Specialization _$Device_SpecializationFromJson(
    Map<String, dynamic> json) {
  return Device_Specialization(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    systemType: json['systemType'] == null
        ? null
        : CodeableConcept.fromJson(json['systemType'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Device_SpecializationToJson(
    Device_Specialization instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('systemType', instance.systemType?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  return val;
}

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

Map<String, dynamic> _$Device_VersionToJson(Device_Version instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('component', instance.component?.toJson());
  writeNotNull('value', instance.value);
  writeNotNull('elementValue', instance.elementValue?.toJson());
  return val;
}

Device_Property _$Device_PropertyFromJson(Map<String, dynamic> json) {
  return Device_Property(
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

Map<String, dynamic> _$Device_PropertyToJson(Device_Property instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('valueQuantity',
      instance.valueQuantity?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'valueCode', instance.valueCode?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeviceAdapter extends TypeAdapter<Device> {
  @override
  Device read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Device(
      resourceType: fields[0] as String,
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
  Device_Specialization read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Device_Specialization(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      systemType: fields[3] as CodeableConcept,
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
  Device_Property read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Device_Property(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
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
