import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 162)
class PlanDefinition {

  //  This is a PlanDefinition resource
  @HiveField(0)
  final String resourceType= 'PlanDefinition';

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

  //  An absolute URI that is used to identify this plan definition when it
  // is referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this plan definition is (or will be) published. This URL can be the
  // target of a canonical reference. It SHALL remain the same when the plan
  // definition is stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  A formal identifier that is used to identify this plan definition when
  // it is represented in other formats, or referenced in a specification,
  // model, design or an instance.
  @HiveField(13)
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the plan
  // definition when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the plan definition
  // author and is not expected to be globally unique. For example, it might
  // be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  // There is also no expectation that versions can be placed in a
  // lexicographical sequence. To provide a version consistent with the
  // Decision Support Service specification, use the format
  // Major.Minor.Revision (e.g. 1.0.0). For more information on versioning
  // knowledge assets, refer to the Decision Support Service specification.
  // Note that a version is required for non-experimental active artifacts.
  @HiveField(14)
  String version;

  //  Extensions for version
  @HiveField(15)
  Element elementVersion;

  //  A natural language name identifying the plan definition. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  @HiveField(16)
  String name;

  //  Extensions for name
  @HiveField(17)
  Element elementName;

  //  A short, descriptive, user-friendly title for the plan definition.
  @HiveField(18)
  String title;

  //  Extensions for title
  @HiveField(19)
  Element elementTitle;

  //  An explanatory or alternate title for the plan definition giving
  // additional information about its content.
  @HiveField(20)
  String subtitle;

  //  Extensions for subtitle
  @HiveField(21)
  Element elementSubtitle;

  //  A high-level category for the plan definition that distinguishes the
  // kinds of systems that would be interested in the plan definition.
  @HiveField(22)
  CodeableConcept type;

  //  The status of this plan definition. Enables tracking the life-cycle of
  // the content.
  @HiveField(23)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(24)
  Element elementStatus;

  //  A Boolean value to indicate that this plan definition is authored for
  // testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  @HiveField(25)
  bool experimental;

  //  Extensions for experimental
  @HiveField(26)
  Element elementExperimental;

  //  A code or group definition that describes the intended subject of the
  // plan definition.
  @HiveField(27)
  CodeableConcept subjectCodeableConcept;

  //  A code or group definition that describes the intended subject of the
  // plan definition.
  @HiveField(28)
  Reference subjectReference;

  //  The date  (and optionally time) when the plan definition was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the plan definition changes.
  @HiveField(29)
  DateTime date;

  //  Extensions for date
  @HiveField(30)
  Element elementDate;

  //  The name of the organization or individual that published the plan
  // definition.
  @HiveField(31)
  String publisher;

  //  Extensions for publisher
  @HiveField(32)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(33)
  List<ContactDetail> contact;

  //  A free text natural language description of the plan definition from a
  // consumer's perspective.
  @HiveField(34)
  String description;

  //  Extensions for description
  @HiveField(35)
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate plan definition instances.
  @HiveField(36)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the plan definition is intended
  // to be used.
  @HiveField(37)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this plan definition is needed and why it has been
  // designed as it has.
  @HiveField(38)
  String purpose;

  //  Extensions for purpose
  @HiveField(39)
  Element elementPurpose;

  //  A detailed description of how the plan definition is used from a
  // clinical perspective.
  @HiveField(40)
  String usage;

  //  Extensions for usage
  @HiveField(41)
  Element elementUsage;

  //  A copyright statement relating to the plan definition and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the plan definition.
  @HiveField(42)
  String copyright;

  //  Extensions for copyright
  @HiveField(43)
  Element elementCopyright;

  //  The date on which the resource content was approved by the publisher.
  // Approval happens once when the content is officially approved for
  // usage.
  @HiveField(44)
  String approvalDate;

  //  Extensions for approvalDate
  @HiveField(45)
  Element elementApprovalDate;

  //  The date on which the resource content was last reviewed. Review
  // happens periodically after approval but does not change the original
  // approval date.
  @HiveField(46)
  String lastReviewDate;

  //  Extensions for lastReviewDate
  @HiveField(47)
  Element elementLastReviewDate;

  //  The period during which the plan definition content was or is planned
  // to be in active use.
  @HiveField(48)
  Period effectivePeriod;

  //  Descriptive topics related to the content of the plan definition.
  // Topics provide a high-level categorization of the definition that can
  // be useful for filtering and searching.
  @HiveField(49)
  List<CodeableConcept> topic;

  //  An individiual or organization primarily involved in the creation and
  // maintenance of the content.
  @HiveField(50)
  List<ContactDetail> author;

  //  An individual or organization primarily responsible for internal
  // coherence of the content.
  @HiveField(51)
  List<ContactDetail> editor;

  //  An individual or organization primarily responsible for review of some
  // aspect of the content.
  @HiveField(52)
  List<ContactDetail> reviewer;

