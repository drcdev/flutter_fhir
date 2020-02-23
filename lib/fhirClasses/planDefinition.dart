import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
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

class PlanDefinition {
  static Future<PlanDefinition> newInstance({
    String resourceType,
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
    List<PlanDefinition_Action> action,
  }) async {
    var fhirDb = new DatabaseHelper();
    PlanDefinition newPlanDefinition = new PlanDefinition(
      resourceType: 'PlanDefinition',
      id: id ?? await fhirDb.newResourceId('PlanDefinition'),
      meta: meta ?? await Meta.newInstance(),
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
      action: action,
    );
    newPlanDefinition.meta.createdAt = DateTime.now();
    newPlanDefinition.meta.lastUpdated = newPlanDefinition.meta.createdAt;
    int saved = await fhirDb.saveResource(newPlanDefinition);
    return newPlanDefinition;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'PlanDefinition';
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
  CodeableConcept type;
  @HiveField(23)
  String status;
  @HiveField(24)
  Element elementStatus;
  @HiveField(25)
  bool experimental;
  @HiveField(26)
  Element elementExperimental;
  @HiveField(27)
  CodeableConcept subjectCodeableConcept;
  @HiveField(28)
  Reference subjectReference;
  @HiveField(29)
  DateTime date;
  @HiveField(30)
  Element elementDate;
  @HiveField(31)
  String publisher;
  @HiveField(32)
  Element elementPublisher;
  @HiveField(33)
  List<ContactDetail> contact;
  @HiveField(34)
  String description;
  @HiveField(35)
  Element elementDescription;
  @HiveField(36)
  List<UsageContext> useContext;
  @HiveField(37)
  List<CodeableConcept> jurisdiction;
  @HiveField(38)
  String purpose;
  @HiveField(39)
  Element elementPurpose;
  @HiveField(40)
  String usage;
  @HiveField(41)
  Element elementUsage;
  @HiveField(42)
  String copyright;
  @HiveField(43)
  Element elementCopyright;
  @HiveField(44)
  String approvalDate;
  @HiveField(45)
  Element elementApprovalDate;
  @HiveField(46)
  String lastReviewDate;
  @HiveField(47)
  Element elementLastReviewDate;
  @HiveField(48)
  Period effectivePeriod;
  @HiveField(49)
  List<CodeableConcept> topic;
  @HiveField(50)
  List<ContactDetail> author;
  @HiveField(51)
  List<ContactDetail> editor;
  @HiveField(52)
  List<ContactDetail> reviewer;
  @HiveField(53)
  List<ContactDetail> endorser;
  @HiveField(54)
  List<RelatedArtifact> relatedArtifact;
  @HiveField(55)
  List<String> library;
  @HiveField(56)
  List<PlanDefinition_Goal> goal;
  @HiveField(57)
  List<PlanDefinition_Action> action;

  PlanDefinition({
    @required this.resourceType,
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
    this.action,
  });

  factory PlanDefinition.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinitionToJson(this);
}

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
    List<PlanDefinition_Target> target,
  }) async {
    var fhirDb = new DatabaseHelper();
    PlanDefinition_Goal newPlanDefinition_Goal = new PlanDefinition_Goal(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      category: category,
      description: description,
      priority: priority,
      start: start,
      addresses: addresses,
      documentation: documentation,
      target: target,
    );
    return newPlanDefinition_Goal;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept category;
  @HiveField(4)
  CodeableConcept description;
  @HiveField(5)
  CodeableConcept priority;
  @HiveField(6)
  CodeableConcept start;
  @HiveField(7)
  List<CodeableConcept> addresses;
  @HiveField(8)
  List<RelatedArtifact> documentation;
  @HiveField(9)
  List<PlanDefinition_Target> target;

  PlanDefinition_Goal({
    this.id,
    this.extension,
    this.modifierExtension,
    this.category,
    @required this.description,
    this.priority,
    this.start,
    this.addresses,
    this.documentation,
    this.target,
  });

  factory PlanDefinition_Goal.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinition_GoalFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_GoalToJson(this);
}

