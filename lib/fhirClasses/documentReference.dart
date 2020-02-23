import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class DocumentReference {
  static Future<DocumentReference> newInstance({
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
    String docStatus,
    Element elementDocStatus,
    CodeableConcept type,
    List<CodeableConcept> category,
    Reference subject,
    DateTime date,
    Element elementDate,
    List<Reference> author,
    Reference authenticator,
    Reference custodian,
    List<DocumentReference_RelatesTo> relatesTo,
    String description,
    Element elementDescription,
    List<CodeableConcept> securityLabel,
    List<DocumentReference_Content> content,
    DocumentReference_Context context,
  }) async {
    var fhirDb = new DatabaseHelper();
    DocumentReference newDocumentReference = new DocumentReference(
      resourceType: 'DocumentReference',
      id: id ?? await fhirDb.newResourceId('DocumentReference'),
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
      docStatus: docStatus,
      elementDocStatus: elementDocStatus,
      type: type,
      category: category,
      subject: subject,
      date: date,
      elementDate: elementDate,
      author: author,
      authenticator: authenticator,
      custodian: custodian,
      relatesTo: relatesTo,
      description: description,
      elementDescription: elementDescription,
      securityLabel: securityLabel,
      content: content,
      context: context,
    );
    newDocumentReference.meta.createdAt = DateTime.now();
    newDocumentReference.meta.lastUpdated = newDocumentReference.meta.createdAt;
    int saved = await fhirDb.saveResource(newDocumentReference);
    return newDocumentReference;
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
  String resourceType = 'DocumentReference';
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
  String docStatus;
  @HiveField(16)
  Element elementDocStatus;
  @HiveField(17)
  CodeableConcept type;
  @HiveField(18)
  List<CodeableConcept> category;
  @HiveField(19)
  Reference subject;
  @HiveField(20)
  DateTime date;
  @HiveField(21)
  Element elementDate;
  @HiveField(22)
  List<Reference> author;
  @HiveField(23)
  Reference authenticator;
  @HiveField(24)
  Reference custodian;
  @HiveField(25)
  List<DocumentReference_RelatesTo> relatesTo;
  @HiveField(26)
  String description;
  @HiveField(27)
  Element elementDescription;
  @HiveField(28)
  List<CodeableConcept> securityLabel;
  @HiveField(29)
  List<DocumentReference_Content> content;
  @HiveField(30)
  DocumentReference_Context context;

  DocumentReference({
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
    this.docStatus,
    this.elementDocStatus,
    this.type,
    this.category,
    this.subject,
    this.date,
    this.elementDate,
    this.author,
    this.authenticator,
    this.custodian,
    this.relatesTo,
    this.description,
    this.elementDescription,
    this.securityLabel,
    @required this.content,
    this.context,
  });

  factory DocumentReference.fromJson(Map<String, dynamic> json) =>
      _$DocumentReferenceFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReferenceToJson(this);
}

class DocumentReference_RelatesTo {
  static Future<DocumentReference_RelatesTo> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    Reference target,
  }) async {
    var fhirDb = new DatabaseHelper();
    DocumentReference_RelatesTo newDocumentReference_RelatesTo =
        new DocumentReference_RelatesTo(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      target: target,
    );
    return newDocumentReference_RelatesTo;
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
  Reference target;

  DocumentReference_RelatesTo({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    @required this.target,
  });

  factory DocumentReference_RelatesTo.fromJson(Map<String, dynamic> json) =>
      _$DocumentReference_RelatesToFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReference_RelatesToToJson(this);
}

class DocumentReference_Content {
  static Future<DocumentReference_Content> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Attachment attachment,
    Coding format,
  }) async {
    var fhirDb = new DatabaseHelper();
    DocumentReference_Content newDocumentReference_Content =
        new DocumentReference_Content(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      attachment: attachment,
      format: format,
    );
    return newDocumentReference_Content;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Attachment attachment;
  @HiveField(4)
  Coding format;

  DocumentReference_Content({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.attachment,
    this.format,
  });

  factory DocumentReference_Content.fromJson(Map<String, dynamic> json) =>
      _$DocumentReference_ContentFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReference_ContentToJson(this);
}

