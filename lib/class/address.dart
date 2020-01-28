import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'address.g.dart';

@JsonSerializable(explicitToJson: true)
class Address {

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

//  The purpose of this address.
String use; // <code> enum: home/work/temp/old/billing;

//  Distinguishes between physical addresses (those you can visit) and
// mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses
// are both.
String type; // <code> enum: postal/physical/both;

//  Specifies the entire address as it should be displayed e.g. on a
// postal label. This may be provided instead of or as well as the
// specific parts.
String text;

//  This component contains the house number, apartment number, street
// name, street direction,  P.O. Box number, delivery hints, and similar
// address information.
List<String> line;

//  The name of the city, town, suburb, village or other community or
// delivery center.
String city;

//  The name of the administrative area (county).
String district;

//  Sub-unit of a country with limited sovereignty in a federally
// organized country. A code may be used if codes are in common use (e.g.
// US 2 letter state codes).
String state;

//  A postal code designating a region defined by the postal service.
String postalCode;

//  Country - a nation as commonly understood or generally accepted.
String country;

//  Time period when address was/is in use.
Period period;

Address(
  {this.id,
    this.extension,
    this.use,
    this.type,
    this.text,
    this.line,
    this.city,
    this.district,
    this.state,
    this.postalCode,
    this.country,
    this.period
    });

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