class PlanDefinition_Target {
  static Future<PlanDefinition_Target> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept measure,
    Quantity detailQuantity,
    Range detailRange,
    CodeableConcept detailCodeableConcept,
    Duration due,
  }) async {
    var fhirDb = new DatabaseHelper();
    PlanDefinition_Target newPlanDefinition_Target = new PlanDefinition_Target(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      measure: measure,
      detailQuantity: detailQuantity,
      detailRange: detailRange,
      detailCodeableConcept: detailCodeableConcept,
      due: due,
    );
    return newPlanDefinition_Target;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept measure;
  @HiveField(4)
  Quantity detailQuantity;
  @HiveField(5)
  Range detailRange;
  @HiveField(6)
  CodeableConcept detailCodeableConcept;
  @HiveField(7)
  Duration due;

  PlanDefinition_Target({
    this.id,
    this.extension,
    this.modifierExtension,
    this.measure,
    this.detailQuantity,
    this.detailRange,
    this.detailCodeableConcept,
    this.due,
  });

  factory PlanDefinition_Target.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinition_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_TargetToJson(this);
}

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
    List<PlanDefinition_Action> action,
  }) async {
    var fhirDb = new DatabaseHelper();
    PlanDefinition_Action newPlanDefinition_Action = new PlanDefinition_Action(
      id: id,
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
      action: action,
    );
    return newPlanDefinition_Action;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String prefix;
  @HiveField(4)
  Element elementPrefix;
  @HiveField(5)
  String title;
  @HiveField(6)
  Element elementTitle;
  @HiveField(7)
  String description;
  @HiveField(8)
  Element elementDescription;
  @HiveField(9)
  String textEquivalent;
  @HiveField(10)
  Element elementTextEquivalent;
  @HiveField(11)
  String priority;
  @HiveField(12)
  Element elementPriority;
  @HiveField(13)
  List<CodeableConcept> code;
  @HiveField(14)
  List<CodeableConcept> reason;
  @HiveField(15)
  List<RelatedArtifact> documentation;
  @HiveField(16)
  List<String> goalId;
  @HiveField(17)
  List<Element> elementGoalId;
  @HiveField(18)
  CodeableConcept subjectCodeableConcept;
  @HiveField(19)
  Reference subjectReference;
  @HiveField(20)
  List<TriggerDefinition> trigger;
  @HiveField(21)
  List<PlanDefinition_Condition> condition;
  @HiveField(22)
  List<DataRequirement> input;
  @HiveField(23)
  List<DataRequirement> output;
  @HiveField(24)
  List<PlanDefinition_RelatedAction> relatedAction;
  @HiveField(25)
  String timingDateTime;
  @HiveField(26)
  Element elementTimingDateTime;
  @HiveField(27)
  Age timingAge;
  @HiveField(28)
  Period timingPeriod;
  @HiveField(29)
  Duration timingDuration;
  @HiveField(30)
  Range timingRange;
  @HiveField(31)
  Timing timingTiming;
  @HiveField(32)
  List<PlanDefinition_Participant> participant;
  @HiveField(33)
  CodeableConcept type;
  @HiveField(34)
  String groupingBehavior;
  @HiveField(35)
  Element elementGroupingBehavior;
  @HiveField(36)
  String selectionBehavior;
  @HiveField(37)
  Element elementSelectionBehavior;
  @HiveField(38)
  String requiredBehavior;
  @HiveField(39)
  Element elementRequiredBehavior;
  @HiveField(40)
  String precheckBehavior;
  @HiveField(41)
  Element elementPrecheckBehavior;
  @HiveField(42)
  String cardinalityBehavior;
  @HiveField(43)
  Element elementCardinalityBehavior;
  @HiveField(44)
  String definitionCanonical;
  @HiveField(45)
  Element elementDefinitionCanonical;
  @HiveField(46)
  String definitionUri;
  @HiveField(47)
  Element elementDefinitionUri;
  @HiveField(48)
  String transform;
  @HiveField(49)
  List<PlanDefinition_DynamicValue> dynamicValue;
  @HiveField(50)
  List<PlanDefinition_Action> action;

  PlanDefinition_Action({
    this.id,
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
    this.action,
  });

  factory PlanDefinition_Action.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinition_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_ActionToJson(this);
}

