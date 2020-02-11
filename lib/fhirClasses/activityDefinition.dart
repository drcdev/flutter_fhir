import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
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
@HiveType(typeId: 57)
class ActivityDefinition {

	static Future<ActivityDefinition> newInstance({
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
		String kind,
		Element elementKind,
		String profile,
		CodeableConcept code,
		String intent,
		Element elementIntent,
		String priority,
		Element elementPriority,
		bool doNotPerform,
		Element elementDoNotPerform,
		Timing timingTiming,
		String timingDateTime,
		Element elementTimingDateTime,
		Age timingAge,
		Period timingPeriod,
		Range timingRange,
		Duration timingDuration,
		Reference location,
		List<ActivityDefinition_Participant> participant,
		Reference productReference,
		CodeableConcept productCodeableConcept,
		Quantity quantity,
		List<Dosage> dosage,
		List<CodeableConcept> bodySite,
		List<Reference> specimenRequirement,
		List<Reference> observationRequirement,
		List<Reference> observationResultRequirement,
		String transform,
		List<ActivityDefinition_DynamicValue> dynamicValue}) async {
	 return ActivityDefinition(
			id: await newEntry('ActivityDefinition'),
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
			kind: kind,
			elementKind: elementKind,
			profile: profile,
			code: code,
			intent: intent,
			elementIntent: elementIntent,
			priority: priority,
			elementPriority: elementPriority,
			doNotPerform: doNotPerform,
			elementDoNotPerform: elementDoNotPerform,
			timingTiming: timingTiming,
			timingDateTime: timingDateTime,
			elementTimingDateTime: elementTimingDateTime,
			timingAge: timingAge,
			timingPeriod: timingPeriod,
			timingRange: timingRange,
			timingDuration: timingDuration,
			location: location,
			participant: participant,
			productReference: productReference,
			productCodeableConcept: productCodeableConcept,
			quantity: quantity,
			dosage: dosage,
			bodySite: bodySite,
			specimenRequirement: specimenRequirement,
			observationRequirement: observationRequirement,
			observationResultRequirement: observationResultRequirement,
			transform: transform,
			dynamicValue: dynamicValue);
	}

