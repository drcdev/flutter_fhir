import 'package:hive/hive.dart';
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
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 509)
class RequestGroup {

  //  This is a RequestGroup resource
  @HiveField(0)
  final String resourceType= 'RequestGroup';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  Allows a service to provide a unique, business identifier for the
  // request.
  @HiveField(11)
  List<Identifier> identifier;

  //  A canonical URL referencing a FHIR-defined protocol, guideline,
  // orderset or other definition that is adhered to in whole or in part by
  // this request.
  @HiveField(12)
  List<String> instantiatesCanonical;

  //  Extensions for instantiatesCanonical
  @HiveField(13)
  List<Element> elementInstantiatesCanonical;

  //  A URL referencing an externally defined protocol, guideline, orderset
  // or other definition that is adhered to in whole or in part by this
  // request.
  @HiveField(14)
  List<String> instantiatesUri;

  //  Extensions for instantiatesUri
  @HiveField(15)
  List<Element> elementInstantiatesUri;

  //  A plan, proposal or order that is fulfilled in whole or in part by
  // this request.
  @HiveField(16)
  List<Reference> basedOn;

  //  Completed or terminated request(s) whose function is taken by this new
  // request.
  @HiveField(17)
  List<Reference> replaces;

  //  A shared identifier common to all requests that were authorized more
  // or less simultaneously by a single author, representing the identifier
  // of the requisition, prescription or similar form.
  @HiveField(18)
  Identifier groupIdentifier;

  //  The current state of the request. For request groups, the status
  // reflects the status of all the requests in the group.
  @HiveField(19)
  String status;

  //  Extensions for status
  @HiveField(20)
  Element elementStatus;

  //  Indicates the level of authority/intentionality associated with the
  // request and where the request fits into the workflow chain.
  @HiveField(21)
  String intent;

  //  Extensions for intent
  @HiveField(22)
  Element elementIntent;

  //  Indicates how quickly the request should be addressed with respect to
  // other requests.
  @HiveField(23)
  String priority;

  //  Extensions for priority
  @HiveField(24)
  Element elementPriority;

  //  A code that identifies what the overall request group is.
  @HiveField(25)
  CodeableConcept code;

  //  The subject for which the request group was created.
  @HiveField(26)
  Reference subject;

  //  Describes the context of the request group, if any.
  @HiveField(27)
  Reference encounter;

  //  Indicates when the request group was created.
  @HiveField(28)
  DateTime authoredOn;

  //  Extensions for authoredOn
  @HiveField(29)
  Element elementAuthoredOn;

  //  Provides a reference to the author of the request group.
  @HiveField(30)
  Reference author;

  //  Describes the reason for the request group in coded or textual form.
  @HiveField(31)
  List<CodeableConcept> reasonCode;

  //  Indicates another resource whose existence justifies this request
  // group.
  @HiveField(32)
  List<Reference> reasonReference;

  //  Provides a mechanism to communicate additional information about the
  // response.
  @HiveField(33)
  List<Annotation> note;

  //  The actions, if any, produced by the evaluation of the artifact.
  @HiveField(34)
  List<RequestGroup_Action> action;

RequestGroup(
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
    this.action
    });

  factory RequestGroup.fromJson(Map<String, dynamic> json) => _$RequestGroupFromJson(json);
  Map<String, dynamic> toJson() => _$RequestGroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 510)
class RequestGroup_Action {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A user-visible prefix for the action.
  @HiveField(3)
  String prefix;

  //  Extensions for prefix
  @HiveField(4)
  Element elementPrefix;

  //  The title of the action displayed to a user.
  @HiveField(5)
  String title;

  //  Extensions for title
  @HiveField(6)
  Element elementTitle;

  //  A short description of the action used to provide a summary to display
  // to the user.
  @HiveField(7)
  String description;

  //  Extensions for description
  @HiveField(8)
  Element elementDescription;

