import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Specimen {
  static Future<Specimen> newInstance({
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
    Identifier accessionIdentifier,
    String status,
    Element elementStatus,
    CodeableConcept type,
    Reference subject,
    DateTime receivedTime,
    Element elementReceivedTime,
    List<Reference> parent,
    List<Reference> request,
    Specimen_Collection collection,
    List<Specimen_Processing> processing,
    List<Specimen_Container> container,
    List<CodeableConcept> condition,
    List<Annotation> note,
  }) async {
    var fhirDb = new DatabaseHelper();
    Specimen newSpecimen = new Specimen(
      resourceType: 'Specimen',
      id: id ?? await fhirDb.newResourceId('Specimen'),
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
      accessionIdentifier: accessionIdentifier,
      status: status,
      elementStatus: elementStatus,
      type: type,
      subject: subject,
      receivedTime: receivedTime,
      elementReceivedTime: elementReceivedTime,
      parent: parent,
      request: request,
      collection: collection,
      processing: processing,
      container: container,
      condition: condition,
      note: note,
    );
    newSpecimen.meta.createdAt = DateTime.now();
    newSpecimen.meta.lastUpdated = newSpecimen.meta.createdAt;
    int saved = await fhirDb.saveResource(newSpecimen);
    return newSpecimen;
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
  String resourceType = 'Specimen';
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
  Identifier accessionIdentifier;
  @HiveField(13)
  String status;
  @HiveField(14)
  Element elementStatus;
  @HiveField(15)
  CodeableConcept type;
  @HiveField(16)
  Reference subject;
  @HiveField(17)
  DateTime receivedTime;
  @HiveField(18)
  Element elementReceivedTime;
  @HiveField(19)
  List<Reference> parent;
  @HiveField(20)
  List<Reference> request;
  @HiveField(21)
  Specimen_Collection collection;
  @HiveField(22)
  List<Specimen_Processing> processing;
  @HiveField(23)
  List<Specimen_Container> container;
  @HiveField(24)
  List<CodeableConcept> condition;
  @HiveField(25)
  List<Annotation> note;

  Specimen({
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
    this.accessionIdentifier,
    this.status,
    this.elementStatus,
    this.type,
    this.subject,
    this.receivedTime,
    this.elementReceivedTime,
    this.parent,
    this.request,
    this.collection,
    this.processing,
    this.container,
    this.condition,
    this.note,
  });

  factory Specimen.fromJson(Map<String, dynamic> json) =>
      _$SpecimenFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenToJson(this);
}

class Specimen_Collection {
  static Future<Specimen_Collection> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Reference collector,
    String collectedDateTime,
    Element elementCollectedDateTime,
    Period collectedPeriod,
    Duration duration,
    Quantity quantity,
    CodeableConcept method,
    CodeableConcept bodySite,
    CodeableConcept fastingStatusCodeableConcept,
    Duration fastingStatusDuration,
  }) async {
    var fhirDb = new DatabaseHelper();
    Specimen_Collection newSpecimen_Collection = new Specimen_Collection(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      collector: collector,
      collectedDateTime: collectedDateTime,
      elementCollectedDateTime: elementCollectedDateTime,
      collectedPeriod: collectedPeriod,
      duration: duration,
      quantity: quantity,
      method: method,
      bodySite: bodySite,
      fastingStatusCodeableConcept: fastingStatusCodeableConcept,
      fastingStatusDuration: fastingStatusDuration,
    );
    return newSpecimen_Collection;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Reference collector;
  @HiveField(4)
  String collectedDateTime;
  @HiveField(5)
  Element elementCollectedDateTime;
  @HiveField(6)
  Period collectedPeriod;
  @HiveField(7)
  Duration duration;
  @HiveField(8)
  Quantity quantity;
  @HiveField(9)
  CodeableConcept method;
  @HiveField(10)
  CodeableConcept bodySite;
  @HiveField(11)
  CodeableConcept fastingStatusCodeableConcept;
  @HiveField(12)
  Duration fastingStatusDuration;

  Specimen_Collection({
    this.id,
    this.extension,
    this.modifierExtension,
    this.collector,
    this.collectedDateTime,
    this.elementCollectedDateTime,
    this.collectedPeriod,
    this.duration,
    this.quantity,
    this.method,
    this.bodySite,
    this.fastingStatusCodeableConcept,
    this.fastingStatusDuration,
  });

  factory Specimen_Collection.fromJson(Map<String, dynamic> json) =>
      _$Specimen_CollectionFromJson(json);
  Map<String, dynamic> toJson() => _$Specimen_CollectionToJson(this);
}