  //  An individual or organization responsible for officially endorsing the
  // content for use in some setting.
  @HiveField(53)
  List<ContactDetail> endorser;

  //  Related artifacts such as additional documentation, justification, or
  // bibliographic references.
  @HiveField(54)
  List<RelatedArtifact> relatedArtifact;

  //  A reference to a Library resource containing any formal logic used by
  // the plan definition.
  @HiveField(55)
  List<String> library;

  //  Goals that describe what the activities within the plan are intended
  // to achieve. For example, weight loss, restoring an activity of daily
  // living, obtaining herd immunity via immunization, meeting a process
  // improvement objective, etc.
  @HiveField(56)
  List<PlanDefinition_Goal> goal;

  //  An action or group of actions to be taken as part of the plan.
  @HiveField(57)
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Indicates a category the goal falls within.
  CodeableConcept category;

  //  Human-readable and/or coded description of a specific desired
  // objective of care, such as "control blood pressure" or "negotiate an
  // obstacle course" or "dance with child at wedding".
  CodeableConcept description;

  //  Identifies the expected level of importance associated with
  // reaching/sustaining the defined goal.
  CodeableConcept priority;

  //  The event after which the goal should begin being pursued.
  CodeableConcept start;

  //  Identifies problems, conditions, issues, or concerns the goal is
  // intended to address.
  List<CodeableConcept> addresses;

  //  Didactic or other informational resources associated with the goal
  // that provide further supporting information about the goal. Information
  // resources can include inline text commentary and links to web
  // resources.
  List<RelatedArtifact> documentation;

