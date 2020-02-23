import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Composition {
  static Future<Composition> newInstance({
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
    String status,
    Element elementStatus,
    CodeableConcept type,
    List<CodeableConcept> category,
    Reference subject,
    Reference encounter,
    DateTime date,
    Element elementDate,
    List<Reference> author,
    String title,
    Element elementTitle,
    String confidentiality,
    Element elementConfidentiality,
    List<Composition_Attester> attester,
    Reference custodian,
    List<Composition_RelatesTo> relatesTo,
    List<Composition_Event> event,
    List<Composition_Section> section,
  }) async {
    var fhirDb = new DatabaseHelper();
    Composition newComposition = new Composition(
      resourceType: 'Composition',
      id: id ?? await fhirDb.newResourceId('Composition'),
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
      type: type,
      category: category,
      subject: subject,
      encounter: encounter,
      date: date,
      elementDate: elementDate,
      author: author,
      title: title,
      elementTitle: elementTitle,
      confidentiality: confidentiality,
      elementConfidentiality: elementConfidentiality,
      attester: attester,
      custodian: custodian,
      relatesTo: relatesTo,
      event: event,
      section: section,
    );
    newComposition.meta.createdAt = DateTime.now();
    newComposition.meta.lastUpdated = newComposition.meta.createdAt;
    int saved = await fhirDb.saveResource(newComposition);
    return newComposition;
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
  String resourceType = 'Composition';
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
  String status;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  CodeableConcept type;
  @HiveField(15)
  List<CodeableConcept> category;
  @HiveField(16)
  Reference subject;
  @HiveField(17)
  Reference encounter;
  @HiveField(18)
  DateTime date;
  @HiveField(19)
  Element elementDate;
  @HiveField(20)
  List<Reference> author;
  @HiveField(21)
  String title;
  @HiveField(22)
  Element elementTitle;
  @HiveField(23)
  String confidentiality;
  @HiveField(24)
  Element elementConfidentiality;
  @HiveField(25)
  List<Composition_Attester> attester;
  @HiveField(26)
  Reference custodian;
  @HiveField(27)
  List<Composition_RelatesTo> relatesTo;
  @HiveField(28)
  List<Composition_Event> event;
  @HiveField(29)
  List<Composition_Section> section;

  Composition({
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
    @required this.type,
    this.category,
    this.subject,
    this.encounter,
    this.date,
    this.elementDate,
    @required this.author,
    this.title,
    this.elementTitle,
    this.confidentiality,
    this.elementConfidentiality,
    this.attester,
    this.custodian,
    this.relatesTo,
    this.event,
    this.section,
  });

  factory Composition.fromJson(Map<String, dynamic> json) =>
      _$CompositionFromJson(json);
  Map<String, dynamic> toJson() => _$CompositionToJson(this);
}

class Composition_Attester {
  static Future<Composition_Attester> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String mode,
    Element elementMode,
    DateTime time,
    Element elementTime,
    Reference party,
  }) async {
    var fhirDb = new DatabaseHelper();
    Composition_Attester newComposition_Attester = new Composition_Attester(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      mode: mode,
      elementMode: elementMode,
      time: time,
      elementTime: elementTime,
      party: party,
    );
    return newComposition_Attester;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String mode;
  @HiveField(4)
  Element elementMode;
  @HiveField(5)
  DateTime time;
  @HiveField(6)
  Element elementTime;
  @HiveField(7)
  Reference party;

  Composition_Attester({
    this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.elementMode,
    this.time,
    this.elementTime,
    this.party,
  });

  factory Composition_Attester.fromJson(Map<String, dynamic> json) =>
      _$Composition_AttesterFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_AttesterToJson(this);
}

class Composition_RelatesTo {
  static Future<Composition_RelatesTo> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    Identifier targetIdentifier,
    Reference targetReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Composition_RelatesTo newComposition_RelatesTo = new Composition_RelatesTo(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      targetIdentifier: targetIdentifier,
      targetReference: targetReference,
    );
    return newComposition_RelatesTo;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String code;
  @HiveField(4)
  Element elementCode;
  @HiveField(5)
  Identifier targetIdentifier;
  @HiveField(6)
  Reference targetReference;

  Composition_RelatesTo({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.targetIdentifier,
    this.targetReference,
  });

  factory Composition_RelatesTo.fromJson(Map<String, dynamic> json) =>
      _$Composition_RelatesToFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_RelatesToToJson(this);
}

class Composition_Event {
  static Future<Composition_Event> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<CodeableConcept> code,
    Period period,
    List<Reference> detail,
  }) async {
    var fhirDb = new DatabaseHelper();
    Composition_Event newComposition_Event = new Composition_Event(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      period: period,
      detail: detail,
    );
    return newComposition_Event;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<CodeableConcept> code;
  @HiveField(4)
  Period period;
  @HiveField(5)
  List<Reference> detail;

  Composition_Event({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.period,
    this.detail,
  });

  factory Composition_Event.fromJson(Map<String, dynamic> json) =>
      _$Composition_EventFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_EventToJson(this);
}

class Composition_Section {
  static Future<Composition_Section> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String title,
    Element elementTitle,
    CodeableConcept code,
    List<Reference> author,
    Reference focus,
    Narrative text,
    String mode,
    Element elementMode,
    CodeableConcept orderedBy,
    List<Reference> entry,
    CodeableConcept emptyReason,
    List<Composition_Section> section,
  }) async {
    var fhirDb = new DatabaseHelper();
    Composition_Section newComposition_Section = new Composition_Section(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      title: title,
      elementTitle: elementTitle,
      code: code,
      author: author,
      focus: focus,
      text: text,
      mode: mode,
      elementMode: elementMode,
      orderedBy: orderedBy,
      entry: entry,
      emptyReason: emptyReason,
      section: section,
    );
    return newComposition_Section;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String title;
  @HiveField(4)
  Element elementTitle;
  @HiveField(5)
  CodeableConcept code;
  @HiveField(6)
  List<Reference> author;
  @HiveField(7)
  Reference focus;
  @HiveField(8)
  Narrative text;
  @HiveField(9)
  String mode;
  @HiveField(10)
  Element elementMode;
  @HiveField(11)
  CodeableConcept orderedBy;
  @HiveField(12)
  List<Reference> entry;
  @HiveField(13)
  CodeableConcept emptyReason;
  @HiveField(14)
  List<Composition_Section> section;

  Composition_Section({
    this.id,
    this.extension,
    this.modifierExtension,
    this.title,
    this.elementTitle,
    this.code,
    this.author,
    this.focus,
    this.text,
    this.mode,
    this.elementMode,
    this.orderedBy,
    this.entry,
    this.emptyReason,
    this.section,
  });

  factory Composition_Section.fromJson(Map<String, dynamic> json) =>
      _$Composition_SectionFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_SectionToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Composition _$CompositionFromJson(Map<String, dynamic> json) {
  return Composition(
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    author: (json['author'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    confidentiality: json['confidentiality'] as String,
    elementConfidentiality: json['elementConfidentiality'] == null
        ? null
        : Element.fromJson(
            json['elementConfidentiality'] as Map<String, dynamic>),
    attester: (json['attester'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_Attester.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    custodian: json['custodian'] == null
        ? null
        : Reference.fromJson(json['custodian'] as Map<String, dynamic>),
    relatesTo: (json['relatesTo'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_RelatesTo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    event: (json['event'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_Event.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    section: (json['section'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_Section.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CompositionToJson(Composition instance) {
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
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull(
      'category', instance.category?.map((e) => e?.toJson())?.toList());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('author', instance.author?.map((e) => e?.toJson())?.toList());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('confidentiality', instance.confidentiality);
  writeNotNull(
      'elementConfidentiality', instance.elementConfidentiality?.toJson());
  writeNotNull(
      'attester', instance.attester?.map((e) => e?.toJson())?.toList());
  writeNotNull('custodian', instance.custodian?.toJson());
  writeNotNull(
      'relatesTo', instance.relatesTo?.map((e) => e?.toJson())?.toList());
  writeNotNull('event', instance.event?.map((e) => e?.toJson())?.toList());
  writeNotNull('section', instance.section?.map((e) => e?.toJson())?.toList());
  return val;
}

Composition_Attester _$Composition_AttesterFromJson(Map<String, dynamic> json) {
  return Composition_Attester(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
    elementTime: json['elementTime'] == null
        ? null
        : Element.fromJson(json['elementTime'] as Map<String, dynamic>),
    party: json['party'] == null
        ? null
        : Reference.fromJson(json['party'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Composition_AttesterToJson(
    Composition_Attester instance) {
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
  writeNotNull('mode', instance.mode);
  writeNotNull('elementMode', instance.elementMode?.toJson());
  writeNotNull('time', instance.time?.toIso8601String());
  writeNotNull('elementTime', instance.elementTime?.toJson());
  writeNotNull('party', instance.party?.toJson());
  return val;
}

Composition_RelatesTo _$Composition_RelatesToFromJson(
    Map<String, dynamic> json) {
  return Composition_RelatesTo(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    targetIdentifier: json['targetIdentifier'] == null
        ? null
        : Identifier.fromJson(json['targetIdentifier'] as Map<String, dynamic>),
    targetReference: json['targetReference'] == null
        ? null
        : Reference.fromJson(json['targetReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Composition_RelatesToToJson(
    Composition_RelatesTo instance) {
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
  writeNotNull('code', instance.code);
  writeNotNull('elementCode', instance.elementCode?.toJson());
  writeNotNull('targetIdentifier', instance.targetIdentifier?.toJson());
  writeNotNull('targetReference', instance.targetReference?.toJson());
  return val;
}

Composition_Event _$Composition_EventFromJson(Map<String, dynamic> json) {
  return Composition_Event(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    detail: (json['detail'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Composition_EventToJson(Composition_Event instance) {
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
  writeNotNull('code', instance.code?.map((e) => e?.toJson())?.toList());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('detail', instance.detail?.map((e) => e?.toJson())?.toList());
  return val;
}

Composition_Section _$Composition_SectionFromJson(Map<String, dynamic> json) {
  return Composition_Section(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    author: (json['author'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    focus: json['focus'] == null
        ? null
        : Reference.fromJson(json['focus'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    orderedBy: json['orderedBy'] == null
        ? null
        : CodeableConcept.fromJson(json['orderedBy'] as Map<String, dynamic>),
    entry: (json['entry'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    emptyReason: json['emptyReason'] == null
        ? null
        : CodeableConcept.fromJson(json['emptyReason'] as Map<String, dynamic>),
    section: (json['section'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_Section.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Composition_SectionToJson(Composition_Section instance) {
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
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('author', instance.author?.map((e) => e?.toJson())?.toList());
  writeNotNull('focus', instance.focus?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('mode', instance.mode);
  writeNotNull('elementMode', instance.elementMode?.toJson());
  writeNotNull('orderedBy', instance.orderedBy?.toJson());
  writeNotNull('entry', instance.entry?.map((e) => e?.toJson())?.toList());
  writeNotNull('emptyReason', instance.emptyReason?.toJson());
  writeNotNull('section', instance.section?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CompositionAdapter extends TypeAdapter<Composition> {
  @override
  Composition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Composition(
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
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      type: fields[14] as CodeableConcept,
      category: (fields[15] as List)?.cast<CodeableConcept>(),
      subject: fields[16] as Reference,
      encounter: fields[17] as Reference,
      date: fields[18] as DateTime,
      elementDate: fields[19] as Element,
      author: (fields[20] as List)?.cast<Reference>(),
      title: fields[21] as String,
      elementTitle: fields[22] as Element,
      confidentiality: fields[23] as String,
      elementConfidentiality: fields[24] as Element,
      attester: (fields[25] as List)?.cast<Composition_Attester>(),
      custodian: fields[26] as Reference,
      relatesTo: (fields[27] as List)?.cast<Composition_RelatesTo>(),
      event: (fields[28] as List)?.cast<Composition_Event>(),
      section: (fields[29] as List)?.cast<Composition_Section>(),
    );
  }

  @override
  void write(BinaryWriter writer, Composition obj) {
    writer
      ..writeByte(30)
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
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.category)
      ..writeByte(16)
      ..write(obj.subject)
      ..writeByte(17)
      ..write(obj.encounter)
      ..writeByte(18)
      ..write(obj.date)
      ..writeByte(19)
      ..write(obj.elementDate)
      ..writeByte(20)
      ..write(obj.author)
      ..writeByte(21)
      ..write(obj.title)
      ..writeByte(22)
      ..write(obj.elementTitle)
      ..writeByte(23)
      ..write(obj.confidentiality)
      ..writeByte(24)
      ..write(obj.elementConfidentiality)
      ..writeByte(25)
      ..write(obj.attester)
      ..writeByte(26)
      ..write(obj.custodian)
      ..writeByte(27)
      ..write(obj.relatesTo)
      ..writeByte(28)
      ..write(obj.event)
      ..writeByte(29)
      ..write(obj.section);
  }
}

class Composition_AttesterAdapter extends TypeAdapter<Composition_Attester> {
  @override
  Composition_Attester read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Composition_Attester(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      mode: fields[3] as String,
      elementMode: fields[4] as Element,
      time: fields[5] as DateTime,
      elementTime: fields[6] as Element,
      party: fields[7] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Composition_Attester obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.mode)
      ..writeByte(4)
      ..write(obj.elementMode)
      ..writeByte(5)
      ..write(obj.time)
      ..writeByte(6)
      ..write(obj.elementTime)
      ..writeByte(7)
      ..write(obj.party);
  }
}

class Composition_RelatesToAdapter extends TypeAdapter<Composition_RelatesTo> {
  @override
  Composition_RelatesTo read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Composition_RelatesTo(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as String,
      elementCode: fields[4] as Element,
      targetIdentifier: fields[5] as Identifier,
      targetReference: fields[6] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Composition_RelatesTo obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.elementCode)
      ..writeByte(5)
      ..write(obj.targetIdentifier)
      ..writeByte(6)
      ..write(obj.targetReference);
  }
}

class Composition_EventAdapter extends TypeAdapter<Composition_Event> {
  @override
  Composition_Event read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Composition_Event(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: (fields[3] as List)?.cast<CodeableConcept>(),
      period: fields[4] as Period,
      detail: (fields[5] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, Composition_Event obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.period)
      ..writeByte(5)
      ..write(obj.detail);
  }
}

class Composition_SectionAdapter extends TypeAdapter<Composition_Section> {
  @override
  Composition_Section read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Composition_Section(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      title: fields[3] as String,
      elementTitle: fields[4] as Element,
      code: fields[5] as CodeableConcept,
      author: (fields[6] as List)?.cast<Reference>(),
      focus: fields[7] as Reference,
      text: fields[8] as Narrative,
      mode: fields[9] as String,
      elementMode: fields[10] as Element,
      orderedBy: fields[11] as CodeableConcept,
      entry: (fields[12] as List)?.cast<Reference>(),
      emptyReason: fields[13] as CodeableConcept,
      section: (fields[14] as List)?.cast<Composition_Section>(),
    );
  }

  @override
  void write(BinaryWriter writer, Composition_Section obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.elementTitle)
      ..writeByte(5)
      ..write(obj.code)
      ..writeByte(6)
      ..write(obj.author)
      ..writeByte(7)
      ..write(obj.focus)
      ..writeByte(8)
      ..write(obj.text)
      ..writeByte(9)
      ..write(obj.mode)
      ..writeByte(10)
      ..write(obj.elementMode)
      ..writeByte(11)
      ..write(obj.orderedBy)
      ..writeByte(12)
      ..write(obj.entry)
      ..writeByte(13)
      ..write(obj.emptyReason)
      ..writeByte(14)
      ..write(obj.section);
  }
}
