import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/triggerDefinition.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
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
class PlanDefinition {

	static Future<PlanDefinition> newInstance({
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
		CodeableConcept type,
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
		List<PlanDefinition_Goal> goal,
		List<PlanDefinition_Action> action}) async {
	PlanDefinition newPlanDefinition = new PlanDefinition(
			id: await newId('PlanDefinition'),
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
			type: type,
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
			goal: goal,
			action: action);
	var planDefinitionBox = await Hive.openBox<PlanDefinition>('PlanDefinitionBox');
	planDefinitionBox.put(newPlanDefinition.id, newPlanDefinition);
	return newPlanDefinition;
}
  final String resourceType= 'PlanDefinition';
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
  CodeableConcept type;
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
  List<PlanDefinition_Goal> goal;
  List<PlanDefinition_Action> action;

PlanDefinition(
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
    this.type,
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
    this.goal,
    this.action
    });

  factory PlanDefinition.fromJson(Map<String, dynamic> json) => _$PlanDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Goal {

	static Future<PlanDefinition_Goal> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept category,
		CodeableConcept description,
		CodeableConcept priority,
		CodeableConcept start,
		List<CodeableConcept> addresses,
		List<RelatedArtifact> documentation,
		List<PlanDefinition_Target> target}) async {
	PlanDefinition_Goal newPlanDefinition_Goal = new PlanDefinition_Goal(
			id: await newId('PlanDefinition_Goal'),
			extension: extension,
			modifierExtension: modifierExtension,
			category: category,
			description: description,
			priority: priority,
			start: start,
			addresses: addresses,
			documentation: documentation,
			target: target);
	var planDefinition_GoalBox = await Hive.openBox<PlanDefinition_Goal>('PlanDefinition_GoalBox');
	planDefinition_GoalBox.put(newPlanDefinition_Goal.id, newPlanDefinition_Goal);
	return newPlanDefinition_Goal;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  CodeableConcept description;
  CodeableConcept priority;
  CodeableConcept start;
  List<CodeableConcept> addresses;
  List<RelatedArtifact> documentation;
  List<PlanDefinition_Target> target;

PlanDefinition_Goal(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.category,
    @required this.description,
    this.priority,
    this.start,
    this.addresses,
    this.documentation,
    this.target
    });

  factory PlanDefinition_Goal.fromJson(Map<String, dynamic> json) => _$PlanDefinition_GoalFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_GoalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Target {

	static Future<PlanDefinition_Target> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept measure,
		Quantity detailQuantity,
		Range detailRange,
		CodeableConcept detailCodeableConcept,
		Duration due}) async {
	PlanDefinition_Target newPlanDefinition_Target = new PlanDefinition_Target(
			id: await newId('PlanDefinition_Target'),
			extension: extension,
			modifierExtension: modifierExtension,
			measure: measure,
			detailQuantity: detailQuantity,
			detailRange: detailRange,
			detailCodeableConcept: detailCodeableConcept,
			due: due);
	var planDefinition_TargetBox = await Hive.openBox<PlanDefinition_Target>('PlanDefinition_TargetBox');
	planDefinition_TargetBox.put(newPlanDefinition_Target.id, newPlanDefinition_Target);
	return newPlanDefinition_Target;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept measure;
  Quantity detailQuantity;
  Range detailRange;
  CodeableConcept detailCodeableConcept;
  Duration due;

PlanDefinition_Target(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.measure,
    this.detailQuantity,
    this.detailRange,
    this.detailCodeableConcept,
    this.due
    });

  factory PlanDefinition_Target.fromJson(Map<String, dynamic> json) => _$PlanDefinition_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_TargetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Action {

	static Future<PlanDefinition_Action> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String prefix,
		Element elementPrefix,
		String title,
		Element elementTitle,
		String description,
		Element elementDescription,
		String textEquivalent,
		Element elementTextEquivalent,
		String priority,
		Element elementPriority,
		List<CodeableConcept> code,
		List<CodeableConcept> reason,
		List<RelatedArtifact> documentation,
		List<String> goalId,
		List<Element> elementGoalId,
		CodeableConcept subjectCodeableConcept,
		Reference subjectReference,
		List<TriggerDefinition> trigger,
		List<PlanDefinition_Condition> condition,
		List<DataRequirement> input,
		List<DataRequirement> output,
		List<PlanDefinition_RelatedAction> relatedAction,
		String timingDateTime,
		Element elementTimingDateTime,
		Age timingAge,
		Period timingPeriod,
		Duration timingDuration,
		Range timingRange,
		Timing timingTiming,
		List<PlanDefinition_Participant> participant,
		CodeableConcept type,
		String groupingBehavior,
		Element elementGroupingBehavior,
		String selectionBehavior,
		Element elementSelectionBehavior,
		String requiredBehavior,
		Element elementRequiredBehavior,
		String precheckBehavior,
		Element elementPrecheckBehavior,
		String cardinalityBehavior,
		Element elementCardinalityBehavior,
		String definitionCanonical,
		Element elementDefinitionCanonical,
		String definitionUri,
		Element elementDefinitionUri,
		String transform,
		List<PlanDefinition_DynamicValue> dynamicValue,
		List<PlanDefinition_Action> action}) async {
	PlanDefinition_Action newPlanDefinition_Action = new PlanDefinition_Action(
			id: await newId('PlanDefinition_Action'),
			extension: extension,
			modifierExtension: modifierExtension,
			prefix: prefix,
			elementPrefix: elementPrefix,
			title: title,
			elementTitle: elementTitle,
			description: description,
			elementDescription: elementDescription,
			textEquivalent: textEquivalent,
			elementTextEquivalent: elementTextEquivalent,
			priority: priority,
			elementPriority: elementPriority,
			code: code,
			reason: reason,
			documentation: documentation,
			goalId: goalId,
			elementGoalId: elementGoalId,
			subjectCodeableConcept: subjectCodeableConcept,
			subjectReference: subjectReference,
			trigger: trigger,
			condition: condition,
			input: input,
			output: output,
			relatedAction: relatedAction,
			timingDateTime: timingDateTime,
			elementTimingDateTime: elementTimingDateTime,
			timingAge: timingAge,
			timingPeriod: timingPeriod,
			timingDuration: timingDuration,
			timingRange: timingRange,
			timingTiming: timingTiming,
			participant: participant,
			type: type,
			groupingBehavior: groupingBehavior,
			elementGroupingBehavior: elementGroupingBehavior,
			selectionBehavior: selectionBehavior,
			elementSelectionBehavior: elementSelectionBehavior,
			requiredBehavior: requiredBehavior,
			elementRequiredBehavior: elementRequiredBehavior,
			precheckBehavior: precheckBehavior,
			elementPrecheckBehavior: elementPrecheckBehavior,
			cardinalityBehavior: cardinalityBehavior,
			elementCardinalityBehavior: elementCardinalityBehavior,
			definitionCanonical: definitionCanonical,
			elementDefinitionCanonical: elementDefinitionCanonical,
			definitionUri: definitionUri,
			elementDefinitionUri: elementDefinitionUri,
			transform: transform,
			dynamicValue: dynamicValue,
			action: action);
	var planDefinition_ActionBox = await Hive.openBox<PlanDefinition_Action>('PlanDefinition_ActionBox');
	planDefinition_ActionBox.put(newPlanDefinition_Action.id, newPlanDefinition_Action);
	return newPlanDefinition_Action;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String prefix;
  Element elementPrefix;
  String title;
  Element elementTitle;
  String description;
  Element elementDescription;
  String textEquivalent;
  Element elementTextEquivalent;
  String priority;
  Element elementPriority;
  List<CodeableConcept> code;
  List<CodeableConcept> reason;
  List<RelatedArtifact> documentation;
  List<String> goalId;
  List<Element> elementGoalId;
  CodeableConcept subjectCodeableConcept;
  Reference subjectReference;
  List<TriggerDefinition> trigger;
  List<PlanDefinition_Condition> condition;
  List<DataRequirement> input;
  List<DataRequirement> output;
  List<PlanDefinition_RelatedAction> relatedAction;
  String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementTimingDateTime;
  Age timingAge;
  Period timingPeriod;
  Duration timingDuration;
  Range timingRange;
  Timing timingTiming;
  List<PlanDefinition_Participant> participant;
  CodeableConcept type;
  String groupingBehavior; // <code> enum: visual-group/logical-group/sentence-group;
  Element elementGroupingBehavior;
  String selectionBehavior; // <code> enum: any/all/all-or-none/exactly-one/at-most-one/one-or-more;
  Element elementSelectionBehavior;
  String requiredBehavior; // <code> enum: must/could/must-unless-documented;
  Element elementRequiredBehavior;
  String precheckBehavior; // <code> enum: yes/no;
  Element elementPrecheckBehavior;
  String cardinalityBehavior; // <code> enum: single/multiple;
  Element elementCardinalityBehavior;
  String definitionCanonical; //  pattern: ^\S*$
  Element elementDefinitionCanonical;
  String definitionUri; //  pattern: ^\S*$
  Element elementDefinitionUri;
  String transform;
  List<PlanDefinition_DynamicValue> dynamicValue;
  List<PlanDefinition_Action> action;

PlanDefinition_Action(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.prefix,
    this.elementPrefix,
    this.title,
    this.elementTitle,
    this.description,
    this.elementDescription,
    this.textEquivalent,
    this.elementTextEquivalent,
    this.priority,
    this.elementPriority,
    this.code,
    this.reason,
    this.documentation,
    this.goalId,
    this.elementGoalId,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.trigger,
    this.condition,
    this.input,
    this.output,
    this.relatedAction,
    this.timingDateTime,
    this.elementTimingDateTime,
    this.timingAge,
    this.timingPeriod,
    this.timingDuration,
    this.timingRange,
    this.timingTiming,
    this.participant,
    this.type,
    this.groupingBehavior,
    this.elementGroupingBehavior,
    this.selectionBehavior,
    this.elementSelectionBehavior,
    this.requiredBehavior,
    this.elementRequiredBehavior,
    this.precheckBehavior,
    this.elementPrecheckBehavior,
    this.cardinalityBehavior,
    this.elementCardinalityBehavior,
    this.definitionCanonical,
    this.elementDefinitionCanonical,
    this.definitionUri,
    this.elementDefinitionUri,
    this.transform,
    this.dynamicValue,
    this.action
    });

  factory PlanDefinition_Action.fromJson(Map<String, dynamic> json) => _$PlanDefinition_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Condition {

	static Future<PlanDefinition_Condition> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String kind,
		Element elementKind,
		Expression expression}) async {
	PlanDefinition_Condition newPlanDefinition_Condition = new PlanDefinition_Condition(
			id: await newId('PlanDefinition_Condition'),
			extension: extension,
			modifierExtension: modifierExtension,
			kind: kind,
			elementKind: elementKind,
			expression: expression);
	var planDefinition_ConditionBox = await Hive.openBox<PlanDefinition_Condition>('PlanDefinition_ConditionBox');
	planDefinition_ConditionBox.put(newPlanDefinition_Condition.id, newPlanDefinition_Condition);
	return newPlanDefinition_Condition;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String kind; // <code> enum: applicability/start/stop;
  Element elementKind;
  Expression expression;

PlanDefinition_Condition(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.kind,
    this.elementKind,
    this.expression
    });

  factory PlanDefinition_Condition.fromJson(Map<String, dynamic> json) => _$PlanDefinition_ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_ConditionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_RelatedAction {

	static Future<PlanDefinition_RelatedAction> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String actionId,
		Element elementActionId,
		String relationship,
		Element elementRelationship,
		Duration offsetDuration,
		Range offsetRange}) async {
	PlanDefinition_RelatedAction newPlanDefinition_RelatedAction = new PlanDefinition_RelatedAction(
			id: await newId('PlanDefinition_RelatedAction'),
			extension: extension,
			modifierExtension: modifierExtension,
			actionId: actionId,
			elementActionId: elementActionId,
			relationship: relationship,
			elementRelationship: elementRelationship,
			offsetDuration: offsetDuration,
			offsetRange: offsetRange);
	var planDefinition_RelatedActionBox = await Hive.openBox<PlanDefinition_RelatedAction>('PlanDefinition_RelatedActionBox');
	planDefinition_RelatedActionBox.put(newPlanDefinition_RelatedAction.id, newPlanDefinition_RelatedAction);
	return newPlanDefinition_RelatedAction;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String actionId;
  Element elementActionId;
  String relationship; // <code> enum: before-start/before/before-end/concurrent-with-start/concurrent/concurrent-with-end/after-start/after/after-end;
  Element elementRelationship;
  Duration offsetDuration;
  Range offsetRange;

PlanDefinition_RelatedAction(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.actionId,
    this.elementActionId,
    this.relationship,
    this.elementRelationship,
    this.offsetDuration,
    this.offsetRange
    });

  factory PlanDefinition_RelatedAction.fromJson(Map<String, dynamic> json) => _$PlanDefinition_RelatedActionFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_RelatedActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Participant {

	static Future<PlanDefinition_Participant> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String type,
		Element elementType,
		CodeableConcept role}) async {
	PlanDefinition_Participant newPlanDefinition_Participant = new PlanDefinition_Participant(
			id: await newId('PlanDefinition_Participant'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			elementType: elementType,
			role: role);
	var planDefinition_ParticipantBox = await Hive.openBox<PlanDefinition_Participant>('PlanDefinition_ParticipantBox');
	planDefinition_ParticipantBox.put(newPlanDefinition_Participant.id, newPlanDefinition_Participant);
	return newPlanDefinition_Participant;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type; // <code> enum: patient/practitioner/related-person/device;
  Element elementType;
  CodeableConcept role;

PlanDefinition_Participant(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.role
    });

  factory PlanDefinition_Participant.fromJson(Map<String, dynamic> json) => _$PlanDefinition_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_DynamicValue {

	static Future<PlanDefinition_DynamicValue> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String path,
		Element elementPath,
		Expression expression}) async {
	PlanDefinition_DynamicValue newPlanDefinition_DynamicValue = new PlanDefinition_DynamicValue(
			id: await newId('PlanDefinition_DynamicValue'),
			extension: extension,
			modifierExtension: modifierExtension,
			path: path,
			elementPath: elementPath,
			expression: expression);
	var planDefinition_DynamicValueBox = await Hive.openBox<PlanDefinition_DynamicValue>('PlanDefinition_DynamicValueBox');
	planDefinition_DynamicValueBox.put(newPlanDefinition_DynamicValue.id, newPlanDefinition_DynamicValue);
	return newPlanDefinition_DynamicValue;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String path;
  Element elementPath;
  Expression expression;

PlanDefinition_DynamicValue(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath,
    this.expression
    });

  factory PlanDefinition_DynamicValue.fromJson(Map<String, dynamic> json) => _$PlanDefinition_DynamicValueFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_DynamicValueToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanDefinition _$PlanDefinitionFromJson(Map<String, dynamic> json) {
  return PlanDefinition(
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
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
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
    goal: (json['goal'] as List)
        ?.map((e) => e == null
            ? null
            : PlanDefinition_Goal.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : PlanDefinition_Action.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PlanDefinitionToJson(PlanDefinition instance) =>
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
      'type': instance.type?.toJson(),
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
      'goal': instance.goal?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
    };

PlanDefinition_Goal _$PlanDefinition_GoalFromJson(Map<String, dynamic> json) {
  return PlanDefinition_Goal(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    description: json['description'] == null
        ? null
        : CodeableConcept.fromJson(json['description'] as Map<String, dynamic>),
    priority: json['priority'] == null
        ? null
        : CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>),
    start: json['start'] == null
        ? null
        : CodeableConcept.fromJson(json['start'] as Map<String, dynamic>),
    addresses: (json['addresses'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    documentation: (json['documentation'] as List)
        ?.map((e) => e == null
            ? null
            : RelatedArtifact.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    target: (json['target'] as List)
        ?.map((e) => e == null
            ? null
            : PlanDefinition_Target.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PlanDefinition_GoalToJson(
        PlanDefinition_Goal instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'description': instance.description?.toJson(),
      'priority': instance.priority?.toJson(),
      'start': instance.start?.toJson(),
      'addresses': instance.addresses?.map((e) => e?.toJson())?.toList(),
      'documentation':
          instance.documentation?.map((e) => e?.toJson())?.toList(),
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
    };

PlanDefinition_Target _$PlanDefinition_TargetFromJson(
    Map<String, dynamic> json) {
  return PlanDefinition_Target(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    measure: json['measure'] == null
        ? null
        : CodeableConcept.fromJson(json['measure'] as Map<String, dynamic>),
    detailQuantity: json['detailQuantity'] == null
        ? null
        : Quantity.fromJson(json['detailQuantity'] as Map<String, dynamic>),
    detailRange: json['detailRange'] == null
        ? null
        : Range.fromJson(json['detailRange'] as Map<String, dynamic>),
    detailCodeableConcept: json['detailCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['detailCodeableConcept'] as Map<String, dynamic>),
    due: json['due'] == null
        ? null
        : Duration.fromJson(json['due'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PlanDefinition_TargetToJson(
        PlanDefinition_Target instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'measure': instance.measure?.toJson(),
      'detailQuantity': instance.detailQuantity?.toJson(),
      'detailRange': instance.detailRange?.toJson(),
      'detailCodeableConcept': instance.detailCodeableConcept?.toJson(),
      'due': instance.due?.toJson(),
    };

PlanDefinition_Action _$PlanDefinition_ActionFromJson(
    Map<String, dynamic> json) {
  return PlanDefinition_Action(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prefix: json['prefix'] as String,
    elementPrefix: json['elementPrefix'] == null
        ? null
        : Element.fromJson(json['elementPrefix'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    textEquivalent: json['textEquivalent'] as String,
    elementTextEquivalent: json['elementTextEquivalent'] == null
        ? null
        : Element.fromJson(
            json['elementTextEquivalent'] as Map<String, dynamic>),
    priority: json['priority'] as String,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reason: (json['reason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    documentation: (json['documentation'] as List)
        ?.map((e) => e == null
            ? null
            : RelatedArtifact.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    goalId: (json['goalId'] as List)?.map((e) => e as String)?.toList(),
    elementGoalId: (json['elementGoalId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subjectCodeableConcept: json['subjectCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['subjectCodeableConcept'] as Map<String, dynamic>),
    subjectReference: json['subjectReference'] == null
        ? null
        : Reference.fromJson(json['subjectReference'] as Map<String, dynamic>),
    trigger: (json['trigger'] as List)
        ?.map((e) => e == null
            ? null
            : TriggerDefinition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: (json['condition'] as List)
        ?.map((e) => e == null
            ? null
            : PlanDefinition_Condition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    input: (json['input'] as List)
        ?.map((e) => e == null
            ? null
            : DataRequirement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    output: (json['output'] as List)
        ?.map((e) => e == null
            ? null
            : DataRequirement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relatedAction: (json['relatedAction'] as List)
        ?.map((e) => e == null
            ? null
            : PlanDefinition_RelatedAction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    timingDuration: json['timingDuration'] == null
        ? null
        : Duration.fromJson(json['timingDuration'] as Map<String, dynamic>),
    timingRange: json['timingRange'] == null
        ? null
        : Range.fromJson(json['timingRange'] as Map<String, dynamic>),
    timingTiming: json['timingTiming'] == null
        ? null
        : Timing.fromJson(json['timingTiming'] as Map<String, dynamic>),
    participant: (json['participant'] as List)
        ?.map((e) => e == null
            ? null
            : PlanDefinition_Participant.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    groupingBehavior: json['groupingBehavior'] as String,
    elementGroupingBehavior: json['elementGroupingBehavior'] == null
        ? null
        : Element.fromJson(
            json['elementGroupingBehavior'] as Map<String, dynamic>),
    selectionBehavior: json['selectionBehavior'] as String,
    elementSelectionBehavior: json['elementSelectionBehavior'] == null
        ? null
        : Element.fromJson(
            json['elementSelectionBehavior'] as Map<String, dynamic>),
    requiredBehavior: json['requiredBehavior'] as String,
    elementRequiredBehavior: json['elementRequiredBehavior'] == null
        ? null
        : Element.fromJson(
            json['elementRequiredBehavior'] as Map<String, dynamic>),
    precheckBehavior: json['precheckBehavior'] as String,
    elementPrecheckBehavior: json['elementPrecheckBehavior'] == null
        ? null
        : Element.fromJson(
            json['elementPrecheckBehavior'] as Map<String, dynamic>),
    cardinalityBehavior: json['cardinalityBehavior'] as String,
    elementCardinalityBehavior: json['elementCardinalityBehavior'] == null
        ? null
        : Element.fromJson(
            json['elementCardinalityBehavior'] as Map<String, dynamic>),
    definitionCanonical: json['definitionCanonical'] as String,
    elementDefinitionCanonical: json['elementDefinitionCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementDefinitionCanonical'] as Map<String, dynamic>),
    definitionUri: json['definitionUri'] as String,
    elementDefinitionUri: json['elementDefinitionUri'] == null
        ? null
        : Element.fromJson(
            json['elementDefinitionUri'] as Map<String, dynamic>),
    transform: json['transform'] as String,
    dynamicValue: (json['dynamicValue'] as List)
        ?.map((e) => e == null
            ? null
            : PlanDefinition_DynamicValue.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : PlanDefinition_Action.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PlanDefinition_ActionToJson(
        PlanDefinition_Action instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'prefix': instance.prefix,
      'elementPrefix': instance.elementPrefix?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'textEquivalent': instance.textEquivalent,
      'elementTextEquivalent': instance.elementTextEquivalent?.toJson(),
      'priority': instance.priority,
      'elementPriority': instance.elementPriority?.toJson(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'reason': instance.reason?.map((e) => e?.toJson())?.toList(),
      'documentation':
          instance.documentation?.map((e) => e?.toJson())?.toList(),
      'goalId': instance.goalId,
      'elementGoalId':
          instance.elementGoalId?.map((e) => e?.toJson())?.toList(),
      'subjectCodeableConcept': instance.subjectCodeableConcept?.toJson(),
      'subjectReference': instance.subjectReference?.toJson(),
      'trigger': instance.trigger?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition?.map((e) => e?.toJson())?.toList(),
      'input': instance.input?.map((e) => e?.toJson())?.toList(),
      'output': instance.output?.map((e) => e?.toJson())?.toList(),
      'relatedAction':
          instance.relatedAction?.map((e) => e?.toJson())?.toList(),
      'timingDateTime': instance.timingDateTime,
      'elementTimingDateTime': instance.elementTimingDateTime?.toJson(),
      'timingAge': instance.timingAge?.toJson(),
      'timingPeriod': instance.timingPeriod?.toJson(),
      'timingDuration': instance.timingDuration?.toJson(),
      'timingRange': instance.timingRange?.toJson(),
      'timingTiming': instance.timingTiming?.toJson(),
      'participant': instance.participant?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'groupingBehavior': instance.groupingBehavior,
      'elementGroupingBehavior': instance.elementGroupingBehavior?.toJson(),
      'selectionBehavior': instance.selectionBehavior,
      'elementSelectionBehavior': instance.elementSelectionBehavior?.toJson(),
      'requiredBehavior': instance.requiredBehavior,
      'elementRequiredBehavior': instance.elementRequiredBehavior?.toJson(),
      'precheckBehavior': instance.precheckBehavior,
      'elementPrecheckBehavior': instance.elementPrecheckBehavior?.toJson(),
      'cardinalityBehavior': instance.cardinalityBehavior,
      'elementCardinalityBehavior':
          instance.elementCardinalityBehavior?.toJson(),
      'definitionCanonical': instance.definitionCanonical,
      'elementDefinitionCanonical':
          instance.elementDefinitionCanonical?.toJson(),
      'definitionUri': instance.definitionUri,
      'elementDefinitionUri': instance.elementDefinitionUri?.toJson(),
      'transform': instance.transform,
      'dynamicValue': instance.dynamicValue?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
    };

PlanDefinition_Condition _$PlanDefinition_ConditionFromJson(
    Map<String, dynamic> json) {
  return PlanDefinition_Condition(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    kind: json['kind'] as String,
    elementKind: json['elementKind'] == null
        ? null
        : Element.fromJson(json['elementKind'] as Map<String, dynamic>),
    expression: json['expression'] == null
        ? null
        : Expression.fromJson(json['expression'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PlanDefinition_ConditionToJson(
        PlanDefinition_Condition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'kind': instance.kind,
      'elementKind': instance.elementKind?.toJson(),
      'expression': instance.expression?.toJson(),
    };

PlanDefinition_RelatedAction _$PlanDefinition_RelatedActionFromJson(
    Map<String, dynamic> json) {
  return PlanDefinition_RelatedAction(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    actionId: json['actionId'] as String,
    elementActionId: json['elementActionId'] == null
        ? null
        : Element.fromJson(json['elementActionId'] as Map<String, dynamic>),
    relationship: json['relationship'] as String,
    elementRelationship: json['elementRelationship'] == null
        ? null
        : Element.fromJson(json['elementRelationship'] as Map<String, dynamic>),
    offsetDuration: json['offsetDuration'] == null
        ? null
        : Duration.fromJson(json['offsetDuration'] as Map<String, dynamic>),
    offsetRange: json['offsetRange'] == null
        ? null
        : Range.fromJson(json['offsetRange'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PlanDefinition_RelatedActionToJson(
        PlanDefinition_RelatedAction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'actionId': instance.actionId,
      'elementActionId': instance.elementActionId?.toJson(),
      'relationship': instance.relationship,
      'elementRelationship': instance.elementRelationship?.toJson(),
      'offsetDuration': instance.offsetDuration?.toJson(),
      'offsetRange': instance.offsetRange?.toJson(),
    };

PlanDefinition_Participant _$PlanDefinition_ParticipantFromJson(
    Map<String, dynamic> json) {
  return PlanDefinition_Participant(
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

Map<String, dynamic> _$PlanDefinition_ParticipantToJson(
        PlanDefinition_Participant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'role': instance.role?.toJson(),
    };

PlanDefinition_DynamicValue _$PlanDefinition_DynamicValueFromJson(
    Map<String, dynamic> json) {
  return PlanDefinition_DynamicValue(
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

Map<String, dynamic> _$PlanDefinition_DynamicValueToJson(
        PlanDefinition_DynamicValue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
      'expression': instance.expression?.toJson(),
    };
