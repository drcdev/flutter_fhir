import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Contributor {
  static Future<Contributor> newInstance({
    String id,
    List<Extension> extension,
    String type,
    Element elementType,
    String name,
    Element elementName,
    List<ContactDetail> contact,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contributor newContributor = new Contributor(
      id: id ?? await fhirDb.newResourceId('Contributor'),
      extension: extension,
      type: type,
      elementType: elementType,
      name: name,
      elementName: elementName,
      contact: contact,
    );
    return newContributor;
  }

  String id;
  List<Extension> extension;
  String type;
  Element elementType;
  String name;
  Element elementName;
  List<ContactDetail> contact;

  Contributor({
    this.id,
    this.extension,
    this.type,
    this.elementType,
    this.name,
    this.elementName,
    this.contact,
  });

  factory Contributor.fromJson(Map<String, dynamic> json) =>
      _$ContributorFromJson(json);
  Map<String, dynamic> toJson() => _$ContributorToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contributor _$ContributorFromJson(Map<String, dynamic> json) {
  return Contributor(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ContributorToJson(Contributor instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  return val;
}
