import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

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

@JsonSerializable(explicitToJson: true)
class Device {

	static Future<Device> newInstance({
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
		Reference parent}) async {
	Device newDevice = new Device(
			id: await newId('Device'),
			meta: meta,
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
			parent: parent);
	var deviceBox = await Hive.openBox<Device>('DeviceBox');
	deviceBox.put(newDevice.id, newDevice);
	return newDevice;
}
  final String resourceType= 'Device';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  Reference definition;
  List<Device_UdiCarrier> udiCarrier;
  String status; // <code> enum: active/inactive/entered-in-error/unknown;
  Element elementStatus;
  List<CodeableConcept> statusReason;
  String distinctIdentifier;
  Element elementDistinctIdentifier;
  String manufacturer;
  Element elementManufacturer;
  DateTime manufactureDate;
  Element elementManufactureDate;
  DateTime expirationDate;
  Element elementExpirationDate;
  String lotNumber;
  Element elementLotNumber;
  String serialNumber;
  Element elementSerialNumber;
  List<Device_DeviceName> deviceName;
  String modelNumber;
  Element elementModelNumber;
  String partNumber;
  Element elementPartNumber;
  CodeableConcept type;
  List<Device_Specialization> specialization;
  List<Device_Version> version;
  List<Device_Property> property;
  Reference patient;
  Reference owner;
  List<ContactPoint> contact;
  Reference location;
  String url;
  Element elementUrl;
  List<Annotation> note;
  List<CodeableConcept> safety;
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
		Element elementEntryType}) async {
	Device_UdiCarrier newDevice_UdiCarrier = new Device_UdiCarrier(
			id: await newId('Device_UdiCarrier'),
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
			elementEntryType: elementEntryType);
	var device_UdiCarrierBox = await Hive.openBox<Device_UdiCarrier>('Device_UdiCarrierBox');
	device_UdiCarrierBox.put(newDevice_UdiCarrier.id, newDevice_UdiCarrier);
	return newDevice_UdiCarrier;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String deviceIdentifier;
  Element elementDeviceIdentifier;
  String issuer;
  Element elementIssuer;
  String jurisdiction;
  Element elementJurisdiction;
  String carrierAIDC;
  Element elementCarrierAIDC;
  String carrierHRF;
  Element elementCarrierHRF;
  String entryType; // <code> enum: barcode/rfid/manual/card/self-reported/unknown;
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
class Device_DeviceName {

	static Future<Device_DeviceName> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String name,
		Element elementName,
		String type,
		Element elementType}) async {
	Device_DeviceName newDevice_DeviceName = new Device_DeviceName(
			id: await newId('Device_DeviceName'),
			extension: extension,
			modifierExtension: modifierExtension,
			name: name,
			elementName: elementName,
			type: type,
			elementType: elementType);
	var device_DeviceNameBox = await Hive.openBox<Device_DeviceName>('Device_DeviceNameBox');
	device_DeviceNameBox.put(newDevice_DeviceName.id, newDevice_DeviceName);
	return newDevice_DeviceName;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String type; // <code> enum: udi-label-name/user-friendly-name/patient-reported-name/manufacturer-name/model-name/other;
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
class Device_Specialization {

	static Future<Device_Specialization> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept systemType,
		String version,
		Element elementVersion}) async {
	Device_Specialization newDevice_Specialization = new Device_Specialization(
			id: await newId('Device_Specialization'),
			extension: extension,
			modifierExtension: modifierExtension,
			systemType: systemType,
			version: version,
			elementVersion: elementVersion);
	var device_SpecializationBox = await Hive.openBox<Device_Specialization>('Device_SpecializationBox');
	device_SpecializationBox.put(newDevice_Specialization.id, newDevice_Specialization);
	return newDevice_Specialization;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept systemType;
  String version;
  Element elementVersion;

Device_Specialization(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.systemType,
    this.version,
    this.elementVersion
    });

  factory Device_Specialization.fromJson(Map<String, dynamic> json) => _$Device_SpecializationFromJson(json);
  Map<String, dynamic> toJson() => _$Device_SpecializationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Device_Version {

	static Future<Device_Version> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		Identifier component,
		String value,
		Element elementValue}) async {
	Device_Version newDevice_Version = new Device_Version(
			id: await newId('Device_Version'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			component: component,
			value: value,
			elementValue: elementValue);
	var device_VersionBox = await Hive.openBox<Device_Version>('Device_VersionBox');
	device_VersionBox.put(newDevice_Version.id, newDevice_Version);
	return newDevice_Version;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Identifier component;
  String value;
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
class Device_Property {

	static Future<Device_Property> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		List<Quantity> valueQuantity,
		List<CodeableConcept> valueCode}) async {
	Device_Property newDevice_Property = new Device_Property(
			id: await newId('Device_Property'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			valueQuantity: valueQuantity,
			valueCode: valueCode);
	var device_PropertyBox = await Hive.openBox<Device_Property>('Device_PropertyBox');
	device_PropertyBox.put(newDevice_Property.id, newDevice_Property);
	return newDevice_Property;
}
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
    @required this.type,
    this.valueQuantity,
    this.valueCode
    });

  factory Device_Property.fromJson(Map<String, dynamic> json) => _$Device_PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$Device_PropertyToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
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