class PlanDefinition_Condition {
  static Future<PlanDefinition_Condition> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String kind,
    Element elementKind,
    Expression expression,
  }) async {
    var fhirDb = new DatabaseHelper();
    PlanDefinition_Condition newPlanDefinition_Condition =
        new PlanDefinition_Condition(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      kind: kind,
      elementKind: elementKind,
      expression: expression,
    );
    return newPlanDefinition_Condition;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String kind;
  @HiveField(4)
  Element elementKind;
  @HiveField(5)
  Expression expression;

  PlanDefinition_Condition({
    this.id,
    this.extension,
    this.modifierExtension,
    this.kind,
    this.elementKind,
    this.expression,
  });

  factory PlanDefinition_Condition.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinition_ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_ConditionToJson(this);
}

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
    Range offsetRange,
  }) async {
    var fhirDb = new DatabaseHelper();
    PlanDefinition_RelatedAction newPlanDefinition_RelatedAction =
        new PlanDefinition_RelatedAction(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      actionId: actionId,
      elementActionId: elementActionId,
      relationship: relationship,
      elementRelationship: elementRelationship,
      offsetDuration: offsetDuration,
      offsetRange: offsetRange,
    );
    return newPlanDefinition_RelatedAction;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String actionId;
  @HiveField(4)
  Element elementActionId;
  @HiveField(5)
  String relationship;
  @HiveField(6)
  Element elementRelationship;
  @HiveField(7)
  Duration offsetDuration;
  @HiveField(8)
  Range offsetRange;

  PlanDefinition_RelatedAction({
    this.id,
    this.extension,
    this.modifierExtension,
    this.actionId,
    this.elementActionId,
    this.relationship,
    this.elementRelationship,
    this.offsetDuration,
    this.offsetRange,
  });

  factory PlanDefinition_RelatedAction.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinition_RelatedActionFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_RelatedActionToJson(this);
}

class PlanDefinition_Participant {
  static Future<PlanDefinition_Participant> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String type,
    Element elementType,
    CodeableConcept role,
  }) async {
    var fhirDb = new DatabaseHelper();
    PlanDefinition_Participant newPlanDefinition_Participant =
        new PlanDefinition_Participant(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      role: role,
    );
    return newPlanDefinition_Participant;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String type;
  @HiveField(4)
  Element elementType;
  @HiveField(5)
  CodeableConcept role;

  PlanDefinition_Participant({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.role,
  });

  factory PlanDefinition_Participant.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinition_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_ParticipantToJson(this);
}

