import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/population.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 139)
class MedicinalProductIndication {

	static Future<MedicinalProductIndication> newInstance({
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
		CodeableConcept diseaseSymptomProcedure,
		CodeableConcept diseaseStatus,
		List<CodeableConcept> comorbidity,
		CodeableConcept intendedEffect,
		Quantity duration,
		List<MedicinalProductIndication_OtherTherapy> otherTherapy,
		List<Reference> undesirableEffect,
		List<Population> population}) async {
	MedicinalProductIndication newMedicinalProductIndication = new MedicinalProductIndication(
			id: await newId('MedicinalProductIndication'),
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
			diseaseSymptomProcedure: diseaseSymptomProcedure,
			diseaseStatus: diseaseStatus,
			comorbidity: comorbidity,
			intendedEffect: intendedEffect,
			duration: duration,
			otherTherapy: otherTherapy,
			undesirableEffect: undesirableEffect,
			population: population);
	var medicinalProductIndicationBox = await Hive.openBox<MedicinalProductIndication>('MedicinalProductIndicationBox');
	medicinalProductIndicationBox.put(newMedicinalProductIndication.id, newMedicinalProductIndication);
	return newMedicinalProductIndication;
}
  @HiveField(0)
  final String resourceType= 'MedicinalProductIndication';
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
  CodeableConcept diseaseSymptomProcedure;
  @HiveField(13)
  CodeableConcept diseaseStatus;
  @HiveField(14)
  List<CodeableConcept> comorbidity;
  @HiveField(15)
  CodeableConcept intendedEffect;
  @HiveField(16)
  Quantity duration;
  @HiveField(17)
  List<MedicinalProductIndication_OtherTherapy> otherTherapy;
  @HiveField(18)
  List<Reference> undesirableEffect;
  @HiveField(19)
  List<Population> population;

MedicinalProductIndication(
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
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.intendedEffect,
    this.duration,
    this.otherTherapy,
    this.undesirableEffect,
    this.population
    });

  factory MedicinalProductIndication.fromJson(Map<String, dynamic> json) => _$MedicinalProductIndicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIndicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIndication_OtherTherapy {

	static Future<MedicinalProductIndication_OtherTherapy> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept therapyRelationshipType,
		CodeableConcept medicationCodeableConcept,
		Reference medicationReference}) async {
	MedicinalProductIndication_OtherTherapy newMedicinalProductIndication_OtherTherapy = new MedicinalProductIndication_OtherTherapy(
			id: await newId('MedicinalProductIndication_OtherTherapy'),
			extension: extension,
			modifierExtension: modifierExtension,
			therapyRelationshipType: therapyRelationshipType,
			medicationCodeableConcept: medicationCodeableConcept,
			medicationReference: medicationReference);
	var medicinalProductIndication_OtherTherapyBox = await Hive.openBox<MedicinalProductIndication_OtherTherapy>('MedicinalProductIndication_OtherTherapyBox');
	medicinalProductIndication_OtherTherapyBox.put(newMedicinalProductIndication_OtherTherapy.id, newMedicinalProductIndication_OtherTherapy);
	return newMedicinalProductIndication_OtherTherapy;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept therapyRelationshipType;
  CodeableConcept medicationCodeableConcept;
  Reference medicationReference;

MedicinalProductIndication_OtherTherapy(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.therapyRelationshipType,
    this.medicationCodeableConcept,
    this.medicationReference
    });

  factory MedicinalProductIndication_OtherTherapy.fromJson(Map<String, dynamic> json) => _$MedicinalProductIndication_OtherTherapyFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIndication_OtherTherapyToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductIndicationAdapter
    extends TypeAdapter<MedicinalProductIndication> {
  @override
  final typeId = 139;

  @override
  MedicinalProductIndication read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductIndication(
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
      diseaseSymptomProcedure: fields[12] as CodeableConcept,
      diseaseStatus: fields[13] as CodeableConcept,
      comorbidity: (fields[14] as List)?.cast<CodeableConcept>(),
      intendedEffect: fields[15] as CodeableConcept,
      duration: fields[16] as Quantity,
      otherTherapy:
          (fields[17] as List)?.cast<MedicinalProductIndication_OtherTherapy>(),
      undesirableEffect: (fields[18] as List)?.cast<Reference>(),
      population: (fields[19] as List)?.cast<Population>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductIndication obj) {
    writer
      ..writeByte(20)
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
      ..write(obj.diseaseSymptomProcedure)
      ..writeByte(13)
      ..write(obj.diseaseStatus)
      ..writeByte(14)
      ..write(obj.comorbidity)
      ..writeByte(15)
      ..write(obj.intendedEffect)
      ..writeByte(16)
      ..write(obj.duration)
      ..writeByte(17)
      ..write(obj.otherTherapy)
      ..writeByte(18)
      ..write(obj.undesirableEffect)
      ..writeByte(19)
      ..write(obj.population);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductIndication _$MedicinalProductIndicationFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductIndication(
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
    diseaseSymptomProcedure: json['diseaseSymptomProcedure'] == null
        ? null
        : CodeableConcept.fromJson(
            json['diseaseSymptomProcedure'] as Map<String, dynamic>),
    diseaseStatus: json['diseaseStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['diseaseStatus'] as Map<String, dynamic>),
    comorbidity: (json['comorbidity'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    intendedEffect: json['intendedEffect'] == null
        ? null
        : CodeableConcept.fromJson(
            json['intendedEffect'] as Map<String, dynamic>),
    duration: json['duration'] == null
        ? null
        : Quantity.fromJson(json['duration'] as Map<String, dynamic>),
    otherTherapy: (json['otherTherapy'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductIndication_OtherTherapy.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    undesirableEffect: (json['undesirableEffect'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    population: (json['population'] as List)
        ?.map((e) =>
            e == null ? null : Population.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductIndicationToJson(
        MedicinalProductIndication instance) =>
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
      'diseaseSymptomProcedure': instance.diseaseSymptomProcedure?.toJson(),
      'diseaseStatus': instance.diseaseStatus?.toJson(),
      'comorbidity': instance.comorbidity?.map((e) => e?.toJson())?.toList(),
      'intendedEffect': instance.intendedEffect?.toJson(),
      'duration': instance.duration?.toJson(),
      'otherTherapy': instance.otherTherapy?.map((e) => e?.toJson())?.toList(),
      'undesirableEffect':
          instance.undesirableEffect?.map((e) => e?.toJson())?.toList(),
      'population': instance.population?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductIndication_OtherTherapy
    _$MedicinalProductIndication_OtherTherapyFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductIndication_OtherTherapy(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    therapyRelationshipType: json['therapyRelationshipType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['therapyRelationshipType'] as Map<String, dynamic>),
    medicationCodeableConcept: json['medicationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['medicationCodeableConcept'] as Map<String, dynamic>),
    medicationReference: json['medicationReference'] == null
        ? null
        : Reference.fromJson(
            json['medicationReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductIndication_OtherTherapyToJson(
        MedicinalProductIndication_OtherTherapy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'therapyRelationshipType': instance.therapyRelationshipType?.toJson(),
      'medicationCodeableConcept': instance.medicationCodeableConcept?.toJson(),
      'medicationReference': instance.medicationReference?.toJson(),
    };
