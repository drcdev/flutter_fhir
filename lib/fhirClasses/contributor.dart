import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

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
      id: id,
      extension: extension,
      type: type,
      elementType: elementType,
      name: name,
      elementName: elementName,
      contact: contact,
    );
    return newContributor;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  String type;
  @HiveField(3)
  Element elementType;
  @HiveField(4)
  String name;
  @HiveField(5)
  Element elementName;
  @HiveField(6)
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

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContributorAdapter extends TypeAdapter<Contributor> {
  @override
  Contributor read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Contributor(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      type: fields[2] as String,
      elementType: fields[3] as Element,
      name: fields[4] as String,
      elementName: fields[5] as Element,
      contact: (fields[6] as List)?.cast<ContactDetail>(),
    );
  }

  @override
  void write(BinaryWriter writer, Contributor obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.elementType)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.elementName)
      ..writeByte(6)
      ..write(obj.contact);
  }
}
