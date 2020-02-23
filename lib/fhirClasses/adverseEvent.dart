import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
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

  @HiveField(0)
  String resourceType = 'AdverseEvent';
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
  Identifier identifier;
  @HiveField(12)
  String actuality;
  @HiveField(13)
  Element elementActuality;
  @HiveField(14)
  List<CodeableConcept> category;
  @HiveField(15)
  CodeableConcept event;
  @HiveField(16)
  Reference subject;
  @HiveField(17)
  Reference encounter;
  @HiveField(18)
  DateTime date;
  @HiveField(19)
  Element elementDate;
  @HiveField(20)
  DateTime detected;
  @HiveField(21)
  Element elementDetected;
  @HiveField(22)
  DateTime recordedDate;
  @HiveField(23)
  Element elementRecordedDate;
  @HiveField(24)
  List<Reference> resultingCondition;
  @HiveField(25)
  Reference location;
  @HiveField(26)
  CodeableConcept seriousness;
  @HiveField(27)
  CodeableConcept severity;
  @HiveField(28)
  CodeableConcept outcome;
  @HiveField(29)
  Reference recorder;
  @HiveField(30)
  List<Reference> contributor;
  @HiveField(31)
  List<AdverseEvent_SuspectEntity> suspectEntity;
  @HiveField(32)
  List<Reference> subjectMedicalHistory;
  @HiveField(33)
  List<Reference> referenceDocument;
  @HiveField(34)
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Reference instance;
  @HiveField(4)
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept assessment;
  @HiveField(4)
  String productRelatedness;
  @HiveField(5)
  Element elementProductRelatedness;
  @HiveField(6)
  Reference author;
  @HiveField(7)
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

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AdverseEventAdapter extends TypeAdapter<AdverseEvent> {
  @override
  AdverseEvent read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AdverseEvent(
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
      identifier: fields[11] as Identifier,
      actuality: fields[12] as String,
      elementActuality: fields[13] as Element,
      category: (fields[14] as List)?.cast<CodeableConcept>(),
      event: fields[15] as CodeableConcept,
      subject: fields[16] as Reference,
      encounter: fields[17] as Reference,
      date: fields[18] as DateTime,
      elementDate: fields[19] as Element,
      detected: fields[20] as DateTime,
      elementDetected: fields[21] as Element,
      recordedDate: fields[22] as DateTime,
      elementRecordedDate: fields[23] as Element,
      resultingCondition: (fields[24] as List)?.cast<Reference>(),
      location: fields[25] as Reference,
      seriousness: fields[26] as CodeableConcept,
      severity: fields[27] as CodeableConcept,
      outcome: fields[28] as CodeableConcept,
      recorder: fields[29] as Reference,
      contributor: (fields[30] as List)?.cast<Reference>(),
      suspectEntity: (fields[31] as List)?.cast<AdverseEvent_SuspectEntity>(),
      subjectMedicalHistory: (fields[32] as List)?.cast<Reference>(),
      referenceDocument: (fields[33] as List)?.cast<Reference>(),
      study: (fields[34] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, AdverseEvent obj) {
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
      ..write(obj.actuality)
      ..writeByte(13)
      ..write(obj.elementActuality)
      ..writeByte(14)
      ..write(obj.category)
      ..writeByte(15)
      ..write(obj.event)
      ..writeByte(16)
      ..write(obj.subject)
      ..writeByte(17)
      ..write(obj.encounter)
      ..writeByte(18)
      ..write(obj.date)
      ..writeByte(19)
      ..write(obj.elementDate)
      ..writeByte(20)
      ..write(obj.detected)
      ..writeByte(21)
      ..write(obj.elementDetected)
      ..writeByte(22)
      ..write(obj.recordedDate)
      ..writeByte(23)
      ..write(obj.elementRecordedDate)
      ..writeByte(24)
      ..write(obj.resultingCondition)
      ..writeByte(25)
      ..write(obj.location)
      ..writeByte(26)
      ..write(obj.seriousness)
      ..writeByte(27)
      ..write(obj.severity)
      ..writeByte(28)
      ..write(obj.outcome)
      ..writeByte(29)
      ..write(obj.recorder)
      ..writeByte(30)
      ..write(obj.contributor)
      ..writeByte(31)
      ..write(obj.suspectEntity)
      ..writeByte(32)
      ..write(obj.subjectMedicalHistory)
      ..writeByte(33)
      ..write(obj.referenceDocument)
      ..writeByte(34)
      ..write(obj.study);
  }
}

class AdverseEvent_SuspectEntityAdapter
    extends TypeAdapter<AdverseEvent_SuspectEntity> {
  @override
  AdverseEvent_SuspectEntity read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AdverseEvent_SuspectEntity(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      instance: fields[3] as Reference,
      causality: (fields[4] as List)?.cast<AdverseEvent_Causality>(),
    );
  }

  @override
  void write(BinaryWriter writer, AdverseEvent_SuspectEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.instance)
      ..writeByte(4)
      ..write(obj.causality);
  }
}

class AdverseEvent_CausalityAdapter
    extends TypeAdapter<AdverseEvent_Causality> {
  @override
  AdverseEvent_Causality read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AdverseEvent_Causality(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      assessment: fields[3] as CodeableConcept,
      productRelatedness: fields[4] as String,
      elementProductRelatedness: fields[5] as Element,
      author: fields[6] as Reference,
      method: fields[7] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, AdverseEvent_Causality obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.assessment)
      ..writeByte(4)
      ..write(obj.productRelatedness)
      ..writeByte(5)
      ..write(obj.elementProductRelatedness)
      ..writeByte(6)
      ..write(obj.author)
      ..writeByte(7)
      ..write(obj.method);
  }
}
