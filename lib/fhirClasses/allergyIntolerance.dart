import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 59)
class AllergyIntolerance {

	static Future<AllergyIntolerance> newInstance({
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
		List<Identifier> identifier,
		CodeableConcept clinicalStatus,
		CodeableConcept verificationStatus,
		String type,
		Element elementType,
		List<String> category,
		List<Element> elementCategory,
		String criticality,
		Element elementCriticality,
		CodeableConcept code,
		Reference patient,
		Reference encounter,
		String onsetDateTime,
		Element elementOnsetDateTime,
		Age onsetAge,
		Period onsetPeriod,
		Range onsetRange,
		String onsetString,
		Element elementOnsetString,
		DateTime recordedDate,
		Element elementRecordedDate,
		Reference recorder,
		Reference asserter,
		DateTime lastOccurrence,
		Element elementLastOccurrence,
		List<Annotation> note,
		List<AllergyIntolerance_Reaction> reaction}) async {
	AllergyIntolerance newAllergyIntolerance = new AllergyIntolerance(
			id: await newId('AllergyIntolerance'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			clinicalStatus: clinicalStatus,
			verificationStatus: verificationStatus,
			type: type,
			elementType: elementType,
			category: category,
			elementCategory: elementCategory,
			criticality: criticality,
			elementCriticality: elementCriticality,
			code: code,
			patient: patient,
			encounter: encounter,
			onsetDateTime: onsetDateTime,
			elementOnsetDateTime: elementOnsetDateTime,
			onsetAge: onsetAge,
			onsetPeriod: onsetPeriod,
			onsetRange: onsetRange,
			onsetString: onsetString,
			elementOnsetString: elementOnsetString,
			recordedDate: recordedDate,
			elementRecordedDate: elementRecordedDate,
			recorder: recorder,
			asserter: asserter,
			lastOccurrence: lastOccurrence,
			elementLastOccurrence: elementLastOccurrence,
			note: note,
			reaction: reaction);
	var allergyIntoleranceBox = await Hive.openBox<AllergyIntolerance>('AllergyIntoleranceBox');
	allergyIntoleranceBox.put(newAllergyIntolerance.id, newAllergyIntolerance);
	return newAllergyIntolerance;
}
  @HiveField(0)
  final String resourceType= 'AllergyIntolerance';
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
  List<Identifier> identifier;
  @HiveField(12)
  CodeableConcept clinicalStatus;
  @HiveField(13)
  CodeableConcept verificationStatus;
  @HiveField(14)
  String type; // <code> enum: allergy/intolerance;
  @HiveField(15)
  Element elementType;
  @HiveField(16)
  List<String> category; // <code> enum: food/medication/environment/biologic> category;
  @HiveField(17)
  List<Element> elementCategory;
  @HiveField(18)
  String criticality; // <code> enum: low/high/unable-to-assess;
  @HiveField(19)
  Element elementCriticality;
  @HiveField(20)
  CodeableConcept code;
  @HiveField(21)
  Reference patient;
  @HiveField(22)
  Reference encounter;
  @HiveField(23)
  String onsetDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  @HiveField(24)
  Element elementOnsetDateTime;
  @HiveField(25)
  Age onsetAge;
  @HiveField(26)
  Period onsetPeriod;
  @HiveField(27)
  Range onsetRange;
  @HiveField(28)
  String onsetString; //  pattern: ^[ \r\n\t\S]+$
  @HiveField(29)
  Element elementOnsetString;
  @HiveField(30)
  DateTime recordedDate;
  @HiveField(31)
  Element elementRecordedDate;
  @HiveField(32)
  Reference recorder;
  @HiveField(33)
  Reference asserter;
  @HiveField(34)
  DateTime lastOccurrence;
  @HiveField(35)
  Element elementLastOccurrence;
  @HiveField(36)
  List<Annotation> note;
  @HiveField(37)
  List<AllergyIntolerance_Reaction> reaction;

AllergyIntolerance(
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
    this.identifier,
    this.clinicalStatus,
    this.verificationStatus,
    this.type,
    this.elementType,
    this.category,
    this.elementCategory,
    this.criticality,
    this.elementCriticality,
    this.code,
    @required this.patient,
    this.encounter,
    this.onsetDateTime,
    this.elementOnsetDateTime,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.elementOnsetString,
    this.recordedDate,
    this.elementRecordedDate,
    this.recorder,
    this.asserter,
    this.lastOccurrence,
    this.elementLastOccurrence,
    this.note,
    this.reaction
    });