class Specimen_Processing {
  static Future<Specimen_Processing> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String description,
    Element elementDescription,
    CodeableConcept procedure,
    List<Reference> additive,
    String timeDateTime,
    Element elementTimeDateTime,
    Period timePeriod,
  }) async {
    var fhirDb = new DatabaseHelper();
    Specimen_Processing newSpecimen_Processing = new Specimen_Processing(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      description: description,
      elementDescription: elementDescription,
      procedure: procedure,
      additive: additive,
      timeDateTime: timeDateTime,
      elementTimeDateTime: elementTimeDateTime,
      timePeriod: timePeriod,
    );
    return newSpecimen_Processing;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String description;
  @HiveField(4)
  Element elementDescription;
  @HiveField(5)
  CodeableConcept procedure;
  @HiveField(6)
  List<Reference> additive;
  @HiveField(7)
  String timeDateTime;
  @HiveField(8)
  Element elementTimeDateTime;
  @HiveField(9)
  Period timePeriod;

  Specimen_Processing({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.procedure,
    this.additive,
    this.timeDateTime,
    this.elementTimeDateTime,
    this.timePeriod,
  });

  factory Specimen_Processing.fromJson(Map<String, dynamic> json) =>
      _$Specimen_ProcessingFromJson(json);
  Map<String, dynamic> toJson() => _$Specimen_ProcessingToJson(this);
}

class Specimen_Container {
  static Future<Specimen_Container> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Identifier> identifier,
    String description,
    Element elementDescription,
    CodeableConcept type,
    Quantity capacity,
    Quantity specimenQuantity,
    CodeableConcept additiveCodeableConcept,
    Reference additiveReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Specimen_Container newSpecimen_Container = new Specimen_Container(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      description: description,
      elementDescription: elementDescription,
      type: type,
      capacity: capacity,
      specimenQuantity: specimenQuantity,
      additiveCodeableConcept: additiveCodeableConcept,
      additiveReference: additiveReference,
    );
    return newSpecimen_Container;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<Identifier> identifier;
  @HiveField(4)
  String description;
  @HiveField(5)
  Element elementDescription;
  @HiveField(6)
  CodeableConcept type;
  @HiveField(7)
  Quantity capacity;
  @HiveField(8)
  Quantity specimenQuantity;
  @HiveField(9)
  CodeableConcept additiveCodeableConcept;
  @HiveField(10)
  Reference additiveReference;

  Specimen_Container({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.description,
    this.elementDescription,
    this.type,
    this.capacity,
    this.specimenQuantity,
    this.additiveCodeableConcept,
    this.additiveReference,
  });