  //  Indicates what should be done and within what timeframe.
  List<PlanDefinition_Target> target;

PlanDefinition_Goal(
  this.description,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.category,
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The parameter whose value is to be tracked, e.g. body weight, blood
  // pressure, or hemoglobin A1c level.
  CodeableConcept measure;

  //  The target value of the measure to be achieved to signify fulfillment
  // of the goal, e.g. 150 pounds or 7.0%. Either the high or low or both
  // values of the range can be specified. When a low value is missing, it
  // indicates that the goal is achieved at any value at or below the high
  // value. Similarly, if the high value is missing, it indicates that the
  // goal is achieved at any value at or above the low value.
  Quantity detailQuantity;

  //  The target value of the measure to be achieved to signify fulfillment
  // of the goal, e.g. 150 pounds or 7.0%. Either the high or low or both
  // values of the range can be specified. When a low value is missing, it
  // indicates that the goal is achieved at any value at or below the high
  // value. Similarly, if the high value is missing, it indicates that the
  // goal is achieved at any value at or above the low value.
  Range detailRange;

  //  The target value of the measure to be achieved to signify fulfillment
  // of the goal, e.g. 150 pounds or 7.0%. Either the high or low or both
  // values of the range can be specified. When a low value is missing, it
  // indicates that the goal is achieved at any value at or below the high
  // value. Similarly, if the high value is missing, it indicates that the
  // goal is achieved at any value at or above the low value.
  CodeableConcept detailCodeableConcept;

  //  Indicates the timeframe after the start of the goal in which the goal
  // should be met.
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  A user-visible prefix for the action.
  String prefix;

  //  Extensions for prefix
  Element elementPrefix;

  //  The title of the action displayed to a user.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  A brief description of the action used to provide a summary to display
  // to the user.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  A text equivalent of the action to be performed. This provides a
  // human-interpretable description of the action when the definition is
  // consumed by a system that might not be capable of interpreting it
  // dynamically.
  String textEquivalent;

  //  Extensions for textEquivalent
  Element elementTextEquivalent;

  //  Indicates how quickly the action should be addressed with respect to
  // other actions.
  String priority;

  //  Extensions for priority
  Element elementPriority;

  //  A code that provides meaning for the action or action group. For
  // example, a section may have a LOINC code for the section of a
  // documentation template.
  List<CodeableConcept> code;

  //  A description of why this action is necessary or appropriate.
  List<CodeableConcept> reason;

  //  Didactic or other informational resources associated with the action
  // that can be provided to the CDS recipient. Information resources can
  // include inline text commentary and links to web resources.
  List<RelatedArtifact> documentation;

  //  Identifies goals that this action supports. The reference must be to a
  // goal element defined within this plan definition.
  List<String> goalId;

  //  Extensions for goalId
  List<Element> elementGoalId;

  //  A code or group definition that describes the intended subject of the
  // action and its children, if any.
  CodeableConcept subjectCodeableConcept;

  //  A code or group definition that describes the intended subject of the
  // action and its children, if any.
  Reference subjectReference;

  //  A description of when the action should be triggered.
  List<TriggerDefinition> trigger;

  //  An expression that describes applicability criteria or start/stop
  // conditions for the action.
  List<PlanDefinition_Condition> condition;

  //  Defines input data requirements for the action.
  List<DataRequirement> input;

  //  Defines the outputs of the action, if any.
  List<DataRequirement> output;

  //  A relationship to another action such as "before" or "30-60 minutes
  // after start of".
  List<PlanDefinition_RelatedAction> relatedAction;

  //  An optional value describing when the action should be performed.
  String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for timingDateTime
  Element elementTimingDateTime;

  //  An optional value describing when the action should be performed.
  Age timingAge;

  //  An optional value describing when the action should be performed.
  Period timingPeriod;

  //  An optional value describing when the action should be performed.
  Duration timingDuration;

  //  An optional value describing when the action should be performed.
  Range timingRange;

  //  An optional value describing when the action should be performed.
  Timing timingTiming;

  //  Indicates who should participate in performing the action described.
  List<PlanDefinition_Participant> participant;

  //  The type of action to perform (create, update, remove).
  CodeableConcept type;

  //  Defines the grouping behavior for the action and its children.
  String groupingBehavior; // <code> enum: visual-group/logical-group/sentence-group;

  //  Extensions for groupingBehavior
  Element elementGroupingBehavior;

  //  Defines the selection behavior for the action and its children.
  String selectionBehavior; // <code> enum: any/all/all-or-none/exactly-one/at-most-one/one-or-more;

  //  Extensions for selectionBehavior
  Element elementSelectionBehavior;

  //  Defines the required behavior for the action.
  String requiredBehavior; // <code> enum: must/could/must-unless-documented;

  //  Extensions for requiredBehavior
  Element elementRequiredBehavior;

  //  Defines whether the action should usually be preselected.
  String precheckBehavior; // <code> enum: yes/no;

  //  Extensions for precheckBehavior
  Element elementPrecheckBehavior;

  //  Defines whether the action can be selected multiple times.
  String cardinalityBehavior; // <code> enum: single/multiple;

  //  Extensions for cardinalityBehavior
  Element elementCardinalityBehavior;

  //  A reference to an ActivityDefinition that describes the action to be
  // taken in detail, or a PlanDefinition that describes a series of actions
  // to be taken.
  String definitionCanonical; //  pattern: ^\S*$

  //  Extensions for definitionCanonical
  Element elementDefinitionCanonical;

  //  A reference to an ActivityDefinition that describes the action to be
  // taken in detail, or a PlanDefinition that describes a series of actions
  // to be taken.
  String definitionUri; //  pattern: ^\S*$

  //  Extensions for definitionUri
  Element elementDefinitionUri;

  //  A reference to a StructureMap resource that defines a transform that
  // can be executed to produce the intent resource using the
  // ActivityDefinition instance as the input.
  String transform;

  //  Customizations that should be applied to the statically defined
  // resource. For example, if the dosage of a medication must be computed
  // based on the patient's weight, a customization would be used to specify
  // an expression that calculated the weight, and the path on the resource
  // that would contain the result.
  List<PlanDefinition_DynamicValue> dynamicValue;

  //  Sub actions that are contained within the action. The behavior of this
  // action determines the functionality of the sub-actions. For example, a
  // selection behavior of at-most-one indicates that of the sub-actions, at
  // most one may be chosen as part of realizing the action definition.
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The kind of condition.
  String kind; // <code> enum: applicability/start/stop;

  //  Extensions for kind
  Element elementKind;

  //  An expression that returns true or false, indicating whether the
  // condition is satisfied.
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The element id of the related action.
  String actionId;

  //  Extensions for actionId
  Element elementActionId;

  //  The relationship of this action to the related action.
  String relationship; // <code> enum: before-start/before/before-end/concurrent-with-start/concurrent/concurrent-with-end/after-start/after/after-end;

  //  Extensions for relationship
  Element elementRelationship;

  //  A duration or range of durations to apply to the relationship. For
  // example, 30-60 minutes before.
  Duration offsetDuration;

  //  A duration or range of durations to apply to the relationship. For
  // example, 30-60 minutes before.
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The type of participant in the action.
  String type; // <code> enum: patient/practitioner/related-person/device;

  //  Extensions for type
  Element elementType;

  //  The role the participant should play in performing the described
  // action.
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The path to the element to be customized. This is the path on the
  // resource that will hold the result of the calculation defined by the
  // expression. The specified path SHALL be a FHIRPath resolveable on the
  // specified target type of the ActivityDefinition, and SHALL consist only
  // of identifiers, constant indexers, and a restricted subset of
  // functions. The path is allowed to contain qualifiers (.) to traverse
  // sub-elements, as well as indexers ([x]) to traverse
  // multiple-cardinality sub-elements (see the [Simple FHIRPath
  // Profile](fhirpath.html#simple) for full details).
  String path;

  //  Extensions for path
  Element elementPath;

  //  An expression specifying the value of the customized element.
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
// TypeAdapterGenerator
// **************************************************************************

class PlanDefinitionAdapter extends TypeAdapter<PlanDefinition> {
  @override
  final typeId = 162;

  @override
  PlanDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlanDefinition(
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
    json['description'] == null
        ? null
        : CodeableConcept.fromJson(json['description'] as Map<String, dynamic>),
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
