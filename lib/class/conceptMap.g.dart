// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conceptMap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConceptMap _$ConceptMapFromJson(Map<String, dynamic> json) {
  return ConceptMap(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    language: json['language'] as String,
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    version: json['version'] as String,
    name: json['name'] as String,
    title: json['title'] as String,
    status: json['status'] as String,
    experimental: json['experimental'] as bool,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    publisher: json['publisher'] as String,
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
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
    copyright: json['copyright'] as String,
    sourceUri: json['sourceUri'] as String,
    sourceCanonical: json['sourceCanonical'] as String,
    targetUri: json['targetUri'] as String,
    targetCanonical: json['targetCanonical'] as String,
    group: (json['group'] as List)
        ?.map((e) => e == null
            ? null
            : ConceptMap_Group.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ConceptMapToJson(ConceptMap instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'language': instance.language,
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'identifier': instance.identifier?.toJson(),
      'version': instance.version,
      'name': instance.name,
      'title': instance.title,
      'status': instance.status,
      'experimental': instance.experimental,
      'date': instance.date?.toIso8601String(),
      'publisher': instance.publisher,
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'purpose': instance.purpose,
      'copyright': instance.copyright,
      'sourceUri': instance.sourceUri,
      'sourceCanonical': instance.sourceCanonical,
      'targetUri': instance.targetUri,
      'targetCanonical': instance.targetCanonical,
      'group': instance.group?.map((e) => e?.toJson())?.toList(),
    };

ConceptMap_Group _$ConceptMap_GroupFromJson(Map<String, dynamic> json) {
  return ConceptMap_Group(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    source: json['source'] as String,
    sourceVersion: json['sourceVersion'] as String,
    target: json['target'] as String,
    targetVersion: json['targetVersion'] as String,
    element: (json['element'] as List)
        ?.map((e) => e == null
            ? null
            : ConceptMap_Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    unmapped: json['unmapped'] == null
        ? null
        : ConceptMap_Unmapped.fromJson(
            json['unmapped'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ConceptMap_GroupToJson(ConceptMap_Group instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'source': instance.source,
      'sourceVersion': instance.sourceVersion,
      'target': instance.target,
      'targetVersion': instance.targetVersion,
      'element': instance.element?.map((e) => e?.toJson())?.toList(),
      'unmapped': instance.unmapped?.toJson(),
    };

ConceptMap_Element _$ConceptMap_ElementFromJson(Map<String, dynamic> json) {
  return ConceptMap_Element(
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
    display: json['display'] as String,
    target: (json['target'] as List)
        ?.map((e) => e == null
            ? null
            : ConceptMap_Target.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ConceptMap_ElementToJson(ConceptMap_Element instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'display': instance.display,
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
    };

ConceptMap_Target _$ConceptMap_TargetFromJson(Map<String, dynamic> json) {
  return ConceptMap_Target(
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
    display: json['display'] as String,
    equivalence: json['equivalence'] as String,
    comment: json['comment'] as String,
    dependsOn: (json['dependsOn'] as List)
        ?.map((e) => e == null
            ? null
            : ConceptMap_DependsOn.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    product: (json['product'] as List)
        ?.map((e) => e == null
            ? null
            : ConceptMap_DependsOn.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ConceptMap_TargetToJson(ConceptMap_Target instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'display': instance.display,
      'equivalence': instance.equivalence,
      'comment': instance.comment,
      'dependsOn': instance.dependsOn?.map((e) => e?.toJson())?.toList(),
      'product': instance.product?.map((e) => e?.toJson())?.toList(),
    };

ConceptMap_DependsOn _$ConceptMap_DependsOnFromJson(Map<String, dynamic> json) {
  return ConceptMap_DependsOn(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    property: json['property'] as String,
    system: json['system'] as String,
    value: json['value'] as String,
    display: json['display'] as String,
  );
}

Map<String, dynamic> _$ConceptMap_DependsOnToJson(
        ConceptMap_DependsOn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'property': instance.property,
      'system': instance.system,
      'value': instance.value,
      'display': instance.display,
    };

ConceptMap_Unmapped _$ConceptMap_UnmappedFromJson(Map<String, dynamic> json) {
  return ConceptMap_Unmapped(
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
    code: json['code'] as String,
    display: json['display'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$ConceptMap_UnmappedToJson(
        ConceptMap_Unmapped instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'mode': instance.mode,
      'code': instance.code,
      'display': instance.display,
      'url': instance.url,
    };
