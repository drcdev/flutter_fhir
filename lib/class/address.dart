import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';

part 'address.g.dart';

@JsonSerializable(explicitToJson: true)
class Address {
  //home | work | temp | old | billing - purpose of this address
  String use;

  //postal, physical, both
  String type;

  //Text representation of the address
  String text;

  //Street name, number, direction & P.O. Box etc. the order address elements
  // should appear on an address label
  List<String> line;

  //Name of city, town etc.
  String city;

  // District name (aka county)
  String district;

  // Sub-unit of country (abbreviations ok)
  String state;

  // Postal code for area
  String postalCode;

  // Country (e.g. can be ISO 3166 2 or 3 letter code)
  String country;

  // Time period when address was/is in use
  Period period;

  Address(
      {this.use,
        this.type,
        this.text,
        this.line,
        this.city,
        this.district,
        this.state,
        this.postalCode,
        this.country,
        this.period});

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}