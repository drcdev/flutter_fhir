import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/population.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 145)
class MedicinalProductUndesirableEffect {

	static Future<MedicinalProductUndesirableEffect> newInstance({
		String id,
		Meta meta,
		String implicitRules,
		Element elementImplicitRules,
		String language,
		Element elementLanguage,
		Narrative text,
		List<dynamic> contained,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<Reference> subject,
		CodeableConcept symptomConditionEffect,
		CodeableConcept classification,
		CodeableConcept frequencyOfOccurrence,
		List<Population> population}) async {
	MedicinalProductUndesirableEffect newMedicinalProductUndesirableEffect = new MedicinalProductUndesirableEffect(
			id: await newId('MedicinalProductUndesirableEffect'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			subject: subject,
			symptomConditionEffect: symptomConditionEffect,
			classification: classification,
			frequencyOfOccurrence: frequencyOfOccurrence,
			population: population);
	var medicinalProductUndesirableEffectBox = await Hive.openBox<MedicinalProductUndesirableEffect>('MedicinalProductUndesirableEffectBox');
	medicinalProductUndesirableEffectBox.put(newMedicinalProductUndesirableEffect.id, newMedicinalProductUndesirableEffect);
	return newMedicinalProductUndesirableEffect;
}
  @HiveField(0)
  final String resourceType= 'MedicinalProductUndesirableEffect';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Reference> subject;
  @HiveField(12)
  CodeableConcept symptomConditionEffect;
  @HiveField(13)
  CodeableConcept classification;
  @HiveField(14)
  CodeableConcept frequencyOfOccurrence;
  @HiveField(15)
  List<Population> population;

MedicinalProductUndesirableEffect(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.subject,
    this.symptomConditionEffect,
    this.classification,
    this.frequencyOfOccurrence,
    this.population
    });

  factory MedicinalProductUndesirableEffect.fromJson(Map<String, dynamic> json) => _$MedicinalProductUndesirableEffectFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductUndesirableEffectToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductUndesirableEffectAdapter
    extends TypeAdapter<MedicinalProductUndesirableEffect> {
  @override
  final typeId = 145;

  @override
  MedicinalProductUndesirableEffect read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductUndesirableEffect(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      subject: (fields[11] as List)?.cast<Reference>(),
      symptomConditionEffect: fields[12] as CodeableConcept,
      classification: fields[13] as CodeableConcept,
      frequencyOfOccurrence: fields[14] as CodeableConcept,
      population: (fields[15] as List)?.cast<Population>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductUndesirableEffect obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.subject)
      ..writeByte(12)
      ..write(obj.symptomConditionEffect)
      ..writeByte(13)
      ..write(obj.classification)
      ..writeByte(14)
      ..write(obj.frequencyOfOccurrence)
      ..writeByte(15)
      ..write(obj.population);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductUndesirableEffect _$MedicinalProductUndesirableEffectFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductUndesirableEffect(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subject: (json['subject'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    symptomConditionEffect: json['symptomConditionEffect'] == null
        ? null
        : CodeableConcept.fromJson(
            json['symptomConditionEffect'] as Map<String, dynamic>),
    classification: json['classification'] == null
        ? null
        : CodeableConcept.fromJson(
            json['classification'] as Map<String, dynamic>),
    frequencyOfOccurrence: json['frequencyOfOccurrence'] == null
        ? null
        : CodeableConcept.fromJson(
            json['frequencyOfOccurrence'] as Map<String, dynamic>),
    population: (json['population'] as List)
        ?.map((e) =>
            e == null ? null : Population.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductUndesirableEffectToJson(
        MedicinalProductUndesirableEffect instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.map((e) => e?.toJson())?.toList(),
      'symptomConditionEffect': instance.symptomConditionEffect?.toJson(),
      'classification': instance.classification?.toJson(),
      'frequencyOfOccurrence': instance.frequencyOfOccurrence?.toJson(),
      'population': instance.population?.map((e) => e?.toJson())?.toList(),
    };
