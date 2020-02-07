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
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    derivedFrom: json['derivedFrom'] as String,
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    elementExperimental: json['elementExperimental'] == null
        ? null
        : Element.fromJson(json['elementExperimental'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    publisher: json['publisher'] as String,
    elementPublisher: json['elementPublisher'] == null
        ? null
        : Element.fromJson(json['elementPublisher'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
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
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    base: (json['base'] as List)?.map((e) => e as String)?.toList(),
    elementBase: (json['elementBase'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
    xpath: json['xpath'] as String,
    elementXpath: json['elementXpath'] == null
        ? null
        : Element.fromJson(json['elementXpath'] as Map<String, dynamic>),
    xpathUsage: json['xpathUsage'] as String,
    elementXpathUsage: json['elementXpathUsage'] == null
        ? null
        : Element.fromJson(json['elementXpathUsage'] as Map<String, dynamic>),
    target: (json['target'] as List)?.map((e) => e as String)?.toList(),
    elementTarget: (json['elementTarget'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    multipleOr: json['multipleOr'] as bool,
    elementMultipleOr: json['elementMultipleOr'] == null
        ? null
        : Element.fromJson(json['elementMultipleOr'] as Map<String, dynamic>),
    multipleAnd: json['multipleAnd'] as bool,
    elementMultipleAnd: json['elementMultipleAnd'] == null
        ? null
        : Element.fromJson(json['elementMultipleAnd'] as Map<String, dynamic>),
    comparator: (json['comparator'] as List)?.map((e) => e as String)?.toList(),
    elementComparator: (json['elementComparator'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifier: (json['modifier'] as List)?.map((e) => e as String)?.toList(),
    elementModifier: (json['elementModifier'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    chain: (json['chain'] as List)?.map((e) => e as String)?.toList(),
    elementChain: (json['elementChain'] as List)
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
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'derivedFrom': instance.derivedFrom,
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'experimental': instance.experimental,
      'elementExperimental': instance.elementExperimental?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'purpose': instance.purpose,
      'elementPurpose': instance.elementPurpose?.toJson(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'base': instance.base,
      'elementBase': instance.elementBase?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
      'xpath': instance.xpath,
      'elementXpath': instance.elementXpath?.toJson(),
      'xpathUsage': instance.xpathUsage,
      'elementXpathUsage': instance.elementXpathUsage?.toJson(),
      'target': instance.target,
      'elementTarget':
          instance.elementTarget?.map((e) => e?.toJson())?.toList(),
      'multipleOr': instance.multipleOr,
      'elementMultipleOr': instance.elementMultipleOr?.toJson(),
      'multipleAnd': instance.multipleAnd,
      'elementMultipleAnd': instance.elementMultipleAnd?.toJson(),
      'comparator': instance.comparator,
      'elementComparator':
          instance.elementComparator?.map((e) => e?.toJson())?.toList(),
      'modifier': instance.modifier,
      'elementModifier':
          instance.elementModifier?.map((e) => e?.toJson())?.toList(),
      'chain': instance.chain,
      'elementChain': instance.elementChain?.map((e) => e?.toJson())?.toList(),
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
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
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
      'elementExpression': instance.elementExpression?.toJson(),
    };
