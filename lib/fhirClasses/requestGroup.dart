import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class RequestGroup {
  static Future<RequestGroup> newInstance({
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
    List<Identifier> identifier,
    List<String> instantiatesCanonical,
    List<Element> elementInstantiatesCanonical,
    List<String> instantiatesUri,
    List<Element> elementInstantiatesUri,
    List<Reference> basedOn,
    List<Reference> replaces,
    Identifier groupIdentifier,
    String status,
    Element elementStatus,
    String intent,
    Element elementIntent,
    String priority,
    Element elementPriority,
    CodeableConcept code,
    Reference subject,
    Reference encounter,
    DateTime authoredOn,
    Element elementAuthoredOn,
    Reference author,
    List<CodeableConcept> reasonCode,
    List<Reference> reasonReference,
    List<Annotation> note,
    List<RequestGroup_Action> action,
  }) async {
    var fhirDb = new DatabaseHelper();
    RequestGroup newRequestGroup = new RequestGroup(
      resourceType: 'RequestGroup',
      id: id ?? await fhirDb.newResourceId('RequestGroup'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      instantiatesCanonical: instantiatesCanonical,
      elementInstantiatesCanonical: elementInstantiatesCanonical,
      instantiatesUri: instantiatesUri,
      elementInstantiatesUri: elementInstantiatesUri,
      basedOn: basedOn,
      replaces: replaces,
      groupIdentifier: groupIdentifier,
      status: status,
      elementStatus: elementStatus,
      intent: intent,
      elementIntent: elementIntent,
      priority: priority,
      elementPriority: elementPriority,
      code: code,
      subject: subject,
      encounter: encounter,
      authoredOn: authoredOn,
      elementAuthoredOn: elementAuthoredOn,
      author: author,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      note: note,
      action: action,
    );
    newRequestGroup.meta.createdAt = DateTime.now();
    newRequestGroup.meta.lastUpdated = newRequestGroup.meta.createdAt;
    int saved = await fhirDb.saveResource(newRequestGroup);
    return newRequestGroup;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'RequestGroup';
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
  List<Identifier> identifier;
  List<String> instantiatesCanonical;
  List<Element> elementInstantiatesCanonical;
  List<String> instantiatesUri;
  List<Element> elementInstantiatesUri;
  List<Reference> basedOn;
  List<Reference> replaces;
  Identifier groupIdentifier;
  String status;
  Element elementStatus;
  String intent;
  Element elementIntent;
  String priority;
  Element elementPriority;
  CodeableConcept code;
  Reference subject;
  Reference encounter;
  DateTime authoredOn;
  Element elementAuthoredOn;
  Reference author;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Annotation> note;
  List<RequestGroup_Action> action;

  RequestGroup({
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
    this.identifier,
    this.instantiatesCanonical,
    this.elementInstantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.basedOn,
    this.replaces,
    this.groupIdentifier,
    this.status,
    this.elementStatus,
    this.intent,
    this.elementIntent,
    this.priority,
    this.elementPriority,
    this.code,
    this.subject,
    this.encounter,
    this.authoredOn,
    this.elementAuthoredOn,
    this.author,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.action,
  });

  factory RequestGroup.fromJson(Map<String, dynamic> json) =>
      _$RequestGroupFromJson(json);
  Map<String, dynamic> toJson() => _$RequestGroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestGroup_Action {
  static Future<RequestGroup_Action> newInstance({
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
    List<RelatedArtifact> documentation,
    List<RequestGroup_Condition> condition,
    List<RequestGroup_RelatedAction> relatedAction,
    String timingDateTime,
    Element elementTimingDateTime,
    Age timingAge,
    Period timingPeriod,
    Duration timingDuration,
    Range timingRange,
    Timing timingTiming,
    List<Reference> participant,
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
    Reference resource,
    List<RequestGroup_Action> action,
  }) async {
    var fhirDb = new DatabaseHelper();
    RequestGroup_Action newRequestGroup_Action = new RequestGroup_Action(
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
      documentation: documentation,
      condition: condition,
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
      resource: resource,
      action: action,
    );
    return newRequestGroup_Action;
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
  List<RelatedArtifact> documentation;
  List<RequestGroup_Condition> condition;
  List<RequestGroup_RelatedAction> relatedAction;
  String timingDateTime;
  Element elementTimingDateTime;
  Age timingAge;
  Period timingPeriod;
  Duration timingDuration;
  Range timingRange;
  Timing timingTiming;
  List<Reference> participant;
  CodeableConcept type;
  String groupingBehavior;
  Element elementGroupingBehavior;
  String selectionBehavior;
  Element elementSelectionBehavior;
  String requiredBehavior;
  Element elementRequiredBehavior;
  String precheckBehavior;
  Element elementPrecheckBehavior;
  String cardinalityBehavior;
  Element elementCardinalityBehavior;
  Reference resource;
  List<RequestGroup_Action> action;

  RequestGroup_Action({
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
    this.documentation,
    this.condition,
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
    this.resource,
    this.action,
  });

  factory RequestGroup_Action.fromJson(Map<String, dynamic> json) =>
      _$RequestGroup_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$RequestGroup_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestGroup_Condition {
  static Future<RequestGroup_Condition> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String kind,
    Element elementKind,
    Expression expression,
  }) async {
    var fhirDb = new DatabaseHelper();
    RequestGroup_Condition newRequestGroup_Condition =
        new RequestGroup_Condition(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      kind: kind,
      elementKind: elementKind,
      expression: expression,
    );
    return newRequestGroup_Condition;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String kind;
  Element elementKind;
  Expression expression;

  RequestGroup_Condition({
    this.id,
    this.extension,
    this.modifierExtension,
    this.kind,
    this.elementKind,
    this.expression,
  });

  factory RequestGroup_Condition.fromJson(Map<String, dynamic> json) =>
      _$RequestGroup_ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$RequestGroup_ConditionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestGroup_RelatedAction {
  static Future<RequestGroup_RelatedAction> newInstance({
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
    RequestGroup_RelatedAction newRequestGroup_RelatedAction =
        new RequestGroup_RelatedAction(
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
    return newRequestGroup_RelatedAction;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String actionId;
  Element elementActionId;
  String relationship;
  Element elementRelationship;
  Duration offsetDuration;
  Range offsetRange;

  RequestGroup_RelatedAction({
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

  factory RequestGroup_RelatedAction.fromJson(Map<String, dynamic> json) =>
      _$RequestGroup_RelatedActionFromJson(json);
  Map<String, dynamic> toJson() => _$RequestGroup_RelatedActionToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestGroup _$RequestGroupFromJson(Map<String, dynamic> json) {
  return RequestGroup(
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    elementInstantiatesCanonical: (json['elementInstantiatesCanonical'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instantiatesUri:
        (json['instantiatesUri'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiatesUri: (json['elementInstantiatesUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    replaces: (json['replaces'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    groupIdentifier: json['groupIdentifier'] == null
        ? null
        : Identifier.fromJson(json['groupIdentifier'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    intent: json['intent'] as String,
    elementIntent: json['elementIntent'] == null
        ? null
        : Element.fromJson(json['elementIntent'] as Map<String, dynamic>),
    priority: json['priority'] as String,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    authoredOn: json['authoredOn'] == null
        ? null
        : DateTime.parse(json['authoredOn'] as String),
    elementAuthoredOn: json['elementAuthoredOn'] == null
        ? null
        : Element.fromJson(json['elementAuthoredOn'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : RequestGroup_Action.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RequestGroupToJson(RequestGroup instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'instantiatesCanonical': instance.instantiatesCanonical,
      'elementInstantiatesCanonical': instance.elementInstantiatesCanonical
          ?.map((e) => e?.toJson())
          ?.toList(),
      'instantiatesUri': instance.instantiatesUri,
      'elementInstantiatesUri':
          instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'replaces': instance.replaces?.map((e) => e?.toJson())?.toList(),
      'groupIdentifier': instance.groupIdentifier?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'intent': instance.intent,
      'elementIntent': instance.elementIntent?.toJson(),
      'priority': instance.priority,
      'elementPriority': instance.elementPriority?.toJson(),
      'code': instance.code?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'authoredOn': instance.authoredOn?.toIso8601String(),
      'elementAuthoredOn': instance.elementAuthoredOn?.toJson(),
      'author': instance.author?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
    };

RequestGroup_Action _$RequestGroup_ActionFromJson(Map<String, dynamic> json) {
  return RequestGroup_Action(
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
    documentation: (json['documentation'] as List)
        ?.map((e) => e == null
            ? null
            : RelatedArtifact.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: (json['condition'] as List)
        ?.map((e) => e == null
            ? null
            : RequestGroup_Condition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relatedAction: (json['relatedAction'] as List)
        ?.map((e) => e == null
            ? null
            : RequestGroup_RelatedAction.fromJson(e as Map<String, dynamic>))
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
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
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
    resource: json['resource'] == null
        ? null
        : Reference.fromJson(json['resource'] as Map<String, dynamic>),
    action: (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : RequestGroup_Action.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RequestGroup_ActionToJson(
        RequestGroup_Action instance) =>
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
      'documentation':
          instance.documentation?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition?.map((e) => e?.toJson())?.toList(),
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
      'resource': instance.resource?.toJson(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
    };

RequestGroup_Condition _$RequestGroup_ConditionFromJson(
    Map<String, dynamic> json) {
  return RequestGroup_Condition(
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

Map<String, dynamic> _$RequestGroup_ConditionToJson(
        RequestGroup_Condition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'kind': instance.kind,
      'elementKind': instance.elementKind?.toJson(),
      'expression': instance.expression?.toJson(),
    };

RequestGroup_RelatedAction _$RequestGroup_RelatedActionFromJson(
    Map<String, dynamic> json) {
  return RequestGroup_RelatedAction(
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

Map<String, dynamic> _$RequestGroup_RelatedActionToJson(
        RequestGroup_RelatedAction instance) =>
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
