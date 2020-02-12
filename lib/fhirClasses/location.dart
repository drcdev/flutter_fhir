import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 126)
class Location {

	static Future<Location> newInstance({
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
	Location newLocation = new Location(
			id: await newId('Location'),
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
			endpoint: endpoint);
	var locationBox = await Hive.openBox<Location>('LocationBox');
	locationBox.put(newLocation.id, newLocation);
	return newLocation;
}
  @HiveField(0)
  final String resourceType= 'Location';
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
  String status; // <code> enum: active/suspended/inactive;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  Coding operationalStatus;
  @HiveField(15)
  String name;
  @HiveField(16)
  Element elementName;
  @HiveField(17)
  List<String> alias;
  @HiveField(18)
  List<Element> elementAlias;
  @HiveField(19)
  String description;
  @HiveField(20)
  Element elementDescription;
  @HiveField(21)
  String mode; // <code> enum: instance/kind;
  @HiveField(22)
  Element elementMode;
  @HiveField(23)
  List<CodeableConcept> type;
  @HiveField(24)
  List<ContactPoint> telecom;
  @HiveField(25)
  Address address;
  @HiveField(26)
  CodeableConcept physicalType;
  @HiveField(27)
  Location_Position position;
  @HiveField(28)
  Reference managingOrganization;
  @HiveField(29)
  Reference partOf;
  @HiveField(30)
  List<Location_HoursOfOperation> hoursOfOperation;
  @HiveField(31)
  String availabilityExceptions;
  @HiveField(32)
  Element elementAvailabilityExceptions;
  @HiveField(33)
  List<Reference> endpoint;

Location(
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
	Location_Position newLocation_Position = new Location_Position(
			id: await newId('Location_Position'),
			extension: extension,
			modifierExtension: modifierExtension,
			longitude: longitude,
			elementLongitude: elementLongitude,
			latitude: latitude,
			elementLatitude: elementLatitude,
			altitude: altitude,
			elementAltitude: elementAltitude);
	var location_PositionBox = await Hive.openBox<Location_Position>('Location_PositionBox');
	location_PositionBox.put(newLocation_Position.id, newLocation_Position);
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
	Location_HoursOfOperation newLocation_HoursOfOperation = new Location_HoursOfOperation(
			id: await newId('Location_HoursOfOperation'),
			extension: extension,
			modifierExtension: modifierExtension,
			daysOfWeek: daysOfWeek,
			elementDaysOfWeek: elementDaysOfWeek,
			allDay: allDay,
			elementAllDay: elementAllDay,
			openingTime: openingTime,
			elementOpeningTime: elementOpeningTime,
			closingTime: closingTime,
			elementClosingTime: elementClosingTime);
	var location_HoursOfOperationBox = await Hive.openBox<Location_HoursOfOperation>('Location_HoursOfOperationBox');
	location_HoursOfOperationBox.put(newLocation_HoursOfOperation.id, newLocation_HoursOfOperation);
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
// TypeAdapterGenerator
// **************************************************************************

class LocationAdapter extends TypeAdapter<Location> {
  @override
  final typeId = 126;

  @override
  Location read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Location(
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
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      operationalStatus: fields[14] as Coding,
      name: fields[15] as String,
      elementName: fields[16] as Element,
      alias: (fields[17] as List)?.cast<String>(),
      elementAlias: (fields[18] as List)?.cast<Element>(),
      description: fields[19] as String,
      elementDescription: fields[20] as Element,
      mode: fields[21] as String,
      elementMode: fields[22] as Element,
      type: (fields[23] as List)?.cast<CodeableConcept>(),
      telecom: (fields[24] as List)?.cast<ContactPoint>(),
      address: fields[25] as Address,
      physicalType: fields[26] as CodeableConcept,
      position: fields[27] as Location_Position,
      managingOrganization: fields[28] as Reference,
      partOf: fields[29] as Reference,
      hoursOfOperation: (fields[30] as List)?.cast<Location_HoursOfOperation>(),
      availabilityExceptions: fields[31] as String,
      elementAvailabilityExceptions: fields[32] as Element,
      endpoint: (fields[33] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, Location obj) {
    writer
      ..writeByte(34)
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
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.operationalStatus)
      ..writeByte(15)
      ..write(obj.name)
      ..writeByte(16)
      ..write(obj.elementName)
      ..writeByte(17)
      ..write(obj.alias)
      ..writeByte(18)
      ..write(obj.elementAlias)
      ..writeByte(19)
      ..write(obj.description)
      ..writeByte(20)
      ..write(obj.elementDescription)
      ..writeByte(21)
      ..write(obj.mode)
      ..writeByte(22)
      ..write(obj.elementMode)
      ..writeByte(23)
      ..write(obj.type)
      ..writeByte(24)
      ..write(obj.telecom)
      ..writeByte(25)
      ..write(obj.address)
      ..writeByte(26)
      ..write(obj.physicalType)
      ..writeByte(27)
      ..write(obj.position)
      ..writeByte(28)
      ..write(obj.managingOrganization)
      ..writeByte(29)
      ..write(obj.partOf)
      ..writeByte(30)
      ..write(obj.hoursOfOperation)
      ..writeByte(31)
      ..write(obj.availabilityExceptions)
      ..writeByte(32)
      ..write(obj.elementAvailabilityExceptions)
      ..writeByte(33)
      ..write(obj.endpoint);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
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
