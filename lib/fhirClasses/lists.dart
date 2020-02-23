import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Lists {
  static Future<Lists> newInstance({
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
    String status,
    Element elementStatus,
    String mode,
    Element elementMode,
    String title,
    Element elementTitle,
    CodeableConcept code,
    Reference subject,
    Reference encounter,
    DateTime date,
    Element elementDate,
    Reference source,
    CodeableConcept orderedBy,
    List<Annotation> note,
    List<List_Entry> entry,
    CodeableConcept emptyReason,
  }) async {
    var fhirDb = new DatabaseHelper();
    Lists newLists = new Lists(
      resourceType: 'List',
      id: id ?? await fhirDb.newResourceId('List'),
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
      status: status,
      elementStatus: elementStatus,
      mode: mode,
      elementMode: elementMode,
      title: title,
      elementTitle: elementTitle,
      code: code,
      subject: subject,
      encounter: encounter,
      date: date,
      elementDate: elementDate,
      source: source,
      orderedBy: orderedBy,
      note: note,
      entry: entry,
      emptyReason: emptyReason,
    );
    newLists.meta.createdAt = DateTime.now();
    newLists.meta.lastUpdated = newLists.meta.createdAt;
    int saved = await fhirDb.saveResource(newLists);
    return newLists;
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
  String resourceType = 'List';
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
  String status;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  String mode;
  @HiveField(15)
  Element elementMode;
  @HiveField(16)
  String title;
  @HiveField(17)
  Element elementTitle;
  @HiveField(18)
  CodeableConcept code;
  @HiveField(19)
  Reference subject;
  @HiveField(20)
  Reference encounter;
  @HiveField(21)
  DateTime date;
  @HiveField(22)
  Element elementDate;
  @HiveField(23)
  Reference source;
  @HiveField(24)
  CodeableConcept orderedBy;
  @HiveField(25)
  List<Annotation> note;
  @HiveField(26)
  List<List_Entry> entry;
  @HiveField(27)
  CodeableConcept emptyReason;

  Lists({
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
    this.status,
    this.elementStatus,
    this.mode,
    this.elementMode,
    this.title,
    this.elementTitle,
    this.code,
    this.subject,
    this.encounter,
    this.date,
    this.elementDate,
    this.source,
    this.orderedBy,
    this.note,
    this.entry,
    this.emptyReason,
  });

  factory Lists.fromJson(Map<String, dynamic> json) => _$ListsFromJson(json);
  Map<String, dynamic> toJson() => _$ListsToJson(this);
}

class List_Entry {
  static Future<List_Entry> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept flag,
    bool deleted,
    Element elementDeleted,
    DateTime date,
    Element elementDate,
    Reference item,
  }) async {
    var fhirDb = new DatabaseHelper();
    List_Entry newList_Entry = new List_Entry(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      flag: flag,
      deleted: deleted,
      elementDeleted: elementDeleted,
      date: date,
      elementDate: elementDate,
      item: item,
    );
    return newList_Entry;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept flag;
  @HiveField(4)
  bool deleted;
  @HiveField(5)
  Element elementDeleted;
  @HiveField(6)
  DateTime date;
  @HiveField(7)
  Element elementDate;
  @HiveField(8)
  Reference item;

  List_Entry({
    this.id,
    this.extension,
    this.modifierExtension,
    this.flag,
    this.deleted,
    this.elementDeleted,
    this.date,
    this.elementDate,
    @required this.item,
  });

  factory List_Entry.fromJson(Map<String, dynamic> json) =>
      _$List_EntryFromJson(json);
  Map<String, dynamic> toJson() => _$List_EntryToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lists _$ListsFromJson(Map<String, dynamic> json) {
  return Lists(
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
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
    source: json['source'] == null
        ? null
        : Reference.fromJson(json['source'] as Map<String, dynamic>),
    orderedBy: json['orderedBy'] == null
        ? null
        : CodeableConcept.fromJson(json['orderedBy'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    entry: (json['entry'] as List)
        ?.map((e) =>
            e == null ? null : List_Entry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    emptyReason: json['emptyReason'] == null
        ? null
        : CodeableConcept.fromJson(json['emptyReason'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ListsToJson(Lists instance) {
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
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('mode', instance.mode);
  writeNotNull('elementMode', instance.elementMode?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('source', instance.source?.toJson());
  writeNotNull('orderedBy', instance.orderedBy?.toJson());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull('entry', instance.entry?.map((e) => e?.toJson())?.toList());
  writeNotNull('emptyReason', instance.emptyReason?.toJson());
  return val;
}

List_Entry _$List_EntryFromJson(Map<String, dynamic> json) {
  return List_Entry(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    flag: json['flag'] == null
        ? null
        : CodeableConcept.fromJson(json['flag'] as Map<String, dynamic>),
    deleted: json['deleted'] as bool,
    elementDeleted: json['elementDeleted'] == null
        ? null
        : Element.fromJson(json['elementDeleted'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    item: json['item'] == null
        ? null
        : Reference.fromJson(json['item'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$List_EntryToJson(List_Entry instance) {
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
  writeNotNull('flag', instance.flag?.toJson());
  writeNotNull('deleted', instance.deleted);
  writeNotNull('elementDeleted', instance.elementDeleted?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('item', instance.item?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ListsAdapter extends TypeAdapter<Lists> {
  @override
  Lists read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Lists(
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
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      mode: fields[14] as String,
      elementMode: fields[15] as Element,
      title: fields[16] as String,
      elementTitle: fields[17] as Element,
      code: fields[18] as CodeableConcept,
      subject: fields[19] as Reference,
      encounter: fields[20] as Reference,
      date: fields[21] as DateTime,
      elementDate: fields[22] as Element,
      source: fields[23] as Reference,
      orderedBy: fields[24] as CodeableConcept,
      note: (fields[25] as List)?.cast<Annotation>(),
      entry: (fields[26] as List)?.cast<List_Entry>(),
      emptyReason: fields[27] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, Lists obj) {
    writer
      ..writeByte(28)
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
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.mode)
      ..writeByte(15)
      ..write(obj.elementMode)
      ..writeByte(16)
      ..write(obj.title)
      ..writeByte(17)
      ..write(obj.elementTitle)
      ..writeByte(18)
      ..write(obj.code)
      ..writeByte(19)
      ..write(obj.subject)
      ..writeByte(20)
      ..write(obj.encounter)
      ..writeByte(21)
      ..write(obj.date)
      ..writeByte(22)
      ..write(obj.elementDate)
      ..writeByte(23)
      ..write(obj.source)
      ..writeByte(24)
      ..write(obj.orderedBy)
      ..writeByte(25)
      ..write(obj.note)
      ..writeByte(26)
      ..write(obj.entry)
      ..writeByte(27)
      ..write(obj.emptyReason);
  }
}

class List_EntryAdapter extends TypeAdapter<List_Entry> {
  @override
  List_Entry read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return List_Entry(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      flag: fields[3] as CodeableConcept,
      deleted: fields[4] as bool,
      elementDeleted: fields[5] as Element,
      date: fields[6] as DateTime,
      elementDate: fields[7] as Element,
      item: fields[8] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, List_Entry obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.flag)
      ..writeByte(4)
      ..write(obj.deleted)
      ..writeByte(5)
      ..write(obj.elementDeleted)
      ..writeByte(6)
      ..write(obj.date)
      ..writeByte(7)
      ..write(obj.elementDate)
      ..writeByte(8)
      ..write(obj.item);
  }
}
