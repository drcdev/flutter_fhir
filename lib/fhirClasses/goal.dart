import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 111)
class Goal {

  //  This is a Goal resource
  @HiveField(0)
  final String resourceType= 'Goal';

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

  //  Business identifiers assigned to this goal by the performer or other
  // systems which remain constant as the resource is updated and propagates
  // from server to server.
  @HiveField(11)
  List<Identifier> identifier;

  //  The state of the goal throughout its lifecycle.
  @HiveField(12)
  String lifecycleStatus; // <code> enum: proposed/planned/accepted/active/on-hold/completed/cancelled/entered-in-error/rejected;

  //  Extensions for lifecycleStatus
  @HiveField(13)
  Element elementLifecycleStatus;

  //  Describes the progression, or lack thereof, towards the goal against
  // the target.
  @HiveField(14)
  CodeableConcept achievementStatus;

  //  Indicates a category the goal falls within.
  @HiveField(15)
  List<CodeableConcept> category;

  //  Identifies the mutually agreed level of importance associated with
  // reaching/sustaining the goal.
  @HiveField(16)
  CodeableConcept priority;

  //  Human-readable and/or coded description of a specific desired
  // objective of care, such as "control blood pressure" or "negotiate an
  // obstacle course" or "dance with child at wedding".
  @HiveField(17)
  CodeableConcept description;

  //  Identifies the patient, group or organization for whom the goal is
  // being established.
  @HiveField(18)
  Reference subject;

  //  The date or event after which the goal should begin being pursued.
  @HiveField(19)
  String startDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for startDate
  @HiveField(20)
  Element elementStartDate;

  //  The date or event after which the goal should begin being pursued.
  @HiveField(21)
  CodeableConcept startCodeableConcept;

  //  Indicates what should be done by when.
  @HiveField(22)
  List<Goal_Target> target;

  //  Identifies when the current status.  I.e. When initially created, when
  // achieved, when cancelled, etc.
  @HiveField(23)
  String statusDate;

  //  Extensions for statusDate
  @HiveField(24)
  Element elementStatusDate;

  //  Captures the reason for the current status.
  @HiveField(25)
  String statusReason;

  //  Extensions for statusReason
  @HiveField(26)
  Element elementStatusReason;

  //  Indicates whose goal this is - patient goal, practitioner goal, etc.
  @HiveField(27)
  Reference expressedBy;

  //  The identified conditions and other health record elements that are
  // intended to be addressed by the goal.
  @HiveField(28)
  List<Reference> addresses;

  //  Any comments related to the goal.
  @HiveField(29)
  List<Annotation> note;

  //  Identifies the change (or lack of change) at the point when the status
  // of the goal is assessed.
  @HiveField(30)
  List<CodeableConcept> outcomeCode;

