import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

class Element {
  static Future<Element> newInstance({
    String id,
    List<Extension> extension,
  }) async {
    var fhirDb = new DatabaseHelper();
    Element newElement = new Element(
      id: id,
      extension: extension,
    );
    return newElement;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;

  Element({
    this.id,
    this.extension,
  });

  factory Element.fromJson(Map<String, dynamic> json) =>
      _$ElementFromJson(json);
  Map<String, dynamic> toJson() => _$ElementToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Element _$ElementFromJson(Map<String, dynamic> json) {
  return Element(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ElementToJson(Element instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ElementAdapter extends TypeAdapter<Element> {
  @override
  Element read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Element(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
    );
  }

  @override
  void write(BinaryWriter writer, Element obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension);
  }
}
