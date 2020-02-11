import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 49)
class Population {

	static Future<Population> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Range ageRange,
		CodeableConcept ageCodeableConcept,
		CodeableConcept gender,
		CodeableConcept race,
		CodeableConcept physiologicalCondition}) async {
	 return Population(
			id: await newEntry('Population'),
			extension: extension,
			modifierExtension: modifierExtension,
			ageRange: ageRange,
			ageCodeableConcept: ageCodeableConcept,
			gender: gender,
			race: race,
			physiologicalCondition: physiologicalCondition);
	}

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Range ageRange;
  @HiveField(4)
  CodeableConcept ageCodeableConcept;
  @HiveField(5)
  CodeableConcept gender;
  @HiveField(6)
  CodeableConcept race;
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
  final typeId = 49;

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