  //  A text equivalent of the action to be performed. This provides a
  // human-interpretable description of the action when the definition is
  // consumed by a system that might not be capable of interpreting it
  // dynamically.
  @HiveField(9)
  String textEquivalent;

  //  Extensions for textEquivalent
  @HiveField(10)
  Element elementTextEquivalent;

  //  Indicates how quickly the action should be addressed with respect to
  // other actions.
  @HiveField(11)
  String priority;

  //  Extensions for priority
  @HiveField(12)
  Element elementPriority;

  //  A code that provides meaning for the action or action group. For
  // example, a section may have a LOINC code for a section of a
  // documentation template.
  @HiveField(13)
  List<CodeableConcept> code;

  //  Didactic or other informational resources associated with the action
  // that can be provided to the CDS recipient. Information resources can
  // include inline text commentary and links to web resources.
  @HiveField(14)
  List<RelatedArtifact> documentation;

  //  An expression that describes applicability criteria, or start/stop
  // conditions for the action.
  @HiveField(15)
  List<RequestGroup_Condition> condition;

  //  A relationship to another action such as "before" or "30-60 minutes
  // after start of".
  @HiveField(16)
  List<RequestGroup_RelatedAction> relatedAction;

  //  An optional value describing when the action should be performed.
  @HiveField(17)
  String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for timingDateTime
  @HiveField(18)
  Element elementTimingDateTime;

  //  An optional value describing when the action should be performed.
  @HiveField(19)
  Age timingAge;

  //  An optional value describing when the action should be performed.
  @HiveField(20)
  Period timingPeriod;

  //  An optional value describing when the action should be performed.
  @HiveField(21)
  Duration timingDuration;

  //  An optional value describing when the action should be performed.
  @HiveField(22)
  Range timingRange;

  //  An optional value describing when the action should be performed.
  @HiveField(23)
  Timing timingTiming;

  //  The participant that should perform or be responsible for this action.
  @HiveField(24)
  List<Reference> participant;

  //  The type of action to perform (create, update, remove).
  @HiveField(25)
  CodeableConcept type;

  //  Defines the grouping behavior for the action and its children.
  @HiveField(26)
  String groupingBehavior;

  //  Extensions for groupingBehavior
  @HiveField(27)
  Element elementGroupingBehavior;

  //  Defines the selection behavior for the action and its children.
  @HiveField(28)
  String selectionBehavior;

  //  Extensions for selectionBehavior
  @HiveField(29)
  Element elementSelectionBehavior;

  //  Defines expectations around whether an action is required.
  @HiveField(30)
  String requiredBehavior;

  //  Extensions for requiredBehavior
  @HiveField(31)
  Element elementRequiredBehavior;

  //  Defines whether the action should usually be preselected.
  @HiveField(32)
  String precheckBehavior;

  //  Extensions for precheckBehavior
  @HiveField(33)
  Element elementPrecheckBehavior;

  //  Defines whether the action can be selected multiple times.
  @HiveField(34)
  String cardinalityBehavior;

  //  Extensions for cardinalityBehavior
  @HiveField(35)
  Element elementCardinalityBehavior;

  //  The resource that is the target of the action (e.g.
  // CommunicationRequest).
  @HiveField(36)
  Reference resource;

  //  Sub actions.
  @HiveField(37)
  List<RequestGroup_Action> action;

RequestGroup_Action(
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
    this.action
    });

  factory RequestGroup_Action.fromJson(Map<String, dynamic> json) => _$RequestGroup_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$RequestGroup_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 511)
class RequestGroup_Condition {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The kind of condition.
  @HiveField(3)
  String kind;

  //  Extensions for kind
  @HiveField(4)
  Element elementKind;

  //  An expression that returns true or false, indicating whether or not
  // the condition is satisfied.
  @HiveField(5)
  Expression expression;

RequestGroup_Condition(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.kind,
    this.elementKind,
    this.expression
    });

  factory RequestGroup_Condition.fromJson(Map<String, dynamic> json) => _$RequestGroup_ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$RequestGroup_ConditionToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 512)
