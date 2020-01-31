// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Questionnaire _$QuestionnaireFromJson(Map<String, dynamic> json) {
  return Questionnaire(
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
    url: json['url'] as String,
    element_url: json['element_url'] == null
        ? null
        : Element.fromJson(json['element_url'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: json['version'] as String,
    element_version: json['element_version'] == null
        ? null
        : Element.fromJson(json['element_version'] as Map<String, dynamic>),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    title: json['title'] as String,
    element_title: json['element_title'] == null
        ? null
        : Element.fromJson(json['element_title'] as Map<String, dynamic>),
    derivedFrom:
        (json['derivedFrom'] as List)?.map((e) => e as String)?.toList(),
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    element_experimental: json['element_experimental'] == null
        ? null
        : Element.fromJson(
            json['element_experimental'] as Map<String, dynamic>),
    subjectType:
        (json['subjectType'] as List)?.map((e) => e as String)?.toList(),
    element_subjectType: (json['element_subjectType'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    element_date: json['element_date'] == null
        ? null
        : Element.fromJson(json['element_date'] as Map<String, dynamic>),
    publisher: json['publisher'] as String,
    element_publisher: json['element_publisher'] == null
        ? null
        : Element.fromJson(json['element_publisher'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    purpose: json['purpose'] as String,
    element_purpose: json['element_purpose'] == null
        ? null
        : Element.fromJson(json['element_purpose'] as Map<String, dynamic>),
    copyright: json['copyright'] as String,
    element_copyright: json['element_copyright'] == null
        ? null
        : Element.fromJson(json['element_copyright'] as Map<String, dynamic>),
    approvalDate: json['approvalDate'] as String,
    element_approvalDate: json['element_approvalDate'] == null
        ? null
        : Element.fromJson(
            json['element_approvalDate'] as Map<String, dynamic>),
    lastReviewDate: json['lastReviewDate'] as String,
    element_lastReviewDate: json['element_lastReviewDate'] == null
        ? null
        : Element.fromJson(
            json['element_lastReviewDate'] as Map<String, dynamic>),
    effectivePeriod: json['effectivePeriod'] == null
        ? null
        : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
    code: (json['code'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : Questionnaire_Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$QuestionnaireToJson(Questionnaire instance) =>
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
      'url': instance.url,
      'element_url': instance.element_url?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'element_version': instance.element_version?.toJson(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'title': instance.title,
      'element_title': instance.element_title?.toJson(),
      'derivedFrom': instance.derivedFrom,
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'experimental': instance.experimental,
      'element_experimental': instance.element_experimental?.toJson(),
      'subjectType': instance.subjectType,
      'element_subjectType':
          instance.element_subjectType?.map((e) => e?.toJson())?.toList(),
      'date': instance.date?.toIso8601String(),
      'element_date': instance.element_date?.toJson(),
      'publisher': instance.publisher,
      'element_publisher': instance.element_publisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'purpose': instance.purpose,
      'element_purpose': instance.element_purpose?.toJson(),
      'copyright': instance.copyright,
      'element_copyright': instance.element_copyright?.toJson(),
      'approvalDate': instance.approvalDate,
      'element_approvalDate': instance.element_approvalDate?.toJson(),
      'lastReviewDate': instance.lastReviewDate,
      'element_lastReviewDate': instance.element_lastReviewDate?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };

Questionnaire_Item _$Questionnaire_ItemFromJson(Map<String, dynamic> json) {
  return Questionnaire_Item(
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
    code: (json['code'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prefix: json['prefix'] as String,
    element_prefix: json['element_prefix'] == null
        ? null
        : Element.fromJson(json['element_prefix'] as Map<String, dynamic>),
    text: json['text'] as String,
    element_text: json['element_text'] == null
        ? null
        : Element.fromJson(json['element_text'] as Map<String, dynamic>),
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    enableWhen: (json['enableWhen'] as List)
        ?.map((e) => e == null
            ? null
            : Questionnaire_EnableWhen.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    enableBehavior: json['enableBehavior'] as String,
    element_enableBehavior: json['element_enableBehavior'] == null
        ? null
        : Element.fromJson(
            json['element_enableBehavior'] as Map<String, dynamic>),
    required: json['required'] as bool,
    element_required: json['element_required'] == null
        ? null
        : Element.fromJson(json['element_required'] as Map<String, dynamic>),
    repeats: json['repeats'] as bool,
    element_repeats: json['element_repeats'] == null
        ? null
        : Element.fromJson(json['element_repeats'] as Map<String, dynamic>),
    readOnly: json['readOnly'] as bool,
    element_readOnly: json['element_readOnly'] == null
        ? null
        : Element.fromJson(json['element_readOnly'] as Map<String, dynamic>),
    maxLength: json['maxLength'] as int,
    element_maxLength: json['element_maxLength'] == null
        ? null
        : Element.fromJson(json['element_maxLength'] as Map<String, dynamic>),
    answerValueSet: json['answerValueSet'] as String,
    answerOption: (json['answerOption'] as List)
        ?.map((e) => e == null
            ? null
            : Questionnaire_AnswerOption.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    initial: (json['initial'] as List)
        ?.map((e) => e == null
            ? null
            : Questionnaire_Initial.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : Questionnaire_Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Questionnaire_ItemToJson(Questionnaire_Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'linkId': instance.linkId,
      'element_linkId': instance.element_linkId?.toJson(),
      'definition': instance.definition,
      'element_definition': instance.element_definition?.toJson(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'prefix': instance.prefix,
      'element_prefix': instance.element_prefix?.toJson(),
      'text': instance.text,
      'element_text': instance.element_text?.toJson(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'enableWhen': instance.enableWhen?.map((e) => e?.toJson())?.toList(),
      'enableBehavior': instance.enableBehavior,
      'element_enableBehavior': instance.element_enableBehavior?.toJson(),
      'required': instance.required,
      'element_required': instance.element_required?.toJson(),
      'repeats': instance.repeats,
      'element_repeats': instance.element_repeats?.toJson(),
      'readOnly': instance.readOnly,
      'element_readOnly': instance.element_readOnly?.toJson(),
      'maxLength': instance.maxLength,
      'element_maxLength': instance.element_maxLength?.toJson(),
      'answerValueSet': instance.answerValueSet,
      'answerOption': instance.answerOption?.map((e) => e?.toJson())?.toList(),
      'initial': instance.initial?.map((e) => e?.toJson())?.toList(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };

Questionnaire_EnableWhen _$Questionnaire_EnableWhenFromJson(
    Map<String, dynamic> json) {
  return Questionnaire_EnableWhen(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    question: json['question'] as String,
    element_question: json['element_question'] == null
        ? null
        : Element.fromJson(json['element_question'] as Map<String, dynamic>),
    operator: json['operator'] as String,
    element_operator: json['element_operator'] == null
        ? null
        : Element.fromJson(json['element_operator'] as Map<String, dynamic>),
    answerBoolean: json['answerBoolean'] as bool,
    element_answerBoolean: json['element_answerBoolean'] == null
        ? null
        : Element.fromJson(
            json['element_answerBoolean'] as Map<String, dynamic>),
    answerDecimal: (json['answerDecimal'] as num)?.toDouble(),
    element_answerDecimal: json['element_answerDecimal'] == null
        ? null
        : Element.fromJson(
            json['element_answerDecimal'] as Map<String, dynamic>),
    answerInteger: json['answerInteger'] as int,
    element_answerInteger: json['element_answerInteger'] == null
        ? null
        : Element.fromJson(
            json['element_answerInteger'] as Map<String, dynamic>),
    answerDate: json['answerDate'] as String,
    element_answerDate: json['element_answerDate'] == null
        ? null
        : Element.fromJson(json['element_answerDate'] as Map<String, dynamic>),
    answerDateTime: json['answerDateTime'] as String,
    element_answerDateTime: json['element_answerDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_answerDateTime'] as Map<String, dynamic>),
    answerTime: json['answerTime'] as String,
    element_answerTime: json['element_answerTime'] == null
        ? null
        : Element.fromJson(json['element_answerTime'] as Map<String, dynamic>),
    answerString: json['answerString'] as String,
    element_answerString: json['element_answerString'] == null
        ? null
        : Element.fromJson(
            json['element_answerString'] as Map<String, dynamic>),
    answerCoding: json['answerCoding'] == null
        ? null
        : Coding.fromJson(json['answerCoding'] as Map<String, dynamic>),
    answerQuantity: json['answerQuantity'] == null
        ? null
        : Quantity.fromJson(json['answerQuantity'] as Map<String, dynamic>),
    answerReference: json['answerReference'] == null
        ? null
        : Reference.fromJson(json['answerReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Questionnaire_EnableWhenToJson(
        Questionnaire_EnableWhen instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'question': instance.question,
      'element_question': instance.element_question?.toJson(),
      'operator': instance.operator,
      'element_operator': instance.element_operator?.toJson(),
      'answerBoolean': instance.answerBoolean,
      'element_answerBoolean': instance.element_answerBoolean?.toJson(),
      'answerDecimal': instance.answerDecimal,
      'element_answerDecimal': instance.element_answerDecimal?.toJson(),
      'answerInteger': instance.answerInteger,
      'element_answerInteger': instance.element_answerInteger?.toJson(),
      'answerDate': instance.answerDate,
      'element_answerDate': instance.element_answerDate?.toJson(),
      'answerDateTime': instance.answerDateTime,
      'element_answerDateTime': instance.element_answerDateTime?.toJson(),
      'answerTime': instance.answerTime,
      'element_answerTime': instance.element_answerTime?.toJson(),
      'answerString': instance.answerString,
      'element_answerString': instance.element_answerString?.toJson(),
      'answerCoding': instance.answerCoding?.toJson(),
      'answerQuantity': instance.answerQuantity?.toJson(),
      'answerReference': instance.answerReference?.toJson(),
    };

Questionnaire_AnswerOption _$Questionnaire_AnswerOptionFromJson(
    Map<String, dynamic> json) {
  return Questionnaire_AnswerOption(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueInteger: json['valueInteger'] as int,
    element_valueInteger: json['element_valueInteger'] == null
        ? null
        : Element.fromJson(
            json['element_valueInteger'] as Map<String, dynamic>),
    valueDate: json['valueDate'] as String,
    element_valueDate: json['element_valueDate'] == null
        ? null
        : Element.fromJson(json['element_valueDate'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    element_valueTime: json['element_valueTime'] == null
        ? null
        : Element.fromJson(json['element_valueTime'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    element_valueString: json['element_valueString'] == null
        ? null
        : Element.fromJson(json['element_valueString'] as Map<String, dynamic>),
    valueCoding: json['valueCoding'] == null
        ? null
        : Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
    initialSelected: json['initialSelected'] as bool,
    element_initialSelected: json['element_initialSelected'] == null
        ? null
        : Element.fromJson(
            json['element_initialSelected'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Questionnaire_AnswerOptionToJson(
        Questionnaire_AnswerOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'valueInteger': instance.valueInteger,
      'element_valueInteger': instance.element_valueInteger?.toJson(),
      'valueDate': instance.valueDate,
      'element_valueDate': instance.element_valueDate?.toJson(),
      'valueTime': instance.valueTime,
      'element_valueTime': instance.element_valueTime?.toJson(),
      'valueString': instance.valueString,
      'element_valueString': instance.element_valueString?.toJson(),
      'valueCoding': instance.valueCoding?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
      'initialSelected': instance.initialSelected,
      'element_initialSelected': instance.element_initialSelected?.toJson(),
    };

Questionnaire_Initial _$Questionnaire_InitialFromJson(
    Map<String, dynamic> json) {
  return Questionnaire_Initial(
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
  );
}

Map<String, dynamic> _$Questionnaire_InitialToJson(
        Questionnaire_Initial instance) =>
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
    };
