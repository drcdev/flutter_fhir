import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

class Narrative {
  static Future<Narrative> newInstance({
    String id,
    List<Extension> extension,
    String status,
    Element elementStatus,
    String div,
  }) async {
    var fhirDb = new DatabaseHelper();
    Narrative newNarrative = new Narrative(
      id: id,
      extension: extension,
      status: status,
      elementStatus: elementStatus,
      div: div,
    );
    return newNarrative;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  String status;
  @HiveField(3)
  Element elementStatus;
  @HiveField(4)
  String div;

  Narrative({
    this.id,
    this.extension,
    this.status,
    this.elementStatus,
    @required this.div,
  });

  factory Narrative.fromJson(Map<String, dynamic> json) =>
      _$NarrativeFromJson(json);
  Map<String, dynamic> toJson() => _$NarrativeToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Narrative _$NarrativeFromJson(Map<String, dynamic> json) {
  return Narrative(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    div: json['div'] as String,
  );
}

Map<String, dynamic> _$NarrativeToJson(Narrative instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('div', instance.div);
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NarrativeAdapter extends TypeAdapter<Narrative> {
  @override
  Narrative read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Narrative(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      status: fields[2] as String,
      elementStatus: fields[3] as Element,
      div: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Narrative obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.elementStatus)
      ..writeByte(4)
      ..write(obj.div);
  }
}