class PlanDefinition_DynamicValue {
  static Future<PlanDefinition_DynamicValue> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String path,
    Element elementPath,
    Expression expression,
  }) async {
    var fhirDb = new DatabaseHelper();
    PlanDefinition_DynamicValue newPlanDefinition_DynamicValue =
        new PlanDefinition_DynamicValue(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      path: path,
      elementPath: elementPath,
      expression: expression,
    );
    return newPlanDefinition_DynamicValue;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String path;
  @HiveField(4)
  Element elementPath;
  @HiveField(5)
  Expression expression;

  PlanDefinition_DynamicValue({
    this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath,
    this.expression,
  });

  factory PlanDefinition_DynamicValue.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinition_DynamicValueFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_DynamicValueToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanDefinition _$PlanDefinitionFromJson(Map<String, dynamic> json) {
  return PlanDefinition(
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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

Map<String, dynamic> _$PlanDefinitionToJson(PlanDefinition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('subtitle', instance.subtitle);
  writeNotNull('elementSubtitle', instance.elementSubtitle?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('experimental', instance.experimental);
  writeNotNull('elementExperimental', instance.elementExperimental?.toJson());
  writeNotNull(
      'subjectCodeableConcept', instance.subjectCodeableConcept?.toJson());
  writeNotNull('subjectReference', instance.subjectReference?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('publisher', instance.publisher);
  writeNotNull('elementPublisher', instance.elementPublisher?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e?.toJson())?.toList());
  writeNotNull('purpose', instance.purpose);
  writeNotNull('elementPurpose', instance.elementPurpose?.toJson());
  writeNotNull('usage', instance.usage);
  writeNotNull('elementUsage', instance.elementUsage?.toJson());
  writeNotNull('copyright', instance.copyright);
  writeNotNull('elementCopyright', instance.elementCopyright?.toJson());
  writeNotNull('approvalDate', instance.approvalDate);
  writeNotNull('elementApprovalDate', instance.elementApprovalDate?.toJson());
  writeNotNull('lastReviewDate', instance.lastReviewDate);
  writeNotNull(
      'elementLastReviewDate', instance.elementLastReviewDate?.toJson());
  writeNotNull('effectivePeriod', instance.effectivePeriod?.toJson());
  writeNotNull('topic', instance.topic?.map((e) => e?.toJson())?.toList());
  writeNotNull('author', instance.author?.map((e) => e?.toJson())?.toList());
  writeNotNull('editor', instance.editor?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'reviewer', instance.reviewer?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'endorser', instance.endorser?.map((e) => e?.toJson())?.toList());
  writeNotNull('relatedArtifact',
      instance.relatedArtifact?.map((e) => e?.toJson())?.toList());
  writeNotNull('library', instance.library);
  writeNotNull('goal', instance.goal?.map((e) => e?.toJson())?.toList());
  writeNotNull('action', instance.action?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$PlanDefinition_GoalToJson(PlanDefinition_Goal instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('priority', instance.priority?.toJson());
  writeNotNull('start', instance.start?.toJson());
  writeNotNull(
      'addresses', instance.addresses?.map((e) => e?.toJson())?.toList());
  writeNotNull('documentation',
      instance.documentation?.map((e) => e?.toJson())?.toList());
  writeNotNull('target', instance.target?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    PlanDefinition_Target instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('measure', instance.measure?.toJson());
  writeNotNull('detailQuantity', instance.detailQuantity?.toJson());
  writeNotNull('detailRange', instance.detailRange?.toJson());
  writeNotNull(
      'detailCodeableConcept', instance.detailCodeableConcept?.toJson());
  writeNotNull('due', instance.due?.toJson());
  return val;
}

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
    PlanDefinition_Action instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('prefix', instance.prefix);
  writeNotNull('elementPrefix', instance.elementPrefix?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('textEquivalent', instance.textEquivalent);
  writeNotNull(
      'elementTextEquivalent', instance.elementTextEquivalent?.toJson());
  writeNotNull('priority', instance.priority);
  writeNotNull('elementPriority', instance.elementPriority?.toJson());
  writeNotNull('code', instance.code?.map((e) => e?.toJson())?.toList());
  writeNotNull('reason', instance.reason?.map((e) => e?.toJson())?.toList());
  writeNotNull('documentation',
      instance.documentation?.map((e) => e?.toJson())?.toList());
  writeNotNull('goalId', instance.goalId);
  writeNotNull('elementGoalId',
      instance.elementGoalId?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'subjectCodeableConcept', instance.subjectCodeableConcept?.toJson());
  writeNotNull('subjectReference', instance.subjectReference?.toJson());
  writeNotNull('trigger', instance.trigger?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'condition', instance.condition?.map((e) => e?.toJson())?.toList());
  writeNotNull('input', instance.input?.map((e) => e?.toJson())?.toList());
  writeNotNull('output', instance.output?.map((e) => e?.toJson())?.toList());
  writeNotNull('relatedAction',
      instance.relatedAction?.map((e) => e?.toJson())?.toList());
  writeNotNull('timingDateTime', instance.timingDateTime);
  writeNotNull(
      'elementTimingDateTime', instance.elementTimingDateTime?.toJson());
  writeNotNull('timingAge', instance.timingAge?.toJson());
  writeNotNull('timingPeriod', instance.timingPeriod?.toJson());
  writeNotNull('timingDuration', instance.timingDuration?.toJson());
  writeNotNull('timingRange', instance.timingRange?.toJson());
  writeNotNull('timingTiming', instance.timingTiming?.toJson());
  writeNotNull(
      'participant', instance.participant?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('groupingBehavior', instance.groupingBehavior);
  writeNotNull(
      'elementGroupingBehavior', instance.elementGroupingBehavior?.toJson());
  writeNotNull('selectionBehavior', instance.selectionBehavior);
  writeNotNull(
      'elementSelectionBehavior', instance.elementSelectionBehavior?.toJson());
  writeNotNull('requiredBehavior', instance.requiredBehavior);
  writeNotNull(
      'elementRequiredBehavior', instance.elementRequiredBehavior?.toJson());
  writeNotNull('precheckBehavior', instance.precheckBehavior);
  writeNotNull(
      'elementPrecheckBehavior', instance.elementPrecheckBehavior?.toJson());
  writeNotNull('cardinalityBehavior', instance.cardinalityBehavior);
  writeNotNull('elementCardinalityBehavior',
      instance.elementCardinalityBehavior?.toJson());
  writeNotNull('definitionCanonical', instance.definitionCanonical);
  writeNotNull('elementDefinitionCanonical',
      instance.elementDefinitionCanonical?.toJson());
  writeNotNull('definitionUri', instance.definitionUri);
  writeNotNull('elementDefinitionUri', instance.elementDefinitionUri?.toJson());
  writeNotNull('transform', instance.transform);
  writeNotNull(
      'dynamicValue', instance.dynamicValue?.map((e) => e?.toJson())?.toList());
  writeNotNull('action', instance.action?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    PlanDefinition_Condition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('kind', instance.kind);
  writeNotNull('elementKind', instance.elementKind?.toJson());
  writeNotNull('expression', instance.expression?.toJson());
  return val;
}

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
    PlanDefinition_RelatedAction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('actionId', instance.actionId);
  writeNotNull('elementActionId', instance.elementActionId?.toJson());
  writeNotNull('relationship', instance.relationship);
  writeNotNull('elementRelationship', instance.elementRelationship?.toJson());
  writeNotNull('offsetDuration', instance.offsetDuration?.toJson());
  writeNotNull('offsetRange', instance.offsetRange?.toJson());
  return val;
}

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
    PlanDefinition_Participant instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('role', instance.role?.toJson());
  return val;
}

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
    PlanDefinition_DynamicValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('path', instance.path);
  writeNotNull('elementPath', instance.elementPath?.toJson());
  writeNotNull('expression', instance.expression?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlanDefinitionAdapter extends TypeAdapter<PlanDefinition> {
  @override
  PlanDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlanDefinition(
      resourceType: fields[0] as String,
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
      type: fields[22] as CodeableConcept,
      status: fields[23] as String,
      elementStatus: fields[24] as Element,
      experimental: fields[25] as bool,
      elementExperimental: fields[26] as Element,
      subjectCodeableConcept: fields[27] as CodeableConcept,
      subjectReference: fields[28] as Reference,
      date: fields[29] as DateTime,
      elementDate: fields[30] as Element,
      publisher: fields[31] as String,
      elementPublisher: fields[32] as Element,
      contact: (fields[33] as List)?.cast<ContactDetail>(),
      description: fields[34] as String,
      elementDescription: fields[35] as Element,
      useContext: (fields[36] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[37] as List)?.cast<CodeableConcept>(),
      purpose: fields[38] as String,
      elementPurpose: fields[39] as Element,
      usage: fields[40] as String,
      elementUsage: fields[41] as Element,
      copyright: fields[42] as String,
      elementCopyright: fields[43] as Element,
      approvalDate: fields[44] as String,
      elementApprovalDate: fields[45] as Element,
      lastReviewDate: fields[46] as String,
      elementLastReviewDate: fields[47] as Element,
      effectivePeriod: fields[48] as Period,
      topic: (fields[49] as List)?.cast<CodeableConcept>(),
      author: (fields[50] as List)?.cast<ContactDetail>(),
      editor: (fields[51] as List)?.cast<ContactDetail>(),
      reviewer: (fields[52] as List)?.cast<ContactDetail>(),
      endorser: (fields[53] as List)?.cast<ContactDetail>(),
      relatedArtifact: (fields[54] as List)?.cast<RelatedArtifact>(),
      library: (fields[55] as List)?.cast<String>(),
      goal: (fields[56] as List)?.cast<PlanDefinition_Goal>(),
      action: (fields[57] as List)?.cast<PlanDefinition_Action>(),
    );
  }

  @override
  void write(BinaryWriter writer, PlanDefinition obj) {
    writer
      ..writeByte(58)
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
      ..write(obj.type)
      ..writeByte(23)
      ..write(obj.status)
      ..writeByte(24)
      ..write(obj.elementStatus)
      ..writeByte(25)
      ..write(obj.experimental)
      ..writeByte(26)
      ..write(obj.elementExperimental)
      ..writeByte(27)
      ..write(obj.subjectCodeableConcept)
      ..writeByte(28)
      ..write(obj.subjectReference)
      ..writeByte(29)
      ..write(obj.date)
      ..writeByte(30)
      ..write(obj.elementDate)
      ..writeByte(31)
      ..write(obj.publisher)
      ..writeByte(32)
      ..write(obj.elementPublisher)
      ..writeByte(33)
      ..write(obj.contact)
      ..writeByte(34)
      ..write(obj.description)
      ..writeByte(35)
      ..write(obj.elementDescription)
      ..writeByte(36)
      ..write(obj.useContext)
      ..writeByte(37)
      ..write(obj.jurisdiction)
      ..writeByte(38)
      ..write(obj.purpose)
      ..writeByte(39)
      ..write(obj.elementPurpose)
      ..writeByte(40)
      ..write(obj.usage)
      ..writeByte(41)
      ..write(obj.elementUsage)
      ..writeByte(42)
      ..write(obj.copyright)
      ..writeByte(43)
      ..write(obj.elementCopyright)
      ..writeByte(44)
      ..write(obj.approvalDate)
      ..writeByte(45)
      ..write(obj.elementApprovalDate)
      ..writeByte(46)
      ..write(obj.lastReviewDate)
      ..writeByte(47)
      ..write(obj.elementLastReviewDate)
      ..writeByte(48)
      ..write(obj.effectivePeriod)
      ..writeByte(49)
      ..write(obj.topic)
      ..writeByte(50)
      ..write(obj.author)
      ..writeByte(51)
      ..write(obj.editor)
      ..writeByte(52)
      ..write(obj.reviewer)
      ..writeByte(53)
      ..write(obj.endorser)
      ..writeByte(54)
      ..write(obj.relatedArtifact)
      ..writeByte(55)
      ..write(obj.library)
      ..writeByte(56)
      ..write(obj.goal)
      ..writeByte(57)
      ..write(obj.action);
  }
}

class PlanDefinition_GoalAdapter extends TypeAdapter<PlanDefinition_Goal> {
  @override
  PlanDefinition_Goal read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlanDefinition_Goal(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      category: fields[3] as CodeableConcept,
      description: fields[4] as CodeableConcept,
      priority: fields[5] as CodeableConcept,
      start: fields[6] as CodeableConcept,
      addresses: (fields[7] as List)?.cast<CodeableConcept>(),
      documentation: (fields[8] as List)?.cast<RelatedArtifact>(),
      target: (fields[9] as List)?.cast<PlanDefinition_Target>(),
    );
  }

  @override
  void write(BinaryWriter writer, PlanDefinition_Goal obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.priority)
      ..writeByte(6)
      ..write(obj.start)
      ..writeByte(7)
      ..write(obj.addresses)
      ..writeByte(8)
      ..write(obj.documentation)
      ..writeByte(9)
      ..write(obj.target);
  }
}

class PlanDefinition_TargetAdapter extends TypeAdapter<PlanDefinition_Target> {
  @override
  PlanDefinition_Target read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlanDefinition_Target(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      measure: fields[3] as CodeableConcept,
      detailQuantity: fields[4] as Quantity,
      detailRange: fields[5] as Range,
      detailCodeableConcept: fields[6] as CodeableConcept,
      due: fields[7] as Duration,
    );
  }

  @override
  void write(BinaryWriter writer, PlanDefinition_Target obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.measure)
      ..writeByte(4)
      ..write(obj.detailQuantity)
      ..writeByte(5)
      ..write(obj.detailRange)
      ..writeByte(6)
      ..write(obj.detailCodeableConcept)
      ..writeByte(7)
      ..write(obj.due);
  }
}

class PlanDefinition_ActionAdapter extends TypeAdapter<PlanDefinition_Action> {
  @override
  PlanDefinition_Action read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlanDefinition_Action(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      prefix: fields[3] as String,
      elementPrefix: fields[4] as Element,
      title: fields[5] as String,
      elementTitle: fields[6] as Element,
      description: fields[7] as String,
      elementDescription: fields[8] as Element,
      textEquivalent: fields[9] as String,
      elementTextEquivalent: fields[10] as Element,
      priority: fields[11] as String,
      elementPriority: fields[12] as Element,
      code: (fields[13] as List)?.cast<CodeableConcept>(),
      reason: (fields[14] as List)?.cast<CodeableConcept>(),
      documentation: (fields[15] as List)?.cast<RelatedArtifact>(),
      goalId: (fields[16] as List)?.cast<String>(),
      elementGoalId: (fields[17] as List)?.cast<Element>(),
      subjectCodeableConcept: fields[18] as CodeableConcept,
      subjectReference: fields[19] as Reference,
      trigger: (fields[20] as List)?.cast<TriggerDefinition>(),
      condition: (fields[21] as List)?.cast<PlanDefinition_Condition>(),
      input: (fields[22] as List)?.cast<DataRequirement>(),
      output: (fields[23] as List)?.cast<DataRequirement>(),
      relatedAction: (fields[24] as List)?.cast<PlanDefinition_RelatedAction>(),
      timingDateTime: fields[25] as String,
      elementTimingDateTime: fields[26] as Element,
      timingAge: fields[27] as Age,
      timingPeriod: fields[28] as Period,
      timingDuration: fields[29] as Duration,
      timingRange: fields[30] as Range,
      timingTiming: fields[31] as Timing,
      participant: (fields[32] as List)?.cast<PlanDefinition_Participant>(),
      type: fields[33] as CodeableConcept,
      groupingBehavior: fields[34] as String,
      elementGroupingBehavior: fields[35] as Element,
      selectionBehavior: fields[36] as String,
      elementSelectionBehavior: fields[37] as Element,
      requiredBehavior: fields[38] as String,
      elementRequiredBehavior: fields[39] as Element,
      precheckBehavior: fields[40] as String,
      elementPrecheckBehavior: fields[41] as Element,
      cardinalityBehavior: fields[42] as String,
      elementCardinalityBehavior: fields[43] as Element,
      definitionCanonical: fields[44] as String,
      elementDefinitionCanonical: fields[45] as Element,
      definitionUri: fields[46] as String,
      elementDefinitionUri: fields[47] as Element,
      transform: fields[48] as String,
      dynamicValue: (fields[49] as List)?.cast<PlanDefinition_DynamicValue>(),
      action: (fields[50] as List)?.cast<PlanDefinition_Action>(),
    );
  }

  @override
  void write(BinaryWriter writer, PlanDefinition_Action obj) {
    writer
      ..writeByte(51)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.prefix)
      ..writeByte(4)
      ..write(obj.elementPrefix)
      ..writeByte(5)
      ..write(obj.title)
      ..writeByte(6)
      ..write(obj.elementTitle)
      ..writeByte(7)
      ..write(obj.description)
      ..writeByte(8)
      ..write(obj.elementDescription)
      ..writeByte(9)
      ..write(obj.textEquivalent)
      ..writeByte(10)
      ..write(obj.elementTextEquivalent)
      ..writeByte(11)
      ..write(obj.priority)
      ..writeByte(12)
      ..write(obj.elementPriority)
      ..writeByte(13)
      ..write(obj.code)
      ..writeByte(14)
      ..write(obj.reason)
      ..writeByte(15)
      ..write(obj.documentation)
      ..writeByte(16)
      ..write(obj.goalId)
      ..writeByte(17)
      ..write(obj.elementGoalId)
      ..writeByte(18)
      ..write(obj.subjectCodeableConcept)
      ..writeByte(19)
      ..write(obj.subjectReference)
      ..writeByte(20)
      ..write(obj.trigger)
      ..writeByte(21)
      ..write(obj.condition)
      ..writeByte(22)
      ..write(obj.input)
      ..writeByte(23)
      ..write(obj.output)
      ..writeByte(24)
      ..write(obj.relatedAction)
      ..writeByte(25)
      ..write(obj.timingDateTime)
      ..writeByte(26)
      ..write(obj.elementTimingDateTime)
      ..writeByte(27)
      ..write(obj.timingAge)
      ..writeByte(28)
      ..write(obj.timingPeriod)
      ..writeByte(29)
      ..write(obj.timingDuration)
      ..writeByte(30)
      ..write(obj.timingRange)
      ..writeByte(31)
      ..write(obj.timingTiming)
      ..writeByte(32)
      ..write(obj.participant)
      ..writeByte(33)
      ..write(obj.type)
      ..writeByte(34)
      ..write(obj.groupingBehavior)
      ..writeByte(35)
      ..write(obj.elementGroupingBehavior)
      ..writeByte(36)
      ..write(obj.selectionBehavior)
      ..writeByte(37)
      ..write(obj.elementSelectionBehavior)
      ..writeByte(38)
      ..write(obj.requiredBehavior)
      ..writeByte(39)
      ..write(obj.elementRequiredBehavior)
      ..writeByte(40)
      ..write(obj.precheckBehavior)
      ..writeByte(41)
      ..write(obj.elementPrecheckBehavior)
      ..writeByte(42)
      ..write(obj.cardinalityBehavior)
      ..writeByte(43)
      ..write(obj.elementCardinalityBehavior)
      ..writeByte(44)
      ..write(obj.definitionCanonical)
      ..writeByte(45)
      ..write(obj.elementDefinitionCanonical)
      ..writeByte(46)
      ..write(obj.definitionUri)
      ..writeByte(47)
      ..write(obj.elementDefinitionUri)
      ..writeByte(48)
      ..write(obj.transform)
      ..writeByte(49)
      ..write(obj.dynamicValue)
      ..writeByte(50)
      ..write(obj.action);
  }
}

class PlanDefinition_ConditionAdapter
    extends TypeAdapter<PlanDefinition_Condition> {
  @override
  PlanDefinition_Condition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlanDefinition_Condition(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      kind: fields[3] as String,
      elementKind: fields[4] as Element,
      expression: fields[5] as Expression,
    );
  }

  @override
  void write(BinaryWriter writer, PlanDefinition_Condition obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.kind)
      ..writeByte(4)
      ..write(obj.elementKind)
      ..writeByte(5)
      ..write(obj.expression);
  }
}

