import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/triggerDefinition.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 106)
class EvidenceVariable {

	static Future<EvidenceVariable> newInstance({
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
		String url,
		Element elementUrl,
		List<Identifier> identifier,
		String version,
		Element elementVersion,
		String name,
		Element elementName,
		String title,
		Element elementTitle,
		String shortTitle,
		Element elementShortTitle,
		String subtitle,
		Element elementSubtitle,
		String status,
		Element elementStatus,
		DateTime date,
		Element elementDate,
		String publisher,
		Element elementPublisher,
		List<ContactDetail> contact,
		String description,
		Element elementDescription,
		List<Annotation> note,
		List<UsageContext> useContext,
		List<CodeableConcept> jurisdiction,
		String copyright,
		Element elementCopyright,
		String approvalDate,
		Element elementApprovalDate,
		String lastReviewDate,
		Element elementLastReviewDate,
		Period effectivePeriod,
		List<CodeableConcept> topic,
		List<ContactDetail> author,
		List<ContactDetail> editor,
		List<ContactDetail> reviewer,
		List<ContactDetail> endorser,
		List<RelatedArtifact> relatedArtifact,
		String type,
		Element elementType,
		List<EvidenceVariable_Characteristic> characteristic}) async {
	EvidenceVariable newEvidenceVariable = new EvidenceVariable(
			id: await newId('EvidenceVariable'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			url: url,
			elementUrl: elementUrl,
			identifier: identifier,
			version: version,
			elementVersion: elementVersion,
			name: name,
			elementName: elementName,
			title: title,
			elementTitle: elementTitle,
			shortTitle: shortTitle,
			elementShortTitle: elementShortTitle,
			subtitle: subtitle,
			elementSubtitle: elementSubtitle,
			status: status,
			elementStatus: elementStatus,
			date: date,
			elementDate: elementDate,
			publisher: publisher,
			elementPublisher: elementPublisher,
			contact: contact,
			description: description,
			elementDescription: elementDescription,
			note: note,
			useContext: useContext,
			jurisdiction: jurisdiction,
			copyright: copyright,
			elementCopyright: elementCopyright,
			approvalDate: approvalDate,
			elementApprovalDate: elementApprovalDate,
			lastReviewDate: lastReviewDate,
			elementLastReviewDate: elementLastReviewDate,
			effectivePeriod: effectivePeriod,
			topic: topic,
			author: author,
			editor: editor,
			reviewer: reviewer,
			endorser: endorser,
			relatedArtifact: relatedArtifact,
			type: type,
			elementType: elementType,
			characteristic: characteristic);
	var evidenceVariableBox = await Hive.openBox<EvidenceVariable>('EvidenceVariableBox');
	evidenceVariableBox.add(newEvidenceVariable);
	return newEvidenceVariable;
}
  @HiveField(0)
  final String resourceType= 'EvidenceVariable';
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
  String url;
  @HiveField(12)
  Element elementUrl;
  @HiveField(13)
  List<Identifier> identifier;
  @HiveField(14)
  String version;
  @HiveField(15)
  Element elementVersion;
  @HiveField(16)
  String name;
  @HiveField(17)
  Element elementName;
  @HiveField(18)
  String title;
  @HiveField(19)
  Element elementTitle;
  @HiveField(20)
  String shortTitle;
  @HiveField(21)
  Element elementShortTitle;
  @HiveField(22)
  String subtitle;
  @HiveField(23)
  Element elementSubtitle;
  @HiveField(24)
  String status; // <code> enum: draft/active/retired/unknown;
  @HiveField(25)
  Element elementStatus;
  @HiveField(26)
  DateTime date;
  @HiveField(27)
  Element elementDate;
  @HiveField(28)
  String publisher;
  @HiveField(29)
  Element elementPublisher;
  @HiveField(30)
  List<ContactDetail> contact;
  @HiveField(31)
  String description;
  @HiveField(32)
  Element elementDescription;
  @HiveField(33)
  List<Annotation> note;
  @HiveField(34)
  List<UsageContext> useContext;
  @HiveField(35)
  List<CodeableConcept> jurisdiction;
  @HiveField(36)
  String copyright;
  @HiveField(37)
  Element elementCopyright;
  @HiveField(38)
  String approvalDate;
  @HiveField(39)
  Element elementApprovalDate;
  @HiveField(40)
  String lastReviewDate;
  @HiveField(41)
  Element elementLastReviewDate;
  @HiveField(42)
  Period effectivePeriod;
  @HiveField(43)
  List<CodeableConcept> topic;
  @HiveField(44)
  List<ContactDetail> author;
  @HiveField(45)
  List<ContactDetail> editor;
  @HiveField(46)
  List<ContactDetail> reviewer;
  @HiveField(47)
  List<ContactDetail> endorser;
  @HiveField(48)
  List<RelatedArtifact> relatedArtifact;
  @HiveField(49)
  String type; // <code> enum: dichotomous/continuous/descriptive;
  @HiveField(50)
  Element elementType;
  @HiveField(51)
  List<EvidenceVariable_Characteristic> characteristic;

EvidenceVariable(
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
    this.url,
    this.elementUrl,
    this.identifier,
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
    this.shortTitle,
    this.elementShortTitle,
    this.subtitle,
    this.elementSubtitle,
    this.status,
    this.elementStatus,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.note,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.elementCopyright,
    this.approvalDate,
    this.elementApprovalDate,
    this.lastReviewDate,
    this.elementLastReviewDate,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.type,
    this.elementType,
    @required this.characteristic
    });