class RequestGroup_RelatedAction {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The element id of the action this is related to.
  @HiveField(3)
  String actionId;

  //  Extensions for actionId
  @HiveField(4)
  Element elementActionId;

  //  The relationship of this action to the related action.
  @HiveField(5)
  String relationship;

  //  Extensions for relationship
  @HiveField(6)
  Element elementRelationship;

  //  A duration or range of durations to apply to the relationship. For
  // example, 30-60 minutes before.
  @HiveField(7)
  Duration offsetDuration;

  //  A duration or range of durations to apply to the relationship. For
  // example, 30-60 minutes before.
  @HiveField(8)
  Range offsetRange;

RequestGroup_RelatedAction(
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

  factory RequestGroup_RelatedAction.fromJson(Map<String, dynamic> json) => _$RequestGroup_RelatedActionFromJson(json);
  Map<String, dynamic> toJson() => _$RequestGroup_RelatedActionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RequestGroupAdapter extends TypeAdapter<RequestGroup> {
  @override
  final typeId = 509;

  @override
  RequestGroup read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RequestGroup(
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
      instantiatesCanonical: (fields[12] as List)?.cast<String>(),
      elementInstantiatesCanonical: (fields[13] as List)?.cast<Element>(),
      instantiatesUri: (fields[14] as List)?.cast<String>(),
      elementInstantiatesUri: (fields[15] as List)?.cast<Element>(),
      basedOn: (fields[16] as List)?.cast<Reference>(),
      replaces: (fields[17] as List)?.cast<Reference>(),
      groupIdentifier: fields[18] as Identifier,
      status: fields[19] as String,
      elementStatus: fields[20] as Element,
      intent: fields[21] as String,
      elementIntent: fields[22] as Element,
      priority: fields[23] as String,
      elementPriority: fields[24] as Element,
      code: fields[25] as CodeableConcept,
      subject: fields[26] as Reference,
      encounter: fields[27] as Reference,
      authoredOn: fields[28] as DateTime,
      elementAuthoredOn: fields[29] as Element,
      author: fields[30] as Reference,
      reasonCode: (fields[31] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[32] as List)?.cast<Reference>(),
      note: (fields[33] as List)?.cast<Annotation>(),
      action: (fields[34] as List)?.cast<RequestGroup_Action>(),
    );
  }

  @override
  void write(BinaryWriter writer, RequestGroup obj) {
    writer
      ..writeByte(35)
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
      ..write(obj.instantiatesCanonical)
      ..writeByte(13)
      ..write(obj.elementInstantiatesCanonical)
      ..writeByte(14)
      ..write(obj.instantiatesUri)
      ..writeByte(15)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(16)
      ..write(obj.basedOn)
      ..writeByte(17)
      ..write(obj.replaces)
      ..writeByte(18)
      ..write(obj.groupIdentifier)
      ..writeByte(19)
      ..write(obj.status)
      ..writeByte(20)
      ..write(obj.elementStatus)
      ..writeByte(21)
      ..write(obj.intent)
      ..writeByte(22)
      ..write(obj.elementIntent)
      ..writeByte(23)
      ..write(obj.priority)
      ..writeByte(24)
      ..write(obj.elementPriority)
      ..writeByte(25)
      ..write(obj.code)
      ..writeByte(26)
      ..write(obj.subject)
      ..writeByte(27)
      ..write(obj.encounter)
      ..writeByte(28)
      ..write(obj.authoredOn)
      ..writeByte(29)
      ..write(obj.elementAuthoredOn)
      ..writeByte(30)
      ..write(obj.author)
      ..writeByte(31)
      ..write(obj.reasonCode)
      ..writeByte(32)
      ..write(obj.reasonReference)
      ..writeByte(33)
      ..write(obj.note)
      ..writeByte(34)
      ..write(obj.action);
  }
}

class RequestGroup_ActionAdapter extends TypeAdapter<RequestGroup_Action> {
  @override
  final typeId = 510;

  @override
  RequestGroup_Action read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RequestGroup_Action(
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
      documentation: (fields[14] as List)?.cast<RelatedArtifact>(),
      condition: (fields[15] as List)?.cast<RequestGroup_Condition>(),
      relatedAction: (fields[16] as List)?.cast<RequestGroup_RelatedAction>(),
      timingDateTime: fields[17] as String,
      elementTimingDateTime: fields[18] as Element,
      timingAge: fields[19] as Age,
      timingPeriod: fields[20] as Period,
      timingDuration: fields[21] as Duration,
      timingRange: fields[22] as Range,
      timingTiming: fields[23] as Timing,
      participant: (fields[24] as List)?.cast<Reference>(),
      type: fields[25] as CodeableConcept,
      groupingBehavior: fields[26] as String,
      elementGroupingBehavior: fields[27] as Element,
      selectionBehavior: fields[28] as String,
      elementSelectionBehavior: fields[29] as Element,
      requiredBehavior: fields[30] as String,
      elementRequiredBehavior: fields[31] as Element,
      precheckBehavior: fields[32] as String,
      elementPrecheckBehavior: fields[33] as Element,
      cardinalityBehavior: fields[34] as String,
      elementCardinalityBehavior: fields[35] as Element,
      resource: fields[36] as Reference,
      action: (fields[37] as List)?.cast<RequestGroup_Action>(),
    );
  }

  @override
  void write(BinaryWriter writer, RequestGroup_Action obj) {
    writer
      ..writeByte(38)
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
      ..write(obj.documentation)
      ..writeByte(15)
      ..write(obj.condition)
      ..writeByte(16)
      ..write(obj.relatedAction)
      ..writeByte(17)
      ..write(obj.timingDateTime)
      ..writeByte(18)
      ..write(obj.elementTimingDateTime)
      ..writeByte(19)
      ..write(obj.timingAge)
      ..writeByte(20)
      ..write(obj.timingPeriod)
      ..writeByte(21)
      ..write(obj.timingDuration)
      ..writeByte(22)
      ..write(obj.timingRange)
      ..writeByte(23)
      ..write(obj.timingTiming)
      ..writeByte(24)
      ..write(obj.participant)
      ..writeByte(25)
      ..write(obj.type)
      ..writeByte(26)
      ..write(obj.groupingBehavior)
      ..writeByte(27)
      ..write(obj.elementGroupingBehavior)
      ..writeByte(28)
      ..write(obj.selectionBehavior)
      ..writeByte(29)
      ..write(obj.elementSelectionBehavior)
      ..writeByte(30)
      ..write(obj.requiredBehavior)
      ..writeByte(31)
      ..write(obj.elementRequiredBehavior)
      ..writeByte(32)
      ..write(obj.precheckBehavior)
      ..writeByte(33)
      ..write(obj.elementPrecheckBehavior)
      ..writeByte(34)
      ..write(obj.cardinalityBehavior)
      ..writeByte(35)
      ..write(obj.elementCardinalityBehavior)
      ..writeByte(36)
      ..write(obj.resource)
      ..writeByte(37)
      ..write(obj.action);
  }
}

class RequestGroup_ConditionAdapter
    extends TypeAdapter<RequestGroup_Condition> {
  @override
  final typeId = 511;

  @override
  RequestGroup_Condition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RequestGroup_Condition(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      kind: fields[3] as String,
      elementKind: fields[4] as Element,
      expression: fields[5] as Expression,
    );
  }

  @override
  void write(BinaryWriter writer, RequestGroup_Condition obj) {
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

class RequestGroup_RelatedActionAdapter
    extends TypeAdapter<RequestGroup_RelatedAction> {
  @override
  final typeId = 512;

  @override
  RequestGroup_RelatedAction read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RequestGroup_RelatedAction(
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
  void write(BinaryWriter writer, RequestGroup_RelatedAction obj) {
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestGroup _$RequestGroupFromJson(Map<String, dynamic> json) {
  return RequestGroup(
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
