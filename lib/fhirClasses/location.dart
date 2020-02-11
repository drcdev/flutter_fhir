import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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

  //  This is a Location resource
  @HiveField(0)
  final String resourceType= 'Location';

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

  //  Unique code or number identifying the location to its users.
  @HiveField(11)
  List<Identifier> identifier;

  //  The status property covers the general availability of the resource,
  // not the current value which may be covered by the operationStatus, or
  // by a schedule/slots if they are configured for the location.
  @HiveField(12)
  String status; // <code> enum: active/suspended/inactive;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  The operational status covers operation values most relevant to beds
  // (but can also apply to rooms/units/chairs/etc. such as an isolation
  // unit/dialysis chair). This typically covers concepts such as
  // contamination, housekeeping, and other activities like maintenance.
  @HiveField(14)
  Coding operationalStatus;

  //  Name of the location as used by humans. Does not need to be unique.
  @HiveField(15)
  String name;

  //  Extensions for name
  @HiveField(16)
  Element elementName;

  //  A list of alternate names that the location is known as, or was known
  // as, in the past.
  @HiveField(17)
  List<String> alias;

  //  Extensions for alias
  @HiveField(18)
  List<Element> elementAlias;

  //  Description of the Location, which helps in finding or referencing the
  // place.
  @HiveField(19)
  String description;

  //  Extensions for description
  @HiveField(20)
  Element elementDescription;

  //  Indicates whether a resource instance represents a specific location
  // or a class of locations.
  @HiveField(21)
  String mode; // <code> enum: instance/kind;

  //  Extensions for mode
  @HiveField(22)
  Element elementMode;

  //  Indicates the type of function performed at the location.
  @HiveField(23)
  List<CodeableConcept> type;

  //  The contact details of communication devices available at the
  // location. This can include phone numbers, fax numbers, mobile numbers,
  // email addresses and web sites.
  @HiveField(24)
  List<ContactPoint> telecom;

  //  Physical location.
  @HiveField(25)
  Address address;

  //  Physical form of the location, e.g. building, room, vehicle, road.
  @HiveField(26)
  CodeableConcept physicalType;

  //  The absolute geographic location of the Location, expressed using the
  // WGS84 datum (This is the same co-ordinate system used in KML).
  @HiveField(27)
  Location_Position position;

  //  The organization responsible for the provisioning and upkeep of the
  // location.
  @HiveField(28)
  Reference managingOrganization;

  //  Another Location of which this Location is physically a part of.
  @HiveField(29)
  Reference partOf;

  //  What days/times during a week is this location usually open.
  @HiveField(30)
  List<Location_HoursOfOperation> hoursOfOperation;

  //  A description of when the locations opening ours are different to
  // normal, e.g. public holiday availability. Succinctly describing all
  // possible exceptions to normal site availability as detailed in the
  // opening hours Times.
  @HiveField(31)
  String availabilityExceptions;

  //  Extensions for availabilityExceptions
  @HiveField(32)
  Element elementAvailabilityExceptions;

  //  Technical endpoints providing access to services operated for the
  // location.
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

  //  Longitude. The value domain and the interpretation are the same as for
  // the text of the longitude element in KML (see notes below).
  double longitude;

  //  Extensions for longitude
  Element elementLongitude;

  //  Latitude. The value domain and the interpretation are the same as for
  // the text of the latitude element in KML (see notes below).
  double latitude;

  //  Extensions for latitude
  Element elementLatitude;

  //  Altitude. The value domain and the interpretation are the same as for
  // the text of the altitude element in KML (see notes below).
  double altitude;

  //  Extensions for altitude
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

  //  Indicates which days of the week are available between the start and
  // end Times.
  List<String> daysOfWeek;

  //  Extensions for daysOfWeek
  List<Element> elementDaysOfWeek;

  //  The Location is open all day.
  bool allDay;

  //  Extensions for allDay
  Element elementAllDay;

  //  Time that the Location opens.
  String openingTime;

  //  Extensions for openingTime
  Element elementOpeningTime;

  //  Time that the Location closes.
  String closingTime;

  //  Extensions for closingTime
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
