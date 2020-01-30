// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structureMap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StructureMap _$StructureMapFromJson(Map<String, dynamic> json) {
  return StructureMap(
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
    copyright: json['copyright'] as String,
    element_copyright: json['element_copyright'] == null
        ? null
        : Element.fromJson(json['element_copyright'] as Map<String, dynamic>),
    structure: (json['structure'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Structure.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    import: (json['import'] as List)?.map((e) => e as String)?.toList(),
    group: (json['group'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Group.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StructureMapToJson(StructureMap instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'element_version': instance.element_version?.toJson(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'title': instance.title,
      'element_title': instance.element_title?.toJson(),
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
      'copyright': instance.copyright,
      'element_copyright': instance.element_copyright?.toJson(),
      'structure': instance.structure?.map((e) => e?.toJson())?.toList(),
      'import': instance.import,
      'group': instance.group?.map((e) => e?.toJson())?.toList(),
    };

StructureMap_Structure _$StructureMap_StructureFromJson(
    Map<String, dynamic> json) {
  return StructureMap_Structure(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    url: json['url'] as String,
    mode: json['mode'] as String,
    element_mode: json['element_mode'] == null
        ? null
        : Element.fromJson(json['element_mode'] as Map<String, dynamic>),
    alias: json['alias'] as String,
    element_alias: json['element_alias'] == null
        ? null
        : Element.fromJson(json['element_alias'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    element_documentation: json['element_documentation'] == null
        ? null
        : Element.fromJson(
            json['element_documentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_StructureToJson(
        StructureMap_Structure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'mode': instance.mode,
      'element_mode': instance.element_mode?.toJson(),
      'alias': instance.alias,
      'element_alias': instance.element_alias?.toJson(),
      'documentation': instance.documentation,
      'element_documentation': instance.element_documentation?.toJson(),
    };

StructureMap_Group _$StructureMap_GroupFromJson(Map<String, dynamic> json) {
  return StructureMap_Group(
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
    extend: json['extend'] as String,
    element_extends: json['element_extends'] == null
        ? null
        : Element.fromJson(json['element_extends'] as Map<String, dynamic>),
    typeMode: json['typeMode'] as String,
    element_typeMode: json['element_typeMode'] == null
        ? null
        : Element.fromJson(json['element_typeMode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    element_documentation: json['element_documentation'] == null
        ? null
        : Element.fromJson(
            json['element_documentation'] as Map<String, dynamic>),
    input: (json['input'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Input.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rule: (json['rule'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Rule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StructureMap_GroupToJson(StructureMap_Group instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'extend': instance.extend,
      'element_extends': instance.element_extends?.toJson(),
      'typeMode': instance.typeMode,
      'element_typeMode': instance.element_typeMode?.toJson(),
      'documentation': instance.documentation,
      'element_documentation': instance.element_documentation?.toJson(),
      'input': instance.input?.map((e) => e?.toJson())?.toList(),
      'rule': instance.rule?.map((e) => e?.toJson())?.toList(),
    };

StructureMap_Input _$StructureMap_InputFromJson(Map<String, dynamic> json) {
  return StructureMap_Input(
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
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    mode: json['mode'] as String,
    element_mode: json['element_mode'] == null
        ? null
        : Element.fromJson(json['element_mode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    element_documentation: json['element_documentation'] == null
        ? null
        : Element.fromJson(
            json['element_documentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_InputToJson(StructureMap_Input instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'mode': instance.mode,
      'element_mode': instance.element_mode?.toJson(),
      'documentation': instance.documentation,
      'element_documentation': instance.element_documentation?.toJson(),
    };

StructureMap_Rule _$StructureMap_RuleFromJson(Map<String, dynamic> json) {
  return StructureMap_Rule(
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
    source: (json['source'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Source.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    target: (json['target'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Target.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rule: (json['rule'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Rule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dependent: (json['dependent'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Dependent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    documentation: json['documentation'] as String,
    element_documentation: json['element_documentation'] == null
        ? null
        : Element.fromJson(
            json['element_documentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_RuleToJson(StructureMap_Rule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
      'rule': instance.rule?.map((e) => e?.toJson())?.toList(),
      'dependent': instance.dependent?.map((e) => e?.toJson())?.toList(),
      'documentation': instance.documentation,
      'element_documentation': instance.element_documentation?.toJson(),
    };

StructureMap_Source _$StructureMap_SourceFromJson(Map<String, dynamic> json) {
  return StructureMap_Source(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    context: json['context'] as String,
    element_context: json['element_context'] == null
        ? null
        : Element.fromJson(json['element_context'] as Map<String, dynamic>),
    min: json['min'] as int,
    element_min: json['element_min'] == null
        ? null
        : Element.fromJson(json['element_min'] as Map<String, dynamic>),
    max: json['max'] as String,
    element_max: json['element_max'] == null
        ? null
        : Element.fromJson(json['element_max'] as Map<String, dynamic>),
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    defaultValueBase64Binary: json['defaultValueBase64Binary'] as String,
    element_defaultValueBase64Binary:
        json['element_defaultValueBase64Binary'] == null
            ? null
            : Element.fromJson(json['element_defaultValueBase64Binary']
                as Map<String, dynamic>),
    defaultValueBoolean: json['defaultValueBoolean'] as bool,
    element_defaultValueBoolean: json['element_defaultValueBoolean'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueBoolean'] as Map<String, dynamic>),
    defaultValueCanonical: json['defaultValueCanonical'] as String,
    element_defaultValueCanonical: json['element_defaultValueCanonical'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueCanonical'] as Map<String, dynamic>),
    defaultValueCode: json['defaultValueCode'] as String,
    element_defaultValueCode: json['element_defaultValueCode'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueCode'] as Map<String, dynamic>),
    defaultValueDate: json['defaultValueDate'] as String,
    element_defaultValueDate: json['element_defaultValueDate'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueDate'] as Map<String, dynamic>),
    defaultValueDateTime: json['defaultValueDateTime'] as String,
    element_defaultValueDateTime: json['element_defaultValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueDateTime'] as Map<String, dynamic>),
    defaultValueDecimal: (json['defaultValueDecimal'] as num)?.toDouble(),
    element_defaultValueDecimal: json['element_defaultValueDecimal'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueDecimal'] as Map<String, dynamic>),
    defaultValueId: json['defaultValueId'] as String,
    element_defaultValueId: json['element_defaultValueId'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueId'] as Map<String, dynamic>),
    defaultValueInstant: json['defaultValueInstant'] as String,
    element_defaultValueInstant: json['element_defaultValueInstant'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueInstant'] as Map<String, dynamic>),
    defaultValueInteger: json['defaultValueInteger'] as int,
    element_defaultValueInteger: json['element_defaultValueInteger'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueInteger'] as Map<String, dynamic>),
    defaultValueMarkdown: json['defaultValueMarkdown'] as String,
    element_defaultValueMarkdown: json['element_defaultValueMarkdown'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueMarkdown'] as Map<String, dynamic>),
    defaultValueOid: json['defaultValueOid'] as String,
    element_defaultValueOid: json['element_defaultValueOid'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueOid'] as Map<String, dynamic>),
    defaultValuePositiveInt: json['defaultValuePositiveInt'] as int,
    element_defaultValuePositiveInt: json['element_defaultValuePositiveInt'] ==
            null
        ? null
        : Element.fromJson(
            json['element_defaultValuePositiveInt'] as Map<String, dynamic>),
    defaultValueString: json['defaultValueString'] as String,
    element_defaultValueString: json['element_defaultValueString'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueString'] as Map<String, dynamic>),
    defaultValueTime: json['defaultValueTime'] as String,
    element_defaultValueTime: json['element_defaultValueTime'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueTime'] as Map<String, dynamic>),
    defaultValueUnsignedInt: json['defaultValueUnsignedInt'] as int,
    element_defaultValueUnsignedInt: json['element_defaultValueUnsignedInt'] ==
            null
        ? null
        : Element.fromJson(
            json['element_defaultValueUnsignedInt'] as Map<String, dynamic>),
    defaultValueUri: json['defaultValueUri'] as String,
    element_defaultValueUri: json['element_defaultValueUri'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueUri'] as Map<String, dynamic>),
    defaultValueUrl: json['defaultValueUrl'] as String,
    element_defaultValueUrl: json['element_defaultValueUrl'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueUrl'] as Map<String, dynamic>),
    defaultValueUuid: json['defaultValueUuid'] as String,
    element_defaultValueUuid: json['element_defaultValueUuid'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueUuid'] as Map<String, dynamic>),
    defaultValueAddress: json['defaultValueAddress'] == null
        ? null
        : Address.fromJson(json['defaultValueAddress'] as Map<String, dynamic>),
    defaultValueAge: json['defaultValueAge'] == null
        ? null
        : Age.fromJson(json['defaultValueAge'] as Map<String, dynamic>),
    defaultValueAnnotation: json['defaultValueAnnotation'] == null
        ? null
        : Annotation.fromJson(
            json['defaultValueAnnotation'] as Map<String, dynamic>),
    defaultValueAttachment: json['defaultValueAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['defaultValueAttachment'] as Map<String, dynamic>),
    defaultValueCodeableConcept: json['defaultValueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['defaultValueCodeableConcept'] as Map<String, dynamic>),
    defaultValueCoding: json['defaultValueCoding'] == null
        ? null
        : Coding.fromJson(json['defaultValueCoding'] as Map<String, dynamic>),
    defaultValueContactPoint: json['defaultValueContactPoint'] == null
        ? null
        : ContactPoint.fromJson(
            json['defaultValueContactPoint'] as Map<String, dynamic>),
    defaultValueCount: json['defaultValueCount'] == null
        ? null
        : Count.fromJson(json['defaultValueCount'] as Map<String, dynamic>),
    defaultValueDistance: json['defaultValueDistance'] == null
        ? null
        : Distance.fromJson(
            json['defaultValueDistance'] as Map<String, dynamic>),
    defaultValueDuration: json['defaultValueDuration'],
    defaultValueHumanName: json['defaultValueHumanName'] == null
        ? null
        : HumanName.fromJson(
            json['defaultValueHumanName'] as Map<String, dynamic>),
    defaultValueIdentifier: json['defaultValueIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['defaultValueIdentifier'] as Map<String, dynamic>),
    defaultValueMoney: json['defaultValueMoney'] == null
        ? null
        : Money.fromJson(json['defaultValueMoney'] as Map<String, dynamic>),
    defaultValuePeriod: json['defaultValuePeriod'] == null
        ? null
        : Period.fromJson(json['defaultValuePeriod'] as Map<String, dynamic>),
    defaultValueQuantity: json['defaultValueQuantity'] == null
        ? null
        : Quantity.fromJson(
            json['defaultValueQuantity'] as Map<String, dynamic>),
    defaultValueRange: json['defaultValueRange'] == null
        ? null
        : Range.fromJson(json['defaultValueRange'] as Map<String, dynamic>),
    defaultValueRatio: json['defaultValueRatio'] == null
        ? null
        : Ratio.fromJson(json['defaultValueRatio'] as Map<String, dynamic>),
    defaultValueReference: json['defaultValueReference'] == null
        ? null
        : Reference.fromJson(
            json['defaultValueReference'] as Map<String, dynamic>),
    defaultValueSampledData: json['defaultValueSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['defaultValueSampledData'] as Map<String, dynamic>),
    defaultValueSignature: json['defaultValueSignature'] == null
        ? null
        : Signature.fromJson(
            json['defaultValueSignature'] as Map<String, dynamic>),
    defaultValueTiming: json['defaultValueTiming'] == null
        ? null
        : Timing.fromJson(json['defaultValueTiming'] as Map<String, dynamic>),
    defaultValueContactDetail: json['defaultValueContactDetail'] == null
        ? null
        : ContactDetail.fromJson(
            json['defaultValueContactDetail'] as Map<String, dynamic>),
    defaultValueContributor: json['defaultValueContributor'] == null
        ? null
        : Contributor.fromJson(
            json['defaultValueContributor'] as Map<String, dynamic>),
    defaultValueDataRequirement: json['defaultValueDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['defaultValueDataRequirement'] as Map<String, dynamic>),
    defaultValueExpression: json['defaultValueExpression'] == null
        ? null
        : Expression.fromJson(
            json['defaultValueExpression'] as Map<String, dynamic>),
    defaultValueParameterDefinition: json['defaultValueParameterDefinition'] ==
            null
        ? null
        : ParameterDefinition.fromJson(
            json['defaultValueParameterDefinition'] as Map<String, dynamic>),
    defaultValueRelatedArtifact: json['defaultValueRelatedArtifact'] == null
        ? null
        : RelatedArtifact.fromJson(
            json['defaultValueRelatedArtifact'] as Map<String, dynamic>),
    defaultValueTriggerDefinition: json['defaultValueTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['defaultValueTriggerDefinition'] as Map<String, dynamic>),
    defaultValueUsageContext: json['defaultValueUsageContext'] == null
        ? null
        : UsageContext.fromJson(
            json['defaultValueUsageContext'] as Map<String, dynamic>),
    defaultValueDosage: json['defaultValueDosage'] == null
        ? null
        : Dosage.fromJson(json['defaultValueDosage'] as Map<String, dynamic>),
    defaultValueMeta: json['defaultValueMeta'] == null
        ? null
        : Meta.fromJson(json['defaultValueMeta'] as Map<String, dynamic>),
    element: json['element'] as String,
    element_element: json['element_element'] == null
        ? null
        : Element.fromJson(json['element_element'] as Map<String, dynamic>),
    listMode: json['listMode'] as String,
    element_listMode: json['element_listMode'] == null
        ? null
        : Element.fromJson(json['element_listMode'] as Map<String, dynamic>),
    variable: json['variable'] as String,
    element_variable: json['element_variable'] == null
        ? null
        : Element.fromJson(json['element_variable'] as Map<String, dynamic>),
    condition: json['condition'] as String,
    element_condition: json['element_condition'] == null
        ? null
        : Element.fromJson(json['element_condition'] as Map<String, dynamic>),
    check: json['check'] as String,
    element_check: json['element_check'] == null
        ? null
        : Element.fromJson(json['element_check'] as Map<String, dynamic>),
    logMessage: json['logMessage'] as String,
    element_logMessage: json['element_logMessage'] == null
        ? null
        : Element.fromJson(json['element_logMessage'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_SourceToJson(
        StructureMap_Source instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'context': instance.context,
      'element_context': instance.element_context?.toJson(),
      'min': instance.min,
      'element_min': instance.element_min?.toJson(),
      'max': instance.max,
      'element_max': instance.element_max?.toJson(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'defaultValueBase64Binary': instance.defaultValueBase64Binary,
      'element_defaultValueBase64Binary':
          instance.element_defaultValueBase64Binary?.toJson(),
      'defaultValueBoolean': instance.defaultValueBoolean,
      'element_defaultValueBoolean':
          instance.element_defaultValueBoolean?.toJson(),
      'defaultValueCanonical': instance.defaultValueCanonical,
      'element_defaultValueCanonical':
          instance.element_defaultValueCanonical?.toJson(),
      'defaultValueCode': instance.defaultValueCode,
      'element_defaultValueCode': instance.element_defaultValueCode?.toJson(),
      'defaultValueDate': instance.defaultValueDate,
      'element_defaultValueDate': instance.element_defaultValueDate?.toJson(),
      'defaultValueDateTime': instance.defaultValueDateTime,
      'element_defaultValueDateTime':
          instance.element_defaultValueDateTime?.toJson(),
      'defaultValueDecimal': instance.defaultValueDecimal,
      'element_defaultValueDecimal':
          instance.element_defaultValueDecimal?.toJson(),
      'defaultValueId': instance.defaultValueId,
      'element_defaultValueId': instance.element_defaultValueId?.toJson(),
      'defaultValueInstant': instance.defaultValueInstant,
      'element_defaultValueInstant':
          instance.element_defaultValueInstant?.toJson(),
      'defaultValueInteger': instance.defaultValueInteger,
      'element_defaultValueInteger':
          instance.element_defaultValueInteger?.toJson(),
      'defaultValueMarkdown': instance.defaultValueMarkdown,
      'element_defaultValueMarkdown':
          instance.element_defaultValueMarkdown?.toJson(),
      'defaultValueOid': instance.defaultValueOid,
      'element_defaultValueOid': instance.element_defaultValueOid?.toJson(),
      'defaultValuePositiveInt': instance.defaultValuePositiveInt,
      'element_defaultValuePositiveInt':
          instance.element_defaultValuePositiveInt?.toJson(),
      'defaultValueString': instance.defaultValueString,
      'element_defaultValueString':
          instance.element_defaultValueString?.toJson(),
      'defaultValueTime': instance.defaultValueTime,
      'element_defaultValueTime': instance.element_defaultValueTime?.toJson(),
      'defaultValueUnsignedInt': instance.defaultValueUnsignedInt,
      'element_defaultValueUnsignedInt':
          instance.element_defaultValueUnsignedInt?.toJson(),
      'defaultValueUri': instance.defaultValueUri,
      'element_defaultValueUri': instance.element_defaultValueUri?.toJson(),
      'defaultValueUrl': instance.defaultValueUrl,
      'element_defaultValueUrl': instance.element_defaultValueUrl?.toJson(),
      'defaultValueUuid': instance.defaultValueUuid,
      'element_defaultValueUuid': instance.element_defaultValueUuid?.toJson(),
      'defaultValueAddress': instance.defaultValueAddress?.toJson(),
      'defaultValueAge': instance.defaultValueAge?.toJson(),
      'defaultValueAnnotation': instance.defaultValueAnnotation?.toJson(),
      'defaultValueAttachment': instance.defaultValueAttachment?.toJson(),
      'defaultValueCodeableConcept':
          instance.defaultValueCodeableConcept?.toJson(),
      'defaultValueCoding': instance.defaultValueCoding?.toJson(),
      'defaultValueContactPoint': instance.defaultValueContactPoint?.toJson(),
      'defaultValueCount': instance.defaultValueCount?.toJson(),
      'defaultValueDistance': instance.defaultValueDistance?.toJson(),
      'defaultValueDuration': instance.defaultValueDuration,
      'defaultValueHumanName': instance.defaultValueHumanName?.toJson(),
      'defaultValueIdentifier': instance.defaultValueIdentifier?.toJson(),
      'defaultValueMoney': instance.defaultValueMoney?.toJson(),
      'defaultValuePeriod': instance.defaultValuePeriod?.toJson(),
      'defaultValueQuantity': instance.defaultValueQuantity?.toJson(),
      'defaultValueRange': instance.defaultValueRange?.toJson(),
      'defaultValueRatio': instance.defaultValueRatio?.toJson(),
      'defaultValueReference': instance.defaultValueReference?.toJson(),
      'defaultValueSampledData': instance.defaultValueSampledData?.toJson(),
      'defaultValueSignature': instance.defaultValueSignature?.toJson(),
      'defaultValueTiming': instance.defaultValueTiming?.toJson(),
      'defaultValueContactDetail': instance.defaultValueContactDetail?.toJson(),
      'defaultValueContributor': instance.defaultValueContributor?.toJson(),
      'defaultValueDataRequirement':
          instance.defaultValueDataRequirement?.toJson(),
      'defaultValueExpression': instance.defaultValueExpression?.toJson(),
      'defaultValueParameterDefinition':
          instance.defaultValueParameterDefinition?.toJson(),
      'defaultValueRelatedArtifact':
          instance.defaultValueRelatedArtifact?.toJson(),
      'defaultValueTriggerDefinition':
          instance.defaultValueTriggerDefinition?.toJson(),
      'defaultValueUsageContext': instance.defaultValueUsageContext?.toJson(),
      'defaultValueDosage': instance.defaultValueDosage?.toJson(),
      'defaultValueMeta': instance.defaultValueMeta?.toJson(),
      'element': instance.element,
      'element_element': instance.element_element?.toJson(),
      'listMode': instance.listMode,
      'element_listMode': instance.element_listMode?.toJson(),
      'variable': instance.variable,
      'element_variable': instance.element_variable?.toJson(),
      'condition': instance.condition,
      'element_condition': instance.element_condition?.toJson(),
      'check': instance.check,
      'element_check': instance.element_check?.toJson(),
      'logMessage': instance.logMessage,
      'element_logMessage': instance.element_logMessage?.toJson(),
    };

StructureMap_Target _$StructureMap_TargetFromJson(Map<String, dynamic> json) {
  return StructureMap_Target(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    context: json['context'] as String,
    element_context: json['element_context'] == null
        ? null
        : Element.fromJson(json['element_context'] as Map<String, dynamic>),
    contextType: json['contextType'] as String,
    element_contextType: json['element_contextType'] == null
        ? null
        : Element.fromJson(json['element_contextType'] as Map<String, dynamic>),
    element: json['element'] as String,
    element_element: json['element_element'] == null
        ? null
        : Element.fromJson(json['element_element'] as Map<String, dynamic>),
    variable: json['variable'] as String,
    element_variable: json['element_variable'] == null
        ? null
        : Element.fromJson(json['element_variable'] as Map<String, dynamic>),
    listMode: (json['listMode'] as List)?.map((e) => e as String)?.toList(),
    element_listMode: (json['element_listMode'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    listRuleId: json['listRuleId'] as String,
    element_listRuleId: json['element_listRuleId'] == null
        ? null
        : Element.fromJson(json['element_listRuleId'] as Map<String, dynamic>),
    transform: json['transform'] as String,
    element_transform: json['element_transform'] == null
        ? null
        : Element.fromJson(json['element_transform'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StructureMap_TargetToJson(
        StructureMap_Target instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'context': instance.context,
      'element_context': instance.element_context?.toJson(),
      'contextType': instance.contextType,
      'element_contextType': instance.element_contextType?.toJson(),
      'element': instance.element,
      'element_element': instance.element_element?.toJson(),
      'variable': instance.variable,
      'element_variable': instance.element_variable?.toJson(),
      'listMode': instance.listMode,
      'element_listMode':
          instance.element_listMode?.map((e) => e?.toJson())?.toList(),
      'listRuleId': instance.listRuleId,
      'element_listRuleId': instance.element_listRuleId?.toJson(),
      'transform': instance.transform,
      'element_transform': instance.element_transform?.toJson(),
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
    };

StructureMap_Parameter _$StructureMap_ParameterFromJson(
    Map<String, dynamic> json) {
  return StructureMap_Parameter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueId: json['valueId'] as String,
    element_valueId: json['element_valueId'] == null
        ? null
        : Element.fromJson(json['element_valueId'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    element_valueString: json['element_valueString'] == null
        ? null
        : Element.fromJson(json['element_valueString'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    element_valueBoolean: json['element_valueBoolean'] == null
        ? null
        : Element.fromJson(
            json['element_valueBoolean'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    element_valueInteger: json['element_valueInteger'] == null
        ? null
        : Element.fromJson(
            json['element_valueInteger'] as Map<String, dynamic>),
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
    element_valueDecimal: json['element_valueDecimal'] == null
        ? null
        : Element.fromJson(
            json['element_valueDecimal'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_ParameterToJson(
        StructureMap_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'valueId': instance.valueId,
      'element_valueId': instance.element_valueId?.toJson(),
      'valueString': instance.valueString,
      'element_valueString': instance.element_valueString?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'element_valueBoolean': instance.element_valueBoolean?.toJson(),
      'valueInteger': instance.valueInteger,
      'element_valueInteger': instance.element_valueInteger?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'element_valueDecimal': instance.element_valueDecimal?.toJson(),
    };

StructureMap_Dependent _$StructureMap_DependentFromJson(
    Map<String, dynamic> json) {
  return StructureMap_Dependent(
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
    variable: (json['variable'] as List)?.map((e) => e as String)?.toList(),
    element_variable: (json['element_variable'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StructureMap_DependentToJson(
        StructureMap_Dependent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'variable': instance.variable,
      'element_variable':
          instance.element_variable?.map((e) => e?.toJson())?.toList(),
    };
