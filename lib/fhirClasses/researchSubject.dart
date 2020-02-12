import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 174)
class ResearchSubject {

	static Future<ResearchSubject> newInstance({
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
		String status,
		Element elementStatus,
		Period period,
		Reference study,
		Reference individual,
		String assignedArm,
		Element elementAssignedArm,
		String actualArm,
		Element elementActualArm,
		Reference consent}) async {
	ResearchSubject newResearchSubject = new ResearchSubject(
			id: await newId('ResearchSubject'),
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
			status: status,
			elementStatus: elementStatus,
			period: period,
			study: study,
			individual: individual,
			assignedArm: assignedArm,
			elementAssignedArm: elementAssignedArm,
			actualArm: actualArm,
			elementActualArm: elementActualArm,
			consent: consent);
	var researchSubjectBox = await Hive.openBox<ResearchSubject>('ResearchSubjectBox');
	researchSubjectBox.put(newResearchSubject.id, newResearchSubject);
	return newResearchSubject;
}
  @HiveField(0)
  final String resourceType= 'ResearchSubject';
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
  String status; // <code> enum: candidate/eligible/follow-up/ineligible/not-registered/off-study/on-study/on-study-intervention/on-study-observation/pending-on-study/potential-candidate/screening/withdrawn;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  Period period;
  @HiveField(15)
  Reference study;
  @HiveField(16)
  Reference individual;
  @HiveField(17)
  String assignedArm;
  @HiveField(18)
  Element elementAssignedArm;
  @HiveField(19)
  String actualArm;
  @HiveField(20)
  Element elementActualArm;
  @HiveField(21)
  Reference consent;

ResearchSubject(
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
    this.status,
    this.elementStatus,
    this.period,
    @required this.study,
    @required this.individual,
    this.assignedArm,
    this.elementAssignedArm,
    this.actualArm,
    this.elementActualArm,
    this.consent
    });

  factory ResearchSubject.fromJson(Map<String, dynamic> json) => _$ResearchSubjectFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchSubjectToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResearchSubjectAdapter extends TypeAdapter<ResearchSubject> {
  @override
  final typeId = 174;

  @override
  ResearchSubject read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ResearchSubject(
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
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      period: fields[14] as Period,
      study: fields[15] as Reference,
      individual: fields[16] as Reference,
      assignedArm: fields[17] as String,
      elementAssignedArm: fields[18] as Element,
      actualArm: fields[19] as String,
      elementActualArm: fields[20] as Element,
      consent: fields[21] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, ResearchSubject obj) {
    writer
      ..writeByte(22)
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
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.period)
      ..writeByte(15)
      ..write(obj.study)
      ..writeByte(16)
      ..write(obj.individual)
      ..writeByte(17)
      ..write(obj.assignedArm)
      ..writeByte(18)
      ..write(obj.elementAssignedArm)
      ..writeByte(19)
      ..write(obj.actualArm)
      ..writeByte(20)
      ..write(obj.elementActualArm)
      ..writeByte(21)
      ..write(obj.consent);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResearchSubject _$ResearchSubjectFromJson(Map<String, dynamic> json) {
  return ResearchSubject(
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    study: json['study'] == null
        ? null
        : Reference.fromJson(json['study'] as Map<String, dynamic>),
    individual: json['individual'] == null
        ? null
        : Reference.fromJson(json['individual'] as Map<String, dynamic>),
    assignedArm: json['assignedArm'] as String,
    elementAssignedArm: json['elementAssignedArm'] == null
        ? null
        : Element.fromJson(json['elementAssignedArm'] as Map<String, dynamic>),
    actualArm: json['actualArm'] as String,
    elementActualArm: json['elementActualArm'] == null
        ? null
        : Element.fromJson(json['elementActualArm'] as Map<String, dynamic>),
    consent: json['consent'] == null
        ? null
        : Reference.fromJson(json['consent'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResearchSubjectToJson(ResearchSubject instance) =>
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
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'period': instance.period?.toJson(),
      'study': instance.study?.toJson(),
      'individual': instance.individual?.toJson(),
      'assignedArm': instance.assignedArm,
      'elementAssignedArm': instance.elementAssignedArm?.toJson(),
      'actualArm': instance.actualArm,
      'elementActualArm': instance.elementActualArm?.toJson(),
      'consent': instance.consent?.toJson(),
    };
