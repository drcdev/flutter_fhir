// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaireResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionnaireResponse _$QuestionnaireResponseFromJson(
    Map<String, dynamic> json) {
  return QuestionnaireResponse(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    element_implicitRules: json['element_implicitRules'] == null
        ? null
        : Element.fromJson(
            json['element_implicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    element_language: json['element_language'] == null
        ? null
        : Element.fromJson(json['element_language'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceList.fromJson(e as Map<String, dynamic>))
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
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    authored: json['authored'] == null
        ? null
        : DateTime.parse(json['authored'] as String),
    element_authored: json['element_authored'] == null
        ? null
        : Element.fromJson(json['element_authored'] as Map<String, dynamic>),
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
        QuestionnaireResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'element_implicitRules': instance.element_implicitRules?.toJson(),
      'language': instance.language,
      'element_language': instance.element_language?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf?.map((e) => e?.toJson())?.toList(),
      'questionnaire': instance.questionnaire,
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'authored': instance.authored?.toIso8601String(),
      'element_authored': instance.element_authored?.toJson(),
      'author': instance.author?.toJson(),
      'source': instance.source?.toJson(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };

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
    element_linkId: json['element_linkId'] == null
        ? null
        : Element.fromJson(json['element_linkId'] as Map<String, dynamic>),
    definition: json['definition'] as String,
    element_definition: json['element_definition'] == null
        ? null
        : Element.fromJson(json['element_definition'] as Map<String, dynamic>),
    text: json['text'] as String,
    element_text: json['element_text'] == null
        ? null
        : Element.fromJson(json['element_text'] as Map<String, dynamic>),
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
        QuestionnaireResponse_Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'linkId': instance.linkId,
      'element_linkId': instance.element_linkId?.toJson(),
      'definition': instance.definition,
      'element_definition': instance.element_definition?.toJson(),
      'text': instance.text,
      'element_text': instance.element_text?.toJson(),
      'answer': instance.answer?.map((e) => e?.toJson())?.toList(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };

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
    element_valueBoolean: json['element_valueBoolean'] == null
        ? null
        : Element.fromJson(
            json['element_valueBoolean'] as Map<String, dynamic>),
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
    element_valueDecimal: json['element_valueDecimal'] == null
        ? null
        : Element.fromJson(
            json['element_valueDecimal'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    element_valueInteger: json['element_valueInteger'] == null
        ? null
        : Element.fromJson(
            json['element_valueInteger'] as Map<String, dynamic>),
    valueDate: json['valueDate'] as String,
    element_valueDate: json['element_valueDate'] == null
        ? null
        : Element.fromJson(json['element_valueDate'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    element_valueDateTime: json['element_valueDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_valueDateTime'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    element_valueTime: json['element_valueTime'] == null
        ? null
        : Element.fromJson(json['element_valueTime'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    element_valueString: json['element_valueString'] == null
        ? null
        : Element.fromJson(json['element_valueString'] as Map<String, dynamic>),
    valueUri: json['valueUri'] as String,
    element_valueUri: json['element_valueUri'] == null
        ? null
        : Element.fromJson(json['element_valueUri'] as Map<String, dynamic>),
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
        QuestionnaireResponse_Answer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'valueBoolean': instance.valueBoolean,
      'element_valueBoolean': instance.element_valueBoolean?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'element_valueDecimal': instance.element_valueDecimal?.toJson(),
      'valueInteger': instance.valueInteger,
      'element_valueInteger': instance.element_valueInteger?.toJson(),
      'valueDate': instance.valueDate,
      'element_valueDate': instance.element_valueDate?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'element_valueDateTime': instance.element_valueDateTime?.toJson(),
      'valueTime': instance.valueTime,
      'element_valueTime': instance.element_valueTime?.toJson(),
      'valueString': instance.valueString,
      'element_valueString': instance.element_valueString?.toJson(),
      'valueUri': instance.valueUri,
      'element_valueUri': instance.element_valueUri?.toJson(),
      'valueAttachment': instance.valueAttachment?.toJson(),
      'valueCoding': instance.valueCoding?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };
