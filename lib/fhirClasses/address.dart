import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class Address {
  static Future<Address> newInstance({
    String id,
    List<Extension> extension,
    String use,
    Element elementUse,
    String type,
    Element elementType,
    String text,
    Element elementText,
    List<String> line,
    List<Element> elementLine,
    String city,
    Element elementCity,
    String district,
    Element elementDistrict,
    String state,
    Element elementState,
    String postalCode,
    Element elementPostalCode,
    String country,
    Element elementCountry,
    Period period,
  }) async {
    var fhirDb = new DatabaseHelper();
    Address newAddress = new Address(
      id: id ?? await fhirDb.newResourceId('Address'),
      extension: extension,
      use: use,
      elementUse: elementUse,
      type: type,
      elementType: elementType,
      text: text,
      elementText: elementText,
      line: line,
      elementLine: elementLine,
      city: city,
      elementCity: elementCity,
      district: district,
      elementDistrict: elementDistrict,
      state: state,
      elementState: elementState,
      postalCode: postalCode,
      elementPostalCode: elementPostalCode,
      country: country,
      elementCountry: elementCountry,
      period: period,
    );
    return newAddress;
  }

  String id;
  List<Extension> extension;
  String use;
  Element elementUse;
  String type;
  Element elementType;
  String text;
  Element elementText;
  List<String> line;
  List<Element> elementLine;
  String city;
  Element elementCity;
  String district;
  Element elementDistrict;
  String state;
  Element elementState;
  String postalCode;
  Element elementPostalCode;
  String country;
  Element elementCountry;
  Period period;

  Address({
    this.id,
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
    this.period,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
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