  factory Specimen_Container.fromJson(Map<String, dynamic> json) =>
      _$Specimen_ContainerFromJson(json);
  Map<String, dynamic> toJson() => _$Specimen_ContainerToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Specimen _$SpecimenFromJson(Map<String, dynamic> json) {
  return Specimen(
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
    accessionIdentifier: json['accessionIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['accessionIdentifier'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    receivedTime: json['receivedTime'] == null
        ? null
        : DateTime.parse(json['receivedTime'] as String),
    elementReceivedTime: json['elementReceivedTime'] == null
        ? null
        : Element.fromJson(json['elementReceivedTime'] as Map<String, dynamic>),
    parent: (json['parent'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    request: (json['request'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    collection: json['collection'] == null
        ? null
        : Specimen_Collection.fromJson(
            json['collection'] as Map<String, dynamic>),
    processing: (json['processing'] as List)
        ?.map((e) => e == null
            ? null
            : Specimen_Processing.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    container: (json['container'] as List)
        ?.map((e) => e == null
            ? null
            : Specimen_Container.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: (json['condition'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SpecimenToJson(Specimen instance) {
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
  writeNotNull('accessionIdentifier', instance.accessionIdentifier?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('receivedTime', instance.receivedTime?.toIso8601String());
  writeNotNull('elementReceivedTime', instance.elementReceivedTime?.toJson());
  writeNotNull('parent', instance.parent?.map((e) => e?.toJson())?.toList());
  writeNotNull('request', instance.request?.map((e) => e?.toJson())?.toList());
  writeNotNull('collection', instance.collection?.toJson());
  writeNotNull(
      'processing', instance.processing?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'container', instance.container?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'condition', instance.condition?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  return val;
}

Specimen_Collection _$Specimen_CollectionFromJson(Map<String, dynamic> json) {
  return Specimen_Collection(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    collector: json['collector'] == null
        ? null
        : Reference.fromJson(json['collector'] as Map<String, dynamic>),
    collectedDateTime: json['collectedDateTime'] as String,
    elementCollectedDateTime: json['elementCollectedDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementCollectedDateTime'] as Map<String, dynamic>),
    collectedPeriod: json['collectedPeriod'] == null
        ? null
        : Period.fromJson(json['collectedPeriod'] as Map<String, dynamic>),
    duration: json['duration'] == null
        ? null
        : Duration.fromJson(json['duration'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    bodySite: json['bodySite'] == null
        ? null
        : CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>),
    fastingStatusCodeableConcept: json['fastingStatusCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['fastingStatusCodeableConcept'] as Map<String, dynamic>),
    fastingStatusDuration: json['fastingStatusDuration'] == null
        ? null
        : Duration.fromJson(
            json['fastingStatusDuration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Specimen_CollectionToJson(Specimen_Collection instance) {
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
  writeNotNull('collector', instance.collector?.toJson());
  writeNotNull('collectedDateTime', instance.collectedDateTime);
  writeNotNull(
      'elementCollectedDateTime', instance.elementCollectedDateTime?.toJson());
  writeNotNull('collectedPeriod', instance.collectedPeriod?.toJson());
  writeNotNull('duration', instance.duration?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('method', instance.method?.toJson());
  writeNotNull('bodySite', instance.bodySite?.toJson());
  writeNotNull('fastingStatusCodeableConcept',
      instance.fastingStatusCodeableConcept?.toJson());
  writeNotNull(
      'fastingStatusDuration', instance.fastingStatusDuration?.toJson());
  return val;
}

Specimen_Processing _$Specimen_ProcessingFromJson(Map<String, dynamic> json) {
  return Specimen_Processing(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    procedure: json['procedure'] == null
        ? null
        : CodeableConcept.fromJson(json['procedure'] as Map<String, dynamic>),
    additive: (json['additive'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    timeDateTime: json['timeDateTime'] as String,
    elementTimeDateTime: json['elementTimeDateTime'] == null
        ? null
        : Element.fromJson(json['elementTimeDateTime'] as Map<String, dynamic>),
    timePeriod: json['timePeriod'] == null
        ? null
        : Period.fromJson(json['timePeriod'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Specimen_ProcessingToJson(Specimen_Processing instance) {
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
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('procedure', instance.procedure?.toJson());
  writeNotNull(
      'additive', instance.additive?.map((e) => e?.toJson())?.toList());
  writeNotNull('timeDateTime', instance.timeDateTime);
  writeNotNull('elementTimeDateTime', instance.elementTimeDateTime?.toJson());
  writeNotNull('timePeriod', instance.timePeriod?.toJson());
  return val;
}

Specimen_Container _$Specimen_ContainerFromJson(Map<String, dynamic> json) {
  return Specimen_Container(
    id: json['id'] as String,
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
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    capacity: json['capacity'] == null
        ? null
        : Quantity.fromJson(json['capacity'] as Map<String, dynamic>),
    specimenQuantity: json['specimenQuantity'] == null
        ? null
        : Quantity.fromJson(json['specimenQuantity'] as Map<String, dynamic>),
    additiveCodeableConcept: json['additiveCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['additiveCodeableConcept'] as Map<String, dynamic>),
    additiveReference: json['additiveReference'] == null
        ? null
        : Reference.fromJson(json['additiveReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Specimen_ContainerToJson(Specimen_Container instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('capacity', instance.capacity?.toJson());
  writeNotNull('specimenQuantity', instance.specimenQuantity?.toJson());
  writeNotNull(
      'additiveCodeableConcept', instance.additiveCodeableConcept?.toJson());
  writeNotNull('additiveReference', instance.additiveReference?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SpecimenAdapter extends TypeAdapter<Specimen> {
  @override
  Specimen read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Specimen(
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
      accessionIdentifier: fields[12] as Identifier,
      status: fields[13] as String,
      elementStatus: fields[14] as Element,
      type: fields[15] as CodeableConcept,
      subject: fields[16] as Reference,
      receivedTime: fields[17] as DateTime,
      elementReceivedTime: fields[18] as Element,
      parent: (fields[19] as List)?.cast<Reference>(),
      request: (fields[20] as List)?.cast<Reference>(),
      collection: fields[21] as Specimen_Collection,
      processing: (fields[22] as List)?.cast<Specimen_Processing>(),
      container: (fields[23] as List)?.cast<Specimen_Container>(),
      condition: (fields[24] as List)?.cast<CodeableConcept>(),
      note: (fields[25] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, Specimen obj) {
    writer
      ..writeByte(26)
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
      ..write(obj.accessionIdentifier)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.elementStatus)
      ..writeByte(15)
      ..write(obj.type)
      ..writeByte(16)
      ..write(obj.subject)
      ..writeByte(17)
      ..write(obj.receivedTime)
      ..writeByte(18)
      ..write(obj.elementReceivedTime)
      ..writeByte(19)
      ..write(obj.parent)
      ..writeByte(20)
      ..write(obj.request)
      ..writeByte(21)
      ..write(obj.collection)
      ..writeByte(22)
      ..write(obj.processing)
      ..writeByte(23)
      ..write(obj.container)
      ..writeByte(24)
      ..write(obj.condition)
      ..writeByte(25)
      ..write(obj.note);
  }
}

class Specimen_CollectionAdapter extends TypeAdapter<Specimen_Collection> {
  @override
  Specimen_Collection read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Specimen_Collection(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      collector: fields[3] as Reference,
      collectedDateTime: fields[4] as String,
      elementCollectedDateTime: fields[5] as Element,
      collectedPeriod: fields[6] as Period,
      duration: fields[7] as Duration,
      quantity: fields[8] as Quantity,
      method: fields[9] as CodeableConcept,
      bodySite: fields[10] as CodeableConcept,
      fastingStatusCodeableConcept: fields[11] as CodeableConcept,
      fastingStatusDuration: fields[12] as Duration,
    );
  }

  @override
  void write(BinaryWriter writer, Specimen_Collection obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.collector)
      ..writeByte(4)
      ..write(obj.collectedDateTime)
      ..writeByte(5)
      ..write(obj.elementCollectedDateTime)
      ..writeByte(6)
      ..write(obj.collectedPeriod)
      ..writeByte(7)
      ..write(obj.duration)
      ..writeByte(8)
      ..write(obj.quantity)
      ..writeByte(9)
      ..write(obj.method)
      ..writeByte(10)
      ..write(obj.bodySite)
      ..writeByte(11)
      ..write(obj.fastingStatusCodeableConcept)
      ..writeByte(12)
      ..write(obj.fastingStatusDuration);
  }
}

class Specimen_ProcessingAdapter extends TypeAdapter<Specimen_Processing> {
  @override
  Specimen_Processing read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Specimen_Processing(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      description: fields[3] as String,
      elementDescription: fields[4] as Element,
      procedure: fields[5] as CodeableConcept,
      additive: (fields[6] as List)?.cast<Reference>(),
      timeDateTime: fields[7] as String,
      elementTimeDateTime: fields[8] as Element,
      timePeriod: fields[9] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, Specimen_Processing obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.elementDescription)
      ..writeByte(5)
      ..write(obj.procedure)
      ..writeByte(6)
      ..write(obj.additive)
      ..writeByte(7)
      ..write(obj.timeDateTime)
      ..writeByte(8)
      ..write(obj.elementTimeDateTime)
      ..writeByte(9)
      ..write(obj.timePeriod);
  }
}

class Specimen_ContainerAdapter extends TypeAdapter<Specimen_Container> {
  @override
  Specimen_Container read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Specimen_Container(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identifier: (fields[3] as List)?.cast<Identifier>(),
      description: fields[4] as String,
      elementDescription: fields[5] as Element,
      type: fields[6] as CodeableConcept,
      capacity: fields[7] as Quantity,
      specimenQuantity: fields[8] as Quantity,
      additiveCodeableConcept: fields[9] as CodeableConcept,
      additiveReference: fields[10] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Specimen_Container obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.identifier)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.elementDescription)
      ..writeByte(6)
      ..write(obj.type)
      ..writeByte(7)
      ..write(obj.capacity)
      ..writeByte(8)
      ..write(obj.specimenQuantity)
      ..writeByte(9)
      ..write(obj.additiveCodeableConcept)
      ..writeByte(10)
      ..write(obj.additiveReference);
  }
}
