import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
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
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class ResearchElementDefinition {

	static Future<ResearchElementDefinition> newInstance({
		String  resourceType,
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
	var fhirDb = new DatabaseHelper();
	ResearchElementDefinition newResearchElementDefinition = new ResearchElementDefinition(
			resourceType: resourceType,
			id: await fhirDb.newResourceId('ResearchElementDefinition'),
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
			characteristic: characteristic,
);
	int saved = await fhirDb.saveResource(newResearchElementDefinition);
	return newResearchElementDefinition;
}
  String resourceType= 'ResearchElementDefinition';
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
  String shortTitle;
  Element elementShortTitle;
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
  List<String> comment;
  List<Element> elementComment;
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
  String type; // <code> enum: population/exposure/outcome;
  Element elementType;
  String variableType; // <code> enum: dichotomous/continuous/descriptive;
  Element elementVariableType;
  List<ResearchElementDefinition_Characteristic> characteristic;

ResearchElementDefinition(
  {@required this.resourceType,
    this.id,
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
	var fhirDb = new DatabaseHelper();
	ResearchElementDefinition_Characteristic newResearchElementDefinition_Characteristic = new ResearchElementDefinition_Characteristic(
			id: await fhirDb.newResourceId('ResearchElementDefinition_Characteristic'),
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
			elementParticipantEffectiveGroupMeasure: elementParticipantEffectiveGroupMeasure,
);
	int saved = await fhirDb.saveResource(newResearchElementDefinition_Characteristic);
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
// JsonSerializableGenerator
// **************************************************************************

ResearchElementDefinition _$ResearchElementDefinitionFromJson(
    Map<String, dynamic> json) {
  return ResearchElementDefinition(
    resourceType: json['resourceType'] as String,
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
      'resourceType': instance.resourceType,
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
