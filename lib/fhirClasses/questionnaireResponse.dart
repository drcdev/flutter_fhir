import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class QuestionnaireResponse {
  static Future<QuestionnaireResponse> newInstance({
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
    List<Reference> basedOn,
    List<Reference> partOf,
    String questionnaire,
    String status,
    Element elementStatus,
    Reference subject,
    Reference encounter,
    DateTime authored,
    Element elementAuthored,
    Reference author,
    Reference source,
    List<QuestionnaireResponse_Item> item,
  }) async {
    var fhirDb = new DatabaseHelper();
    QuestionnaireResponse newQuestionnaireResponse = new QuestionnaireResponse(
      resourceType: 'QuestionnaireResponse',
      id: id ?? await fhirDb.newResourceId('QuestionnaireResponse'),
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
      basedOn: basedOn,
      partOf: partOf,
      questionnaire: questionnaire,
      status: status,
      elementStatus: elementStatus,
      subject: subject,
      encounter: encounter,
      authored: authored,
      elementAuthored: elementAuthored,
      author: author,
      source: source,
      item: item,
    );
    newQuestionnaireResponse.meta.createdAt = DateTime.now();
    newQuestionnaireResponse.meta.lastUpdated =
        newQuestionnaireResponse.meta.createdAt;
    int saved = await fhirDb.saveResource(newQuestionnaireResponse);
    return newQuestionnaireResponse;
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
  String resourceType = 'QuestionnaireResponse';
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
  List<Reference> basedOn;
  @HiveField(13)
  List<Reference> partOf;
  @HiveField(14)
  String questionnaire;
  @HiveField(15)
  String status;
  @HiveField(16)
  Element elementStatus;
  @HiveField(17)
  Reference subject;
  @HiveField(18)
  Reference encounter;
  @HiveField(19)
  DateTime authored;
  @HiveField(20)
  Element elementAuthored;
  @HiveField(21)
  Reference author;
  @HiveField(22)
  Reference source;
  @HiveField(23)
  List<QuestionnaireResponse_Item> item;

  QuestionnaireResponse({
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
    this.basedOn,
    this.partOf,
    this.questionnaire,
    this.status,
    this.elementStatus,
    this.subject,
    this.encounter,
    this.authored,
    this.elementAuthored,
    this.author,
    this.source,
    this.item,
  });

  factory QuestionnaireResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireResponseFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionnaireResponseToJson(this);
}

class QuestionnaireResponse_Item {
  static Future<QuestionnaireResponse_Item> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String linkId,
    Element elementLinkId,
    String definition,
    Element elementDefinition,
    String text,
    Element elementText,
    List<QuestionnaireResponse_Answer> answer,
    List<QuestionnaireResponse_Item> item,
  }) async {
    var fhirDb = new DatabaseHelper();
    QuestionnaireResponse_Item newQuestionnaireResponse_Item =
        new QuestionnaireResponse_Item(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      linkId: linkId,
      elementLinkId: elementLinkId,
      definition: definition,
      elementDefinition: elementDefinition,
      text: text,
      elementText: elementText,
      answer: answer,
      item: item,
    );
    return newQuestionnaireResponse_Item;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String linkId;
  @HiveField(4)
  Element elementLinkId;
  @HiveField(5)
  String definition;
  @HiveField(6)
  Element elementDefinition;
  @HiveField(7)
  String text;
  @HiveField(8)
  Element elementText;
  @HiveField(9)
  List<QuestionnaireResponse_Answer> answer;
  @HiveField(10)
  List<QuestionnaireResponse_Item> item;

  QuestionnaireResponse_Item({
    this.id,
    this.extension,
    this.modifierExtension,
    this.linkId,
    this.elementLinkId,
    this.definition,
    this.elementDefinition,
    this.text,
    this.elementText,
    this.answer,
    this.item,
  });

  factory QuestionnaireResponse_Item.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionnaireResponse_ItemToJson(this);
}

