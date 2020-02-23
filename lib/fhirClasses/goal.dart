import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
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
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'Goal';
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
  String lifecycleStatus;
  @HiveField(13)
  Element elementLifecycleStatus;
  @HiveField(14)
  CodeableConcept achievementStatus;
  @HiveField(15)
  List<CodeableConcept> category;
  @HiveField(16)
  CodeableConcept priority;
  @HiveField(17)
  CodeableConcept description;
  @HiveField(18)
  Reference subject;
  @HiveField(19)
  String startDate;
  @HiveField(20)
  Element elementStartDate;
  @HiveField(21)
  CodeableConcept startCodeableConcept;
  @HiveField(22)
  List<Goal_Target> target;
  @HiveField(23)
  String statusDate;
  @HiveField(24)
  Element elementStatusDate;
  @HiveField(25)
  String statusReason;
  @HiveField(26)
  Element elementStatusReason;
  @HiveField(27)
  Reference expressedBy;
  @HiveField(28)
  List<Reference> addresses;
  @HiveField(29)
  List<Annotation> note;
  @HiveField(30)
  List<CodeableConcept> outcomeCode;
  @HiveField(31)
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
  String detailString;
  @HiveField(8)
  Element elementDetailString;
  @HiveField(9)
  bool detailBoolean;
  @HiveField(10)
  Element elementDetailBoolean;
  @HiveField(11)
  int detailInteger;
  @HiveField(12)
  Element elementDetailInteger;
  @HiveField(13)
  Ratio detailRatio;
  @HiveField(14)
  String dueDate;
  @HiveField(15)
  Element elementDueDate;
  @HiveField(16)
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

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GoalAdapter extends TypeAdapter<Goal> {
  @override
  Goal read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Goal(
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
      identifier: (fields[11] as List)?.cast<Identifier>(),
      lifecycleStatus: fields[12] as String,
      elementLifecycleStatus: fields[13] as Element,
      achievementStatus: fields[14] as CodeableConcept,
      category: (fields[15] as List)?.cast<CodeableConcept>(),
      priority: fields[16] as CodeableConcept,
      description: fields[17] as CodeableConcept,
      subject: fields[18] as Reference,
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

class Goal_TargetAdapter extends TypeAdapter<Goal_Target> {
  @override
  Goal_Target read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Goal_Target(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      measure: fields[3] as CodeableConcept,
      detailQuantity: fields[4] as Quantity,
      detailRange: fields[5] as Range,
      detailCodeableConcept: fields[6] as CodeableConcept,
      detailString: fields[7] as String,
      elementDetailString: fields[8] as Element,
      detailBoolean: fields[9] as bool,
      elementDetailBoolean: fields[10] as Element,
      detailInteger: fields[11] as int,
      elementDetailInteger: fields[12] as Element,
      detailRatio: fields[13] as Ratio,
      dueDate: fields[14] as String,
      elementDueDate: fields[15] as Element,
      dueDuration: fields[16] as Duration,
    );
  }

  @override
  void write(BinaryWriter writer, Goal_Target obj) {
    writer
      ..writeByte(17)
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
      ..write(obj.detailString)
      ..writeByte(8)
      ..write(obj.elementDetailString)
      ..writeByte(9)
      ..write(obj.detailBoolean)
      ..writeByte(10)
      ..write(obj.elementDetailBoolean)
      ..writeByte(11)
      ..write(obj.detailInteger)
      ..writeByte(12)
      ..write(obj.elementDetailInteger)
      ..writeByte(13)
      ..write(obj.detailRatio)
      ..writeByte(14)
      ..write(obj.dueDate)
      ..writeByte(15)
      ..write(obj.elementDueDate)
      ..writeByte(16)
      ..write(obj.dueDuration);
  }
}
