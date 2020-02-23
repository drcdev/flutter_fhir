import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class CarePlan {
  static Future<CarePlan> newInstance({
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
    List<String> instantiatesUri,
    List<Element> elementInstantiatesUri,
    List<Reference> basedOn,
    List<Reference> replaces,
    List<Reference> partOf,
    String status,
    Element elementStatus,
    String intent,
    Element elementIntent,
    List<CodeableConcept> category,
    String title,
    Element elementTitle,
    String description,
    Element elementDescription,
    Reference subject,
    Reference encounter,
    Period period,
    DateTime created,
    Element elementCreated,
    Reference author,
    List<Reference> contributor,
    List<Reference> careTeam,
    List<Reference> addresses,
    List<Reference> supportingInfo,
    List<Reference> goal,
    List<CarePlan_Activity> activity,
    List<Annotation> note,
  }) async {
    var fhirDb = new DatabaseHelper();
    CarePlan newCarePlan = new CarePlan(
      resourceType: 'CarePlan',
      id: id ?? await fhirDb.newResourceId('CarePlan'),
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
      instantiatesUri: instantiatesUri,
      elementInstantiatesUri: elementInstantiatesUri,
      basedOn: basedOn,
      replaces: replaces,
      partOf: partOf,
      status: status,
      elementStatus: elementStatus,
      intent: intent,
      elementIntent: elementIntent,
      category: category,
      title: title,
      elementTitle: elementTitle,
      description: description,
      elementDescription: elementDescription,
      subject: subject,
      encounter: encounter,
      period: period,
      created: created,
      elementCreated: elementCreated,
      author: author,
      contributor: contributor,
      careTeam: careTeam,
      addresses: addresses,
      supportingInfo: supportingInfo,
      goal: goal,
      activity: activity,
      note: note,
    );
    newCarePlan.meta.createdAt = DateTime.now();
    newCarePlan.meta.lastUpdated = newCarePlan.meta.createdAt;
    int saved = await fhirDb.saveResource(newCarePlan);
    return newCarePlan;
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
  String resourceType = 'CarePlan';
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
  List<String> instantiatesUri;
  @HiveField(14)
  List<Element> elementInstantiatesUri;
  @HiveField(15)
  List<Reference> basedOn;
  @HiveField(16)
  List<Reference> replaces;
  @HiveField(17)
  List<Reference> partOf;
  @HiveField(18)
  String status;
  @HiveField(19)
  Element elementStatus;
  @HiveField(20)
  String intent;
  @HiveField(21)
  Element elementIntent;
  @HiveField(22)
  List<CodeableConcept> category;
  @HiveField(23)
  String title;
  @HiveField(24)
  Element elementTitle;
  @HiveField(25)
  String description;
  @HiveField(26)
  Element elementDescription;
  @HiveField(27)
  Reference subject;
  @HiveField(28)
  Reference encounter;
  @HiveField(29)
  Period period;
  @HiveField(30)
  DateTime created;
  @HiveField(31)
  Element elementCreated;
  @HiveField(32)
  Reference author;
  @HiveField(33)
  List<Reference> contributor;
  @HiveField(34)
  List<Reference> careTeam;
  @HiveField(35)
  List<Reference> addresses;
  @HiveField(36)
  List<Reference> supportingInfo;
  @HiveField(37)
  List<Reference> goal;
  @HiveField(38)
  List<CarePlan_Activity> activity;
  @HiveField(39)
  List<Annotation> note;

  CarePlan({
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
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.basedOn,
    this.replaces,
    this.partOf,
    this.status,
    this.elementStatus,
    this.intent,
    this.elementIntent,
    this.category,
    this.title,
    this.elementTitle,
    this.description,
    this.elementDescription,
    @required this.subject,
    this.encounter,
    this.period,
    this.created,
    this.elementCreated,
    this.author,
    this.contributor,
    this.careTeam,
    this.addresses,
    this.supportingInfo,
    this.goal,
    this.activity,
    this.note,
  });

  factory CarePlan.fromJson(Map<String, dynamic> json) =>
      _$CarePlanFromJson(json);
  Map<String, dynamic> toJson() => _$CarePlanToJson(this);
}

class CarePlan_Activity {
  static Future<CarePlan_Activity> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<CodeableConcept> outcomeCodeableConcept,
    List<Reference> outcomeReference,
    List<Annotation> progress,
    Reference reference,
    CarePlan_Detail detail,
  }) async {
    var fhirDb = new DatabaseHelper();
    CarePlan_Activity newCarePlan_Activity = new CarePlan_Activity(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      outcomeCodeableConcept: outcomeCodeableConcept,
      outcomeReference: outcomeReference,
      progress: progress,
      reference: reference,
      detail: detail,
    );
    return newCarePlan_Activity;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<CodeableConcept> outcomeCodeableConcept;
  @HiveField(4)
  List<Reference> outcomeReference;
  @HiveField(5)
  List<Annotation> progress;
  @HiveField(6)
  Reference reference;
  @HiveField(7)
  CarePlan_Detail detail;

  CarePlan_Activity({
    this.id,
    this.extension,
    this.modifierExtension,
    this.outcomeCodeableConcept,
    this.outcomeReference,
    this.progress,
    this.reference,
    this.detail,
  });

  factory CarePlan_Activity.fromJson(Map<String, dynamic> json) =>
      _$CarePlan_ActivityFromJson(json);
  Map<String, dynamic> toJson() => _$CarePlan_ActivityToJson(this);
}

