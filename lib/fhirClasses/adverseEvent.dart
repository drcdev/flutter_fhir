import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class AdverseEvent {
  static Future<AdverseEvent> newInstance({
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
    Identifier identifier,
    String actuality,
    Element elementActuality,
    List<CodeableConcept> category,
    CodeableConcept event,
    Reference subject,
    Reference encounter,
    DateTime date,
    Element elementDate,
    DateTime detected,
    Element elementDetected,
    DateTime recordedDate,
    Element elementRecordedDate,
    List<Reference> resultingCondition,
    Reference location,
    CodeableConcept seriousness,
    CodeableConcept severity,
    CodeableConcept outcome,
    Reference recorder,
    List<Reference> contributor,
    List<AdverseEvent_SuspectEntity> suspectEntity,
    List<Reference> subjectMedicalHistory,
    List<Reference> referenceDocument,
    List<Reference> study,
  }) async {
    var fhirDb = new DatabaseHelper();
    AdverseEvent newAdverseEvent = new AdverseEvent(
      resourceType: 'AdverseEvent',
      id: id ?? await fhirDb.newResourceId('AdverseEvent'),
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
      actuality: actuality,
      elementActuality: elementActuality,
      category: category,
      event: event,
      subject: subject,
      encounter: encounter,
      date: date,
      elementDate: elementDate,
      detected: detected,
      elementDetected: elementDetected,
      recordedDate: recordedDate,
      elementRecordedDate: elementRecordedDate,
      resultingCondition: resultingCondition,
      location: location,
      seriousness: seriousness,
      severity: severity,
      outcome: outcome,
      recorder: recorder,
      contributor: contributor,
      suspectEntity: suspectEntity,
      subjectMedicalHistory: subjectMedicalHistory,
      referenceDocument: referenceDocument,
      study: study,
    );
    newAdverseEvent.meta.createdAt = DateTime.now();
    newAdverseEvent.meta.lastUpdated = newAdverseEvent.meta.createdAt;
    int saved = await fhirDb.saveResource(newAdverseEvent);
    return newAdverseEvent;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'AdverseEvent';
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
  Identifier identifier;
  String actuality;
  Element elementActuality;
  List<CodeableConcept> category;
  CodeableConcept event;
  Reference subject;
  Reference encounter;
  DateTime date;
  Element elementDate;
  DateTime detected;
  Element elementDetected;
  DateTime recordedDate;
  Element elementRecordedDate;
  List<Reference> resultingCondition;
  Reference location;
  CodeableConcept seriousness;
  CodeableConcept severity;
  CodeableConcept outcome;
  Reference recorder;
  List<Reference> contributor;
  List<AdverseEvent_SuspectEntity> suspectEntity;
  List<Reference> subjectMedicalHistory;
  List<Reference> referenceDocument;
  List<Reference> study;

  AdverseEvent({
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
    this.actuality,
    this.elementActuality,
    this.category,
    this.event,
    @required this.subject,
    this.encounter,
    this.date,
    this.elementDate,
    this.detected,
    this.elementDetected,
    this.recordedDate,
    this.elementRecordedDate,
    this.resultingCondition,
    this.location,
    this.seriousness,
    this.severity,
    this.outcome,
    this.recorder,
    this.contributor,
    this.suspectEntity,
    this.subjectMedicalHistory,
    this.referenceDocument,
    this.study,
  });

  factory AdverseEvent.fromJson(Map<String, dynamic> json) =>
      _$AdverseEventFromJson(json);
  Map<String, dynamic> toJson() => _$AdverseEventToJson(this);
}

class AdverseEvent_SuspectEntity {
  static Future<AdverseEvent_SuspectEntity> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Reference instance,
    List<AdverseEvent_Causality> causality,
  }) async {
    var fhirDb = new DatabaseHelper();
    AdverseEvent_SuspectEntity newAdverseEvent_SuspectEntity =
        new AdverseEvent_SuspectEntity(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      instance: instance,
      causality: causality,
    );
    return newAdverseEvent_SuspectEntity;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference instance;
  List<AdverseEvent_Causality> causality;

  AdverseEvent_SuspectEntity({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.instance,
    this.causality,
  });

  factory AdverseEvent_SuspectEntity.fromJson(Map<String, dynamic> json) =>
      _$AdverseEvent_SuspectEntityFromJson(json);
  Map<String, dynamic> toJson() => _$AdverseEvent_SuspectEntityToJson(this);
}

