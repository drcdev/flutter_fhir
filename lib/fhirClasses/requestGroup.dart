import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

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
@HiveType(typeId: 170)
class RequestGroup {

	static Future<RequestGroup> newInstance({
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
		List<RequestGroup_Action> action}) async {
	 return RequestGroup(
			id: await newEntry('RequestGroup'),
			meta: meta,
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
			action: action);
	}

  @HiveField(0)
  final String resourceType= 'RequestGroup';
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
  List<Identifier> identifier;
  @HiveField(12)
  List<String> instantiatesCanonical;
  @HiveField(13)
  List<Element> elementInstantiatesCanonical;
  @HiveField(14)
  List<String> instantiatesUri;
  @HiveField(15)
  List<Element> elementInstantiatesUri;
  @HiveField(16)
  List<Reference> basedOn;
  @HiveField(17)
  List<Reference> replaces;
  @HiveField(18)
  Identifier groupIdentifier;
  @HiveField(19)
  String status;
  @HiveField(20)
  Element elementStatus;
  @HiveField(21)
  String intent;
  @HiveField(22)
  Element elementIntent;
  @HiveField(23)
  String priority;
  @HiveField(24)
  Element elementPriority;
  @HiveField(25)
  CodeableConcept code;
  @HiveField(26)
  Reference subject;
  @HiveField(27)
  Reference encounter;
  @HiveField(28)
  DateTime authoredOn;
  @HiveField(29)
  Element elementAuthoredOn;
  @HiveField(30)
  Reference author;
  @HiveField(31)
  List<CodeableConcept> reasonCode;
  @HiveField(32)
  List<Reference> reasonReference;
  @HiveField(33)
  List<Annotation> note;
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
		List<RequestGroup_Action> action}) async {
	 return RequestGroup_Action(
			id: await newEntry('RequestGroup_Action'),
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
			action: action);
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
  String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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
class RequestGroup_Condition {

	static Future<RequestGroup_Condition> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String kind,
		Element elementKind,
		Expression expression}) async {
	 return RequestGroup_Condition(
			id: await newEntry('RequestGroup_Condition'),
			extension: extension,
			modifierExtension: modifierExtension,
			kind: kind,
			elementKind: elementKind,
			expression: expression);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String kind;
  Element elementKind;
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
		Range offsetRange}) async {
	 return RequestGroup_RelatedAction(
			id: await newEntry('RequestGroup_RelatedAction'),
			extension: extension,
			modifierExtension: modifierExtension,
			actionId: actionId,
			elementActionId: elementActionId,
			relationship: relationship,
			elementRelationship: elementRelationship,
			offsetDuration: offsetDuration,
			offsetRange: offsetRange);
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
  final typeId = 170;

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