class DocumentReference_Context {
  static Future<DocumentReference_Context> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Reference> encounter,
    List<CodeableConcept> event,
    Period period,
    CodeableConcept facilityType,
    CodeableConcept practiceSetting,
    Reference sourcePatientInfo,
    List<Reference> related,
  }) async {
    var fhirDb = new DatabaseHelper();
    DocumentReference_Context newDocumentReference_Context =
        new DocumentReference_Context(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      encounter: encounter,
      event: event,
      period: period,
      facilityType: facilityType,
      practiceSetting: practiceSetting,
      sourcePatientInfo: sourcePatientInfo,
      related: related,
    );
    return newDocumentReference_Context;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<Reference> encounter;
  @HiveField(4)
  List<CodeableConcept> event;
  @HiveField(5)
  Period period;
  @HiveField(6)
  CodeableConcept facilityType;
  @HiveField(7)
  CodeableConcept practiceSetting;
  @HiveField(8)
  Reference sourcePatientInfo;
  @HiveField(9)
  List<Reference> related;

  DocumentReference_Context({
    this.id,
    this.extension,
    this.modifierExtension,
    this.encounter,
    this.event,
    this.period,
    this.facilityType,
    this.practiceSetting,
    this.sourcePatientInfo,
    this.related,
  });

  factory DocumentReference_Context.fromJson(Map<String, dynamic> json) =>
      _$DocumentReference_ContextFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReference_ContextToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentReference _$DocumentReferenceFromJson(Map<String, dynamic> json) {
  return DocumentReference(
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
    docStatus: json['docStatus'] as String,
    elementDocStatus: json['elementDocStatus'] == null
        ? null
        : Element.fromJson(json['elementDocStatus'] as Map<String, dynamic>),
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
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    author: (json['author'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authenticator: json['authenticator'] == null
        ? null
        : Reference.fromJson(json['authenticator'] as Map<String, dynamic>),
    custodian: json['custodian'] == null
        ? null
        : Reference.fromJson(json['custodian'] as Map<String, dynamic>),
    relatesTo: (json['relatesTo'] as List)
        ?.map((e) => e == null
            ? null
            : DocumentReference_RelatesTo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    securityLabel: (json['securityLabel'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    content: (json['content'] as List)
        ?.map((e) => e == null
            ? null
            : DocumentReference_Content.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    context: json['context'] == null
        ? null
        : DocumentReference_Context.fromJson(
            json['context'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DocumentReferenceToJson(DocumentReference instance) {
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
  writeNotNull('docStatus', instance.docStatus);
  writeNotNull('elementDocStatus', instance.elementDocStatus?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull(
      'category', instance.category?.map((e) => e?.toJson())?.toList());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('author', instance.author?.map((e) => e?.toJson())?.toList());
  writeNotNull('authenticator', instance.authenticator?.toJson());
  writeNotNull('custodian', instance.custodian?.toJson());
  writeNotNull(
      'relatesTo', instance.relatesTo?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('securityLabel',
      instance.securityLabel?.map((e) => e?.toJson())?.toList());
  writeNotNull('content', instance.content?.map((e) => e?.toJson())?.toList());
  writeNotNull('context', instance.context?.toJson());
  return val;
}

DocumentReference_RelatesTo _$DocumentReference_RelatesToFromJson(
    Map<String, dynamic> json) {
  return DocumentReference_RelatesTo(
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
    target: json['target'] == null
        ? null
        : Reference.fromJson(json['target'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DocumentReference_RelatesToToJson(
    DocumentReference_RelatesTo instance) {
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
  writeNotNull('target', instance.target?.toJson());
  return val;
}

DocumentReference_Content _$DocumentReference_ContentFromJson(
    Map<String, dynamic> json) {
  return DocumentReference_Content(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attachment: json['attachment'] == null
        ? null
        : Attachment.fromJson(json['attachment'] as Map<String, dynamic>),
    format: json['format'] == null
        ? null
        : Coding.fromJson(json['format'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DocumentReference_ContentToJson(
    DocumentReference_Content instance) {
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
  writeNotNull('attachment', instance.attachment?.toJson());
  writeNotNull('format', instance.format?.toJson());
  return val;
}

DocumentReference_Context _$DocumentReference_ContextFromJson(
    Map<String, dynamic> json) {
  return DocumentReference_Context(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    encounter: (json['encounter'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    event: (json['event'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    facilityType: json['facilityType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['facilityType'] as Map<String, dynamic>),
    practiceSetting: json['practiceSetting'] == null
        ? null
        : CodeableConcept.fromJson(
            json['practiceSetting'] as Map<String, dynamic>),
    sourcePatientInfo: json['sourcePatientInfo'] == null
        ? null
        : Reference.fromJson(json['sourcePatientInfo'] as Map<String, dynamic>),
    related: (json['related'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DocumentReference_ContextToJson(
    DocumentReference_Context instance) {
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
      'encounter', instance.encounter?.map((e) => e?.toJson())?.toList());
  writeNotNull('event', instance.event?.map((e) => e?.toJson())?.toList());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('facilityType', instance.facilityType?.toJson());
  writeNotNull('practiceSetting', instance.practiceSetting?.toJson());
  writeNotNull('sourcePatientInfo', instance.sourcePatientInfo?.toJson());
  writeNotNull('related', instance.related?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DocumentReferenceAdapter extends TypeAdapter<DocumentReference> {
  @override
  DocumentReference read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DocumentReference(
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
      docStatus: fields[15] as String,
      elementDocStatus: fields[16] as Element,
      type: fields[17] as CodeableConcept,
      category: (fields[18] as List)?.cast<CodeableConcept>(),
      subject: fields[19] as Reference,
      date: fields[20] as DateTime,
      elementDate: fields[21] as Element,
      author: (fields[22] as List)?.cast<Reference>(),
      authenticator: fields[23] as Reference,
      custodian: fields[24] as Reference,
      relatesTo: (fields[25] as List)?.cast<DocumentReference_RelatesTo>(),
      description: fields[26] as String,
      elementDescription: fields[27] as Element,
      securityLabel: (fields[28] as List)?.cast<CodeableConcept>(),
      content: (fields[29] as List)?.cast<DocumentReference_Content>(),
      context: fields[30] as DocumentReference_Context,
    );
  }

  @override
  void write(BinaryWriter writer, DocumentReference obj) {
    writer
      ..writeByte(31)
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
      ..write(obj.docStatus)
      ..writeByte(16)
      ..write(obj.elementDocStatus)
      ..writeByte(17)
      ..write(obj.type)
      ..writeByte(18)
      ..write(obj.category)
      ..writeByte(19)
      ..write(obj.subject)
      ..writeByte(20)
      ..write(obj.date)
      ..writeByte(21)
      ..write(obj.elementDate)
      ..writeByte(22)
      ..write(obj.author)
      ..writeByte(23)
      ..write(obj.authenticator)
      ..writeByte(24)
      ..write(obj.custodian)
      ..writeByte(25)
      ..write(obj.relatesTo)
      ..writeByte(26)
      ..write(obj.description)
      ..writeByte(27)
      ..write(obj.elementDescription)
      ..writeByte(28)
      ..write(obj.securityLabel)
      ..writeByte(29)
      ..write(obj.content)
      ..writeByte(30)
      ..write(obj.context);
  }
}

class DocumentReference_RelatesToAdapter
    extends TypeAdapter<DocumentReference_RelatesTo> {
  @override
  DocumentReference_RelatesTo read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DocumentReference_RelatesTo(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as String,
      elementCode: fields[4] as Element,
      target: fields[5] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, DocumentReference_RelatesTo obj) {
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
      ..write(obj.elementCode)
      ..writeByte(5)
      ..write(obj.target);
  }
}

class DocumentReference_ContentAdapter
    extends TypeAdapter<DocumentReference_Content> {
  @override
  DocumentReference_Content read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DocumentReference_Content(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      attachment: fields[3] as Attachment,
      format: fields[4] as Coding,
    );
  }

  @override
  void write(BinaryWriter writer, DocumentReference_Content obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.attachment)
      ..writeByte(4)
      ..write(obj.format);
  }
}

class DocumentReference_ContextAdapter
    extends TypeAdapter<DocumentReference_Context> {
  @override
  DocumentReference_Context read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DocumentReference_Context(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      encounter: (fields[3] as List)?.cast<Reference>(),
      event: (fields[4] as List)?.cast<CodeableConcept>(),
      period: fields[5] as Period,
      facilityType: fields[6] as CodeableConcept,
      practiceSetting: fields[7] as CodeableConcept,
      sourcePatientInfo: fields[8] as Reference,
      related: (fields[9] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, DocumentReference_Context obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.encounter)
      ..writeByte(4)
      ..write(obj.event)
      ..writeByte(5)
      ..write(obj.period)
      ..writeByte(6)
      ..write(obj.facilityType)
      ..writeByte(7)
      ..write(obj.practiceSetting)
      ..writeByte(8)
      ..write(obj.sourcePatientInfo)
      ..writeByte(9)
      ..write(obj.related);
  }
}
