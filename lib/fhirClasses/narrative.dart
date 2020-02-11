import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 2)
class Narrative {

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

  //  The status of the narrative - whether it's entirely generated (from
  // just the defined data or the extensions too), or whether a human
  // authored it and it may contain additional data.
  @HiveField(2)
  String status; // <code> enum: generated/extensions/additional/empty;

  //  Extensions for status
  @HiveField(3)
  Element elementStatus;

  //  The actual narrative content, a stripped down version of XHTML.
  @HiveField(4)
  String div;

Narrative(
  this.div,
    {this.id,
    this.extension,
    this.status,
    this.elementStatus
    });

  factory Narrative.fromJson(Map<String, dynamic> json) => _$NarrativeFromJson(json);
  Map<String, dynamic> toJson() => _$NarrativeToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NarrativeAdapter extends TypeAdapter<Narrative> {
  @override
  final typeId = 2;

  @override
  Narrative read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Narrative(
      fields[4] as String,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      status: fields[2] as String,
      elementStatus: fields[3] as Element,
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Narrative _$NarrativeFromJson(Map<String, dynamic> json) {
  return Narrative(
    json['div'] as String,
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NarrativeToJson(Narrative instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'div': instance.div,
    };