  factory EvidenceVariable.fromJson(Map<String, dynamic> json) => _$EvidenceVariableFromJson(json);
  Map<String, dynamic> toJson() => _$EvidenceVariableToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EvidenceVariable_Characteristic {

	static Future<EvidenceVariable_Characteristic> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String description,
		Element elementDescription,
		Reference definitionReference,
		String definitionCanonical,
		Element elementDefinitionCanonical,
		CodeableConcept definitionCodeableConcept,
		Expression definitionExpression,
		DataRequirement definitionDataRequirement,
		TriggerDefinition definitionTriggerDefinition,
		List<UsageContext> usageContext,
		bool exclude,
		Element elementExclude,
		String participantEffectiveDateTime,
		Element elementParticipantEffectiveDateTime,
		Period participantEffectivePeriod,
		Duration participantEffectiveDuration,
		Timing participantEffectiveTiming,
		Duration timeFromStart,
		String groupMeasure,
		Element elementGroupMeasure}) async {
	EvidenceVariable_Characteristic newEvidenceVariable_Characteristic = new EvidenceVariable_Characteristic(
			id: await newId('EvidenceVariable_Characteristic'),
			extension: extension,
			modifierExtension: modifierExtension,
			description: description,
			elementDescription: elementDescription,
			definitionReference: definitionReference,
			definitionCanonical: definitionCanonical,
			elementDefinitionCanonical: elementDefinitionCanonical,
			definitionCodeableConcept: definitionCodeableConcept,
			definitionExpression: definitionExpression,
			definitionDataRequirement: definitionDataRequirement,
			definitionTriggerDefinition: definitionTriggerDefinition,
			usageContext: usageContext,
			exclude: exclude,
			elementExclude: elementExclude,
			participantEffectiveDateTime: participantEffectiveDateTime,
			elementParticipantEffectiveDateTime: elementParticipantEffectiveDateTime,
			participantEffectivePeriod: participantEffectivePeriod,
			participantEffectiveDuration: participantEffectiveDuration,
			participantEffectiveTiming: participantEffectiveTiming,
			timeFromStart: timeFromStart,
			groupMeasure: groupMeasure,
			elementGroupMeasure: elementGroupMeasure);
	var evidenceVariable_CharacteristicBox = await Hive.openBox<EvidenceVariable_Characteristic>('EvidenceVariable_CharacteristicBox');
	evidenceVariable_CharacteristicBox.add(newEvidenceVariable_Characteristic);
	return newEvidenceVariable_Characteristic;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  Reference definitionReference;
  String definitionCanonical; //  pattern: ^\S*$
  Element elementDefinitionCanonical;
  CodeableConcept definitionCodeableConcept;
  Expression definitionExpression;
  DataRequirement definitionDataRequirement;
  TriggerDefinition definitionTriggerDefinition;
  List<UsageContext> usageContext;
  bool exclude;
  Element elementExclude;
  String participantEffectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementParticipantEffectiveDateTime;
  Period participantEffectivePeriod;
  Duration participantEffectiveDuration;
  Timing participantEffectiveTiming;
  Duration timeFromStart;
  String groupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;
  Element elementGroupMeasure;

EvidenceVariable_Characteristic(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.definitionReference,
    this.definitionCanonical,
    this.elementDefinitionCanonical,
    this.definitionCodeableConcept,
    this.definitionExpression,
    this.definitionDataRequirement,
    this.definitionTriggerDefinition,
    this.usageContext,
    this.exclude,
    this.elementExclude,
    this.participantEffectiveDateTime,
    this.elementParticipantEffectiveDateTime,
    this.participantEffectivePeriod,
    this.participantEffectiveDuration,
    this.participantEffectiveTiming,
    this.timeFromStart,
    this.groupMeasure,
    this.elementGroupMeasure
    });

  factory EvidenceVariable_Characteristic.fromJson(Map<String, dynamic> json) => _$EvidenceVariable_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$EvidenceVariable_CharacteristicToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EvidenceVariableAdapter extends TypeAdapter<EvidenceVariable> {
  @override
  final typeId = 106;

  @override
  EvidenceVariable read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EvidenceVariable(
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
      url: fields[11] as String,
      elementUrl: fields[12] as Element,
      identifier: (fields[13] as List)?.cast<Identifier>(),
      version: fields[14] as String,
      elementVersion: fields[15] as Element,
      name: fields[16] as String,
      elementName: fields[17] as Element,
      title: fields[18] as String,
      elementTitle: fields[19] as Element,
      shortTitle: fields[20] as String,
      elementShortTitle: fields[21] as Element,
      subtitle: fields[22] as String,
      elementSubtitle: fields[23] as Element,
      status: fields[24] as String,
      elementStatus: fields[25] as Element,
      date: fields[26] as DateTime,
      elementDate: fields[27] as Element,
      publisher: fields[28] as String,
      elementPublisher: fields[29] as Element,
      contact: (fields[30] as List)?.cast<ContactDetail>(),
      description: fields[31] as String,
      elementDescription: fields[32] as Element,
      note: (fields[33] as List)?.cast<Annotation>(),
      useContext: (fields[34] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[35] as List)?.cast<CodeableConcept>(),
      copyright: fields[36] as String,
      elementCopyright: fields[37] as Element,
      approvalDate: fields[38] as String,
      elementApprovalDate: fields[39] as Element,
      lastReviewDate: fields[40] as String,
      elementLastReviewDate: fields[41] as Element,
      effectivePeriod: fields[42] as Period,
      topic: (fields[43] as List)?.cast<CodeableConcept>(),
      author: (fields[44] as List)?.cast<ContactDetail>(),
      editor: (fields[45] as List)?.cast<ContactDetail>(),
      reviewer: (fields[46] as List)?.cast<ContactDetail>(),
      endorser: (fields[47] as List)?.cast<ContactDetail>(),
      relatedArtifact: (fields[48] as List)?.cast<RelatedArtifact>(),
      type: fields[49] as String,
      elementType: fields[50] as Element,
      characteristic:
          (fields[51] as List)?.cast<EvidenceVariable_Characteristic>(),
    );
  }

  @override
  void write(BinaryWriter writer, EvidenceVariable obj) {
    writer
      ..writeByte(52)
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
      ..write(obj.url)
      ..writeByte(12)
      ..write(obj.elementUrl)
      ..writeByte(13)
      ..write(obj.identifier)
      ..writeByte(14)
      ..write(obj.version)
      ..writeByte(15)
      ..write(obj.elementVersion)
      ..writeByte(16)
      ..write(obj.name)
      ..writeByte(17)
      ..write(obj.elementName)
      ..writeByte(18)
      ..write(obj.title)
      ..writeByte(19)
      ..write(obj.elementTitle)
      ..writeByte(20)
      ..write(obj.shortTitle)
      ..writeByte(21)
      ..write(obj.elementShortTitle)
      ..writeByte(22)
      ..write(obj.subtitle)
      ..writeByte(23)
      ..write(obj.elementSubtitle)
      ..writeByte(24)
      ..write(obj.status)
      ..writeByte(25)
      ..write(obj.elementStatus)
      ..writeByte(26)
      ..write(obj.date)
      ..writeByte(27)
      ..write(obj.elementDate)
      ..writeByte(28)
      ..write(obj.publisher)
      ..writeByte(29)
      ..write(obj.elementPublisher)
      ..writeByte(30)
      ..write(obj.contact)
      ..writeByte(31)
      ..write(obj.description)
      ..writeByte(32)
      ..write(obj.elementDescription)
      ..writeByte(33)
      ..write(obj.note)
      ..writeByte(34)
      ..write(obj.useContext)
      ..writeByte(35)
      ..write(obj.jurisdiction)
      ..writeByte(36)
      ..write(obj.copyright)
      ..writeByte(37)
      ..write(obj.elementCopyright)
      ..writeByte(38)
      ..write(obj.approvalDate)
      ..writeByte(39)
      ..write(obj.elementApprovalDate)
      ..writeByte(40)
      ..write(obj.lastReviewDate)
      ..writeByte(41)
      ..write(obj.elementLastReviewDate)
      ..writeByte(42)
      ..write(obj.effectivePeriod)
      ..writeByte(43)
      ..write(obj.topic)
      ..writeByte(44)
      ..write(obj.author)
      ..writeByte(45)
      ..write(obj.editor)
      ..writeByte(46)
      ..write(obj.reviewer)
      ..writeByte(47)
      ..write(obj.endorser)
      ..writeByte(48)
      ..write(obj.relatedArtifact)
      ..writeByte(49)
      ..write(obj.type)
      ..writeByte(50)
      ..write(obj.elementType)
      ..writeByte(51)
      ..write(obj.characteristic);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EvidenceVariable _$EvidenceVariableFromJson(Map<String, dynamic> json) {
  return EvidenceVariable(
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
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    shortTitle: json['shortTitle'] as String,
    elementShortTitle: json['elementShortTitle'] == null
        ? null
        : Element.fromJson(json['elementShortTitle'] as Map<String, dynamic>),
    subtitle: json['subtitle'] as String,
    elementSubtitle: json['elementSubtitle'] == null
        ? null
        : Element.fromJson(json['elementSubtitle'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    publisher: json['publisher'] as String,
    elementPublisher: json['elementPublisher'] == null
        ? null
        : Element.fromJson(json['elementPublisher'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    approvalDate: json['approvalDate'] as String,
    elementApprovalDate: json['elementApprovalDate'] == null
        ? null
        : Element.fromJson(json['elementApprovalDate'] as Map<String, dynamic>),
    lastReviewDate: json['lastReviewDate'] as String,
    elementLastReviewDate: json['elementLastReviewDate'] == null
        ? null
        : Element.fromJson(
            json['elementLastReviewDate'] as Map<String, dynamic>),
    effectivePeriod: json['effectivePeriod'] == null
        ? null
        : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
    topic: (json['topic'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    author: (json['author'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    editor: (json['editor'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reviewer: (json['reviewer'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    endorser: (json['endorser'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relatedArtifact: (json['relatedArtifact'] as List)
        ?.map((e) => e == null
            ? null
            : RelatedArtifact.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    characteristic: (json['characteristic'] as List)
        ?.map((e) => e == null
            ? null
            : EvidenceVariable_Characteristic.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EvidenceVariableToJson(EvidenceVariable instance) =>
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
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'shortTitle': instance.shortTitle,
      'elementShortTitle': instance.elementShortTitle?.toJson(),
      'subtitle': instance.subtitle,
      'elementSubtitle': instance.elementSubtitle?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'approvalDate': instance.approvalDate,
      'elementApprovalDate': instance.elementApprovalDate?.toJson(),
      'lastReviewDate': instance.lastReviewDate,
      'elementLastReviewDate': instance.elementLastReviewDate?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'topic': instance.topic?.map((e) => e?.toJson())?.toList(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'editor': instance.editor?.map((e) => e?.toJson())?.toList(),
      'reviewer': instance.reviewer?.map((e) => e?.toJson())?.toList(),
      'endorser': instance.endorser?.map((e) => e?.toJson())?.toList(),
      'relatedArtifact':
          instance.relatedArtifact?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'characteristic':
          instance.characteristic?.map((e) => e?.toJson())?.toList(),
    };

EvidenceVariable_Characteristic _$EvidenceVariable_CharacteristicFromJson(
    Map<String, dynamic> json) {
  return EvidenceVariable_Characteristic(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    definitionReference: json['definitionReference'] == null
        ? null
        : Reference.fromJson(
            json['definitionReference'] as Map<String, dynamic>),
    definitionCanonical: json['definitionCanonical'] as String,
    elementDefinitionCanonical: json['elementDefinitionCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementDefinitionCanonical'] as Map<String, dynamic>),
    definitionCodeableConcept: json['definitionCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['definitionCodeableConcept'] as Map<String, dynamic>),
    definitionExpression: json['definitionExpression'] == null
        ? null
        : Expression.fromJson(
            json['definitionExpression'] as Map<String, dynamic>),
    definitionDataRequirement: json['definitionDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['definitionDataRequirement'] as Map<String, dynamic>),
    definitionTriggerDefinition: json['definitionTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['definitionTriggerDefinition'] as Map<String, dynamic>),
    usageContext: (json['usageContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    exclude: json['exclude'] as bool,
    elementExclude: json['elementExclude'] == null
        ? null
        : Element.fromJson(json['elementExclude'] as Map<String, dynamic>),
    participantEffectiveDateTime:
        json['participantEffectiveDateTime'] as String,
    elementParticipantEffectiveDateTime:
        json['elementParticipantEffectiveDateTime'] == null
            ? null
            : Element.fromJson(json['elementParticipantEffectiveDateTime']
                as Map<String, dynamic>),
    participantEffectivePeriod: json['participantEffectivePeriod'] == null
        ? null
        : Period.fromJson(
            json['participantEffectivePeriod'] as Map<String, dynamic>),
    participantEffectiveDuration: json['participantEffectiveDuration'] == null
        ? null
        : Duration.fromJson(
            json['participantEffectiveDuration'] as Map<String, dynamic>),
    participantEffectiveTiming: json['participantEffectiveTiming'] == null
        ? null
        : Timing.fromJson(
            json['participantEffectiveTiming'] as Map<String, dynamic>),
    timeFromStart: json['timeFromStart'] == null
        ? null
        : Duration.fromJson(json['timeFromStart'] as Map<String, dynamic>),
    groupMeasure: json['groupMeasure'] as String,
    elementGroupMeasure: json['elementGroupMeasure'] == null
        ? null
        : Element.fromJson(json['elementGroupMeasure'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EvidenceVariable_CharacteristicToJson(
        EvidenceVariable_Characteristic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'definitionReference': instance.definitionReference?.toJson(),
      'definitionCanonical': instance.definitionCanonical,
      'elementDefinitionCanonical':
          instance.elementDefinitionCanonical?.toJson(),
      'definitionCodeableConcept': instance.definitionCodeableConcept?.toJson(),
      'definitionExpression': instance.definitionExpression?.toJson(),
      'definitionDataRequirement': instance.definitionDataRequirement?.toJson(),
      'definitionTriggerDefinition':
          instance.definitionTriggerDefinition?.toJson(),
      'usageContext': instance.usageContext?.map((e) => e?.toJson())?.toList(),
      'exclude': instance.exclude,
      'elementExclude': instance.elementExclude?.toJson(),
      'participantEffectiveDateTime': instance.participantEffectiveDateTime,
      'elementParticipantEffectiveDateTime':
          instance.elementParticipantEffectiveDateTime?.toJson(),
      'participantEffectivePeriod':
          instance.participantEffectivePeriod?.toJson(),
      'participantEffectiveDuration':
          instance.participantEffectiveDuration?.toJson(),
      'participantEffectiveTiming':
          instance.participantEffectiveTiming?.toJson(),
      'timeFromStart': instance.timeFromStart?.toJson(),
      'groupMeasure': instance.groupMeasure,
      'elementGroupMeasure': instance.elementGroupMeasure?.toJson(),
    };
