import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class Location {


	static Future<Location> newInstance({
		String  resourceType,
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
		String status,
		Element elementStatus,
		Coding operationalStatus,
		String name,
		Element elementName,
		List<String> alias,
		List<Element> elementAlias,
		String description,
		Element elementDescription,
		String mode,
		Element elementMode,
		List<CodeableConcept> type,
		List<ContactPoint> telecom,
		Address address,
		CodeableConcept physicalType,
		Location_Position position,
		Reference managingOrganization,
		Reference partOf,
		List<Location_HoursOfOperation> hoursOfOperation,
		String availabilityExceptions,
		Element elementAvailabilityExceptions,
		List<Reference> endpoint}) async {
	var fhirDb = new DatabaseHelper();
	Location newLocation = new Location(
			resourceType: 'Location',
			id: await fhirDb.newResourceId('Location'),
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
			status: status,
			elementStatus: elementStatus,
			operationalStatus: operationalStatus,
			name: name,
			elementName: elementName,
			alias: alias,
			elementAlias: elementAlias,
			description: description,
			elementDescription: elementDescription,
			mode: mode,
			elementMode: elementMode,
			type: type,
			telecom: telecom,
			address: address,
			physicalType: physicalType,
			position: position,
			managingOrganization: managingOrganization,
			partOf: partOf,
			hoursOfOperation: hoursOfOperation,
			availabilityExceptions: availabilityExceptions,
			elementAvailabilityExceptions: elementAvailabilityExceptions,
			endpoint: endpoint,
);
	int saved = await fhirDb.newResource(newLocation);
	return newLocation;
}

save () async {
	var fhirDb = new DatabaseHelper();
	int saved = await fhirDb.saveResource(this);
}
  String resourceType= 'Location';
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
  String status; // <code> enum: active/suspended/inactive;
  Element elementStatus;
  Coding operationalStatus;
  String name;
  Element elementName;
  List<String> alias;
  List<Element> elementAlias;
  String description;
  Element elementDescription;
  String mode; // <code> enum: instance/kind;
  Element elementMode;
  List<CodeableConcept> type;
  List<ContactPoint> telecom;
  Address address;
  CodeableConcept physicalType;
  Location_Position position;
  Reference managingOrganization;
  Reference partOf;
  List<Location_HoursOfOperation> hoursOfOperation;
  String availabilityExceptions;
  Element elementAvailabilityExceptions;
  List<Reference> endpoint;

Location(
  {@required this.resourceType,
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
    this.status,
    this.elementStatus,
    this.operationalStatus,
    this.name,
    this.elementName,
    this.alias,
    this.elementAlias,
    this.description,
    this.elementDescription,
    this.mode,
    this.elementMode,
    this.type,
    this.telecom,
    this.address,
    this.physicalType,
    this.position,
    this.managingOrganization,
    this.partOf,
    this.hoursOfOperation,
    this.availabilityExceptions,
    this.elementAvailabilityExceptions,
    this.endpoint
    });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Location_Position {


	static Future<Location_Position> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		double longitude,
		Element elementLongitude,
		double latitude,
		Element elementLatitude,
		double altitude,
		Element elementAltitude}) async {
	var fhirDb = new DatabaseHelper();
	Location_Position newLocation_Position = new Location_Position(
			id: await fhirDb.newResourceId('Location_Position'),
			extension: extension,
			modifierExtension: modifierExtension,
			longitude: longitude,
			elementLongitude: elementLongitude,
			latitude: latitude,
			elementLatitude: elementLatitude,
			altitude: altitude,
			elementAltitude: elementAltitude,
);
	return newLocation_Position;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  double longitude;
  Element elementLongitude;
  double latitude;
  Element elementLatitude;
  double altitude;
  Element elementAltitude;

Location_Position(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.longitude,
    this.elementLongitude,
    this.latitude,
    this.elementLatitude,
    this.altitude,
    this.elementAltitude
    });

  factory Location_Position.fromJson(Map<String, dynamic> json) => _$Location_PositionFromJson(json);
  Map<String, dynamic> toJson() => _$Location_PositionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Location_HoursOfOperation {


	static Future<Location_HoursOfOperation> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<String> daysOfWeek,
		List<Element> elementDaysOfWeek,
		bool allDay,
		Element elementAllDay,
		String openingTime,
		Element elementOpeningTime,
		String closingTime,
		Element elementClosingTime}) async {
	var fhirDb = new DatabaseHelper();
	Location_HoursOfOperation newLocation_HoursOfOperation = new Location_HoursOfOperation(
			id: await fhirDb.newResourceId('Location_HoursOfOperation'),
			extension: extension,
			modifierExtension: modifierExtension,
			daysOfWeek: daysOfWeek,
			elementDaysOfWeek: elementDaysOfWeek,
			allDay: allDay,
			elementAllDay: elementAllDay,
			openingTime: openingTime,
			elementOpeningTime: elementOpeningTime,
			closingTime: closingTime,
			elementClosingTime: elementClosingTime,
);
	return newLocation_HoursOfOperation;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<String> daysOfWeek;
  List<Element> elementDaysOfWeek;
  bool allDay;
  Element elementAllDay;
  String openingTime;
  Element elementOpeningTime;
  String closingTime;
  Element elementClosingTime;

Location_HoursOfOperation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.daysOfWeek,
    this.elementDaysOfWeek,
    this.allDay,
    this.elementAllDay,
    this.openingTime,
    this.elementOpeningTime,
    this.closingTime,
    this.elementClosingTime
    });

  factory Location_HoursOfOperation.fromJson(Map<String, dynamic> json) => _$Location_HoursOfOperationFromJson(json);
  Map<String, dynamic> toJson() => _$Location_HoursOfOperationToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    operationalStatus: json['operationalStatus'] == null
        ? null
        : Coding.fromJson(json['operationalStatus'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    alias: (json['alias'] as List)?.map((e) => e as String)?.toList(),
    elementAlias: (json['elementAlias'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    telecom: (json['telecom'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
    physicalType: json['physicalType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['physicalType'] as Map<String, dynamic>),
    position: json['position'] == null
        ? null
        : Location_Position.fromJson(json['position'] as Map<String, dynamic>),
    managingOrganization: json['managingOrganization'] == null
        ? null
        : Reference.fromJson(
            json['managingOrganization'] as Map<String, dynamic>),
    partOf: json['partOf'] == null
        ? null
        : Reference.fromJson(json['partOf'] as Map<String, dynamic>),
    hoursOfOperation: (json['hoursOfOperation'] as List)
        ?.map((e) => e == null
            ? null
            : Location_HoursOfOperation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    availabilityExceptions: json['availabilityExceptions'] as String,
    elementAvailabilityExceptions: json['elementAvailabilityExceptions'] == null
        ? null
        : Element.fromJson(
            json['elementAvailabilityExceptions'] as Map<String, dynamic>),
    endpoint: (json['endpoint'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'resourceType': instance.resourceType,
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
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'operationalStatus': instance.operationalStatus?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'alias': instance.alias,
      'elementAlias': instance.elementAlias?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'mode': instance.mode,
      'elementMode': instance.elementMode?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
      'address': instance.address?.toJson(),
      'physicalType': instance.physicalType?.toJson(),
      'position': instance.position?.toJson(),
      'managingOrganization': instance.managingOrganization?.toJson(),
      'partOf': instance.partOf?.toJson(),
      'hoursOfOperation':
          instance.hoursOfOperation?.map((e) => e?.toJson())?.toList(),
      'availabilityExceptions': instance.availabilityExceptions,
      'elementAvailabilityExceptions':
          instance.elementAvailabilityExceptions?.toJson(),
      'endpoint': instance.endpoint?.map((e) => e?.toJson())?.toList(),
    };

Location_Position _$Location_PositionFromJson(Map<String, dynamic> json) {
  return Location_Position(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    longitude: (json['longitude'] as num)?.toDouble(),
    elementLongitude: json['elementLongitude'] == null
        ? null
        : Element.fromJson(json['elementLongitude'] as Map<String, dynamic>),
    latitude: (json['latitude'] as num)?.toDouble(),
    elementLatitude: json['elementLatitude'] == null
        ? null
        : Element.fromJson(json['elementLatitude'] as Map<String, dynamic>),
    altitude: (json['altitude'] as num)?.toDouble(),
    elementAltitude: json['elementAltitude'] == null
        ? null
        : Element.fromJson(json['elementAltitude'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Location_PositionToJson(Location_Position instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'longitude': instance.longitude,
      'elementLongitude': instance.elementLongitude?.toJson(),
      'latitude': instance.latitude,
      'elementLatitude': instance.elementLatitude?.toJson(),
      'altitude': instance.altitude,
      'elementAltitude': instance.elementAltitude?.toJson(),
    };

Location_HoursOfOperation _$Location_HoursOfOperationFromJson(
    Map<String, dynamic> json) {
  return Location_HoursOfOperation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    daysOfWeek: (json['daysOfWeek'] as List)?.map((e) => e as String)?.toList(),
    elementDaysOfWeek: (json['elementDaysOfWeek'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    allDay: json['allDay'] as bool,
    elementAllDay: json['elementAllDay'] == null
        ? null
        : Element.fromJson(json['elementAllDay'] as Map<String, dynamic>),
    openingTime: json['openingTime'] as String,
    elementOpeningTime: json['elementOpeningTime'] == null
        ? null
        : Element.fromJson(json['elementOpeningTime'] as Map<String, dynamic>),
    closingTime: json['closingTime'] as String,
    elementClosingTime: json['elementClosingTime'] == null
        ? null
        : Element.fromJson(json['elementClosingTime'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Location_HoursOfOperationToJson(
        Location_HoursOfOperation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'daysOfWeek': instance.daysOfWeek,
      'elementDaysOfWeek':
          instance.elementDaysOfWeek?.map((e) => e?.toJson())?.toList(),
      'allDay': instance.allDay,
      'elementAllDay': instance.elementAllDay?.toJson(),
      'openingTime': instance.openingTime,
      'elementOpeningTime': instance.elementOpeningTime?.toJson(),
      'closingTime': instance.closingTime,
      'elementClosingTime': instance.elementClosingTime?.toJson(),
    };
