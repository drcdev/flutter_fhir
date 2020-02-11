import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 47)
class UsageContext {

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

  //  A code that identifies the type of context being specified by this
  // usage context.
  @HiveField(2)
  Coding code;

  //  A value that defines the context specified in this context of use. The
  // interpretation of the value is defined by the code.
  @HiveField(3)
  CodeableConcept valueCodeableConcept;

  //  A value that defines the context specified in this context of use. The
  // interpretation of the value is defined by the code.
  @HiveField(4)
  Quantity valueQuantity;

  //  A value that defines the context specified in this context of use. The
  // interpretation of the value is defined by the code.
  @HiveField(5)
  Range valueRange;

  //  A value that defines the context specified in this context of use. The
  // interpretation of the value is defined by the code.
  @HiveField(6)
  Reference valueReference;

UsageContext(
  this.code,
    {this.id,
    this.extension,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueReference
    });

  factory UsageContext.fromJson(Map<String, dynamic> json) => _$UsageContextFromJson(json);
  Map<String, dynamic> toJson() => _$UsageContextToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UsageContextAdapter extends TypeAdapter<UsageContext> {
  @override
  final typeId = 47;

  @override
  UsageContext read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UsageContext(
      fields[2] as Coding,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      valueCodeableConcept: fields[3] as CodeableConcept,
      valueQuantity: fields[4] as Quantity,
      valueRange: fields[5] as Range,
      valueReference: fields[6] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, UsageContext obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.code)
      ..writeByte(3)
      ..write(obj.valueCodeableConcept)
      ..writeByte(4)
      ..write(obj.valueQuantity)
      ..writeByte(5)
      ..write(obj.valueRange)
      ..writeByte(6)
      ..write(obj.valueReference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsageContext _$UsageContextFromJson(Map<String, dynamic> json) {
  return UsageContext(
    json['code'] == null
        ? null
        : Coding.fromJson(json['code'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueCodeableConcept: json['valueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['valueCodeableConcept'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueRange: json['valueRange'] == null
        ? null
        : Range.fromJson(json['valueRange'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UsageContextToJson(UsageContext instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'valueCodeableConcept': instance.valueCodeableConcept?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueRange': instance.valueRange?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
    };
