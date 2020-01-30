// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operationDefinition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperationDefinition _$OperationDefinitionFromJson(Map<String, dynamic> json) {
  return OperationDefinition(
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
    title: json['title'] as String,
    element_title: json['element_title'] == null
        ? null
        : Element.fromJson(json['element_title'] as Map<String, dynamic>),
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    kind: json['kind'] as String,
    element_kind: json['element_kind'] == null
        ? null
        : Element.fromJson(json['element_kind'] as Map<String, dynamic>),
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
    affectsState: json['affectsState'] as bool,
    element_affectsState: json['element_affectsState'] == null
        ? null
        : Element.fromJson(
            json['element_affectsState'] as Map<String, dynamic>),
    code: json['code'] as String,
    element_code: json['element_code'] == null
        ? null
        : Element.fromJson(json['element_code'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    element_comment: json['element_comment'] == null
        ? null
        : Element.fromJson(json['element_comment'] as Map<String, dynamic>),
    base: json['base'] as String,
    resource: (json['resource'] as List)?.map((e) => e as String)?.toList(),
    element_resource: (json['element_resource'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] as bool,
    element_system: json['element_system'] == null
        ? null
        : Element.fromJson(json['element_system'] as Map<String, dynamic>),
    type: json['type'] as bool,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    instance: json['instance'] as bool,
    element_instance: json['element_instance'] == null
        ? null
        : Element.fromJson(json['element_instance'] as Map<String, dynamic>),
    inputProfile: json['inputProfile'] as String,
    outputProfile: json['outputProfile'] as String,
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : OperationDefinition_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    overload: (json['overload'] as List)
        ?.map((e) => e == null
            ? null
            : OperationDefinition_Overload.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$OperationDefinitionToJson(
        OperationDefinition instance) =>
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
      'title': instance.title,
      'element_title': instance.element_title?.toJson(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'kind': instance.kind,
      'element_kind': instance.element_kind?.toJson(),
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
      'affectsState': instance.affectsState,
      'element_affectsState': instance.element_affectsState?.toJson(),
      'code': instance.code,
      'element_code': instance.element_code?.toJson(),
      'comment': instance.comment,
      'element_comment': instance.element_comment?.toJson(),
      'base': instance.base,
      'resource': instance.resource,
      'element_resource':
          instance.element_resource?.map((e) => e?.toJson())?.toList(),
      'system': instance.system,
      'element_system': instance.element_system?.toJson(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'instance': instance.instance,
      'element_instance': instance.element_instance?.toJson(),
      'inputProfile': instance.inputProfile,
      'outputProfile': instance.outputProfile,
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
      'overload': instance.overload?.map((e) => e?.toJson())?.toList(),
    };

OperationDefinition_Parameter _$OperationDefinition_ParameterFromJson(
    Map<String, dynamic> json) {
  return OperationDefinition_Parameter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    use: json['use'] as String,
    element_use: json['element_use'] == null
        ? null
        : Element.fromJson(json['element_use'] as Map<String, dynamic>),
    min: json['min'] as int,
    element_min: json['element_min'] == null
        ? null
        : Element.fromJson(json['element_min'] as Map<String, dynamic>),
    max: json['max'] as String,
    element_max: json['element_max'] == null
        ? null
        : Element.fromJson(json['element_max'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    element_documentation: json['element_documentation'] == null
        ? null
        : Element.fromJson(
            json['element_documentation'] as Map<String, dynamic>),
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    targetProfile:
        (json['targetProfile'] as List)?.map((e) => e as String)?.toList(),
    searchType: json['searchType'] as String,
    element_searchType: json['element_searchType'] == null
        ? null
        : Element.fromJson(json['element_searchType'] as Map<String, dynamic>),
    binding: json['binding'] == null
        ? null
        : OperationDefinition_Binding.fromJson(
            json['binding'] as Map<String, dynamic>),
    referencedFrom: (json['referencedFrom'] as List)
        ?.map((e) => e == null
            ? null
            : OperationDefinition_ReferencedFrom.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    part: (json['part'] as List)
        ?.map((e) => e == null
            ? null
            : OperationDefinition_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$OperationDefinition_ParameterToJson(
        OperationDefinition_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'use': instance.use,
      'element_use': instance.element_use?.toJson(),
      'min': instance.min,
      'element_min': instance.element_min?.toJson(),
      'max': instance.max,
      'element_max': instance.element_max?.toJson(),
      'documentation': instance.documentation,
      'element_documentation': instance.element_documentation?.toJson(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'targetProfile': instance.targetProfile,
      'searchType': instance.searchType,
      'element_searchType': instance.element_searchType?.toJson(),
      'binding': instance.binding?.toJson(),
      'referencedFrom':
          instance.referencedFrom?.map((e) => e?.toJson())?.toList(),
      'part': instance.part?.map((e) => e?.toJson())?.toList(),
    };

OperationDefinition_Binding _$OperationDefinition_BindingFromJson(
    Map<String, dynamic> json) {
  return OperationDefinition_Binding(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    strength: json['strength'] as String,
    element_strength: json['element_strength'] == null
        ? null
        : Element.fromJson(json['element_strength'] as Map<String, dynamic>),
    valueSet: json['valueSet'] as String,
  );
}

Map<String, dynamic> _$OperationDefinition_BindingToJson(
        OperationDefinition_Binding instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'strength': instance.strength,
      'element_strength': instance.element_strength?.toJson(),
      'valueSet': instance.valueSet,
    };

OperationDefinition_ReferencedFrom _$OperationDefinition_ReferencedFromFromJson(
    Map<String, dynamic> json) {
  return OperationDefinition_ReferencedFrom(
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
    element_source: json['element_source'] == null
        ? null
        : Element.fromJson(json['element_source'] as Map<String, dynamic>),
    sourceId: json['sourceId'] as String,
    element_sourceId: json['element_sourceId'] == null
        ? null
        : Element.fromJson(json['element_sourceId'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OperationDefinition_ReferencedFromToJson(
        OperationDefinition_ReferencedFrom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'source': instance.source,
      'element_source': instance.element_source?.toJson(),
      'sourceId': instance.sourceId,
      'element_sourceId': instance.element_sourceId?.toJson(),
    };

OperationDefinition_Overload _$OperationDefinition_OverloadFromJson(
    Map<String, dynamic> json) {
  return OperationDefinition_Overload(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    parameterName:
        (json['parameterName'] as List)?.map((e) => e as String)?.toList(),
    element_parameterName: (json['element_parameterName'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    comment: json['comment'] as String,
    element_comment: json['element_comment'] == null
        ? null
        : Element.fromJson(json['element_comment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OperationDefinition_OverloadToJson(
        OperationDefinition_Overload instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'parameterName': instance.parameterName,
      'element_parameterName':
          instance.element_parameterName?.map((e) => e?.toJson())?.toList(),
      'comment': instance.comment,
      'element_comment': instance.element_comment?.toJson(),
    };
