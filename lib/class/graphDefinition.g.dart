// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphDefinition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GraphDefinition _$GraphDefinitionFromJson(Map<String, dynamic> json) {
  return GraphDefinition(
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
    start: json['start'] as String,
    element_start: json['element_start'] == null
        ? null
        : Element.fromJson(json['element_start'] as Map<String, dynamic>),
    profile: json['profile'] as String,
    link: (json['link'] as List)
        ?.map((e) => e == null
            ? null
            : GraphDefinition_Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GraphDefinitionToJson(GraphDefinition instance) =>
    <String, dynamic>{
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
      'url': instance.url,
      'element_url': instance.element_url?.toJson(),
      'version': instance.version,
      'element_version': instance.element_version?.toJson(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
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
      'start': instance.start,
      'element_start': instance.element_start?.toJson(),
      'profile': instance.profile,
      'link': instance.link?.map((e) => e?.toJson())?.toList(),
    };

GraphDefinition_Link _$GraphDefinition_LinkFromJson(Map<String, dynamic> json) {
  return GraphDefinition_Link(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    element_path: json['element_path'] == null
        ? null
        : Element.fromJson(json['element_path'] as Map<String, dynamic>),
    sliceName: json['sliceName'] as String,
    element_sliceName: json['element_sliceName'] == null
        ? null
        : Element.fromJson(json['element_sliceName'] as Map<String, dynamic>),
    min: json['min'] as int,
    element_min: json['element_min'] == null
        ? null
        : Element.fromJson(json['element_min'] as Map<String, dynamic>),
    max: json['max'] as String,
    element_max: json['element_max'] == null
        ? null
        : Element.fromJson(json['element_max'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    target: (json['target'] as List)
        ?.map((e) => e == null
            ? null
            : GraphDefinition_Target.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GraphDefinition_LinkToJson(
        GraphDefinition_Link instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'path': instance.path,
      'element_path': instance.element_path?.toJson(),
      'sliceName': instance.sliceName,
      'element_sliceName': instance.element_sliceName?.toJson(),
      'min': instance.min,
      'element_min': instance.element_min?.toJson(),
      'max': instance.max,
      'element_max': instance.element_max?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
    };

GraphDefinition_Target _$GraphDefinition_TargetFromJson(
    Map<String, dynamic> json) {
  return GraphDefinition_Target(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    params: json['params'] as String,
    element_params: json['element_params'] == null
        ? null
        : Element.fromJson(json['element_params'] as Map<String, dynamic>),
    profile: json['profile'] as String,
    compartment: (json['compartment'] as List)
        ?.map((e) => e == null
            ? null
            : GraphDefinition_Compartment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    link: (json['link'] as List)
        ?.map((e) => e == null
            ? null
            : GraphDefinition_Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GraphDefinition_TargetToJson(
        GraphDefinition_Target instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'params': instance.params,
      'element_params': instance.element_params?.toJson(),
      'profile': instance.profile,
      'compartment': instance.compartment?.map((e) => e?.toJson())?.toList(),
      'link': instance.link?.map((e) => e?.toJson())?.toList(),
    };

GraphDefinition_Compartment _$GraphDefinition_CompartmentFromJson(
    Map<String, dynamic> json) {
  return GraphDefinition_Compartment(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    use: json['use'] as String,
    element_use: json['element_use'] == null
        ? null
        : Element.fromJson(json['element_use'] as Map<String, dynamic>),
    code: json['code'] as String,
    element_code: json['element_code'] == null
        ? null
        : Element.fromJson(json['element_code'] as Map<String, dynamic>),
    rule: json['rule'] as String,
    element_rule: json['element_rule'] == null
        ? null
        : Element.fromJson(json['element_rule'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    element_expression: json['element_expression'] == null
        ? null
        : Element.fromJson(json['element_expression'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GraphDefinition_CompartmentToJson(
        GraphDefinition_Compartment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'use': instance.use,
      'element_use': instance.element_use?.toJson(),
      'code': instance.code,
      'element_code': instance.element_code?.toJson(),
      'rule': instance.rule,
      'element_rule': instance.element_rule?.toJson(),
      'expression': instance.expression,
      'element_expression': instance.element_expression?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
    };
