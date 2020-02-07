import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/duration.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'goal.g.dart';

@JsonSerializable(explicitToJson: true)
class Goal {

  //  This is a Goal resource
  final String resourceType= 'Goal';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Business identifiers assigned to this goal by the performer or other
  // systems which remain constant as the resource is updated and propagates
  // from server to server.
  List<Identifier> identifier;

  //  The state of the goal throughout its lifecycle.
  String lifecycleStatus; // <code> enum: proposed/planned/accepted/active/on-hold/completed/cancelled/entered-in-error/rejected;

  //  Extensions for lifecycleStatus
  Element elementLifecycleStatus;

  //  Describes the progression, or lack thereof, towards the goal against
  // the target.
  CodeableConcept achievementStatus;

  //  Indicates a category the goal falls within.
  List<CodeableConcept> category;

  //  Identifies the mutually agreed level of importance associated with
  // reaching/sustaining the goal.
  CodeableConcept priority;

  //  Human-readable and/or coded description of a specific desired
  // objective of care, such as "control blood pressure" or "negotiate an
  // obstacle course" or "dance with child at wedding".
  CodeableConcept description;

  //  Identifies the patient, group or organization for whom the goal is
  // being established.
  Reference subject;

  //  The date or event after which the goal should begin being pursued.
  String startDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for startDate
  Element elementStartDate;

  //  The date or event after which the goal should begin being pursued.
  CodeableConcept startCodeableConcept;

  //  Indicates what should be done by when.
  List<Goal_Target> target;

  //  Identifies when the current status.  I.e. When initially created, when
  // achieved, when cancelled, etc.
  String statusDate;

  //  Extensions for statusDate
  Element elementStatusDate;

  //  Captures the reason for the current status.
  String statusReason;

  //  Extensions for statusReason
  Element elementStatusReason;

  //  Indicates whose goal this is - patient goal, practitioner goal, etc.
  Reference expressedBy;

  //  The identified conditions and other health record elements that are
  // intended to be addressed by the goal.
  List<Reference> addresses;

  //  Any comments related to the goal.
  List<Annotation> note;

  //  Identifies the change (or lack of change) at the point when the status
  // of the goal is assessed.
  List<CodeableConcept> outcomeCode;

  //  Details of what's changed (or not changed).
  List<Reference> outcomeReference;

Goal(
  this.description,
    this.subject,
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
    this.lifecycleStatus,
    this.elementLifecycleStatus,
    this.achievementStatus,
    this.category,
    this.priority,
    this.startDate,
    this.elementStartDate,
    this.startCodeableConcept,
    this.target,
    this.statusDate,
    this.elementStatusDate,
    this.statusReason,
    this.elementStatusReason,
    this.expressedBy,
    this.addresses,
    this.note,
    this.outcomeCode,
    this.outcomeReference
    });

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);
  Map<String, dynamic> toJson() => _$GoalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Goal_Target {

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

  //  The parameter whose value is being tracked, e.g. body weight, blood
  // pressure, or hemoglobin A1c level.
  CodeableConcept measure;

  //  The target value of the focus to be achieved to signify the
  // fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
  // or both values of the range can be specified. When a low value is
  // missing, it indicates that the goal is achieved at any focus value at
  // or below the high value. Similarly, if the high value is missing, it
  // indicates that the goal is achieved at any focus value at or above the
  // low value.
  Quantity detailQuantity;

  //  The target value of the focus to be achieved to signify the
  // fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
  // or both values of the range can be specified. When a low value is
  // missing, it indicates that the goal is achieved at any focus value at
  // or below the high value. Similarly, if the high value is missing, it
  // indicates that the goal is achieved at any focus value at or above the
  // low value.
  Range detailRange;

  //  The target value of the focus to be achieved to signify the
  // fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
  // or both values of the range can be specified. When a low value is
  // missing, it indicates that the goal is achieved at any focus value at
  // or below the high value. Similarly, if the high value is missing, it
  // indicates that the goal is achieved at any focus value at or above the
  // low value.
  CodeableConcept detailCodeableConcept;

  //  The target value of the focus to be achieved to signify the
  // fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
  // or both values of the range can be specified. When a low value is
  // missing, it indicates that the goal is achieved at any focus value at
  // or below the high value. Similarly, if the high value is missing, it
  // indicates that the goal is achieved at any focus value at or above the
  // low value.
  String detailString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for detailString
  Element elementDetailString;

  //  The target value of the focus to be achieved to signify the
  // fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
  // or both values of the range can be specified. When a low value is
  // missing, it indicates that the goal is achieved at any focus value at
  // or below the high value. Similarly, if the high value is missing, it
  // indicates that the goal is achieved at any focus value at or above the
  // low value.
  bool detailBoolean; //  pattern: ^true|false$

  //  Extensions for detailBoolean
  Element elementDetailBoolean;

  //  The target value of the focus to be achieved to signify the
  // fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
  // or both values of the range can be specified. When a low value is
  // missing, it indicates that the goal is achieved at any focus value at
  // or below the high value. Similarly, if the high value is missing, it
  // indicates that the goal is achieved at any focus value at or above the
  // low value.
  int detailInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for detailInteger
  Element elementDetailInteger;

  //  The target value of the focus to be achieved to signify the
  // fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
  // or both values of the range can be specified. When a low value is
  // missing, it indicates that the goal is achieved at any focus value at
  // or below the high value. Similarly, if the high value is missing, it
  // indicates that the goal is achieved at any focus value at or above the
  // low value.
  Ratio detailRatio;

  //  Indicates either the date or the duration after start by which the
  // goal should be met.
  String dueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for dueDate
  Element elementDueDate;

  //  Indicates either the date or the duration after start by which the
  // goal should be met.
  Duration dueDuration;

Goal_Target(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.measure,
    this.detailQuantity,
    this.detailRange,
    this.detailCodeableConcept,
    this.detailString,
    this.elementDetailString,
    this.detailBoolean,
    this.elementDetailBoolean,
    this.detailInteger,
    this.elementDetailInteger,
    this.detailRatio,
    this.dueDate,
    this.elementDueDate,
    this.dueDuration
    });

  factory Goal_Target.fromJson(Map<String, dynamic> json) => _$Goal_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$Goal_TargetToJson(this);
}

