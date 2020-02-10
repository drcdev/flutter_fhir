import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class Population {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Range ageRange;
  CodeableConcept ageCodeableConcept;
  CodeableConcept gender;
  CodeableConcept race;
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
