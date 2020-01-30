// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contract _$ContractFromJson(Map<String, dynamic> json) {
  return Contract(
    resourceType: json['resourceType'] as String,
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    url: json['url'] as String,
    element_url: json['element_url'] == null
        ? null
        : Element.fromJson(json['element_url'] as Map<String, dynamic>),
    version: json['version'] as String,
    element_version: json['element_version'] == null
        ? null
        : Element.fromJson(json['element_version'] as Map<String, dynamic>),
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    legalState: json['legalState'] == null
        ? null
        : CodeableConcept.fromJson(json['legalState'] as Map<String, dynamic>),
    instantiatesCanonical: json['instantiatesCanonical'] == null
        ? null
        : Reference.fromJson(
            json['instantiatesCanonical'] as Map<String, dynamic>),
    instantiatesUri: json['instantiatesUri'] as String,
    element_instantiatesUri: json['element_instantiatesUri'] == null
        ? null
        : Element.fromJson(
            json['element_instantiatesUri'] as Map<String, dynamic>),
    contentDerivative: json['contentDerivative'] == null
        ? null
        : CodeableConcept.fromJson(
            json['contentDerivative'] as Map<String, dynamic>),
    issued: json['issued'] == null
        ? null
        : DateTime.parse(json['issued'] as String),
    element_issued: json['element_issued'] == null
        ? null
        : Element.fromJson(json['element_issued'] as Map<String, dynamic>),
    applies: json['applies'] == null
        ? null
        : Period.fromJson(json['applies'] as Map<String, dynamic>),
    expirationType: json['expirationType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['expirationType'] as Map<String, dynamic>),
    subject: (json['subject'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authority: (json['authority'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    domain: (json['domain'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    site: (json['site'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    title: json['title'] as String,
    element_title: json['element_title'] == null
        ? null
        : Element.fromJson(json['element_title'] as Map<String, dynamic>),
    subtitle: json['subtitle'] as String,
    element_subtitle: json['element_subtitle'] == null
        ? null
        : Element.fromJson(json['element_subtitle'] as Map<String, dynamic>),
    alias: (json['alias'] as List)?.map((e) => e as String)?.toList(),
    element_alias: (json['element_alias'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
    scope: json['scope'] == null
        ? null
        : CodeableConcept.fromJson(json['scope'] as Map<String, dynamic>),
    topicCodeableConcept: json['topicCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['topicCodeableConcept'] as Map<String, dynamic>),
    topicReference: json['topicReference'] == null
        ? null
        : Reference.fromJson(json['topicReference'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    subType: (json['subType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentDefinition: json['contentDefinition'] == null
        ? null
        : Contract_ContentDefinition.fromJson(
            json['contentDefinition'] as Map<String, dynamic>),
    term: (json['term'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Term.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relevantHistory: (json['relevantHistory'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    signer: (json['signer'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Signer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    friendly: (json['friendly'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Friendly.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    legal: (json['legal'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Legal.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rule: (json['rule'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Rule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    legallyBindingAttachment: json['legallyBindingAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['legallyBindingAttachment'] as Map<String, dynamic>),
    legallyBindingReference: json['legallyBindingReference'] == null
        ? null
        : Reference.fromJson(
            json['legallyBindingReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ContractToJson(Contract instance) => <String, dynamic>{
      'resourceType': instance.resourceType,
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'element_url': instance.element_url?.toJson(),
      'version': instance.version,
      'element_version': instance.element_version?.toJson(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'legalState': instance.legalState?.toJson(),
      'instantiatesCanonical': instance.instantiatesCanonical?.toJson(),
      'instantiatesUri': instance.instantiatesUri,
      'element_instantiatesUri': instance.element_instantiatesUri?.toJson(),
      'contentDerivative': instance.contentDerivative?.toJson(),
      'issued': instance.issued?.toIso8601String(),
      'element_issued': instance.element_issued?.toJson(),
      'applies': instance.applies?.toJson(),
      'expirationType': instance.expirationType?.toJson(),
      'subject': instance.subject?.map((e) => e?.toJson())?.toList(),
      'authority': instance.authority?.map((e) => e?.toJson())?.toList(),
      'domain': instance.domain?.map((e) => e?.toJson())?.toList(),
      'site': instance.site?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'title': instance.title,
      'element_title': instance.element_title?.toJson(),
      'subtitle': instance.subtitle,
      'element_subtitle': instance.element_subtitle?.toJson(),
      'alias': instance.alias,
      'element_alias':
          instance.element_alias?.map((e) => e?.toJson())?.toList(),
      'author': instance.author?.toJson(),
      'scope': instance.scope?.toJson(),
      'topicCodeableConcept': instance.topicCodeableConcept?.toJson(),
      'topicReference': instance.topicReference?.toJson(),
      'type': instance.type?.toJson(),
      'subType': instance.subType?.map((e) => e?.toJson())?.toList(),
      'contentDefinition': instance.contentDefinition?.toJson(),
      'term': instance.term?.map((e) => e?.toJson())?.toList(),
      'supportingInfo':
          instance.supportingInfo?.map((e) => e?.toJson())?.toList(),
      'relevantHistory':
          instance.relevantHistory?.map((e) => e?.toJson())?.toList(),
      'signer': instance.signer?.map((e) => e?.toJson())?.toList(),
      'friendly': instance.friendly?.map((e) => e?.toJson())?.toList(),
      'legal': instance.legal?.map((e) => e?.toJson())?.toList(),
      'rule': instance.rule?.map((e) => e?.toJson())?.toList(),
      'legallyBindingAttachment': instance.legallyBindingAttachment?.toJson(),
      'legallyBindingReference': instance.legallyBindingReference?.toJson(),
    };

Contract_ContentDefinition _$Contract_ContentDefinitionFromJson(
    Map<String, dynamic> json) {
  return Contract_ContentDefinition(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    subType: json['subType'] == null
        ? null
        : CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>),
    publisher: json['publisher'] == null
        ? null
        : Reference.fromJson(json['publisher'] as Map<String, dynamic>),
    publicationDate: json['publicationDate'] == null
        ? null
        : DateTime.parse(json['publicationDate'] as String),
    element_publicationDate: json['element_publicationDate'] == null
        ? null
        : Element.fromJson(
            json['element_publicationDate'] as Map<String, dynamic>),
    publicationStatus: json['publicationStatus'] as String,
    element_publicationStatus: json['element_publicationStatus'] == null
        ? null
        : Element.fromJson(
            json['element_publicationStatus'] as Map<String, dynamic>),
    copyright: json['copyright'] as String,
    element_copyright: json['element_copyright'] == null
        ? null
        : Element.fromJson(json['element_copyright'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_ContentDefinitionToJson(
        Contract_ContentDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'subType': instance.subType?.toJson(),
      'publisher': instance.publisher?.toJson(),
      'publicationDate': instance.publicationDate?.toIso8601String(),
      'element_publicationDate': instance.element_publicationDate?.toJson(),
      'publicationStatus': instance.publicationStatus,
      'element_publicationStatus': instance.element_publicationStatus?.toJson(),
      'copyright': instance.copyright,
      'element_copyright': instance.element_copyright?.toJson(),
    };

Contract_Term _$Contract_TermFromJson(Map<String, dynamic> json) {
  return Contract_Term(
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
    issued: json['issued'] == null
        ? null
        : DateTime.parse(json['issued'] as String),
    element_issued: json['element_issued'] == null
        ? null
        : Element.fromJson(json['element_issued'] as Map<String, dynamic>),
    applies: json['applies'] == null
        ? null
        : Period.fromJson(json['applies'] as Map<String, dynamic>),
    topicCodeableConcept: json['topicCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['topicCodeableConcept'] as Map<String, dynamic>),
    topicReference: json['topicReference'] == null
        ? null
        : Reference.fromJson(json['topicReference'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    subType: json['subType'] == null
        ? null
        : CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>),
    text: json['text'] as String,
    element_text: json['element_text'] == null
        ? null
        : Element.fromJson(json['element_text'] as Map<String, dynamic>),
    securityLabel: (json['securityLabel'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_SecurityLabel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    offer: json['offer'] == null
        ? null
        : Contract_Offer.fromJson(json['offer'] as Map<String, dynamic>),
    asset: (json['asset'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Asset.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Action.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    group: (json['group'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Term.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_TermToJson(Contract_Term instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'issued': instance.issued?.toIso8601String(),
      'element_issued': instance.element_issued?.toJson(),
      'applies': instance.applies?.toJson(),
      'topicCodeableConcept': instance.topicCodeableConcept?.toJson(),
      'topicReference': instance.topicReference?.toJson(),
      'type': instance.type?.toJson(),
      'subType': instance.subType?.toJson(),
      'text': instance.text,
      'element_text': instance.element_text?.toJson(),
      'securityLabel':
          instance.securityLabel?.map((e) => e?.toJson())?.toList(),
      'offer': instance.offer?.toJson(),
      'asset': instance.asset?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
      'group': instance.group?.map((e) => e?.toJson())?.toList(),
    };

Contract_SecurityLabel _$Contract_SecurityLabelFromJson(
    Map<String, dynamic> json) {
  return Contract_SecurityLabel(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    number: (json['number'] as List)?.map((e) => e as int)?.toList(),
    element_number: (json['element_number'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    classification: json['classification'] == null
        ? null
        : Coding.fromJson(json['classification'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    control: (json['control'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_SecurityLabelToJson(
        Contract_SecurityLabel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'number': instance.number,
      'element_number':
          instance.element_number?.map((e) => e?.toJson())?.toList(),
      'classification': instance.classification?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'control': instance.control?.map((e) => e?.toJson())?.toList(),
    };

Contract_Offer _$Contract_OfferFromJson(Map<String, dynamic> json) {
  return Contract_Offer(
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
    party: (json['party'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Party.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    topic: json['topic'] == null
        ? null
        : Reference.fromJson(json['topic'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    decision: json['decision'] == null
        ? null
        : CodeableConcept.fromJson(json['decision'] as Map<String, dynamic>),
    decisionMode: (json['decisionMode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    answer: (json['answer'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Answer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
    element_text: json['element_text'] == null
        ? null
        : Element.fromJson(json['element_text'] as Map<String, dynamic>),
    linkId: (json['linkId'] as List)?.map((e) => e as String)?.toList(),
    element_linkId: (json['element_linkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    securityLabelNumber:
        (json['securityLabelNumber'] as List)?.map((e) => e as int)?.toList(),
    element_securityLabelNumber: (json['element_securityLabelNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_OfferToJson(Contract_Offer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'party': instance.party?.map((e) => e?.toJson())?.toList(),
      'topic': instance.topic?.toJson(),
      'type': instance.type?.toJson(),
      'decision': instance.decision?.toJson(),
      'decisionMode': instance.decisionMode?.map((e) => e?.toJson())?.toList(),
      'answer': instance.answer?.map((e) => e?.toJson())?.toList(),
      'text': instance.text,
      'element_text': instance.element_text?.toJson(),
      'linkId': instance.linkId,
      'element_linkId':
          instance.element_linkId?.map((e) => e?.toJson())?.toList(),
      'securityLabelNumber': instance.securityLabelNumber,
      'element_securityLabelNumber': instance.element_securityLabelNumber
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

Contract_Party _$Contract_PartyFromJson(Map<String, dynamic> json) {
  return Contract_Party(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: (json['reference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_PartyToJson(Contract_Party instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference?.map((e) => e?.toJson())?.toList(),
      'role': instance.role?.toJson(),
    };

Contract_Answer _$Contract_AnswerFromJson(Map<String, dynamic> json) {
  return Contract_Answer(
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

Map<String, dynamic> _$Contract_AnswerToJson(Contract_Answer instance) =>
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

Contract_Asset _$Contract_AssetFromJson(Map<String, dynamic> json) {
  return Contract_Asset(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    scope: json['scope'] == null
        ? null
        : CodeableConcept.fromJson(json['scope'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    typeReference: (json['typeReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subtype: (json['subtype'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relationship: json['relationship'] == null
        ? null
        : Coding.fromJson(json['relationship'] as Map<String, dynamic>),
    context: (json['context'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Context.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: json['condition'] as String,
    element_condition: json['element_condition'] == null
        ? null
        : Element.fromJson(json['element_condition'] as Map<String, dynamic>),
    periodType: (json['periodType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: (json['period'] as List)
        ?.map((e) =>
            e == null ? null : Period.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    usePeriod: (json['usePeriod'] as List)
        ?.map((e) =>
            e == null ? null : Period.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
    element_text: json['element_text'] == null
        ? null
        : Element.fromJson(json['element_text'] as Map<String, dynamic>),
    linkId: (json['linkId'] as List)?.map((e) => e as String)?.toList(),
    element_linkId: (json['element_linkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    answer: (json['answer'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Answer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    securityLabelNumber:
        (json['securityLabelNumber'] as List)?.map((e) => e as int)?.toList(),
    element_securityLabelNumber: (json['element_securityLabelNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valuedItem: (json['valuedItem'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_ValuedItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_AssetToJson(Contract_Asset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'scope': instance.scope?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'typeReference':
          instance.typeReference?.map((e) => e?.toJson())?.toList(),
      'subtype': instance.subtype?.map((e) => e?.toJson())?.toList(),
      'relationship': instance.relationship?.toJson(),
      'context': instance.context?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition,
      'element_condition': instance.element_condition?.toJson(),
      'periodType': instance.periodType?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.map((e) => e?.toJson())?.toList(),
      'usePeriod': instance.usePeriod?.map((e) => e?.toJson())?.toList(),
      'text': instance.text,
      'element_text': instance.element_text?.toJson(),
      'linkId': instance.linkId,
      'element_linkId':
          instance.element_linkId?.map((e) => e?.toJson())?.toList(),
      'answer': instance.answer?.map((e) => e?.toJson())?.toList(),
      'securityLabelNumber': instance.securityLabelNumber,
      'element_securityLabelNumber': instance.element_securityLabelNumber
          ?.map((e) => e?.toJson())
          ?.toList(),
      'valuedItem': instance.valuedItem?.map((e) => e?.toJson())?.toList(),
    };

Contract_Context _$Contract_ContextFromJson(Map<String, dynamic> json) {
  return Contract_Context(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
    element_text: json['element_text'] == null
        ? null
        : Element.fromJson(json['element_text'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_ContextToJson(Contract_Context instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference?.toJson(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'text': instance.text,
      'element_text': instance.element_text?.toJson(),
    };

Contract_ValuedItem _$Contract_ValuedItemFromJson(Map<String, dynamic> json) {
  return Contract_ValuedItem(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    entityCodeableConcept: json['entityCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['entityCodeableConcept'] as Map<String, dynamic>),
    entityReference: json['entityReference'] == null
        ? null
        : Reference.fromJson(json['entityReference'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    effectiveTime: json['effectiveTime'] == null
        ? null
        : DateTime.parse(json['effectiveTime'] as String),
    element_effectiveTime: json['element_effectiveTime'] == null
        ? null
        : Element.fromJson(
            json['element_effectiveTime'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    unitPrice: json['unitPrice'] == null
        ? null
        : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    element_factor: json['element_factor'] == null
        ? null
        : Element.fromJson(json['element_factor'] as Map<String, dynamic>),
    points: (json['points'] as num)?.toDouble(),
    element_points: json['element_points'] == null
        ? null
        : Element.fromJson(json['element_points'] as Map<String, dynamic>),
    net: json['net'] == null
        ? null
        : Money.fromJson(json['net'] as Map<String, dynamic>),
    payment: json['payment'] as String,
    element_payment: json['element_payment'] == null
        ? null
        : Element.fromJson(json['element_payment'] as Map<String, dynamic>),
    paymentDate: json['paymentDate'] == null
        ? null
        : DateTime.parse(json['paymentDate'] as String),
    element_paymentDate: json['element_paymentDate'] == null
        ? null
        : Element.fromJson(json['element_paymentDate'] as Map<String, dynamic>),
    responsible: json['responsible'] == null
        ? null
        : Reference.fromJson(json['responsible'] as Map<String, dynamic>),
    recipient: json['recipient'] == null
        ? null
        : Reference.fromJson(json['recipient'] as Map<String, dynamic>),
    linkId: (json['linkId'] as List)?.map((e) => e as String)?.toList(),
    element_linkId: (json['element_linkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    securityLabelNumber:
        (json['securityLabelNumber'] as List)?.map((e) => e as int)?.toList(),
    element_securityLabelNumber: (json['element_securityLabelNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_ValuedItemToJson(
        Contract_ValuedItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'entityCodeableConcept': instance.entityCodeableConcept?.toJson(),
      'entityReference': instance.entityReference?.toJson(),
      'identifier': instance.identifier?.toJson(),
      'effectiveTime': instance.effectiveTime?.toIso8601String(),
      'element_effectiveTime': instance.element_effectiveTime?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'element_factor': instance.element_factor?.toJson(),
      'points': instance.points,
      'element_points': instance.element_points?.toJson(),
      'net': instance.net?.toJson(),
      'payment': instance.payment,
      'element_payment': instance.element_payment?.toJson(),
      'paymentDate': instance.paymentDate?.toIso8601String(),
      'element_paymentDate': instance.element_paymentDate?.toJson(),
      'responsible': instance.responsible?.toJson(),
      'recipient': instance.recipient?.toJson(),
      'linkId': instance.linkId,
      'element_linkId':
          instance.element_linkId?.map((e) => e?.toJson())?.toList(),
      'securityLabelNumber': instance.securityLabelNumber,
      'element_securityLabelNumber': instance.element_securityLabelNumber
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

Contract_Action _$Contract_ActionFromJson(Map<String, dynamic> json) {
  return Contract_Action(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    doNotPerform: json['doNotPerform'] as bool,
    element_doNotPerform: json['element_doNotPerform'] == null
        ? null
        : Element.fromJson(
            json['element_doNotPerform'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    subject: (json['subject'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Subject.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    intent: json['intent'] == null
        ? null
        : CodeableConcept.fromJson(json['intent'] as Map<String, dynamic>),
    linkId: (json['linkId'] as List)?.map((e) => e as String)?.toList(),
    element_linkId: (json['element_linkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    context: json['context'] == null
        ? null
        : Reference.fromJson(json['context'] as Map<String, dynamic>),
    contextLinkId:
        (json['contextLinkId'] as List)?.map((e) => e as String)?.toList(),
    element_contextLinkId: (json['element_contextLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    occurrenceDateTime: json['occurrenceDateTime'] as String,
    element_occurrenceDateTime: json['element_occurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_occurrenceDateTime'] as Map<String, dynamic>),
    occurrencePeriod: json['occurrencePeriod'] == null
        ? null
        : Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>),
    occurrenceTiming: json['occurrenceTiming'] == null
        ? null
        : Timing.fromJson(json['occurrenceTiming'] as Map<String, dynamic>),
    requester: (json['requester'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    requesterLinkId:
        (json['requesterLinkId'] as List)?.map((e) => e as String)?.toList(),
    element_requesterLinkId: (json['element_requesterLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    performerType: (json['performerType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    performerRole: json['performerRole'] == null
        ? null
        : CodeableConcept.fromJson(
            json['performerRole'] as Map<String, dynamic>),
    performer: json['performer'] == null
        ? null
        : Reference.fromJson(json['performer'] as Map<String, dynamic>),
    performerLinkId:
        (json['performerLinkId'] as List)?.map((e) => e as String)?.toList(),
    element_performerLinkId: (json['element_performerLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reason: (json['reason'] as List)?.map((e) => e as String)?.toList(),
    element_reason: (json['element_reason'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonLinkId:
        (json['reasonLinkId'] as List)?.map((e) => e as String)?.toList(),
    element_reasonLinkId: (json['element_reasonLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    securityLabelNumber:
        (json['securityLabelNumber'] as List)?.map((e) => e as int)?.toList(),
    element_securityLabelNumber: (json['element_securityLabelNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_ActionToJson(Contract_Action instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'doNotPerform': instance.doNotPerform,
      'element_doNotPerform': instance.element_doNotPerform?.toJson(),
      'type': instance.type?.toJson(),
      'subject': instance.subject?.map((e) => e?.toJson())?.toList(),
      'intent': instance.intent?.toJson(),
      'linkId': instance.linkId,
      'element_linkId':
          instance.element_linkId?.map((e) => e?.toJson())?.toList(),
      'status': instance.status?.toJson(),
      'context': instance.context?.toJson(),
      'contextLinkId': instance.contextLinkId,
      'element_contextLinkId':
          instance.element_contextLinkId?.map((e) => e?.toJson())?.toList(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'element_occurrenceDateTime':
          instance.element_occurrenceDateTime?.toJson(),
      'occurrencePeriod': instance.occurrencePeriod?.toJson(),
      'occurrenceTiming': instance.occurrenceTiming?.toJson(),
      'requester': instance.requester?.map((e) => e?.toJson())?.toList(),
      'requesterLinkId': instance.requesterLinkId,
      'element_requesterLinkId':
          instance.element_requesterLinkId?.map((e) => e?.toJson())?.toList(),
      'performerType':
          instance.performerType?.map((e) => e?.toJson())?.toList(),
      'performerRole': instance.performerRole?.toJson(),
      'performer': instance.performer?.toJson(),
      'performerLinkId': instance.performerLinkId,
      'element_performerLinkId':
          instance.element_performerLinkId?.map((e) => e?.toJson())?.toList(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'reason': instance.reason,
      'element_reason':
          instance.element_reason?.map((e) => e?.toJson())?.toList(),
      'reasonLinkId': instance.reasonLinkId,
      'element_reasonLinkId':
          instance.element_reasonLinkId?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'securityLabelNumber': instance.securityLabelNumber,
      'element_securityLabelNumber': instance.element_securityLabelNumber
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

Contract_Subject _$Contract_SubjectFromJson(Map<String, dynamic> json) {
  return Contract_Subject(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: (json['reference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_SubjectToJson(Contract_Subject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference?.map((e) => e?.toJson())?.toList(),
      'role': instance.role?.toJson(),
    };

Contract_Signer _$Contract_SignerFromJson(Map<String, dynamic> json) {
  return Contract_Signer(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : Coding.fromJson(json['type'] as Map<String, dynamic>),
    party: json['party'] == null
        ? null
        : Reference.fromJson(json['party'] as Map<String, dynamic>),
    signature: (json['signature'] as List)
        ?.map((e) =>
            e == null ? null : Signature.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_SignerToJson(Contract_Signer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'party': instance.party?.toJson(),
      'signature': instance.signature?.map((e) => e?.toJson())?.toList(),
    };

Contract_Friendly _$Contract_FriendlyFromJson(Map<String, dynamic> json) {
  return Contract_Friendly(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentAttachment: json['contentAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['contentAttachment'] as Map<String, dynamic>),
    contentReference: json['contentReference'] == null
        ? null
        : Reference.fromJson(json['contentReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_FriendlyToJson(Contract_Friendly instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'contentAttachment': instance.contentAttachment?.toJson(),
      'contentReference': instance.contentReference?.toJson(),
    };

Contract_Legal _$Contract_LegalFromJson(Map<String, dynamic> json) {
  return Contract_Legal(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentAttachment: json['contentAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['contentAttachment'] as Map<String, dynamic>),
    contentReference: json['contentReference'] == null
        ? null
        : Reference.fromJson(json['contentReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_LegalToJson(Contract_Legal instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'contentAttachment': instance.contentAttachment?.toJson(),
      'contentReference': instance.contentReference?.toJson(),
    };

Contract_Rule _$Contract_RuleFromJson(Map<String, dynamic> json) {
  return Contract_Rule(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentAttachment: json['contentAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['contentAttachment'] as Map<String, dynamic>),
    contentReference: json['contentReference'] == null
        ? null
        : Reference.fromJson(json['contentReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_RuleToJson(Contract_Rule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'contentAttachment': instance.contentAttachment?.toJson(),
      'contentReference': instance.contentReference?.toJson(),
    };
