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
@HiveType(typeId: 83)
class Condition {

	static Future<Condition> newInstance({
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
		List<CodeableConcept> category,
		CodeableConcept severity,
		CodeableConcept code,
		List<CodeableConcept> bodySite,
		Reference subject,
		Reference encounter,
		String onsetDateTime,
		Element elementOnsetDateTime,
		Age onsetAge,
		Period onsetPeriod,
		Range onsetRange,
		String onsetString,
		Element elementOnsetString,
		String abatementDateTime,
		Element elementAbatementDateTime,
		Age abatementAge,
		Period abatementPeriod,
		Range abatementRange,
		String abatementString,
		Element elementAbatementString,
		DateTime recordedDate,
		Element elementRecordedDate,
		Reference recorder,
		Reference asserter,
		List<Condition_Stage> stage,
		List<Condition_Evidence> evidence,
		List<Annotation> note}) async {
	Condition newCondition = new Condition(
			id: await newId('Condition'),
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
			category: category,
			severity: severity,
			code: code,
			bodySite: bodySite,
			subject: subject,
			encounter: encounter,
			onsetDateTime: onsetDateTime,
			elementOnsetDateTime: elementOnsetDateTime,
			onsetAge: onsetAge,
			onsetPeriod: onsetPeriod,
			onsetRange: onsetRange,
			onsetString: onsetString,
			elementOnsetString: elementOnsetString,
			abatementDateTime: abatementDateTime,
			elementAbatementDateTime: elementAbatementDateTime,
			abatementAge: abatementAge,
			abatementPeriod: abatementPeriod,
			abatementRange: abatementRange,
			abatementString: abatementString,
			elementAbatementString: elementAbatementString,
			recordedDate: recordedDate,
			elementRecordedDate: elementRecordedDate,
			recorder: recorder,
			asserter: asserter,
			stage: stage,
			evidence: evidence,
			note: note);
	var conditionBox = await Hive.openBox<Condition>('ConditionBox');
	conditionBox.add(newCondition);
	return newCondition;
}
  @HiveField(0)
  final String resourceType= 'Condition';
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
  List<CodeableConcept> category;
  @HiveField(15)
  CodeableConcept severity;
  @HiveField(16)
  CodeableConcept code;
  @HiveField(17)
  List<CodeableConcept> bodySite;
  @HiveField(18)
  Reference subject;
  @HiveField(19)
  Reference encounter;
  @HiveField(20)
  String onsetDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  @HiveField(21)
  Element elementOnsetDateTime;
  @HiveField(22)
  Age onsetAge;
  @HiveField(23)
  Period onsetPeriod;
  @HiveField(24)
  Range onsetRange;
  @HiveField(25)
  String onsetString; //  pattern: ^[ \r\n\t\S]+$
  @HiveField(26)
  Element elementOnsetString;
  @HiveField(27)
  String abatementDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  @HiveField(28)
  Element elementAbatementDateTime;
  @HiveField(29)
  Age abatementAge;
  @HiveField(30)
  Period abatementPeriod;
  @HiveField(31)
  Range abatementRange;
  @HiveField(32)
  String abatementString; //  pattern: ^[ \r\n\t\S]+$
  @HiveField(33)
  Element elementAbatementString;
  @HiveField(34)
  DateTime recordedDate;
  @HiveField(35)
  Element elementRecordedDate;
  @HiveField(36)
  Reference recorder;
  @HiveField(37)
  Reference asserter;
  @HiveField(38)
  List<Condition_Stage> stage;
  @HiveField(39)
  List<Condition_Evidence> evidence;
  @HiveField(40)
  List<Annotation> note;

Condition(
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
    this.category,
    this.severity,
    this.code,
    this.bodySite,
    @required this.subject,
    this.encounter,
    this.onsetDateTime,
    this.elementOnsetDateTime,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.elementOnsetString,
    this.abatementDateTime,
    this.elementAbatementDateTime,
    this.abatementAge,
    this.abatementPeriod,
    this.abatementRange,
    this.abatementString,
    this.elementAbatementString,
    this.recordedDate,
    this.elementRecordedDate,
    this.recorder,
    this.asserter,
    this.stage,
    this.evidence,
    this.note
    });

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Condition_Stage {

	static Future<Condition_Stage> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept summary,
		List<Reference> assessment,
		CodeableConcept type}) async {
	Condition_Stage newCondition_Stage = new Condition_Stage(
			id: await newId('Condition_Stage'),
			extension: extension,
			modifierExtension: modifierExtension,
			summary: summary,
			assessment: assessment,
			type: type);
	var condition_StageBox = await Hive.openBox<Condition_Stage>('Condition_StageBox');
	condition_StageBox.add(newCondition_Stage);
	return newCondition_Stage;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept summary;
  List<Reference> assessment;
  CodeableConcept type;

Condition_Stage(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.summary,
    this.assessment,
    this.type
    });

  factory Condition_Stage.fromJson(Map<String, dynamic> json) => _$Condition_StageFromJson(json);
  Map<String, dynamic> toJson() => _$Condition_StageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Condition_Evidence {

	static Future<Condition_Evidence> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<CodeableConcept> code,
		List<Reference> detail}) async {
	Condition_Evidence newCondition_Evidence = new Condition_Evidence(
			id: await newId('Condition_Evidence'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			detail: detail);
	var condition_EvidenceBox = await Hive.openBox<Condition_Evidence>('Condition_EvidenceBox');
	condition_EvidenceBox.add(newCondition_Evidence);
	return newCondition_Evidence;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> code;
  List<Reference> detail;

Condition_Evidence(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.detail
    });

  factory Condition_Evidence.fromJson(Map<String, dynamic> json) => _$Condition_EvidenceFromJson(json);
  Map<String, dynamic> toJson() => _$Condition_EvidenceToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConditionAdapter extends TypeAdapter<Condition> {
  @override
  final typeId = 83;

  @override
  Condition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Condition(
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
      category: (fields[14] as List)?.cast<CodeableConcept>(),
      severity: fields[15] as CodeableConcept,
      code: fields[16] as CodeableConcept,
      bodySite: (fields[17] as List)?.cast<CodeableConcept>(),
      subject: fields[18] as Reference,
      encounter: fields[19] as Reference,
      onsetDateTime: fields[20] as String,
      elementOnsetDateTime: fields[21] as Element,
      onsetAge: fields[22] as Age,
      onsetPeriod: fields[23] as Period,
      onsetRange: fields[24] as Range,
      onsetString: fields[25] as String,
      elementOnsetString: fields[26] as Element,
      abatementDateTime: fields[27] as String,
      elementAbatementDateTime: fields[28] as Element,
      abatementAge: fields[29] as Age,
      abatementPeriod: fields[30] as Period,
      abatementRange: fields[31] as Range,
      abatementString: fields[32] as String,
      elementAbatementString: fields[33] as Element,
      recordedDate: fields[34] as DateTime,
      elementRecordedDate: fields[35] as Element,
      recorder: fields[36] as Reference,
      asserter: fields[37] as Reference,
      stage: (fields[38] as List)?.cast<Condition_Stage>(),
      evidence: (fields[39] as List)?.cast<Condition_Evidence>(),
      note: (fields[40] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, Condition obj) {
    writer
      ..writeByte(41)
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
      ..write(obj.category)
      ..writeByte(15)
      ..write(obj.severity)
      ..writeByte(16)
      ..write(obj.code)
      ..writeByte(17)
      ..write(obj.bodySite)
      ..writeByte(18)
      ..write(obj.subject)
      ..writeByte(19)
      ..write(obj.encounter)
      ..writeByte(20)
      ..write(obj.onsetDateTime)
      ..writeByte(21)
      ..write(obj.elementOnsetDateTime)
      ..writeByte(22)
      ..write(obj.onsetAge)
      ..writeByte(23)
      ..write(obj.onsetPeriod)
      ..writeByte(24)
      ..write(obj.onsetRange)
      ..writeByte(25)
      ..write(obj.onsetString)
      ..writeByte(26)
      ..write(obj.elementOnsetString)
      ..writeByte(27)
      ..write(obj.abatementDateTime)
      ..writeByte(28)
      ..write(obj.elementAbatementDateTime)
      ..writeByte(29)
      ..write(obj.abatementAge)
      ..writeByte(30)
      ..write(obj.abatementPeriod)
      ..writeByte(31)
      ..write(obj.abatementRange)
      ..writeByte(32)
      ..write(obj.abatementString)
      ..writeByte(33)
      ..write(obj.elementAbatementString)
      ..writeByte(34)
      ..write(obj.recordedDate)
      ..writeByte(35)
      ..write(obj.elementRecordedDate)
      ..writeByte(36)
      ..write(obj.recorder)
      ..writeByte(37)
      ..write(obj.asserter)
      ..writeByte(38)
      ..write(obj.stage)
      ..writeByte(39)
      ..write(obj.evidence)
      ..writeByte(40)
      ..write(obj.note);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return Condition(
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
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    severity: json['severity'] == null
        ? null
        : CodeableConcept.fromJson(json['severity'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    bodySite: (json['bodySite'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
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
    abatementDateTime: json['abatementDateTime'] as String,
    elementAbatementDateTime: json['elementAbatementDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementAbatementDateTime'] as Map<String, dynamic>),
    abatementAge: json['abatementAge'] == null
        ? null
        : Age.fromJson(json['abatementAge'] as Map<String, dynamic>),
    abatementPeriod: json['abatementPeriod'] == null
        ? null
        : Period.fromJson(json['abatementPeriod'] as Map<String, dynamic>),
    abatementRange: json['abatementRange'] == null
        ? null
        : Range.fromJson(json['abatementRange'] as Map<String, dynamic>),
    abatementString: json['abatementString'] as String,
    elementAbatementString: json['elementAbatementString'] == null
        ? null
        : Element.fromJson(
            json['elementAbatementString'] as Map<String, dynamic>),
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
    stage: (json['stage'] as List)
        ?.map((e) => e == null
            ? null
            : Condition_Stage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evidence: (json['evidence'] as List)
        ?.map((e) => e == null
            ? null
            : Condition_Evidence.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
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
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'severity': instance.severity?.toJson(),
      'code': instance.code?.toJson(),
      'bodySite': instance.bodySite?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'onsetDateTime': instance.onsetDateTime,
      'elementOnsetDateTime': instance.elementOnsetDateTime?.toJson(),
      'onsetAge': instance.onsetAge?.toJson(),
      'onsetPeriod': instance.onsetPeriod?.toJson(),
      'onsetRange': instance.onsetRange?.toJson(),
      'onsetString': instance.onsetString,
      'elementOnsetString': instance.elementOnsetString?.toJson(),
      'abatementDateTime': instance.abatementDateTime,
      'elementAbatementDateTime': instance.elementAbatementDateTime?.toJson(),
      'abatementAge': instance.abatementAge?.toJson(),
      'abatementPeriod': instance.abatementPeriod?.toJson(),
      'abatementRange': instance.abatementRange?.toJson(),
      'abatementString': instance.abatementString,
      'elementAbatementString': instance.elementAbatementString?.toJson(),
      'recordedDate': instance.recordedDate?.toIso8601String(),
      'elementRecordedDate': instance.elementRecordedDate?.toJson(),
      'recorder': instance.recorder?.toJson(),
      'asserter': instance.asserter?.toJson(),
      'stage': instance.stage?.map((e) => e?.toJson())?.toList(),
      'evidence': instance.evidence?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };

Condition_Stage _$Condition_StageFromJson(Map<String, dynamic> json) {
  return Condition_Stage(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    summary: json['summary'] == null
        ? null
        : CodeableConcept.fromJson(json['summary'] as Map<String, dynamic>),
    assessment: (json['assessment'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Condition_StageToJson(Condition_Stage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'summary': instance.summary?.toJson(),
      'assessment': instance.assessment?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
    };

Condition_Evidence _$Condition_EvidenceFromJson(Map<String, dynamic> json) {
  return Condition_Evidence(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    detail: (json['detail'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Condition_EvidenceToJson(Condition_Evidence instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };
