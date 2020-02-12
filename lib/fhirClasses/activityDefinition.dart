import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
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
	ActivityDefinition newActivityDefinition = new ActivityDefinition(
			id: await newId('ActivityDefinition'),
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
	var activityDefinitionBox = await Hive.openBox<ActivityDefinition>('ActivityDefinitionBox');
	activityDefinitionBox.put(newActivityDefinition.id, newActivityDefinition);
	return newActivityDefinition;
}
  final String resourceType= 'ActivityDefinition';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String url;
  Element elementUrl;
  List<Identifier> identifier;
  String version;
  Element elementVersion;
  String name;
  Element elementName;
  String title;
  Element elementTitle;
  String subtitle;
  Element elementSubtitle;
  String status; // <code> enum: draft/active/retired/unknown;
  Element elementStatus;
  bool experimental;
  Element elementExperimental;
  CodeableConcept subjectCodeableConcept;
  Reference subjectReference;
  DateTime date;
  Element elementDate;
  String publisher;
  Element elementPublisher;
  List<ContactDetail> contact;
  String description;
  Element elementDescription;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String purpose;
  Element elementPurpose;
  String usage;
  Element elementUsage;
  String copyright;
  Element elementCopyright;
  String approvalDate;
  Element elementApprovalDate;
  String lastReviewDate;
  Element elementLastReviewDate;
  Period effectivePeriod;
  List<CodeableConcept> topic;
  List<ContactDetail> author;
  List<ContactDetail> editor;
  List<ContactDetail> reviewer;
  List<ContactDetail> endorser;
  List<RelatedArtifact> relatedArtifact;
  List<String> library;
  String kind;
  Element elementKind;
  String profile;
  CodeableConcept code;
  String intent;
  Element elementIntent;
  String priority;
  Element elementPriority;
  bool doNotPerform;
  Element elementDoNotPerform;
  Timing timingTiming;
  String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementTimingDateTime;
  Age timingAge;
  Period timingPeriod;
  Range timingRange;
  Duration timingDuration;
  Reference location;
  List<ActivityDefinition_Participant> participant;
  Reference productReference;
  CodeableConcept productCodeableConcept;
  Quantity quantity;
  List<Dosage> dosage;
  List<CodeableConcept> bodySite;
  List<Reference> specimenRequirement;
  List<Reference> observationRequirement;
  List<Reference> observationResultRequirement;
  String transform;
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
	ActivityDefinition_Participant newActivityDefinition_Participant = new ActivityDefinition_Participant(
			id: await newId('ActivityDefinition_Participant'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			elementType: elementType,
			role: role);
	var activityDefinition_ParticipantBox = await Hive.openBox<ActivityDefinition_Participant>('ActivityDefinition_ParticipantBox');
	activityDefinition_ParticipantBox.put(newActivityDefinition_Participant.id, newActivityDefinition_Participant);
	return newActivityDefinition_Participant;
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
	ActivityDefinition_DynamicValue newActivityDefinition_DynamicValue = new ActivityDefinition_DynamicValue(
			id: await newId('ActivityDefinition_DynamicValue'),
			extension: extension,
			modifierExtension: modifierExtension,
			path: path,
			elementPath: elementPath,
			expression: expression);
	var activityDefinition_DynamicValueBox = await Hive.openBox<ActivityDefinition_DynamicValue>('ActivityDefinition_DynamicValueBox');
	activityDefinition_DynamicValueBox.put(newActivityDefinition_DynamicValue.id, newActivityDefinition_DynamicValue);
	return newActivityDefinition_DynamicValue;
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