  factory AllergyIntolerance.fromJson(Map<String, dynamic> json) => _$AllergyIntoleranceFromJson(json);
  Map<String, dynamic> toJson() => _$AllergyIntoleranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllergyIntolerance_Reaction {

	static Future<AllergyIntolerance_Reaction> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept substance,
		List<CodeableConcept> manifestation,
		String description,
		Element elementDescription,
		DateTime onset,
		Element elementOnset,
		String severity,
		Element elementSeverity,
		CodeableConcept exposureRoute,
		List<Annotation> note}) async {
	AllergyIntolerance_Reaction newAllergyIntolerance_Reaction = new AllergyIntolerance_Reaction(
			id: await newId('AllergyIntolerance_Reaction'),
			extension: extension,
			modifierExtension: modifierExtension,
			substance: substance,
			manifestation: manifestation,
			description: description,
			elementDescription: elementDescription,
			onset: onset,
			elementOnset: elementOnset,
			severity: severity,
			elementSeverity: elementSeverity,
			exposureRoute: exposureRoute,
			note: note);
	var allergyIntolerance_ReactionBox = await Hive.openBox<AllergyIntolerance_Reaction>('AllergyIntolerance_ReactionBox');
	allergyIntolerance_ReactionBox.put(newAllergyIntolerance_Reaction.id, newAllergyIntolerance_Reaction);
	return newAllergyIntolerance_Reaction;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept substance;
  List<CodeableConcept> manifestation;
  String description;
  Element elementDescription;
  DateTime onset;
  Element elementOnset;
  String severity; // <code> enum: mild/moderate/severe;
  Element elementSeverity;
  CodeableConcept exposureRoute;
  List<Annotation> note;

AllergyIntolerance_Reaction(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.substance,
    @required this.manifestation,
    this.description,
    this.elementDescription,
    this.onset,
    this.elementOnset,
    this.severity,
    this.elementSeverity,
    this.exposureRoute,
    this.note
    });

  factory AllergyIntolerance_Reaction.fromJson(Map<String, dynamic> json) => _$AllergyIntolerance_ReactionFromJson(json);
  Map<String, dynamic> toJson() => _$AllergyIntolerance_ReactionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AllergyIntoleranceAdapter extends TypeAdapter<AllergyIntolerance> {
  @override
  final typeId = 59;

  @override
  AllergyIntolerance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AllergyIntolerance(
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
      identifier: (fields[11] as List)?.cast<Identifier>(),
      clinicalStatus: fields[12] as CodeableConcept,
      verificationStatus: fields[13] as CodeableConcept,
      type: fields[14] as String,
      elementType: fields[15] as Element,
      category: (fields[16] as List)?.cast<String>(),
      elementCategory: (fields[17] as List)?.cast<Element>(),
      criticality: fields[18] as String,
      elementCriticality: fields[19] as Element,
      code: fields[20] as CodeableConcept,
      patient: fields[21] as Reference,
      encounter: fields[22] as Reference,
      onsetDateTime: fields[23] as String,
      elementOnsetDateTime: fields[24] as Element,
      onsetAge: fields[25] as Age,
      onsetPeriod: fields[26] as Period,
      onsetRange: fields[27] as Range,
      onsetString: fields[28] as String,
      elementOnsetString: fields[29] as Element,
      recordedDate: fields[30] as DateTime,
      elementRecordedDate: fields[31] as Element,
      recorder: fields[32] as Reference,
      asserter: fields[33] as Reference,
      lastOccurrence: fields[34] as DateTime,
      elementLastOccurrence: fields[35] as Element,
      note: (fields[36] as List)?.cast<Annotation>(),
      reaction: (fields[37] as List)?.cast<AllergyIntolerance_Reaction>(),
    );
  }

  @override
  void write(BinaryWriter writer, AllergyIntolerance obj) {
    writer
      ..writeByte(38)
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
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.clinicalStatus)
      ..writeByte(13)
      ..write(obj.verificationStatus)
      ..writeByte(14)
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.elementType)
      ..writeByte(16)
      ..write(obj.category)
      ..writeByte(17)
      ..write(obj.elementCategory)
      ..writeByte(18)
      ..write(obj.criticality)
      ..writeByte(19)
      ..write(obj.elementCriticality)
      ..writeByte(20)
      ..write(obj.code)
      ..writeByte(21)
      ..write(obj.patient)
      ..writeByte(22)
      ..write(obj.encounter)
      ..writeByte(23)
      ..write(obj.onsetDateTime)
      ..writeByte(24)
      ..write(obj.elementOnsetDateTime)
      ..writeByte(25)
      ..write(obj.onsetAge)
      ..writeByte(26)
      ..write(obj.onsetPeriod)
      ..writeByte(27)
      ..write(obj.onsetRange)
      ..writeByte(28)
      ..write(obj.onsetString)
      ..writeByte(29)
      ..write(obj.elementOnsetString)
      ..writeByte(30)
      ..write(obj.recordedDate)
      ..writeByte(31)
      ..write(obj.elementRecordedDate)
      ..writeByte(32)
      ..write(obj.recorder)
      ..writeByte(33)
      ..write(obj.asserter)
      ..writeByte(34)
      ..write(obj.lastOccurrence)
      ..writeByte(35)
      ..write(obj.elementLastOccurrence)
      ..writeByte(36)
      ..write(obj.note)
      ..writeByte(37)
      ..write(obj.reaction);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllergyIntolerance _$AllergyIntoleranceFromJson(Map<String, dynamic> json) {
  return AllergyIntolerance(
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    clinicalStatus: json['clinicalStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['clinicalStatus'] as Map<String, dynamic>),
    verificationStatus: json['verificationStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['verificationStatus'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    category: (json['category'] as List)?.map((e) => e as String)?.toList(),
    elementCategory: (json['elementCategory'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    criticality: json['criticality'] as String,
    elementCriticality: json['elementCriticality'] == null
        ? null
        : Element.fromJson(json['elementCriticality'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    onsetDateTime: json['onsetDateTime'] as String,
    elementOnsetDateTime: json['elementOnsetDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOnsetDateTime'] as Map<String, dynamic>),
    onsetAge: json['onsetAge'] == null
        ? null
        : Age.fromJson(json['onsetAge'] as Map<String, dynamic>),
    onsetPeriod: json['onsetPeriod'] == null
        ? null
        : Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>),
    onsetRange: json['onsetRange'] == null
        ? null
        : Range.fromJson(json['onsetRange'] as Map<String, dynamic>),
    onsetString: json['onsetString'] as String,
    elementOnsetString: json['elementOnsetString'] == null
        ? null
        : Element.fromJson(json['elementOnsetString'] as Map<String, dynamic>),
    recordedDate: json['recordedDate'] == null
        ? null
        : DateTime.parse(json['recordedDate'] as String),
    elementRecordedDate: json['elementRecordedDate'] == null
        ? null
        : Element.fromJson(json['elementRecordedDate'] as Map<String, dynamic>),
    recorder: json['recorder'] == null
        ? null
        : Reference.fromJson(json['recorder'] as Map<String, dynamic>),
    asserter: json['asserter'] == null
        ? null
        : Reference.fromJson(json['asserter'] as Map<String, dynamic>),
    lastOccurrence: json['lastOccurrence'] == null
        ? null
        : DateTime.parse(json['lastOccurrence'] as String),
    elementLastOccurrence: json['elementLastOccurrence'] == null
        ? null
        : Element.fromJson(
            json['elementLastOccurrence'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reaction: (json['reaction'] as List)
        ?.map((e) => e == null
            ? null
            : AllergyIntolerance_Reaction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AllergyIntoleranceToJson(AllergyIntolerance instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'clinicalStatus': instance.clinicalStatus?.toJson(),
      'verificationStatus': instance.verificationStatus?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'category': instance.category,
      'elementCategory':
          instance.elementCategory?.map((e) => e?.toJson())?.toList(),
      'criticality': instance.criticality,
      'elementCriticality': instance.elementCriticality?.toJson(),
      'code': instance.code?.toJson(),
      'patient': instance.patient?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'onsetDateTime': instance.onsetDateTime,
      'elementOnsetDateTime': instance.elementOnsetDateTime?.toJson(),
      'onsetAge': instance.onsetAge?.toJson(),
      'onsetPeriod': instance.onsetPeriod?.toJson(),
      'onsetRange': instance.onsetRange?.toJson(),
      'onsetString': instance.onsetString,
      'elementOnsetString': instance.elementOnsetString?.toJson(),
      'recordedDate': instance.recordedDate?.toIso8601String(),
      'elementRecordedDate': instance.elementRecordedDate?.toJson(),
      'recorder': instance.recorder?.toJson(),
      'asserter': instance.asserter?.toJson(),
      'lastOccurrence': instance.lastOccurrence?.toIso8601String(),
      'elementLastOccurrence': instance.elementLastOccurrence?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'reaction': instance.reaction?.map((e) => e?.toJson())?.toList(),
    };

AllergyIntolerance_Reaction _$AllergyIntolerance_ReactionFromJson(
    Map<String, dynamic> json) {
  return AllergyIntolerance_Reaction(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    substance: json['substance'] == null
        ? null
        : CodeableConcept.fromJson(json['substance'] as Map<String, dynamic>),
    manifestation: (json['manifestation'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    onset:
        json['onset'] == null ? null : DateTime.parse(json['onset'] as String),
    elementOnset: json['elementOnset'] == null
        ? null
        : Element.fromJson(json['elementOnset'] as Map<String, dynamic>),
    severity: json['severity'] as String,
    elementSeverity: json['elementSeverity'] == null
        ? null
        : Element.fromJson(json['elementSeverity'] as Map<String, dynamic>),
    exposureRoute: json['exposureRoute'] == null
        ? null
        : CodeableConcept.fromJson(
            json['exposureRoute'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AllergyIntolerance_ReactionToJson(
        AllergyIntolerance_Reaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'substance': instance.substance?.toJson(),
      'manifestation':
          instance.manifestation?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'onset': instance.onset?.toIso8601String(),
      'elementOnset': instance.elementOnset?.toJson(),
      'severity': instance.severity,
      'elementSeverity': instance.elementSeverity?.toJson(),
      'exposureRoute': instance.exposureRoute?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };
