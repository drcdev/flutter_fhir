import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

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
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'QuestionnaireResponse';
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
  List<Reference> basedOn;
  List<Reference> partOf;
  String questionnaire;
  String status;
  Element elementStatus;
  Reference subject;
  Reference encounter;
  DateTime authored;
  Element elementAuthored;
  Reference author;
  Reference source;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String linkId;
  Element elementLinkId;
  String definition;
  Element elementDefinition;
  String text;
  Element elementText;
  List<QuestionnaireResponse_Answer> answer;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool valueBoolean;
  Element elementValueBoolean;
  int valueDecimal;
  Element elementValueDecimal;
  int valueInteger;
  Element elementValueInteger;
  String valueDate;
  Element elementValueDate;
  String valueDateTime;
  Element elementValueDateTime;
  String valueTime;
  Element elementValueTime;
  String valueString;
  Element elementValueString;
  String valueUri;
  Element elementValueUri;
  Attachment valueAttachment;
  Coding valueCoding;
  Quantity valueQuantity;
  Reference valueReference;
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
