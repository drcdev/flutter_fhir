import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Goal {
  static Future<Goal> newInstance({
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
    String lifecycleStatus,
    Element elementLifecycleStatus,
    CodeableConcept achievementStatus,
    List<CodeableConcept> category,
    CodeableConcept priority,
    CodeableConcept description,
    Reference subject,
    String startDate,
    Element elementStartDate,
    CodeableConcept startCodeableConcept,
    List<Goal_Target> target,
    String statusDate,
    Element elementStatusDate,
    String statusReason,
    Element elementStatusReason,
    Reference expressedBy,
    List<Reference> addresses,
    List<Annotation> note,
    List<CodeableConcept> outcomeCode,
    List<Reference> outcomeReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Goal newGoal = new Goal(
      resourceType: 'Goal',
      id: id ?? await fhirDb.newResourceId('Goal'),
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
      lifecycleStatus: lifecycleStatus,
      elementLifecycleStatus: elementLifecycleStatus,
      achievementStatus: achievementStatus,
      category: category,
      priority: priority,
      description: description,
      subject: subject,
      startDate: startDate,
      elementStartDate: elementStartDate,
      startCodeableConcept: startCodeableConcept,
      target: target,
      statusDate: statusDate,
      elementStatusDate: elementStatusDate,
      statusReason: statusReason,
      elementStatusReason: elementStatusReason,
      expressedBy: expressedBy,
      addresses: addresses,
      note: note,
      outcomeCode: outcomeCode,
      outcomeReference: outcomeReference,
    );
    newGoal.meta.createdAt = DateTime.now();
    newGoal.meta.lastUpdated = newGoal.meta.createdAt;
    int saved = await fhirDb.saveResource(newGoal);
    return newGoal;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'Goal';
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
  String lifecycleStatus;
  Element elementLifecycleStatus;
  CodeableConcept achievementStatus;
  List<CodeableConcept> category;
  CodeableConcept priority;
  CodeableConcept description;
  Reference subject;
  String startDate;
  Element elementStartDate;
  CodeableConcept startCodeableConcept;
  List<Goal_Target> target;
  String statusDate;
  Element elementStatusDate;
  String statusReason;
  Element elementStatusReason;
  Reference expressedBy;
  List<Reference> addresses;
  List<Annotation> note;
  List<CodeableConcept> outcomeCode;
  List<Reference> outcomeReference;

  Goal({
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
    this.lifecycleStatus,
    this.elementLifecycleStatus,
    this.achievementStatus,
    this.category,
    this.priority,
    @required this.description,
    @required this.subject,
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
    this.outcomeReference,
  });

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);
  Map<String, dynamic> toJson() => _$GoalToJson(this);
}

class Goal_Target {
  static Future<Goal_Target> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept measure,
    Quantity detailQuantity,
    Range detailRange,
    CodeableConcept detailCodeableConcept,
    String detailString,
    Element elementDetailString,
    bool detailBoolean,
    Element elementDetailBoolean,
    int detailInteger,
    Element elementDetailInteger,
    Ratio detailRatio,
    String dueDate,
    Element elementDueDate,
    Duration dueDuration,
  }) async {
    var fhirDb = new DatabaseHelper();
    Goal_Target newGoal_Target = new Goal_Target(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      measure: measure,
      detailQuantity: detailQuantity,
      detailRange: detailRange,
      detailCodeableConcept: detailCodeableConcept,
      detailString: detailString,
      elementDetailString: elementDetailString,
      detailBoolean: detailBoolean,
      elementDetailBoolean: elementDetailBoolean,
      detailInteger: detailInteger,
      elementDetailInteger: elementDetailInteger,
      detailRatio: detailRatio,
      dueDate: dueDate,
      elementDueDate: elementDueDate,
      dueDuration: dueDuration,
    );
    return newGoal_Target;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept measure;
  Quantity detailQuantity;
  Range detailRange;
  CodeableConcept detailCodeableConcept;
  String detailString;
  Element elementDetailString;
  bool detailBoolean;
  Element elementDetailBoolean;
  int detailInteger;
  Element elementDetailInteger;
  Ratio detailRatio;
  String dueDate;
  Element elementDueDate;
  Duration dueDuration;

  Goal_Target({
    this.id,
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
    this.dueDuration,
  });

  factory Goal_Target.fromJson(Map<String, dynamic> json) =>
      _$Goal_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$Goal_TargetToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Goal _$GoalFromJson(Map<String, dynamic> json) {
  return Goal(
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
    description: json['description'] == null
        ? null
        : CodeableConcept.fromJson(json['description'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
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

Map<String, dynamic> _$GoalToJson(Goal instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('lifecycleStatus', instance.lifecycleStatus);
  writeNotNull(
      'elementLifecycleStatus', instance.elementLifecycleStatus?.toJson());
  writeNotNull('achievementStatus', instance.achievementStatus?.toJson());
  writeNotNull(
      'category', instance.category?.map((e) => e?.toJson())?.toList());
  writeNotNull('priority', instance.priority?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('startDate', instance.startDate);
  writeNotNull('elementStartDate', instance.elementStartDate?.toJson());
  writeNotNull('startCodeableConcept', instance.startCodeableConcept?.toJson());
  writeNotNull('target', instance.target?.map((e) => e?.toJson())?.toList());
  writeNotNull('statusDate', instance.statusDate);
  writeNotNull('elementStatusDate', instance.elementStatusDate?.toJson());
  writeNotNull('statusReason', instance.statusReason);
  writeNotNull('elementStatusReason', instance.elementStatusReason?.toJson());
  writeNotNull('expressedBy', instance.expressedBy?.toJson());
  writeNotNull(
      'addresses', instance.addresses?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'outcomeCode', instance.outcomeCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('outcomeReference',
      instance.outcomeReference?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$Goal_TargetToJson(Goal_Target instance) {
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
  writeNotNull('detailString', instance.detailString);
  writeNotNull('elementDetailString', instance.elementDetailString?.toJson());
  writeNotNull('detailBoolean', instance.detailBoolean);
  writeNotNull('elementDetailBoolean', instance.elementDetailBoolean?.toJson());
  writeNotNull('detailInteger', instance.detailInteger);
  writeNotNull('elementDetailInteger', instance.elementDetailInteger?.toJson());
  writeNotNull('detailRatio', instance.detailRatio?.toJson());
  writeNotNull('dueDate', instance.dueDate);
  writeNotNull('elementDueDate', instance.elementDueDate?.toJson());
  writeNotNull('dueDuration', instance.dueDuration?.toJson());
  return val;
}