class QuestionnaireResponse_Answer {
  static Future<QuestionnaireResponse_Answer> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool valueBoolean,
    Element elementValueBoolean,
    int valueDecimal,
    Element elementValueDecimal,
    int valueInteger,
    Element elementValueInteger,
    String valueDate,
    Element elementValueDate,
    String valueDateTime,
    Element elementValueDateTime,
    String valueTime,
    Element elementValueTime,
    String valueString,
    Element elementValueString,
    String valueUri,
    Element elementValueUri,
    Attachment valueAttachment,
    Coding valueCoding,
    Quantity valueQuantity,
    Reference valueReference,
    List<QuestionnaireResponse_Item> item,
  }) async {
    var fhirDb = new DatabaseHelper();
    QuestionnaireResponse_Answer newQuestionnaireResponse_Answer =
        new QuestionnaireResponse_Answer(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      valueBoolean: valueBoolean,
      elementValueBoolean: elementValueBoolean,
      valueDecimal: valueDecimal,
      elementValueDecimal: elementValueDecimal,
      valueInteger: valueInteger,
      elementValueInteger: elementValueInteger,
      valueDate: valueDate,
      elementValueDate: elementValueDate,
      valueDateTime: valueDateTime,
      elementValueDateTime: elementValueDateTime,
      valueTime: valueTime,
      elementValueTime: elementValueTime,
      valueString: valueString,
      elementValueString: elementValueString,
      valueUri: valueUri,
      elementValueUri: elementValueUri,
      valueAttachment: valueAttachment,
      valueCoding: valueCoding,
      valueQuantity: valueQuantity,
      valueReference: valueReference,
      item: item,
    );
    return newQuestionnaireResponse_Answer;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  bool valueBoolean;
  @HiveField(4)
  Element elementValueBoolean;
  @HiveField(5)
  int valueDecimal;
  @HiveField(6)
  Element elementValueDecimal;
  @HiveField(7)
  int valueInteger;
  @HiveField(8)
  Element elementValueInteger;
  @HiveField(9)
  String valueDate;
  @HiveField(10)
  Element elementValueDate;
  @HiveField(11)
  String valueDateTime;
  @HiveField(12)
  Element elementValueDateTime;
  @HiveField(13)
  String valueTime;
  @HiveField(14)
  Element elementValueTime;
  @HiveField(15)
  String valueString;
  @HiveField(16)
  Element elementValueString;
  @HiveField(17)
  String valueUri;
  @HiveField(18)
  Element elementValueUri;
  @HiveField(19)
  Attachment valueAttachment;
  @HiveField(20)
  Coding valueCoding;
  @HiveField(21)
  Quantity valueQuantity;
  @HiveField(22)
  Reference valueReference;
  @HiveField(23)
  List<QuestionnaireResponse_Item> item;

  QuestionnaireResponse_Answer({
    this.id,
    this.extension,
    this.modifierExtension,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueDecimal,
    this.elementValueDecimal,
    this.valueInteger,
    this.elementValueInteger,
    this.valueDate,
    this.elementValueDate,
    this.valueDateTime,
    this.elementValueDateTime,
    this.valueTime,
    this.elementValueTime,
    this.valueString,
    this.elementValueString,
    this.valueUri,
    this.elementValueUri,
    this.valueAttachment,
    this.valueCoding,
    this.valueQuantity,
    this.valueReference,
    this.item,
  });

  factory QuestionnaireResponse_Answer.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireResponse_AnswerFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionnaireResponse_AnswerToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionnaireResponse _$QuestionnaireResponseFromJson(
    Map<String, dynamic> json) {
  return QuestionnaireResponse(
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
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    questionnaire: json['questionnaire'] as String,
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    authored: json['authored'] == null
        ? null
        : DateTime.parse(json['authored'] as String),
    elementAuthored: json['elementAuthored'] == null
        ? null
        : Element.fromJson(json['elementAuthored'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
    source: json['source'] == null
        ? null
        : Reference.fromJson(json['source'] as Map<String, dynamic>),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : QuestionnaireResponse_Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$QuestionnaireResponseToJson(
    QuestionnaireResponse instance) {
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
  writeNotNull('basedOn', instance.basedOn?.map((e) => e?.toJson())?.toList());
  writeNotNull('partOf', instance.partOf?.map((e) => e?.toJson())?.toList());
  writeNotNull('questionnaire', instance.questionnaire);
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('authored', instance.authored?.toIso8601String());
  writeNotNull('elementAuthored', instance.elementAuthored?.toJson());
  writeNotNull('author', instance.author?.toJson());
  writeNotNull('source', instance.source?.toJson());
  writeNotNull('item', instance.item?.map((e) => e?.toJson())?.toList());
  return val;
}

QuestionnaireResponse_Item _$QuestionnaireResponse_ItemFromJson(
    Map<String, dynamic> json) {
  return QuestionnaireResponse_Item(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    linkId: json['linkId'] as String,
    elementLinkId: json['elementLinkId'] == null
        ? null
        : Element.fromJson(json['elementLinkId'] as Map<String, dynamic>),
    definition: json['definition'] as String,
    elementDefinition: json['elementDefinition'] == null
        ? null
        : Element.fromJson(json['elementDefinition'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    answer: (json['answer'] as List)
        ?.map((e) => e == null
            ? null
            : QuestionnaireResponse_Answer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : QuestionnaireResponse_Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$QuestionnaireResponse_ItemToJson(
    QuestionnaireResponse_Item instance) {
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
  writeNotNull('linkId', instance.linkId);
  writeNotNull('elementLinkId', instance.elementLinkId?.toJson());
  writeNotNull('definition', instance.definition);
  writeNotNull('elementDefinition', instance.elementDefinition?.toJson());
  writeNotNull('text', instance.text);
  writeNotNull('elementText', instance.elementText?.toJson());
  writeNotNull('answer', instance.answer?.map((e) => e?.toJson())?.toList());
  writeNotNull('item', instance.item?.map((e) => e?.toJson())?.toList());
  return val;
}

QuestionnaireResponse_Answer _$QuestionnaireResponse_AnswerFromJson(
    Map<String, dynamic> json) {
  return QuestionnaireResponse_Answer(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueDecimal: json['valueDecimal'] as int,
    elementValueDecimal: json['elementValueDecimal'] == null
        ? null
        : Element.fromJson(json['elementValueDecimal'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueDate: json['valueDate'] as String,
    elementValueDate: json['elementValueDate'] == null
        ? null
        : Element.fromJson(json['elementValueDate'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    elementValueTime: json['elementValueTime'] == null
        ? null
        : Element.fromJson(json['elementValueTime'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueUri: json['valueUri'] as String,
    elementValueUri: json['elementValueUri'] == null
        ? null
        : Element.fromJson(json['elementValueUri'] as Map<String, dynamic>),
    valueAttachment: json['valueAttachment'] == null
        ? null
        : Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>),
    valueCoding: json['valueCoding'] == null
        ? null
        : Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : QuestionnaireResponse_Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$QuestionnaireResponse_AnswerToJson(
    QuestionnaireResponse_Answer instance) {
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
  writeNotNull('valueBoolean', instance.valueBoolean);
  writeNotNull('elementValueBoolean', instance.elementValueBoolean?.toJson());
  writeNotNull('valueDecimal', instance.valueDecimal);
  writeNotNull('elementValueDecimal', instance.elementValueDecimal?.toJson());
  writeNotNull('valueInteger', instance.valueInteger);
  writeNotNull('elementValueInteger', instance.elementValueInteger?.toJson());
  writeNotNull('valueDate', instance.valueDate);
  writeNotNull('elementValueDate', instance.elementValueDate?.toJson());
  writeNotNull('valueDateTime', instance.valueDateTime);
  writeNotNull('elementValueDateTime', instance.elementValueDateTime?.toJson());
  writeNotNull('valueTime', instance.valueTime);
  writeNotNull('elementValueTime', instance.elementValueTime?.toJson());
  writeNotNull('valueString', instance.valueString);
  writeNotNull('elementValueString', instance.elementValueString?.toJson());
  writeNotNull('valueUri', instance.valueUri);
  writeNotNull('elementValueUri', instance.elementValueUri?.toJson());
  writeNotNull('valueAttachment', instance.valueAttachment?.toJson());
  writeNotNull('valueCoding', instance.valueCoding?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueReference', instance.valueReference?.toJson());
  writeNotNull('item', instance.item?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionnaireResponseAdapter extends TypeAdapter<QuestionnaireResponse> {
  @override
  QuestionnaireResponse read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuestionnaireResponse(
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
      basedOn: (fields[12] as List)?.cast<Reference>(),
      partOf: (fields[13] as List)?.cast<Reference>(),
      questionnaire: fields[14] as String,
      status: fields[15] as String,
      elementStatus: fields[16] as Element,
      subject: fields[17] as Reference,
      encounter: fields[18] as Reference,
      authored: fields[19] as DateTime,
      elementAuthored: fields[20] as Element,
      author: fields[21] as Reference,
      source: fields[22] as Reference,
      item: (fields[23] as List)?.cast<QuestionnaireResponse_Item>(),
    );
  }

  @override
  void write(BinaryWriter writer, QuestionnaireResponse obj) {
    writer
      ..writeByte(24)
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
      ..write(obj.basedOn)
      ..writeByte(13)
      ..write(obj.partOf)
      ..writeByte(14)
      ..write(obj.questionnaire)
      ..writeByte(15)
      ..write(obj.status)
      ..writeByte(16)
      ..write(obj.elementStatus)
      ..writeByte(17)
      ..write(obj.subject)
      ..writeByte(18)
      ..write(obj.encounter)
      ..writeByte(19)
      ..write(obj.authored)
      ..writeByte(20)
      ..write(obj.elementAuthored)
      ..writeByte(21)
      ..write(obj.author)
      ..writeByte(22)
      ..write(obj.source)
      ..writeByte(23)
      ..write(obj.item);
  }
}

class QuestionnaireResponse_ItemAdapter
    extends TypeAdapter<QuestionnaireResponse_Item> {
  @override
  QuestionnaireResponse_Item read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuestionnaireResponse_Item(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      linkId: fields[3] as String,
      elementLinkId: fields[4] as Element,
      definition: fields[5] as String,
      elementDefinition: fields[6] as Element,
      text: fields[7] as String,
      elementText: fields[8] as Element,
      answer: (fields[9] as List)?.cast<QuestionnaireResponse_Answer>(),
      item: (fields[10] as List)?.cast<QuestionnaireResponse_Item>(),
    );
  }

  @override
  void write(BinaryWriter writer, QuestionnaireResponse_Item obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.linkId)
      ..writeByte(4)
      ..write(obj.elementLinkId)
      ..writeByte(5)
      ..write(obj.definition)
      ..writeByte(6)
      ..write(obj.elementDefinition)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.elementText)
      ..writeByte(9)
      ..write(obj.answer)
      ..writeByte(10)
      ..write(obj.item);
  }
}

class QuestionnaireResponse_AnswerAdapter
    extends TypeAdapter<QuestionnaireResponse_Answer> {
  @override
  QuestionnaireResponse_Answer read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuestionnaireResponse_Answer(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      valueBoolean: fields[3] as bool,
      elementValueBoolean: fields[4] as Element,
      valueDecimal: fields[5] as int,
      elementValueDecimal: fields[6] as Element,
      valueInteger: fields[7] as int,
      elementValueInteger: fields[8] as Element,
      valueDate: fields[9] as String,
      elementValueDate: fields[10] as Element,
      valueDateTime: fields[11] as String,
      elementValueDateTime: fields[12] as Element,
      valueTime: fields[13] as String,
      elementValueTime: fields[14] as Element,
      valueString: fields[15] as String,
      elementValueString: fields[16] as Element,
      valueUri: fields[17] as String,
      elementValueUri: fields[18] as Element,
      valueAttachment: fields[19] as Attachment,
      valueCoding: fields[20] as Coding,
      valueQuantity: fields[21] as Quantity,
      valueReference: fields[22] as Reference,
      item: (fields[23] as List)?.cast<QuestionnaireResponse_Item>(),
    );
  }

  @override
  void write(BinaryWriter writer, QuestionnaireResponse_Answer obj) {
    writer
      ..writeByte(24)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.valueBoolean)
      ..writeByte(4)
      ..write(obj.elementValueBoolean)
      ..writeByte(5)
      ..write(obj.valueDecimal)
      ..writeByte(6)
      ..write(obj.elementValueDecimal)
      ..writeByte(7)
      ..write(obj.valueInteger)
      ..writeByte(8)
      ..write(obj.elementValueInteger)
      ..writeByte(9)
      ..write(obj.valueDate)
      ..writeByte(10)
      ..write(obj.elementValueDate)
      ..writeByte(11)
      ..write(obj.valueDateTime)
      ..writeByte(12)
      ..write(obj.elementValueDateTime)
      ..writeByte(13)
      ..write(obj.valueTime)
      ..writeByte(14)
      ..write(obj.elementValueTime)
      ..writeByte(15)
      ..write(obj.valueString)
      ..writeByte(16)
      ..write(obj.elementValueString)
      ..writeByte(17)
      ..write(obj.valueUri)
      ..writeByte(18)
      ..write(obj.elementValueUri)
      ..writeByte(19)
      ..write(obj.valueAttachment)
      ..writeByte(20)
      ..write(obj.valueCoding)
      ..writeByte(21)
      ..write(obj.valueQuantity)
      ..writeByte(22)
      ..write(obj.valueReference)
      ..writeByte(23)
      ..write(obj.item);
  }
}