  @HiveField(0)
  final String resourceType= 'ActivityDefinition';
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
  String subtitle;
  @HiveField(21)
  Element elementSubtitle;
  @HiveField(22)
  String status; // <code> enum: draft/active/retired/unknown;
  @HiveField(23)
  Element elementStatus;
  @HiveField(24)
  bool experimental;
  @HiveField(25)
  Element elementExperimental;
  @HiveField(26)
  CodeableConcept subjectCodeableConcept;
  @HiveField(27)
  Reference subjectReference;
  @HiveField(28)
  DateTime date;
  @HiveField(29)
  Element elementDate;
  @HiveField(30)
  String publisher;
  @HiveField(31)
  Element elementPublisher;
  @HiveField(32)
  List<ContactDetail> contact;
  @HiveField(33)
  String description;
  @HiveField(34)
  Element elementDescription;
  @HiveField(35)
  List<UsageContext> useContext;
  @HiveField(36)
  List<CodeableConcept> jurisdiction;
  @HiveField(37)
  String purpose;
  @HiveField(38)
  Element elementPurpose;
  @HiveField(39)
  String usage;
  @HiveField(40)
  Element elementUsage;
  @HiveField(41)
  String copyright;
  @HiveField(42)
  Element elementCopyright;
  @HiveField(43)
  String approvalDate;
  @HiveField(44)
  Element elementApprovalDate;
  @HiveField(45)
  String lastReviewDate;
  @HiveField(46)
  Element elementLastReviewDate;
  @HiveField(47)
  Period effectivePeriod;
  @HiveField(48)
  List<CodeableConcept> topic;
  @HiveField(49)
  List<ContactDetail> author;
  @HiveField(50)
  List<ContactDetail> editor;
  @HiveField(51)
  List<ContactDetail> reviewer;
  @HiveField(52)
  List<ContactDetail> endorser;
  @HiveField(53)
  List<RelatedArtifact> relatedArtifact;
  @HiveField(54)
  List<String> library;
  @HiveField(55)
  String kind;
  @HiveField(56)
  Element elementKind;
  @HiveField(57)
  String profile;
  @HiveField(58)
  CodeableConcept code;
  @HiveField(59)
  String intent;
  @HiveField(60)
  Element elementIntent;
  @HiveField(61)
  String priority;
  @HiveField(62)
  Element elementPriority;
  @HiveField(63)
  bool doNotPerform;
  @HiveField(64)
  Element elementDoNotPerform;
  @HiveField(65)
  Timing timingTiming;
  @HiveField(66)
  String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  @HiveField(67)
  Element elementTimingDateTime;
  @HiveField(68)
  Age timingAge;
  @HiveField(69)
  Period timingPeriod;
  @HiveField(70)
  Range timingRange;
  @HiveField(71)
  Duration timingDuration;
  @HiveField(72)
  Reference location;
  @HiveField(73)
  List<ActivityDefinition_Participant> participant;
  @HiveField(74)
  Reference productReference;
  @HiveField(75)
  CodeableConcept productCodeableConcept;
  @HiveField(76)
  Quantity quantity;
  @HiveField(77)
  List<Dosage> dosage;
  @HiveField(78)
  List<CodeableConcept> bodySite;
  @HiveField(79)
  List<Reference> specimenRequirement;
  @HiveField(80)
  List<Reference> observationRequirement;
  @HiveField(81)
  List<Reference> observationResultRequirement;
  @HiveField(82)
  String transform;
  @HiveField(83)
  List<ActivityDefinition_DynamicValue> dynamicValue;

ActivityDefinition(
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
    this.kind,
    this.elementKind,
    this.profile,
    this.code,
    this.intent,
    this.elementIntent,
    this.priority,
    this.elementPriority,
    this.doNotPerform,
    this.elementDoNotPerform,
    this.timingTiming,
    this.timingDateTime,
    this.elementTimingDateTime,
    this.timingAge,
    this.timingPeriod,
    this.timingRange,
    this.timingDuration,
    this.location,
    this.participant,
    this.productReference,
    this.productCodeableConcept,
    this.quantity,
    this.dosage,
    this.bodySite,
    this.specimenRequirement,
    this.observationRequirement,
    this.observationResultRequirement,
    this.transform,
    this.dynamicValue
    });

  factory ActivityDefinition.fromJson(Map<String, dynamic> json) => _$ActivityDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ActivityDefinition_Participant {

	static Future<ActivityDefinition_Participant> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String type,
		Element elementType,
		CodeableConcept role}) async {
	 return ActivityDefinition_Participant(
			id: await newEntry('ActivityDefinition_Participant'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			elementType: elementType,
			role: role);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element elementType;
  CodeableConcept role;

ActivityDefinition_Participant(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.role
    });

  factory ActivityDefinition_Participant.fromJson(Map<String, dynamic> json) => _$ActivityDefinition_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityDefinition_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ActivityDefinition_DynamicValue {

	static Future<ActivityDefinition_DynamicValue> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String path,
		Element elementPath,
		Expression expression}) async {
	 return ActivityDefinition_DynamicValue(
			id: await newEntry('ActivityDefinition_DynamicValue'),
			extension: extension,
			modifierExtension: modifierExtension,
			path: path,
			elementPath: elementPath,
			expression: expression);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String path;
  Element elementPath;
  Expression expression;

ActivityDefinition_DynamicValue(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath,
    @required this.expression
    });

  factory ActivityDefinition_DynamicValue.fromJson(Map<String, dynamic> json) => _$ActivityDefinition_DynamicValueFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityDefinition_DynamicValueToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ActivityDefinitionAdapter extends TypeAdapter<ActivityDefinition> {
  @override
  final typeId = 57;

  @override
  ActivityDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ActivityDefinition(
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
      subtitle: fields[20] as String,
      elementSubtitle: fields[21] as Element,
      status: fields[22] as String,
      elementStatus: fields[23] as Element,
      experimental: fields[24] as bool,
      elementExperimental: fields[25] as Element,
      subjectCodeableConcept: fields[26] as CodeableConcept,
      subjectReference: fields[27] as Reference,
      date: fields[28] as DateTime,
      elementDate: fields[29] as Element,
      publisher: fields[30] as String,
      elementPublisher: fields[31] as Element,
      contact: (fields[32] as List)?.cast<ContactDetail>(),
      description: fields[33] as String,
      elementDescription: fields[34] as Element,
      useContext: (fields[35] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[36] as List)?.cast<CodeableConcept>(),
      purpose: fields[37] as String,
      elementPurpose: fields[38] as Element,
      usage: fields[39] as String,
      elementUsage: fields[40] as Element,
      copyright: fields[41] as String,
      elementCopyright: fields[42] as Element,
      approvalDate: fields[43] as String,
      elementApprovalDate: fields[44] as Element,
      lastReviewDate: fields[45] as String,
      elementLastReviewDate: fields[46] as Element,
      effectivePeriod: fields[47] as Period,
      topic: (fields[48] as List)?.cast<CodeableConcept>(),
      author: (fields[49] as List)?.cast<ContactDetail>(),
      editor: (fields[50] as List)?.cast<ContactDetail>(),
      reviewer: (fields[51] as List)?.cast<ContactDetail>(),
      endorser: (fields[52] as List)?.cast<ContactDetail>(),
      relatedArtifact: (fields[53] as List)?.cast<RelatedArtifact>(),
      library: (fields[54] as List)?.cast<String>(),
      kind: fields[55] as String,
      elementKind: fields[56] as Element,
      profile: fields[57] as String,
      code: fields[58] as CodeableConcept,
      intent: fields[59] as String,
      elementIntent: fields[60] as Element,
      priority: fields[61] as String,
      elementPriority: fields[62] as Element,
      doNotPerform: fields[63] as bool,
      elementDoNotPerform: fields[64] as Element,
      timingTiming: fields[65] as Timing,
      timingDateTime: fields[66] as String,
      elementTimingDateTime: fields[67] as Element,
      timingAge: fields[68] as Age,
      timingPeriod: fields[69] as Period,
      timingRange: fields[70] as Range,
      timingDuration: fields[71] as Duration,
      location: fields[72] as Reference,
      participant: (fields[73] as List)?.cast<ActivityDefinition_Participant>(),
      productReference: fields[74] as Reference,
      productCodeableConcept: fields[75] as CodeableConcept,
      quantity: fields[76] as Quantity,
      dosage: (fields[77] as List)?.cast<Dosage>(),
      bodySite: (fields[78] as List)?.cast<CodeableConcept>(),
      specimenRequirement: (fields[79] as List)?.cast<Reference>(),
      observationRequirement: (fields[80] as List)?.cast<Reference>(),
      observationResultRequirement: (fields[81] as List)?.cast<Reference>(),
      transform: fields[82] as String,
      dynamicValue:
          (fields[83] as List)?.cast<ActivityDefinition_DynamicValue>(),
    );
  }

  @override
  void write(BinaryWriter writer, ActivityDefinition obj) {
    writer
      ..writeByte(84)
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
      ..write(obj.subtitle)
      ..writeByte(21)
      ..write(obj.elementSubtitle)
      ..writeByte(22)
      ..write(obj.status)
      ..writeByte(23)
      ..write(obj.elementStatus)
      ..writeByte(24)
      ..write(obj.experimental)
      ..writeByte(25)
      ..write(obj.elementExperimental)
      ..writeByte(26)
      ..write(obj.subjectCodeableConcept)
      ..writeByte(27)
      ..write(obj.subjectReference)
      ..writeByte(28)
      ..write(obj.date)
      ..writeByte(29)
      ..write(obj.elementDate)
      ..writeByte(30)
      ..write(obj.publisher)
      ..writeByte(31)
      ..write(obj.elementPublisher)
      ..writeByte(32)
      ..write(obj.contact)
      ..writeByte(33)
      ..write(obj.description)
      ..writeByte(34)
      ..write(obj.elementDescription)
      ..writeByte(35)
      ..write(obj.useContext)
      ..writeByte(36)
      ..write(obj.jurisdiction)
      ..writeByte(37)
      ..write(obj.purpose)
      ..writeByte(38)
      ..write(obj.elementPurpose)
      ..writeByte(39)
      ..write(obj.usage)
      ..writeByte(40)
      ..write(obj.elementUsage)
      ..writeByte(41)
      ..write(obj.copyright)
      ..writeByte(42)
      ..write(obj.elementCopyright)
      ..writeByte(43)
      ..write(obj.approvalDate)
      ..writeByte(44)
      ..write(obj.elementApprovalDate)
      ..writeByte(45)
      ..write(obj.lastReviewDate)
      ..writeByte(46)
      ..write(obj.elementLastReviewDate)
      ..writeByte(47)
      ..write(obj.effectivePeriod)
      ..writeByte(48)
      ..write(obj.topic)
      ..writeByte(49)
      ..write(obj.author)
      ..writeByte(50)
      ..write(obj.editor)
      ..writeByte(51)
      ..write(obj.reviewer)
      ..writeByte(52)
      ..write(obj.endorser)
      ..writeByte(53)
      ..write(obj.relatedArtifact)
      ..writeByte(54)
      ..write(obj.library)
      ..writeByte(55)
      ..write(obj.kind)
      ..writeByte(56)
      ..write(obj.elementKind)
      ..writeByte(57)
      ..write(obj.profile)
      ..writeByte(58)
      ..write(obj.code)
      ..writeByte(59)
      ..write(obj.intent)
      ..writeByte(60)
      ..write(obj.elementIntent)
      ..writeByte(61)
      ..write(obj.priority)
      ..writeByte(62)
      ..write(obj.elementPriority)
      ..writeByte(63)
      ..write(obj.doNotPerform)
      ..writeByte(64)
      ..write(obj.elementDoNotPerform)
      ..writeByte(65)
      ..write(obj.timingTiming)
      ..writeByte(66)
      ..write(obj.timingDateTime)
      ..writeByte(67)
      ..write(obj.elementTimingDateTime)
      ..writeByte(68)
      ..write(obj.timingAge)
      ..writeByte(69)
      ..write(obj.timingPeriod)
      ..writeByte(70)
      ..write(obj.timingRange)
      ..writeByte(71)
      ..write(obj.timingDuration)
      ..writeByte(72)
      ..write(obj.location)
      ..writeByte(73)
      ..write(obj.participant)
      ..writeByte(74)
      ..write(obj.productReference)
      ..writeByte(75)
      ..write(obj.productCodeableConcept)
      ..writeByte(76)
      ..write(obj.quantity)
      ..writeByte(77)
      ..write(obj.dosage)
      ..writeByte(78)
      ..write(obj.bodySite)
      ..writeByte(79)
      ..write(obj.specimenRequirement)
      ..writeByte(80)
      ..write(obj.observationRequirement)
      ..writeByte(81)
      ..write(obj.observationResultRequirement)
      ..writeByte(82)
      ..write(obj.transform)
      ..writeByte(83)
      ..write(obj.dynamicValue);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityDefinition _$ActivityDefinitionFromJson(Map<String, dynamic> json) {
  return ActivityDefinition(
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
    kind: json['kind'] as String,
    elementKind: json['elementKind'] == null
        ? null
        : Element.fromJson(json['elementKind'] as Map<String, dynamic>),
    profile: json['profile'] as String,
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    intent: json['intent'] as String,
    elementIntent: json['elementIntent'] == null
        ? null
        : Element.fromJson(json['elementIntent'] as Map<String, dynamic>),
    priority: json['priority'] as String,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
    doNotPerform: json['doNotPerform'] as bool,
    elementDoNotPerform: json['elementDoNotPerform'] == null
        ? null
        : Element.fromJson(json['elementDoNotPerform'] as Map<String, dynamic>),
    timingTiming: json['timingTiming'] == null
        ? null
        : Timing.fromJson(json['timingTiming'] as Map<String, dynamic>),
    timingDateTime: json['timingDateTime'] as String,
    elementTimingDateTime: json['elementTimingDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementTimingDateTime'] as Map<String, dynamic>),
    timingAge: json['timingAge'] == null
        ? null
        : Age.fromJson(json['timingAge'] as Map<String, dynamic>),
    timingPeriod: json['timingPeriod'] == null
        ? null
        : Period.fromJson(json['timingPeriod'] as Map<String, dynamic>),
    timingRange: json['timingRange'] == null
        ? null
        : Range.fromJson(json['timingRange'] as Map<String, dynamic>),
    timingDuration: json['timingDuration'] == null
        ? null
        : Duration.fromJson(json['timingDuration'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    participant: (json['participant'] as List)
        ?.map((e) => e == null
            ? null
            : ActivityDefinition_Participant.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    productReference: json['productReference'] == null
        ? null
        : Reference.fromJson(json['productReference'] as Map<String, dynamic>),
    productCodeableConcept: json['productCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productCodeableConcept'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    dosage: (json['dosage'] as List)
        ?.map((e) =>
            e == null ? null : Dosage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    bodySite: (json['bodySite'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specimenRequirement: (json['specimenRequirement'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    observationRequirement: (json['observationRequirement'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    observationResultRequirement: (json['observationResultRequirement'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    transform: json['transform'] as String,
    dynamicValue: (json['dynamicValue'] as List)
        ?.map((e) => e == null
            ? null
            : ActivityDefinition_DynamicValue.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ActivityDefinitionToJson(ActivityDefinition instance) =>
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
      'kind': instance.kind,
      'elementKind': instance.elementKind?.toJson(),
      'profile': instance.profile,
      'code': instance.code?.toJson(),
      'intent': instance.intent,
      'elementIntent': instance.elementIntent?.toJson(),
      'priority': instance.priority,
      'elementPriority': instance.elementPriority?.toJson(),
      'doNotPerform': instance.doNotPerform,
      'elementDoNotPerform': instance.elementDoNotPerform?.toJson(),
      'timingTiming': instance.timingTiming?.toJson(),
      'timingDateTime': instance.timingDateTime,
      'elementTimingDateTime': instance.elementTimingDateTime?.toJson(),
      'timingAge': instance.timingAge?.toJson(),
      'timingPeriod': instance.timingPeriod?.toJson(),
      'timingRange': instance.timingRange?.toJson(),
      'timingDuration': instance.timingDuration?.toJson(),
      'location': instance.location?.toJson(),
      'participant': instance.participant?.map((e) => e?.toJson())?.toList(),
      'productReference': instance.productReference?.toJson(),
      'productCodeableConcept': instance.productCodeableConcept?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'dosage': instance.dosage?.map((e) => e?.toJson())?.toList(),
      'bodySite': instance.bodySite?.map((e) => e?.toJson())?.toList(),
      'specimenRequirement':
          instance.specimenRequirement?.map((e) => e?.toJson())?.toList(),
      'observationRequirement':
          instance.observationRequirement?.map((e) => e?.toJson())?.toList(),
      'observationResultRequirement': instance.observationResultRequirement
          ?.map((e) => e?.toJson())
          ?.toList(),
      'transform': instance.transform,
      'dynamicValue': instance.dynamicValue?.map((e) => e?.toJson())?.toList(),
    };

ActivityDefinition_Participant _$ActivityDefinition_ParticipantFromJson(
    Map<String, dynamic> json) {
  return ActivityDefinition_Participant(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ActivityDefinition_ParticipantToJson(
        ActivityDefinition_Participant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'role': instance.role?.toJson(),
    };

ActivityDefinition_DynamicValue _$ActivityDefinition_DynamicValueFromJson(
    Map<String, dynamic> json) {
  return ActivityDefinition_DynamicValue(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
    expression: json['expression'] == null
        ? null
        : Expression.fromJson(json['expression'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ActivityDefinition_DynamicValueToJson(
        ActivityDefinition_DynamicValue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
      'expression': instance.expression?.toJson(),
    };
