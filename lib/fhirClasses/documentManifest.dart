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

class DocumentManifest {
  static Future<DocumentManifest> newInstance({
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
    Identifier masterIdentifier,
    List<Identifier> identifier,
    String status,
    Element elementStatus,
    CodeableConcept type,
    Reference subject,
    DateTime created,
    Element elementCreated,
    List<Reference> author,
    List<Reference> recipient,
    String source,
    Element elementSource,
    String description,
    Element elementDescription,
    List<Reference> content,
    List<DocumentManifest_Related> related,
  }) async {
    var fhirDb = new DatabaseHelper();
    DocumentManifest newDocumentManifest = new DocumentManifest(
      resourceType: 'DocumentManifest',
      id: id ?? await fhirDb.newResourceId('DocumentManifest'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      masterIdentifier: masterIdentifier,
      identifier: identifier,
      status: status,
      elementStatus: elementStatus,
      type: type,
      subject: subject,
      created: created,
      elementCreated: elementCreated,
      author: author,
      recipient: recipient,
      source: source,
      elementSource: elementSource,
      description: description,
      elementDescription: elementDescription,
      content: content,
      related: related,
    );
    newDocumentManifest.meta.createdAt = DateTime.now();
    newDocumentManifest.meta.lastUpdated = newDocumentManifest.meta.createdAt;
    int saved = await fhirDb.saveResource(newDocumentManifest);
    return newDocumentManifest;
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
  String resourceType = 'DocumentManifest';
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
  Identifier masterIdentifier;
  @HiveField(12)
  List<Identifier> identifier;
  @HiveField(13)
  String status;
  @HiveField(14)
  Element elementStatus;
  @HiveField(15)
  CodeableConcept type;
  @HiveField(16)
  Reference subject;
  @HiveField(17)
  DateTime created;
  @HiveField(18)
  Element elementCreated;
  @HiveField(19)
  List<Reference> author;
  @HiveField(20)
  List<Reference> recipient;
  @HiveField(21)
  String source;
  @HiveField(22)
  Element elementSource;
  @HiveField(23)
  String description;
  @HiveField(24)
  Element elementDescription;
  @HiveField(25)
  List<Reference> content;
  @HiveField(26)
  List<DocumentManifest_Related> related;

  DocumentManifest({
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
    this.masterIdentifier,
    this.identifier,
    this.status,
    this.elementStatus,
    this.type,
    this.subject,
    this.created,
    this.elementCreated,
    this.author,
    this.recipient,
    this.source,
    this.elementSource,
    this.description,
    this.elementDescription,
    @required this.content,
    this.related,
  });

  factory DocumentManifest.fromJson(Map<String, dynamic> json) =>
      _$DocumentManifestFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentManifestToJson(this);
}

class DocumentManifest_Related {
  static Future<DocumentManifest_Related> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Identifier identifier,
    Reference ref,
  }) async {
    var fhirDb = new DatabaseHelper();
    DocumentManifest_Related newDocumentManifest_Related =
        new DocumentManifest_Related(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      ref: ref,
    );
    return newDocumentManifest_Related;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Identifier identifier;
  @HiveField(4)
  Reference ref;

  DocumentManifest_Related({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.ref,
  });

  factory DocumentManifest_Related.fromJson(Map<String, dynamic> json) =>
      _$DocumentManifest_RelatedFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentManifest_RelatedToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentManifest _$DocumentManifestFromJson(Map<String, dynamic> json) {
  return DocumentManifest(
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
    masterIdentifier: json['masterIdentifier'] == null
        ? null
        : Identifier.fromJson(json['masterIdentifier'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    author: (json['author'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    recipient: (json['recipient'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    source: json['source'] as String,
    elementSource: json['elementSource'] == null
        ? null
        : Element.fromJson(json['elementSource'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    content: (json['content'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    related: (json['related'] as List)
        ?.map((e) => e == null
            ? null
            : DocumentManifest_Related.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DocumentManifestToJson(DocumentManifest instance) {
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
  writeNotNull('masterIdentifier', instance.masterIdentifier?.toJson());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('elementCreated', instance.elementCreated?.toJson());
  writeNotNull('author', instance.author?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'recipient', instance.recipient?.map((e) => e?.toJson())?.toList());
  writeNotNull('source', instance.source);
  writeNotNull('elementSource', instance.elementSource?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('content', instance.content?.map((e) => e?.toJson())?.toList());
  writeNotNull('related', instance.related?.map((e) => e?.toJson())?.toList());
  return val;
}

DocumentManifest_Related _$DocumentManifest_RelatedFromJson(
    Map<String, dynamic> json) {
  return DocumentManifest_Related(
    id: json['id'] as String,
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
    ref: json['ref'] == null
        ? null
        : Reference.fromJson(json['ref'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DocumentManifest_RelatedToJson(
    DocumentManifest_Related instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('ref', instance.ref?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DocumentManifestAdapter extends TypeAdapter<DocumentManifest> {
  @override
  DocumentManifest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DocumentManifest(
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
      masterIdentifier: fields[11] as Identifier,
      identifier: (fields[12] as List)?.cast<Identifier>(),
      status: fields[13] as String,
      elementStatus: fields[14] as Element,
      type: fields[15] as CodeableConcept,
      subject: fields[16] as Reference,
      created: fields[17] as DateTime,
      elementCreated: fields[18] as Element,
      author: (fields[19] as List)?.cast<Reference>(),
      recipient: (fields[20] as List)?.cast<Reference>(),
      source: fields[21] as String,
      elementSource: fields[22] as Element,
      description: fields[23] as String,
      elementDescription: fields[24] as Element,
      content: (fields[25] as List)?.cast<Reference>(),
      related: (fields[26] as List)?.cast<DocumentManifest_Related>(),
    );
  }

  @override
  void write(BinaryWriter writer, DocumentManifest obj) {
    writer
      ..writeByte(27)
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
      ..write(obj.masterIdentifier)
      ..writeByte(12)
      ..write(obj.identifier)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.elementStatus)
      ..writeByte(15)
      ..write(obj.type)
      ..writeByte(16)
      ..write(obj.subject)
      ..writeByte(17)
      ..write(obj.created)
      ..writeByte(18)
      ..write(obj.elementCreated)
      ..writeByte(19)
      ..write(obj.author)
      ..writeByte(20)
      ..write(obj.recipient)
      ..writeByte(21)
      ..write(obj.source)
      ..writeByte(22)
      ..write(obj.elementSource)
      ..writeByte(23)
      ..write(obj.description)
      ..writeByte(24)
      ..write(obj.elementDescription)
      ..writeByte(25)
      ..write(obj.content)
      ..writeByte(26)
      ..write(obj.related);
  }
}

class DocumentManifest_RelatedAdapter
    extends TypeAdapter<DocumentManifest_Related> {
  @override
  DocumentManifest_Related read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DocumentManifest_Related(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identifier: fields[3] as Identifier,
      ref: fields[4] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, DocumentManifest_Related obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.identifier)
      ..writeByte(4)
      ..write(obj.ref);
  }
}
