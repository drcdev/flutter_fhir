import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 37)
class Address {

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

  //  The purpose of this address.
  @HiveField(2)
  String use; // <code> enum: home/work/temp/old/billing;

  //  Extensions for use
  @HiveField(3)
  Element elementUse;

  //  Distinguishes between physical addresses (those you can visit) and
  // mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses
  // are both.
  @HiveField(4)
  String type; // <code> enum: postal/physical/both;

  //  Extensions for type
  @HiveField(5)
  Element elementType;

  //  Specifies the entire address as it should be displayed e.g. on a
  // postal label. This may be provided instead of or as well as the
  // specific parts.
  @HiveField(6)
  String text;

  //  Extensions for text
  @HiveField(7)
  Element elementText;

  //  This component contains the house number, apartment number, street
  // name, street direction,  P.O. Box number, delivery hints, and similar
  // address information.
  @HiveField(8)
  List<String> line;

  //  Extensions for line
  @HiveField(9)
  List<Element> elementLine;

  //  The name of the city, town, suburb, village or other community or
  // delivery center.
  @HiveField(10)
  String city;

  //  Extensions for city
  @HiveField(11)
  Element elementCity;

  //  The name of the administrative area (county).
  @HiveField(12)
  String district;

  //  Extensions for district
  @HiveField(13)
  Element elementDistrict;

  //  Sub-unit of a country with limited sovereignty in a federally
  // organized country. A code may be used if codes are in common use (e.g.
  // US 2 letter state codes).
  @HiveField(14)
  String state;

  //  Extensions for state
  @HiveField(15)
  Element elementState;

  //  A postal code designating a region defined by the postal service.
  @HiveField(16)
  String postalCode;

  //  Extensions for postalCode
  @HiveField(17)
  Element elementPostalCode;

  //  Country - a nation as commonly understood or generally accepted.
  @HiveField(18)
  String country;

  //  Extensions for country
  @HiveField(19)
  Element elementCountry;

  //  Time period when address was/is in use.
  @HiveField(20)
  Period period;

Address(
  {this.id,
    this.extension,
    this.use,
    this.elementUse,
    this.type,
    this.elementType,
    this.text,
    this.elementText,
    this.line,
    this.elementLine,
    this.city,
    this.elementCity,
    this.district,
    this.elementDistrict,
    this.state,
    this.elementState,
    this.postalCode,
    this.elementPostalCode,
    this.country,
    this.elementCountry,
    this.period
    });

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AddressAdapter extends TypeAdapter<Address> {
  @override
  final typeId = 37;

  @override
  Address read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Address(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      use: fields[2] as String,
      elementUse: fields[3] as Element,
      type: fields[4] as String,
      elementType: fields[5] as Element,
      text: fields[6] as String,
      elementText: fields[7] as Element,
      line: (fields[8] as List)?.cast<String>(),
      elementLine: (fields[9] as List)?.cast<Element>(),
      city: fields[10] as String,
      elementCity: fields[11] as Element,
      district: fields[12] as String,
      elementDistrict: fields[13] as Element,
      state: fields[14] as String,
      elementState: fields[15] as Element,
      postalCode: fields[16] as String,
      elementPostalCode: fields[17] as Element,
      country: fields[18] as String,
      elementCountry: fields[19] as Element,
      period: fields[20] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, Address obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.use)
      ..writeByte(3)
      ..write(obj.elementUse)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.elementType)
      ..writeByte(6)
      ..write(obj.text)
      ..writeByte(7)
      ..write(obj.elementText)
      ..writeByte(8)
      ..write(obj.line)
      ..writeByte(9)
      ..write(obj.elementLine)
      ..writeByte(10)
      ..write(obj.city)
      ..writeByte(11)
      ..write(obj.elementCity)
      ..writeByte(12)
      ..write(obj.district)
      ..writeByte(13)
      ..write(obj.elementDistrict)
      ..writeByte(14)
      ..write(obj.state)
      ..writeByte(15)
      ..write(obj.elementState)
      ..writeByte(16)
      ..write(obj.postalCode)
      ..writeByte(17)
      ..write(obj.elementPostalCode)
      ..writeByte(18)
      ..write(obj.country)
      ..writeByte(19)
      ..write(obj.elementCountry)
      ..writeByte(20)
      ..write(obj.period);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    line: (json['line'] as List)?.map((e) => e as String)?.toList(),
    elementLine: (json['elementLine'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    city: json['city'] as String,
    elementCity: json['elementCity'] == null
        ? null
        : Element.fromJson(json['elementCity'] as Map<String, dynamic>),
    district: json['district'] as String,
    elementDistrict: json['elementDistrict'] == null
        ? null
        : Element.fromJson(json['elementDistrict'] as Map<String, dynamic>),
    state: json['state'] as String,
    elementState: json['elementState'] == null
        ? null
        : Element.fromJson(json['elementState'] as Map<String, dynamic>),
    postalCode: json['postalCode'] as String,
    elementPostalCode: json['elementPostalCode'] == null
        ? null
        : Element.fromJson(json['elementPostalCode'] as Map<String, dynamic>),
    country: json['country'] as String,
    elementCountry: json['elementCountry'] == null
        ? null
        : Element.fromJson(json['elementCountry'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'use': instance.use,
      'elementUse': instance.elementUse?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'line': instance.line,
      'elementLine': instance.elementLine?.map((e) => e?.toJson())?.toList(),
      'city': instance.city,
      'elementCity': instance.elementCity?.toJson(),
      'district': instance.district,
      'elementDistrict': instance.elementDistrict?.toJson(),
      'state': instance.state,
      'elementState': instance.elementState?.toJson(),
      'postalCode': instance.postalCode,
      'elementPostalCode': instance.elementPostalCode?.toJson(),
      'country': instance.country,
      'elementCountry': instance.elementCountry?.toJson(),
      'period': instance.period?.toJson(),
    };