class CarePlan_Detail {
  static Future<CarePlan_Detail> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String kind,
    Element elementKind,
    List<String> instantiatesCanonical,
    List<String> instantiatesUri,
    List<Element> elementInstantiatesUri,
    CodeableConcept code,
    List<CodeableConcept> reasonCode,
    List<Reference> reasonReference,
    List<Reference> goal,
    String status,
    Element elementStatus,
    CodeableConcept statusReason,
    bool doNotPerform,
    Element elementDoNotPerform,
    Timing scheduledTiming,
    Period scheduledPeriod,
    String scheduledString,
    Element elementScheduledString,
    Reference location,
    List<Reference> performer,
    CodeableConcept productCodeableConcept,
    Reference productReference,
    Quantity dailyAmount,
    Quantity quantity,
    String description,
    Element elementDescription,
  }) async {
    var fhirDb = new DatabaseHelper();
    CarePlan_Detail newCarePlan_Detail = new CarePlan_Detail(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      kind: kind,
      elementKind: elementKind,
      instantiatesCanonical: instantiatesCanonical,
      instantiatesUri: instantiatesUri,
      elementInstantiatesUri: elementInstantiatesUri,
      code: code,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      goal: goal,
      status: status,
      elementStatus: elementStatus,
      statusReason: statusReason,
      doNotPerform: doNotPerform,
      elementDoNotPerform: elementDoNotPerform,
      scheduledTiming: scheduledTiming,
      scheduledPeriod: scheduledPeriod,
      scheduledString: scheduledString,
      elementScheduledString: elementScheduledString,
      location: location,
      performer: performer,
      productCodeableConcept: productCodeableConcept,
      productReference: productReference,
      dailyAmount: dailyAmount,
      quantity: quantity,
      description: description,
      elementDescription: elementDescription,
    );
    return newCarePlan_Detail;
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
  List<String> instantiatesCanonical;
  @HiveField(6)
  List<String> instantiatesUri;
  @HiveField(7)
  List<Element> elementInstantiatesUri;
  @HiveField(8)
  CodeableConcept code;
  @HiveField(9)
  List<CodeableConcept> reasonCode;
  @HiveField(10)
  List<Reference> reasonReference;
  @HiveField(11)
  List<Reference> goal;
  @HiveField(12)
  String status;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  CodeableConcept statusReason;
  @HiveField(15)
  bool doNotPerform;
  @HiveField(16)
  Element elementDoNotPerform;
  @HiveField(17)
  Timing scheduledTiming;
  @HiveField(18)
  Period scheduledPeriod;
  @HiveField(19)
  String scheduledString;
  @HiveField(20)
  Element elementScheduledString;
  @HiveField(21)
  Reference location;
  @HiveField(22)
  List<Reference> performer;
  @HiveField(23)
  CodeableConcept productCodeableConcept;
  @HiveField(24)
  Reference productReference;
  @HiveField(25)
  Quantity dailyAmount;
  @HiveField(26)
  Quantity quantity;
  @HiveField(27)
  String description;
  @HiveField(28)
  Element elementDescription;

  CarePlan_Detail({
    this.id,
    this.extension,
    this.modifierExtension,
    this.kind,
    this.elementKind,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.code,
    this.reasonCode,
    this.reasonReference,
    this.goal,
    this.status,
    this.elementStatus,
    this.statusReason,
    this.doNotPerform,
    this.elementDoNotPerform,
    this.scheduledTiming,
    this.scheduledPeriod,
    this.scheduledString,
    this.elementScheduledString,
    this.location,
    this.performer,
    this.productCodeableConcept,
    this.productReference,
    this.dailyAmount,
    this.quantity,
    this.description,
    this.elementDescription,
  });

  factory CarePlan_Detail.fromJson(Map<String, dynamic> json) =>
      _$CarePlan_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$CarePlan_DetailToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarePlan _$CarePlanFromJson(Map<String, dynamic> json) {
  return CarePlan(
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
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    intent: json['intent'] as String,
    elementIntent: json['elementIntent'] == null
        ? null
        : Element.fromJson(json['elementIntent'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
    contributor: (json['contributor'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    careTeam: (json['careTeam'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    addresses: (json['addresses'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    goal: (json['goal'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    activity: (json['activity'] as List)
        ?.map((e) => e == null
            ? null
            : CarePlan_Activity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CarePlanToJson(CarePlan instance) {
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
  writeNotNull('instantiatesCanonical', instance.instantiatesCanonical);
  writeNotNull('instantiatesUri', instance.instantiatesUri);
  writeNotNull('elementInstantiatesUri',
      instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList());
  writeNotNull('basedOn', instance.basedOn?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'replaces', instance.replaces?.map((e) => e?.toJson())?.toList());
  writeNotNull('partOf', instance.partOf?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('intent', instance.intent);
  writeNotNull('elementIntent', instance.elementIntent?.toJson());
  writeNotNull(
      'category', instance.category?.map((e) => e?.toJson())?.toList());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('elementCreated', instance.elementCreated?.toJson());
  writeNotNull('author', instance.author?.toJson());
  writeNotNull(
      'contributor', instance.contributor?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'careTeam', instance.careTeam?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'addresses', instance.addresses?.map((e) => e?.toJson())?.toList());
  writeNotNull('supportingInfo',
      instance.supportingInfo?.map((e) => e?.toJson())?.toList());
  writeNotNull('goal', instance.goal?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'activity', instance.activity?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  return val;
}

CarePlan_Activity _$CarePlan_ActivityFromJson(Map<String, dynamic> json) {
  return CarePlan_Activity(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outcomeCodeableConcept: (json['outcomeCodeableConcept'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outcomeReference: (json['outcomeReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    progress: (json['progress'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
    detail: json['detail'] == null
        ? null
        : CarePlan_Detail.fromJson(json['detail'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CarePlan_ActivityToJson(CarePlan_Activity instance) {
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
  writeNotNull('outcomeCodeableConcept',
      instance.outcomeCodeableConcept?.map((e) => e?.toJson())?.toList());
  writeNotNull('outcomeReference',
      instance.outcomeReference?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'progress', instance.progress?.map((e) => e?.toJson())?.toList());
  writeNotNull('reference', instance.reference?.toJson());
  writeNotNull('detail', instance.detail?.toJson());
  return val;
}

CarePlan_Detail _$CarePlan_DetailFromJson(Map<String, dynamic> json) {
  return CarePlan_Detail(
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
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    instantiatesUri:
        (json['instantiatesUri'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiatesUri: (json['elementInstantiatesUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    goal: (json['goal'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusReason: json['statusReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReason'] as Map<String, dynamic>),
    doNotPerform: json['doNotPerform'] as bool,
    elementDoNotPerform: json['elementDoNotPerform'] == null
        ? null
        : Element.fromJson(json['elementDoNotPerform'] as Map<String, dynamic>),
    scheduledTiming: json['scheduledTiming'] == null
        ? null
        : Timing.fromJson(json['scheduledTiming'] as Map<String, dynamic>),
    scheduledPeriod: json['scheduledPeriod'] == null
        ? null
        : Period.fromJson(json['scheduledPeriod'] as Map<String, dynamic>),
    scheduledString: json['scheduledString'] as String,
    elementScheduledString: json['elementScheduledString'] == null
        ? null
        : Element.fromJson(
            json['elementScheduledString'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    productCodeableConcept: json['productCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productCodeableConcept'] as Map<String, dynamic>),
    productReference: json['productReference'] == null
        ? null
        : Reference.fromJson(json['productReference'] as Map<String, dynamic>),
    dailyAmount: json['dailyAmount'] == null
        ? null
        : Quantity.fromJson(json['dailyAmount'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CarePlan_DetailToJson(CarePlan_Detail instance) {
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
  writeNotNull('instantiatesCanonical', instance.instantiatesCanonical);
  writeNotNull('instantiatesUri', instance.instantiatesUri);
  writeNotNull('elementInstantiatesUri',
      instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e?.toJson())?.toList());
  writeNotNull('goal', instance.goal?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('statusReason', instance.statusReason?.toJson());
  writeNotNull('doNotPerform', instance.doNotPerform);
  writeNotNull('elementDoNotPerform', instance.elementDoNotPerform?.toJson());
  writeNotNull('scheduledTiming', instance.scheduledTiming?.toJson());
  writeNotNull('scheduledPeriod', instance.scheduledPeriod?.toJson());
  writeNotNull('scheduledString', instance.scheduledString);
  writeNotNull(
      'elementScheduledString', instance.elementScheduledString?.toJson());
  writeNotNull('location', instance.location?.toJson());
  writeNotNull(
      'performer', instance.performer?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'productCodeableConcept', instance.productCodeableConcept?.toJson());
  writeNotNull('productReference', instance.productReference?.toJson());
  writeNotNull('dailyAmount', instance.dailyAmount?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CarePlanAdapter extends TypeAdapter<CarePlan> {
  @override
  CarePlan read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarePlan(
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
      instantiatesCanonical: (fields[12] as List)?.cast<String>(),
      instantiatesUri: (fields[13] as List)?.cast<String>(),
      elementInstantiatesUri: (fields[14] as List)?.cast<Element>(),
      basedOn: (fields[15] as List)?.cast<Reference>(),
      replaces: (fields[16] as List)?.cast<Reference>(),
      partOf: (fields[17] as List)?.cast<Reference>(),
      status: fields[18] as String,
      elementStatus: fields[19] as Element,
      intent: fields[20] as String,
      elementIntent: fields[21] as Element,
      category: (fields[22] as List)?.cast<CodeableConcept>(),
      title: fields[23] as String,
      elementTitle: fields[24] as Element,
      description: fields[25] as String,
      elementDescription: fields[26] as Element,
      subject: fields[27] as Reference,
      encounter: fields[28] as Reference,
      period: fields[29] as Period,
      created: fields[30] as DateTime,
      elementCreated: fields[31] as Element,
      author: fields[32] as Reference,
      contributor: (fields[33] as List)?.cast<Reference>(),
      careTeam: (fields[34] as List)?.cast<Reference>(),
      addresses: (fields[35] as List)?.cast<Reference>(),
      supportingInfo: (fields[36] as List)?.cast<Reference>(),
      goal: (fields[37] as List)?.cast<Reference>(),
      activity: (fields[38] as List)?.cast<CarePlan_Activity>(),
      note: (fields[39] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, CarePlan obj) {
    writer
      ..writeByte(40)
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
      ..write(obj.instantiatesUri)
      ..writeByte(14)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(15)
      ..write(obj.basedOn)
      ..writeByte(16)
      ..write(obj.replaces)
      ..writeByte(17)
      ..write(obj.partOf)
      ..writeByte(18)
      ..write(obj.status)
      ..writeByte(19)
      ..write(obj.elementStatus)
      ..writeByte(20)
      ..write(obj.intent)
      ..writeByte(21)
      ..write(obj.elementIntent)
      ..writeByte(22)
      ..write(obj.category)
      ..writeByte(23)
      ..write(obj.title)
      ..writeByte(24)
      ..write(obj.elementTitle)
      ..writeByte(25)
      ..write(obj.description)
      ..writeByte(26)
      ..write(obj.elementDescription)
      ..writeByte(27)
      ..write(obj.subject)
      ..writeByte(28)
      ..write(obj.encounter)
      ..writeByte(29)
      ..write(obj.period)
      ..writeByte(30)
      ..write(obj.created)
      ..writeByte(31)
      ..write(obj.elementCreated)
      ..writeByte(32)
      ..write(obj.author)
      ..writeByte(33)
      ..write(obj.contributor)
      ..writeByte(34)
      ..write(obj.careTeam)
      ..writeByte(35)
      ..write(obj.addresses)
      ..writeByte(36)
      ..write(obj.supportingInfo)
      ..writeByte(37)
      ..write(obj.goal)
      ..writeByte(38)
      ..write(obj.activity)
      ..writeByte(39)
      ..write(obj.note);
  }
}

class CarePlan_ActivityAdapter extends TypeAdapter<CarePlan_Activity> {
  @override
  CarePlan_Activity read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarePlan_Activity(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      outcomeCodeableConcept: (fields[3] as List)?.cast<CodeableConcept>(),
      outcomeReference: (fields[4] as List)?.cast<Reference>(),
      progress: (fields[5] as List)?.cast<Annotation>(),
      reference: fields[6] as Reference,
      detail: fields[7] as CarePlan_Detail,
    );
  }

  @override
  void write(BinaryWriter writer, CarePlan_Activity obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.outcomeCodeableConcept)
      ..writeByte(4)
      ..write(obj.outcomeReference)
      ..writeByte(5)
      ..write(obj.progress)
      ..writeByte(6)
      ..write(obj.reference)
      ..writeByte(7)
      ..write(obj.detail);
  }
}

class CarePlan_DetailAdapter extends TypeAdapter<CarePlan_Detail> {
  @override
  CarePlan_Detail read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarePlan_Detail(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      kind: fields[3] as String,
      elementKind: fields[4] as Element,
      instantiatesCanonical: (fields[5] as List)?.cast<String>(),
      instantiatesUri: (fields[6] as List)?.cast<String>(),
      elementInstantiatesUri: (fields[7] as List)?.cast<Element>(),
      code: fields[8] as CodeableConcept,
      reasonCode: (fields[9] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[10] as List)?.cast<Reference>(),
      goal: (fields[11] as List)?.cast<Reference>(),
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      statusReason: fields[14] as CodeableConcept,
      doNotPerform: fields[15] as bool,
      elementDoNotPerform: fields[16] as Element,
      scheduledTiming: fields[17] as Timing,
      scheduledPeriod: fields[18] as Period,
      scheduledString: fields[19] as String,
      elementScheduledString: fields[20] as Element,
      location: fields[21] as Reference,
      performer: (fields[22] as List)?.cast<Reference>(),
      productCodeableConcept: fields[23] as CodeableConcept,
      productReference: fields[24] as Reference,
      dailyAmount: fields[25] as Quantity,
      quantity: fields[26] as Quantity,
      description: fields[27] as String,
      elementDescription: fields[28] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, CarePlan_Detail obj) {
    writer
      ..writeByte(29)
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
      ..write(obj.instantiatesCanonical)
      ..writeByte(6)
      ..write(obj.instantiatesUri)
      ..writeByte(7)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(8)
      ..write(obj.code)
      ..writeByte(9)
      ..write(obj.reasonCode)
      ..writeByte(10)
      ..write(obj.reasonReference)
      ..writeByte(11)
      ..write(obj.goal)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.statusReason)
      ..writeByte(15)
      ..write(obj.doNotPerform)
      ..writeByte(16)
      ..write(obj.elementDoNotPerform)
      ..writeByte(17)
      ..write(obj.scheduledTiming)
      ..writeByte(18)
      ..write(obj.scheduledPeriod)
      ..writeByte(19)
      ..write(obj.scheduledString)
      ..writeByte(20)
      ..write(obj.elementScheduledString)
      ..writeByte(21)
      ..write(obj.location)
      ..writeByte(22)
      ..write(obj.performer)
      ..writeByte(23)
      ..write(obj.productCodeableConcept)
      ..writeByte(24)
      ..write(obj.productReference)
      ..writeByte(25)
      ..write(obj.dailyAmount)
      ..writeByte(26)
      ..write(obj.quantity)
      ..writeByte(27)
      ..write(obj.description)
      ..writeByte(28)
      ..write(obj.elementDescription);
  }
}
