import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 38)
class Population {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The age of the specific population.
  @HiveField(3)
  Range ageRange;

  //  The age of the specific population.
  @HiveField(4)
  CodeableConcept ageCodeableConcept;

  //  The gender of the specific population.
  @HiveField(5)
  CodeableConcept gender;

  //  Race of the specific population.
  @HiveField(6)
  CodeableConcept race;

  //  The existing physiological conditions of the specific population to
  // which this applies.
  @HiveField(7)
  CodeableConcept physiologicalCondition;

Population(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.ageRange,
    this.ageCodeableConcept,
    this.gender,
    this.race,
    this.physiologicalCondition
    });

  factory Population.fromJson(Map<String, dynamic> json) => _$PopulationFromJson(json);
  Map<String, dynamic> toJson() => _$PopulationToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PopulationAdapter extends TypeAdapter<Population> {
  @override
  final typeId = 38;

  @override
  Population read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Population(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      ageRange: fields[3] as Range,
      ageCodeableConcept: fields[4] as CodeableConcept,
      gender: fields[5] as CodeableConcept,
      race: fields[6] as CodeableConcept,
      physiologicalCondition: fields[7] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, Population obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.ageRange)
      ..writeByte(4)
      ..write(obj.ageCodeableConcept)
      ..writeByte(5)
      ..write(obj.gender)
      ..writeByte(6)
      ..write(obj.race)
      ..writeByte(7)
      ..write(obj.physiologicalCondition);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Population _$PopulationFromJson(Map<String, dynamic> json) {
  return Population(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    ageRange: json['ageRange'] == null
        ? null
        : Range.fromJson(json['ageRange'] as Map<String, dynamic>),
    ageCodeableConcept: json['ageCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['ageCodeableConcept'] as Map<String, dynamic>),
    gender: json['gender'] == null
        ? null
        : CodeableConcept.fromJson(json['gender'] as Map<String, dynamic>),
    race: json['race'] == null
        ? null
        : CodeableConcept.fromJson(json['race'] as Map<String, dynamic>),
    physiologicalCondition: json['physiologicalCondition'] == null
        ? null
        : CodeableConcept.fromJson(
            json['physiologicalCondition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PopulationToJson(Population instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'ageRange': instance.ageRange?.toJson(),
      'ageCodeableConcept': instance.ageCodeableConcept?.toJson(),
      'gender': instance.gender?.toJson(),
      'race': instance.race?.toJson(),
      'physiologicalCondition': instance.physiologicalCondition?.toJson(),
    };
