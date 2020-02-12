import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 172)
class ResearchElementDefinition {

	static Future<ResearchElementDefinition> newInstance({
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
		bool experimental,
		Element elementExperimental,
		CodeableConcept subjectCodeableConcept,
		Reference subjectReference,
		DateTime date,
		Element elementDate,
		String publisher,
		Element elementPublisher,
		List<ContactDetail> contact,
		String description,
		Element elementDescription,
		List<String> comment,
		List<Element> elementComment,
		List<UsageContext> useContext,
		List<CodeableConcept> jurisdiction,
		String purpose,
		Element elementPurpose,
		String usage,
		Element elementUsage,
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
		List<String> library,
		String type,
		Element elementType,
		String variableType,
		Element elementVariableType,
		List<ResearchElementDefinition_Characteristic> characteristic}) async {
	ResearchElementDefinition newResearchElementDefinition = new ResearchElementDefinition(
			id: await newId('ResearchElementDefinition'),
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
			experimental: experimental,
			elementExperimental: elementExperimental,
			subjectCodeableConcept: subjectCodeableConcept,
			subjectReference: subjectReference,
			date: date,
			elementDate: elementDate,
			publisher: publisher,
			elementPublisher: elementPublisher,
			contact: contact,
			description: description,
			elementDescription: elementDescription,
			comment: comment,
			elementComment: elementComment,
			useContext: useContext,
			jurisdiction: jurisdiction,
			purpose: purpose,
			elementPurpose: elementPurpose,
			usage: usage,
			elementUsage: elementUsage,
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
			library: library,
			type: type,
			elementType: elementType,
			variableType: variableType,
			elementVariableType: elementVariableType,
			characteristic: characteristic);
	var researchElementDefinitionBox = await Hive.openBox<ResearchElementDefinition>('ResearchElementDefinitionBox');
	researchElementDefinitionBox.add(newResearchElementDefinition);
	return newResearchElementDefinition;
}
  @HiveField(0)
  final String resourceType= 'ResearchElementDefinition';
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
  bool experimental;
  @HiveField(27)
  Element elementExperimental;
  @HiveField(28)
  CodeableConcept subjectCodeableConcept;
  @HiveField(29)
  Reference subjectReference;
  @HiveField(30)
  DateTime date;
  @HiveField(31)
  Element elementDate;
  @HiveField(32)
  String publisher;
  @HiveField(33)
  Element elementPublisher;
  @HiveField(34)
  List<ContactDetail> contact;
  @HiveField(35)
  String description;
  @HiveField(36)
  Element elementDescription;
  @HiveField(37)
  List<String> comment;
  @HiveField(38)
  List<Element> elementComment;
  @HiveField(39)
  List<UsageContext> useContext;
  @HiveField(40)
  List<CodeableConcept> jurisdiction;
  @HiveField(41)
  String purpose;
  @HiveField(42)
  Element elementPurpose;
  @HiveField(43)
  String usage;
  @HiveField(44)
  Element elementUsage;
  @HiveField(45)
  String copyright;
  @HiveField(46)
  Element elementCopyright;
  @HiveField(47)
  String approvalDate;
  @HiveField(48)
  Element elementApprovalDate;
  @HiveField(49)
  String lastReviewDate;
  @HiveField(50)
  Element elementLastReviewDate;
  @HiveField(51)
  Period effectivePeriod;
  @HiveField(52)
  List<CodeableConcept> topic;
  @HiveField(53)
  List<ContactDetail> author;
  @HiveField(54)
  List<ContactDetail> editor;
  @HiveField(55)
  List<ContactDetail> reviewer;
  @HiveField(56)
  List<ContactDetail> endorser;
  @HiveField(57)
  List<RelatedArtifact> relatedArtifact;
  @HiveField(58)
  List<String> library;
  @HiveField(59)
  String type; // <code> enum: population/exposure/outcome;
  @HiveField(60)
  Element elementType;
  @HiveField(61)
  String variableType; // <code> enum: dichotomous/continuous/descriptive;
  @HiveField(62)
  Element elementVariableType;
  @HiveField(63)
  List<ResearchElementDefinition_Characteristic> characteristic;

ResearchElementDefinition(
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
    this.experimental,
    this.elementExperimental,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.comment,
    this.elementComment,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.elementPurpose,
    this.usage,
    this.elementUsage,
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
    this.library,
    this.type,
    this.elementType,
    this.variableType,
    this.elementVariableType,
    @required this.characteristic
    });

  factory ResearchElementDefinition.fromJson(Map<String, dynamic> json) => _$ResearchElementDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchElementDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResearchElementDefinition_Characteristic {

	static Future<ResearchElementDefinition_Characteristic> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept definitionCodeableConcept,
		String definitionCanonical,
		Element elementDefinitionCanonical,
		Expression definitionExpression,
		DataRequirement definitionDataRequirement,
		List<UsageContext> usageContext,
		bool exclude,
		Element elementExclude,
		CodeableConcept unitOfMeasure,
		String studyEffectiveDescription,
		Element elementStudyEffectiveDescription,
		String studyEffectiveDateTime,
		Element elementStudyEffectiveDateTime,
		Period studyEffectivePeriod,
		Duration studyEffectiveDuration,
		Timing studyEffectiveTiming,
		Duration studyEffectiveTimeFromStart,
		String studyEffectiveGroupMeasure,
		Element elementStudyEffectiveGroupMeasure,
		String participantEffectiveDescription,
		Element elementParticipantEffectiveDescription,
		String participantEffectiveDateTime,
		Element elementParticipantEffectiveDateTime,
		Period participantEffectivePeriod,
		Duration participantEffectiveDuration,
		Timing participantEffectiveTiming,
		Duration participantEffectiveTimeFromStart,
		String participantEffectiveGroupMeasure,
		Element elementParticipantEffectiveGroupMeasure}) async {
	ResearchElementDefinition_Characteristic newResearchElementDefinition_Characteristic = new ResearchElementDefinition_Characteristic(
			id: await newId('ResearchElementDefinition_Characteristic'),
			extension: extension,
			modifierExtension: modifierExtension,
			definitionCodeableConcept: definitionCodeableConcept,
			definitionCanonical: definitionCanonical,
			elementDefinitionCanonical: elementDefinitionCanonical,
			definitionExpression: definitionExpression,
			definitionDataRequirement: definitionDataRequirement,
			usageContext: usageContext,
			exclude: exclude,
			elementExclude: elementExclude,
			unitOfMeasure: unitOfMeasure,
			studyEffectiveDescription: studyEffectiveDescription,
			elementStudyEffectiveDescription: elementStudyEffectiveDescription,
			studyEffectiveDateTime: studyEffectiveDateTime,
			elementStudyEffectiveDateTime: elementStudyEffectiveDateTime,
			studyEffectivePeriod: studyEffectivePeriod,
			studyEffectiveDuration: studyEffectiveDuration,
			studyEffectiveTiming: studyEffectiveTiming,
			studyEffectiveTimeFromStart: studyEffectiveTimeFromStart,
			studyEffectiveGroupMeasure: studyEffectiveGroupMeasure,
			elementStudyEffectiveGroupMeasure: elementStudyEffectiveGroupMeasure,
			participantEffectiveDescription: participantEffectiveDescription,
			elementParticipantEffectiveDescription: elementParticipantEffectiveDescription,
			participantEffectiveDateTime: participantEffectiveDateTime,
			elementParticipantEffectiveDateTime: elementParticipantEffectiveDateTime,
			participantEffectivePeriod: participantEffectivePeriod,
			participantEffectiveDuration: participantEffectiveDuration,
			participantEffectiveTiming: participantEffectiveTiming,
			participantEffectiveTimeFromStart: participantEffectiveTimeFromStart,
			participantEffectiveGroupMeasure: participantEffectiveGroupMeasure,
			elementParticipantEffectiveGroupMeasure: elementParticipantEffectiveGroupMeasure);
	var researchElementDefinition_CharacteristicBox = await Hive.openBox<ResearchElementDefinition_Characteristic>('ResearchElementDefinition_CharacteristicBox');
	researchElementDefinition_CharacteristicBox.add(newResearchElementDefinition_Characteristic);
	return newResearchElementDefinition_Characteristic;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept definitionCodeableConcept;
  String definitionCanonical; //  pattern: ^\S*$
  Element elementDefinitionCanonical;
  Expression definitionExpression;
  DataRequirement definitionDataRequirement;
  List<UsageContext> usageContext;
  bool exclude;
  Element elementExclude;
  CodeableConcept unitOfMeasure;
  String studyEffectiveDescription;
  Element elementStudyEffectiveDescription;
  String studyEffectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementStudyEffectiveDateTime;
  Period studyEffectivePeriod;
  Duration studyEffectiveDuration;
  Timing studyEffectiveTiming;
  Duration studyEffectiveTimeFromStart;
  String studyEffectiveGroupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;
  Element elementStudyEffectiveGroupMeasure;
  String participantEffectiveDescription;
  Element elementParticipantEffectiveDescription;
  String participantEffectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementParticipantEffectiveDateTime;
  Period participantEffectivePeriod;
  Duration participantEffectiveDuration;
  Timing participantEffectiveTiming;
  Duration participantEffectiveTimeFromStart;
  String participantEffectiveGroupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;
  Element elementParticipantEffectiveGroupMeasure;

ResearchElementDefinition_Characteristic(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.definitionCodeableConcept,
    this.definitionCanonical,
    this.elementDefinitionCanonical,
    this.definitionExpression,
    this.definitionDataRequirement,
    this.usageContext,
    this.exclude,
    this.elementExclude,
    this.unitOfMeasure,
    this.studyEffectiveDescription,
    this.elementStudyEffectiveDescription,
    this.studyEffectiveDateTime,
    this.elementStudyEffectiveDateTime,
    this.studyEffectivePeriod,
    this.studyEffectiveDuration,
    this.studyEffectiveTiming,
    this.studyEffectiveTimeFromStart,
    this.studyEffectiveGroupMeasure,
    this.elementStudyEffectiveGroupMeasure,
    this.participantEffectiveDescription,
    this.elementParticipantEffectiveDescription,
    this.participantEffectiveDateTime,
    this.elementParticipantEffectiveDateTime,
    this.participantEffectivePeriod,
    this.participantEffectiveDuration,
    this.participantEffectiveTiming,
    this.participantEffectiveTimeFromStart,
    this.participantEffectiveGroupMeasure,
    this.elementParticipantEffectiveGroupMeasure
    });

  factory ResearchElementDefinition_Characteristic.fromJson(Map<String, dynamic> json) => _$ResearchElementDefinition_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchElementDefinition_CharacteristicToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResearchElementDefinitionAdapter
    extends TypeAdapter<ResearchElementDefinition> {
  @override
  final typeId = 172;

  @override
  ResearchElementDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ResearchElementDefinition(
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
      experimental: fields[26] as bool,
      elementExperimental: fields[27] as Element,
      subjectCodeableConcept: fields[28] as CodeableConcept,
      subjectReference: fields[29] as Reference,
      date: fields[30] as DateTime,
      elementDate: fields[31] as Element,
      publisher: fields[32] as String,
      elementPublisher: fields[33] as Element,
      contact: (fields[34] as List)?.cast<ContactDetail>(),
      description: fields[35] as String,
      elementDescription: fields[36] as Element,
      comment: (fields[37] as List)?.cast<String>(),
      elementComment: (fields[38] as List)?.cast<Element>(),
      useContext: (fields[39] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[40] as List)?.cast<CodeableConcept>(),
      purpose: fields[41] as String,
      elementPurpose: fields[42] as Element,
      usage: fields[43] as String,
      elementUsage: fields[44] as Element,
      copyright: fields[45] as String,
      elementCopyright: fields[46] as Element,
      approvalDate: fields[47] as String,
      elementApprovalDate: fields[48] as Element,
      lastReviewDate: fields[49] as String,
      elementLastReviewDate: fields[50] as Element,
      effectivePeriod: fields[51] as Period,
      topic: (fields[52] as List)?.cast<CodeableConcept>(),
      author: (fields[53] as List)?.cast<ContactDetail>(),
      editor: (fields[54] as List)?.cast<ContactDetail>(),
      reviewer: (fields[55] as List)?.cast<ContactDetail>(),
      endorser: (fields[56] as List)?.cast<ContactDetail>(),
      relatedArtifact: (fields[57] as List)?.cast<RelatedArtifact>(),
      library: (fields[58] as List)?.cast<String>(),
      type: fields[59] as String,
      elementType: fields[60] as Element,
      variableType: fields[61] as String,
      elementVariableType: fields[62] as Element,
      characteristic: (fields[63] as List)
          ?.cast<ResearchElementDefinition_Characteristic>(),
    );
  }

  @override
  void write(BinaryWriter writer, ResearchElementDefinition obj) {
    writer
      ..writeByte(64)
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
      ..write(obj.experimental)
      ..writeByte(27)
      ..write(obj.elementExperimental)
      ..writeByte(28)
      ..write(obj.subjectCodeableConcept)
      ..writeByte(29)
      ..write(obj.subjectReference)
      ..writeByte(30)
      ..write(obj.date)
      ..writeByte(31)
      ..write(obj.elementDate)
      ..writeByte(32)
      ..write(obj.publisher)
      ..writeByte(33)
      ..write(obj.elementPublisher)
      ..writeByte(34)
      ..write(obj.contact)
      ..writeByte(35)
      ..write(obj.description)
      ..writeByte(36)
      ..write(obj.elementDescription)
      ..writeByte(37)
      ..write(obj.comment)
      ..writeByte(38)
      ..write(obj.elementComment)
      ..writeByte(39)
      ..write(obj.useContext)
      ..writeByte(40)
      ..write(obj.jurisdiction)
      ..writeByte(41)
      ..write(obj.purpose)
      ..writeByte(42)
      ..write(obj.elementPurpose)
      ..writeByte(43)
      ..write(obj.usage)
      ..writeByte(44)
      ..write(obj.elementUsage)
      ..writeByte(45)
      ..write(obj.copyright)
      ..writeByte(46)
      ..write(obj.elementCopyright)
      ..writeByte(47)
      ..write(obj.approvalDate)
      ..writeByte(48)
      ..write(obj.elementApprovalDate)
      ..writeByte(49)
      ..write(obj.lastReviewDate)
      ..writeByte(50)
      ..write(obj.elementLastReviewDate)
      ..writeByte(51)
      ..write(obj.effectivePeriod)
      ..writeByte(52)
      ..write(obj.topic)
      ..writeByte(53)
      ..write(obj.author)
      ..writeByte(54)
      ..write(obj.editor)
      ..writeByte(55)
      ..write(obj.reviewer)
      ..writeByte(56)
      ..write(obj.endorser)
      ..writeByte(57)
      ..write(obj.relatedArtifact)
      ..writeByte(58)
      ..write(obj.library)
      ..writeByte(59)
      ..write(obj.type)
      ..writeByte(60)
      ..write(obj.elementType)
      ..writeByte(61)
      ..write(obj.variableType)
      ..writeByte(62)
      ..write(obj.elementVariableType)
      ..writeByte(63)
      ..write(obj.characteristic);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResearchElementDefinition _$ResearchElementDefinitionFromJson(
    Map<String, dynamic> json) {
  return ResearchElementDefinition(
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
    experimental: json['experimental'] as bool,
    elementExperimental: json['elementExperimental'] == null
        ? null
        : Element.fromJson(json['elementExperimental'] as Map<String, dynamic>),
    subjectCodeableConcept: json['subjectCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['subjectCodeableConcept'] as Map<String, dynamic>),
    subjectReference: json['subjectReference'] == null
        ? null
        : Reference.fromJson(json['subjectReference'] as Map<String, dynamic>),
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
    comment: (json['comment'] as List)?.map((e) => e as String)?.toList(),
    elementComment: (json['elementComment'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
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
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    usage: json['usage'] as String,
    elementUsage: json['elementUsage'] == null
        ? null
        : Element.fromJson(json['elementUsage'] as Map<String, dynamic>),
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
    library: (json['library'] as List)?.map((e) => e as String)?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    variableType: json['variableType'] as String,
    elementVariableType: json['elementVariableType'] == null
        ? null
        : Element.fromJson(json['elementVariableType'] as Map<String, dynamic>),
    characteristic: (json['characteristic'] as List)
        ?.map((e) => e == null
            ? null
            : ResearchElementDefinition_Characteristic.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ResearchElementDefinitionToJson(
        ResearchElementDefinition instance) =>
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
      'experimental': instance.experimental,
      'elementExperimental': instance.elementExperimental?.toJson(),
      'subjectCodeableConcept': instance.subjectCodeableConcept?.toJson(),
      'subjectReference': instance.subjectReference?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'comment': instance.comment,
      'elementComment':
          instance.elementComment?.map((e) => e?.toJson())?.toList(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'purpose': instance.purpose,
      'elementPurpose': instance.elementPurpose?.toJson(),
      'usage': instance.usage,
      'elementUsage': instance.elementUsage?.toJson(),
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
      'library': instance.library,
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'variableType': instance.variableType,
      'elementVariableType': instance.elementVariableType?.toJson(),
      'characteristic':
          instance.characteristic?.map((e) => e?.toJson())?.toList(),
    };

ResearchElementDefinition_Characteristic
    _$ResearchElementDefinition_CharacteristicFromJson(
        Map<String, dynamic> json) {
  return ResearchElementDefinition_Characteristic(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    definitionCodeableConcept: json['definitionCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['definitionCodeableConcept'] as Map<String, dynamic>),
    definitionCanonical: json['definitionCanonical'] as String,
    elementDefinitionCanonical: json['elementDefinitionCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementDefinitionCanonical'] as Map<String, dynamic>),
    definitionExpression: json['definitionExpression'] == null
        ? null
        : Expression.fromJson(
            json['definitionExpression'] as Map<String, dynamic>),
    definitionDataRequirement: json['definitionDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['definitionDataRequirement'] as Map<String, dynamic>),
    usageContext: (json['usageContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    exclude: json['exclude'] as bool,
    elementExclude: json['elementExclude'] == null
        ? null
        : Element.fromJson(json['elementExclude'] as Map<String, dynamic>),
    unitOfMeasure: json['unitOfMeasure'] == null
        ? null
        : CodeableConcept.fromJson(
            json['unitOfMeasure'] as Map<String, dynamic>),
    studyEffectiveDescription: json['studyEffectiveDescription'] as String,
    elementStudyEffectiveDescription:
        json['elementStudyEffectiveDescription'] == null
            ? null
            : Element.fromJson(json['elementStudyEffectiveDescription']
                as Map<String, dynamic>),
    studyEffectiveDateTime: json['studyEffectiveDateTime'] as String,
    elementStudyEffectiveDateTime: json['elementStudyEffectiveDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementStudyEffectiveDateTime'] as Map<String, dynamic>),
    studyEffectivePeriod: json['studyEffectivePeriod'] == null
        ? null
        : Period.fromJson(json['studyEffectivePeriod'] as Map<String, dynamic>),
    studyEffectiveDuration: json['studyEffectiveDuration'] == null
        ? null
        : Duration.fromJson(
            json['studyEffectiveDuration'] as Map<String, dynamic>),
    studyEffectiveTiming: json['studyEffectiveTiming'] == null
        ? null
        : Timing.fromJson(json['studyEffectiveTiming'] as Map<String, dynamic>),
    studyEffectiveTimeFromStart: json['studyEffectiveTimeFromStart'] == null
        ? null
        : Duration.fromJson(
            json['studyEffectiveTimeFromStart'] as Map<String, dynamic>),
    studyEffectiveGroupMeasure: json['studyEffectiveGroupMeasure'] as String,
    elementStudyEffectiveGroupMeasure:
        json['elementStudyEffectiveGroupMeasure'] == null
            ? null
            : Element.fromJson(json['elementStudyEffectiveGroupMeasure']
                as Map<String, dynamic>),
    participantEffectiveDescription:
        json['participantEffectiveDescription'] as String,
    elementParticipantEffectiveDescription:
        json['elementParticipantEffectiveDescription'] == null
            ? null
            : Element.fromJson(json['elementParticipantEffectiveDescription']
                as Map<String, dynamic>),
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
    participantEffectiveTimeFromStart:
        json['participantEffectiveTimeFromStart'] == null
            ? null
            : Duration.fromJson(json['participantEffectiveTimeFromStart']
                as Map<String, dynamic>),
    participantEffectiveGroupMeasure:
        json['participantEffectiveGroupMeasure'] as String,
    elementParticipantEffectiveGroupMeasure:
        json['elementParticipantEffectiveGroupMeasure'] == null
            ? null
            : Element.fromJson(json['elementParticipantEffectiveGroupMeasure']
                as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResearchElementDefinition_CharacteristicToJson(
        ResearchElementDefinition_Characteristic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'definitionCodeableConcept': instance.definitionCodeableConcept?.toJson(),
      'definitionCanonical': instance.definitionCanonical,
      'elementDefinitionCanonical':
          instance.elementDefinitionCanonical?.toJson(),
      'definitionExpression': instance.definitionExpression?.toJson(),
      'definitionDataRequirement': instance.definitionDataRequirement?.toJson(),
      'usageContext': instance.usageContext?.map((e) => e?.toJson())?.toList(),
      'exclude': instance.exclude,
      'elementExclude': instance.elementExclude?.toJson(),
      'unitOfMeasure': instance.unitOfMeasure?.toJson(),
      'studyEffectiveDescription': instance.studyEffectiveDescription,
      'elementStudyEffectiveDescription':
          instance.elementStudyEffectiveDescription?.toJson(),
      'studyEffectiveDateTime': instance.studyEffectiveDateTime,
      'elementStudyEffectiveDateTime':
          instance.elementStudyEffectiveDateTime?.toJson(),
      'studyEffectivePeriod': instance.studyEffectivePeriod?.toJson(),
      'studyEffectiveDuration': instance.studyEffectiveDuration?.toJson(),
      'studyEffectiveTiming': instance.studyEffectiveTiming?.toJson(),
      'studyEffectiveTimeFromStart':
          instance.studyEffectiveTimeFromStart?.toJson(),
      'studyEffectiveGroupMeasure': instance.studyEffectiveGroupMeasure,
      'elementStudyEffectiveGroupMeasure':
          instance.elementStudyEffectiveGroupMeasure?.toJson(),
      'participantEffectiveDescription':
          instance.participantEffectiveDescription,
      'elementParticipantEffectiveDescription':
          instance.elementParticipantEffectiveDescription?.toJson(),
      'participantEffectiveDateTime': instance.participantEffectiveDateTime,
      'elementParticipantEffectiveDateTime':
          instance.elementParticipantEffectiveDateTime?.toJson(),
      'participantEffectivePeriod':
          instance.participantEffectivePeriod?.toJson(),
      'participantEffectiveDuration':
          instance.participantEffectiveDuration?.toJson(),
      'participantEffectiveTiming':
          instance.participantEffectiveTiming?.toJson(),
      'participantEffectiveTimeFromStart':
          instance.participantEffectiveTimeFromStart?.toJson(),
      'participantEffectiveGroupMeasure':
          instance.participantEffectiveGroupMeasure,
      'elementParticipantEffectiveGroupMeasure':
          instance.elementParticipantEffectiveGroupMeasure?.toJson(),
    };
