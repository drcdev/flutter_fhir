// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchParameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchParameter _$SearchParameterFromJson(Map<String, dynamic> json) {
  return SearchParameter(
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
    version: json['version'] as String,
    element_version: json['element_version'] == null
        ? null
        : Element.fromJson(json['element_version'] as Map<String, dynamic>),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    derivedFrom: json['derivedFrom'] as String,
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    element_experimental: json['element_experimental'] == null
        ? null
        : Element.fromJson(
            json['element_experimental'] as Map<String, dynamic>),
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
    code: json['code'] as String,
    element_code: json['element_code'] == null
        ? null
        : Element.fromJson(json['element_code'] as Map<String, dynamic>),
    base: (json['base'] as List)?.map((e) => e as String)?.toList(),
    element_base: (json['element_base'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    element_expression: json['element_expression'] == null
        ? null
        : Element.fromJson(json['element_expression'] as Map<String, dynamic>),
    xpath: json['xpath'] as String,
    element_xpath: json['element_xpath'] == null
        ? null
        : Element.fromJson(json['element_xpath'] as Map<String, dynamic>),
    xpathUsage: json['xpathUsage'] as String,
    element_xpathUsage: json['element_xpathUsage'] == null
        ? null
        : Element.fromJson(json['element_xpathUsage'] as Map<String, dynamic>),
    target: (json['target'] as List)?.map((e) => e as String)?.toList(),
    element_target: (json['element_target'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    multipleOr: json['multipleOr'] as bool,
    element_multipleOr: json['element_multipleOr'] == null
        ? null
        : Element.fromJson(json['element_multipleOr'] as Map<String, dynamic>),
    multipleAnd: json['multipleAnd'] as bool,
    element_multipleAnd: json['element_multipleAnd'] == null
        ? null
        : Element.fromJson(json['element_multipleAnd'] as Map<String, dynamic>),
    comparator: (json['comparator'] as List)?.map((e) => e as String)?.toList(),
    element_comparator: (json['element_comparator'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifier: (json['modifier'] as List)?.map((e) => e as String)?.toList(),
    element_modifier: (json['element_modifier'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    chain: (json['chain'] as List)?.map((e) => e as String)?.toList(),
    element_chain: (json['element_chain'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    component: (json['component'] as List)
        ?.map((e) => e == null
            ? null
            : SearchParameter_Component.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SearchParameterToJson(SearchParameter instance) =>
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
      'version': instance.version,
      'element_version': instance.element_version?.toJson(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'derivedFrom': instance.derivedFrom,
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'experimental': instance.experimental,
      'element_experimental': instance.element_experimental?.toJson(),
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
      'code': instance.code,
      'element_code': instance.element_code?.toJson(),
      'base': instance.base,
      'element_base': instance.element_base?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'expression': instance.expression,
      'element_expression': instance.element_expression?.toJson(),
      'xpath': instance.xpath,
      'element_xpath': instance.element_xpath?.toJson(),
      'xpathUsage': instance.xpathUsage,
      'element_xpathUsage': instance.element_xpathUsage?.toJson(),
      'target': instance.target,
      'element_target':
          instance.element_target?.map((e) => e?.toJson())?.toList(),
      'multipleOr': instance.multipleOr,
      'element_multipleOr': instance.element_multipleOr?.toJson(),
      'multipleAnd': instance.multipleAnd,
      'element_multipleAnd': instance.element_multipleAnd?.toJson(),
      'comparator': instance.comparator,
      'element_comparator':
          instance.element_comparator?.map((e) => e?.toJson())?.toList(),
      'modifier': instance.modifier,
      'element_modifier':
          instance.element_modifier?.map((e) => e?.toJson())?.toList(),
      'chain': instance.chain,
      'element_chain':
          instance.element_chain?.map((e) => e?.toJson())?.toList(),
      'component': instance.component?.map((e) => e?.toJson())?.toList(),
    };

SearchParameter_Component _$SearchParameter_ComponentFromJson(
    Map<String, dynamic> json) {
  return SearchParameter_Component(
    json['definition'] as String,
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    expression: json['expression'] as String,
    element_expression: json['element_expression'] == null
        ? null
        : Element.fromJson(json['element_expression'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SearchParameter_ComponentToJson(
        SearchParameter_Component instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'definition': instance.definition,
      'expression': instance.expression,
      'element_expression': instance.element_expression?.toJson(),
    };
