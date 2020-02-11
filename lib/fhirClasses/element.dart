import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 16)
class Element {

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

Element(
  {this.id,
    this.extension
    });

  factory Element.fromJson(Map<String, dynamic> json) => _$ElementFromJson(json);
  Map<String, dynamic> toJson() => _$ElementToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ElementAdapter extends TypeAdapter<Element> {
  @override
  final typeId = 16;

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

Map<String, dynamic> _$ElementToJson(Element instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
    };