class PlanDefinition_RelatedActionAdapter
    extends TypeAdapter<PlanDefinition_RelatedAction> {
  @override
  PlanDefinition_RelatedAction read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlanDefinition_RelatedAction(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      actionId: fields[3] as String,
      elementActionId: fields[4] as Element,
      relationship: fields[5] as String,
      elementRelationship: fields[6] as Element,
      offsetDuration: fields[7] as Duration,
      offsetRange: fields[8] as Range,
    );
  }

  @override
  void write(BinaryWriter writer, PlanDefinition_RelatedAction obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.actionId)
      ..writeByte(4)
      ..write(obj.elementActionId)
      ..writeByte(5)
      ..write(obj.relationship)
      ..writeByte(6)
      ..write(obj.elementRelationship)
      ..writeByte(7)
      ..write(obj.offsetDuration)
      ..writeByte(8)
      ..write(obj.offsetRange);
  }
}

class PlanDefinition_ParticipantAdapter
    extends TypeAdapter<PlanDefinition_Participant> {
  @override
  PlanDefinition_Participant read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlanDefinition_Participant(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      role: fields[5] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, PlanDefinition_Participant obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.elementType)
      ..writeByte(5)
      ..write(obj.role);
  }
}

class PlanDefinition_DynamicValueAdapter
    extends TypeAdapter<PlanDefinition_DynamicValue> {
  @override
  PlanDefinition_DynamicValue read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlanDefinition_DynamicValue(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      path: fields[3] as String,
      elementPath: fields[4] as Element,
      expression: fields[5] as Expression,
    );
  }

  @override
  void write(BinaryWriter writer, PlanDefinition_DynamicValue obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.path)
      ..writeByte(4)
      ..write(obj.elementPath)
      ..writeByte(5)
      ..write(obj.expression);
  }
}