  //  Details of what's changed (or not changed).
  @HiveField(31)
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


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GoalAdapter extends TypeAdapter<Goal> {
  @override
  final typeId = 111;

  @override
  Goal read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Goal(
      fields[17] as CodeableConcept,
      fields[18] as Reference,
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
      lifecycleStatus: fields[12] as String,
      elementLifecycleStatus: fields[13] as Element,
      achievementStatus: fields[14] as CodeableConcept,
      category: (fields[15] as List)?.cast<CodeableConcept>(),
      priority: fields[16] as CodeableConcept,
      startDate: fields[19] as String,
      elementStartDate: fields[20] as Element,
      startCodeableConcept: fields[21] as CodeableConcept,
      target: (fields[22] as List)?.cast<Goal_Target>(),
      statusDate: fields[23] as String,
      elementStatusDate: fields[24] as Element,
      statusReason: fields[25] as String,
      elementStatusReason: fields[26] as Element,
      expressedBy: fields[27] as Reference,
      addresses: (fields[28] as List)?.cast<Reference>(),
      note: (fields[29] as List)?.cast<Annotation>(),
      outcomeCode: (fields[30] as List)?.cast<CodeableConcept>(),
      outcomeReference: (fields[31] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, Goal obj) {
    writer
      ..writeByte(32)
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
      ..write(obj.lifecycleStatus)
      ..writeByte(13)
      ..write(obj.elementLifecycleStatus)
      ..writeByte(14)
      ..write(obj.achievementStatus)
      ..writeByte(15)
      ..write(obj.category)
      ..writeByte(16)
      ..write(obj.priority)
      ..writeByte(17)
      ..write(obj.description)
      ..writeByte(18)
      ..write(obj.subject)
      ..writeByte(19)
      ..write(obj.startDate)
      ..writeByte(20)
      ..write(obj.elementStartDate)
      ..writeByte(21)
      ..write(obj.startCodeableConcept)
      ..writeByte(22)
      ..write(obj.target)
      ..writeByte(23)
      ..write(obj.statusDate)
      ..writeByte(24)
      ..write(obj.elementStatusDate)
      ..writeByte(25)
      ..write(obj.statusReason)
      ..writeByte(26)
      ..write(obj.elementStatusReason)
      ..writeByte(27)
      ..write(obj.expressedBy)
      ..writeByte(28)
      ..write(obj.addresses)
      ..writeByte(29)
      ..write(obj.note)
      ..writeByte(30)
      ..write(obj.outcomeCode)
      ..writeByte(31)
      ..write(obj.outcomeReference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Goal _$GoalFromJson(Map<String, dynamic> json) {
  return Goal(
    json['description'] == null
        ? null
        : CodeableConcept.fromJson(json['description'] as Map<String, dynamic>),
    json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
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
    lifecycleStatus: json['lifecycleStatus'] as String,
    elementLifecycleStatus: json['elementLifecycleStatus'] == null
        ? null
        : Element.fromJson(
            json['elementLifecycleStatus'] as Map<String, dynamic>),
    achievementStatus: json['achievementStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['achievementStatus'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    priority: json['priority'] == null
        ? null
        : CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>),
    startDate: json['startDate'] as String,
    elementStartDate: json['elementStartDate'] == null
        ? null
        : Element.fromJson(json['elementStartDate'] as Map<String, dynamic>),
    startCodeableConcept: json['startCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['startCodeableConcept'] as Map<String, dynamic>),
    target: (json['target'] as List)
        ?.map((e) =>
            e == null ? null : Goal_Target.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    statusDate: json['statusDate'] as String,
    elementStatusDate: json['elementStatusDate'] == null
        ? null
        : Element.fromJson(json['elementStatusDate'] as Map<String, dynamic>),
    statusReason: json['statusReason'] as String,
    elementStatusReason: json['elementStatusReason'] == null
        ? null
        : Element.fromJson(json['elementStatusReason'] as Map<String, dynamic>),
    expressedBy: json['expressedBy'] == null
        ? null
        : Reference.fromJson(json['expressedBy'] as Map<String, dynamic>),
    addresses: (json['addresses'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outcomeCode: (json['outcomeCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outcomeReference: (json['outcomeReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GoalToJson(Goal instance) => <String, dynamic>{
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
      'lifecycleStatus': instance.lifecycleStatus,
      'elementLifecycleStatus': instance.elementLifecycleStatus?.toJson(),
      'achievementStatus': instance.achievementStatus?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'priority': instance.priority?.toJson(),
      'description': instance.description?.toJson(),
      'subject': instance.subject?.toJson(),
      'startDate': instance.startDate,
      'elementStartDate': instance.elementStartDate?.toJson(),
      'startCodeableConcept': instance.startCodeableConcept?.toJson(),
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
      'statusDate': instance.statusDate,
      'elementStatusDate': instance.elementStatusDate?.toJson(),
      'statusReason': instance.statusReason,
      'elementStatusReason': instance.elementStatusReason?.toJson(),
      'expressedBy': instance.expressedBy?.toJson(),
      'addresses': instance.addresses?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'outcomeCode': instance.outcomeCode?.map((e) => e?.toJson())?.toList(),
      'outcomeReference':
          instance.outcomeReference?.map((e) => e?.toJson())?.toList(),
    };

Goal_Target _$Goal_TargetFromJson(Map<String, dynamic> json) {
  return Goal_Target(
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
    detailString: json['detailString'] as String,
    elementDetailString: json['elementDetailString'] == null
        ? null
        : Element.fromJson(json['elementDetailString'] as Map<String, dynamic>),
    detailBoolean: json['detailBoolean'] as bool,
    elementDetailBoolean: json['elementDetailBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementDetailBoolean'] as Map<String, dynamic>),
    detailInteger: json['detailInteger'] as int,
    elementDetailInteger: json['elementDetailInteger'] == null
        ? null
        : Element.fromJson(
            json['elementDetailInteger'] as Map<String, dynamic>),
    detailRatio: json['detailRatio'] == null
        ? null
        : Ratio.fromJson(json['detailRatio'] as Map<String, dynamic>),
    dueDate: json['dueDate'] as String,
    elementDueDate: json['elementDueDate'] == null
        ? null
        : Element.fromJson(json['elementDueDate'] as Map<String, dynamic>),
    dueDuration: json['dueDuration'] == null
        ? null
        : Duration.fromJson(json['dueDuration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Goal_TargetToJson(Goal_Target instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'measure': instance.measure?.toJson(),
      'detailQuantity': instance.detailQuantity?.toJson(),
      'detailRange': instance.detailRange?.toJson(),
      'detailCodeableConcept': instance.detailCodeableConcept?.toJson(),
      'detailString': instance.detailString,
      'elementDetailString': instance.elementDetailString?.toJson(),
      'detailBoolean': instance.detailBoolean,
      'elementDetailBoolean': instance.elementDetailBoolean?.toJson(),
      'detailInteger': instance.detailInteger,
      'elementDetailInteger': instance.elementDetailInteger?.toJson(),
      'detailRatio': instance.detailRatio?.toJson(),
      'dueDate': instance.dueDate,
      'elementDueDate': instance.elementDueDate?.toJson(),
      'dueDuration': instance.dueDuration?.toJson(),
    };