class AdverseEvent_Causality {
  static Future<AdverseEvent_Causality> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept assessment,
    String productRelatedness,
    Element elementProductRelatedness,
    Reference author,
    CodeableConcept method,
  }) async {
    var fhirDb = new DatabaseHelper();
    AdverseEvent_Causality newAdverseEvent_Causality =
        new AdverseEvent_Causality(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      assessment: assessment,
      productRelatedness: productRelatedness,
      elementProductRelatedness: elementProductRelatedness,
      author: author,
      method: method,
    );
    return newAdverseEvent_Causality;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept assessment;
  String productRelatedness;
  Element elementProductRelatedness;
  Reference author;
  CodeableConcept method;

  AdverseEvent_Causality({
    this.id,
    this.extension,
    this.modifierExtension,
    this.assessment,
    this.productRelatedness,
    this.elementProductRelatedness,
    this.author,
    this.method,
  });

  factory AdverseEvent_Causality.fromJson(Map<String, dynamic> json) =>
      _$AdverseEvent_CausalityFromJson(json);
  Map<String, dynamic> toJson() => _$AdverseEvent_CausalityToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdverseEvent _$AdverseEventFromJson(Map<String, dynamic> json) {
  return AdverseEvent(
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    actuality: json['actuality'] as String,
    elementActuality: json['elementActuality'] == null
        ? null
        : Element.fromJson(json['elementActuality'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    event: json['event'] == null
        ? null
        : CodeableConcept.fromJson(json['event'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    detected: json['detected'] == null
        ? null
        : DateTime.parse(json['detected'] as String),
    elementDetected: json['elementDetected'] == null
        ? null
        : Element.fromJson(json['elementDetected'] as Map<String, dynamic>),
    recordedDate: json['recordedDate'] == null
        ? null
        : DateTime.parse(json['recordedDate'] as String),
    elementRecordedDate: json['elementRecordedDate'] == null
        ? null
        : Element.fromJson(json['elementRecordedDate'] as Map<String, dynamic>),
    resultingCondition: (json['resultingCondition'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    seriousness: json['seriousness'] == null
        ? null
        : CodeableConcept.fromJson(json['seriousness'] as Map<String, dynamic>),
    severity: json['severity'] == null
        ? null
        : CodeableConcept.fromJson(json['severity'] as Map<String, dynamic>),
    outcome: json['outcome'] == null
        ? null
        : CodeableConcept.fromJson(json['outcome'] as Map<String, dynamic>),
    recorder: json['recorder'] == null
        ? null
        : Reference.fromJson(json['recorder'] as Map<String, dynamic>),
    contributor: (json['contributor'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    suspectEntity: (json['suspectEntity'] as List)
        ?.map((e) => e == null
            ? null
            : AdverseEvent_SuspectEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subjectMedicalHistory: (json['subjectMedicalHistory'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    referenceDocument: (json['referenceDocument'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    study: (json['study'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AdverseEventToJson(AdverseEvent instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('actuality', instance.actuality);
  writeNotNull('elementActuality', instance.elementActuality?.toJson());
  writeNotNull(
      'category', instance.category?.map((e) => e?.toJson())?.toList());
  writeNotNull('event', instance.event?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('detected', instance.detected?.toIso8601String());
  writeNotNull('elementDetected', instance.elementDetected?.toJson());
  writeNotNull('recordedDate', instance.recordedDate?.toIso8601String());
  writeNotNull('elementRecordedDate', instance.elementRecordedDate?.toJson());
  writeNotNull('resultingCondition',
      instance.resultingCondition?.map((e) => e?.toJson())?.toList());
  writeNotNull('location', instance.location?.toJson());
  writeNotNull('seriousness', instance.seriousness?.toJson());
  writeNotNull('severity', instance.severity?.toJson());
  writeNotNull('outcome', instance.outcome?.toJson());
  writeNotNull('recorder', instance.recorder?.toJson());
  writeNotNull(
      'contributor', instance.contributor?.map((e) => e?.toJson())?.toList());
  writeNotNull('suspectEntity',
      instance.suspectEntity?.map((e) => e?.toJson())?.toList());
  writeNotNull('subjectMedicalHistory',
      instance.subjectMedicalHistory?.map((e) => e?.toJson())?.toList());
  writeNotNull('referenceDocument',
      instance.referenceDocument?.map((e) => e?.toJson())?.toList());
  writeNotNull('study', instance.study?.map((e) => e?.toJson())?.toList());
  return val;
}

AdverseEvent_SuspectEntity _$AdverseEvent_SuspectEntityFromJson(
    Map<String, dynamic> json) {
  return AdverseEvent_SuspectEntity(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instance: json['instance'] == null
        ? null
        : Reference.fromJson(json['instance'] as Map<String, dynamic>),
    causality: (json['causality'] as List)
        ?.map((e) => e == null
            ? null
            : AdverseEvent_Causality.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AdverseEvent_SuspectEntityToJson(
    AdverseEvent_SuspectEntity instance) {
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
  writeNotNull('instance', instance.instance?.toJson());
  writeNotNull(
      'causality', instance.causality?.map((e) => e?.toJson())?.toList());
  return val;
}

AdverseEvent_Causality _$AdverseEvent_CausalityFromJson(
    Map<String, dynamic> json) {
  return AdverseEvent_Causality(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    assessment: json['assessment'] == null
        ? null
        : CodeableConcept.fromJson(json['assessment'] as Map<String, dynamic>),
    productRelatedness: json['productRelatedness'] as String,
    elementProductRelatedness: json['elementProductRelatedness'] == null
        ? null
        : Element.fromJson(
            json['elementProductRelatedness'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AdverseEvent_CausalityToJson(
    AdverseEvent_Causality instance) {
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
  writeNotNull('assessment', instance.assessment?.toJson());
  writeNotNull('productRelatedness', instance.productRelatedness);
  writeNotNull('elementProductRelatedness',
      instance.elementProductRelatedness?.toJson());
  writeNotNull('author', instance.author?.toJson());
  writeNotNull('method', instance.method?.toJson());
  return val;
}
