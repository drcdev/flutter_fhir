import 'period.dart';
import 'package:json_annotation/json_annotation.dart';
part 'address.g.dart';

@JsonSerializable(explicitToJson: true)
class Address {
  String use; //home | work | temp | old | billing - purpose of this address
  String type; //postal, physical, both
  String text; //Text representation of the address
  String line; //Street name, number, direction & P.O. Box etc. the order address elements should appear on an address label
  String city; //Name of city, town etc.
  String district; // District name (aka county)
  String state; // Sub-unit of country (abbreviations ok)
  String postalCode; // Postal code for area
  String country; // Country (e.g. can be ISO 3166 2 or 3 letter code)
  Period period; // Time period when address was/is in use

  Address({this.use, this.type, this.text, this.line, this.city, this.district, this.state, this.postalCode, this.country, this.period});

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}