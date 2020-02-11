import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 16)
class Ratio {

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

  //  The value of the numerator.
  @HiveField(2)
  Quantity numerator;

  //  The value of the denominator.
  @HiveField(3)
  Quantity denominator;

Ratio(
  {this.id,
    this.extension,
    this.numerator,
    this.denominator
    });

  factory Ratio.fromJson(Map<String, dynamic> json) => _$RatioFromJson(json);
  Map<String, dynamic> toJson() => _$RatioToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RatioAdapter extends TypeAdapter<Ratio> {
  @override
  final typeId = 16;

  @override
  Ratio read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ratio(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      numerator: fields[2] as Quantity,
      denominator: fields[3] as Quantity,
    );
  }

  @override
  void write(BinaryWriter writer, Ratio obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.numerator)
      ..writeByte(3)
      ..write(obj.denominator);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ratio _$RatioFromJson(Map<String, dynamic> json) {
  return Ratio(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numerator: json['numerator'] == null
        ? null
        : Quantity.fromJson(json['numerator'] as Map<String, dynamic>),
    denominator: json['denominator'] == null
        ? null
        : Quantity.fromJson(json['denominator'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RatioToJson(Ratio instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'numerator': instance.numerator?.toJson(),
      'denominator': instance.denominator?.toJson(),
    };
