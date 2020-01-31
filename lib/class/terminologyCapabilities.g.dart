// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminologyCapabilities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TerminologyCapabilities _$TerminologyCapabilitiesFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities(
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
    kind: json['kind'] as String,
    element_kind: json['element_kind'] == null
        ? null
        : Element.fromJson(json['element_kind'] as Map<String, dynamic>),
    software: json['software'] == null
        ? null
        : TerminologyCapabilities_Software.fromJson(
            json['software'] as Map<String, dynamic>),
    implementation: json['implementation'] == null
        ? null
        : TerminologyCapabilities_Implementation.fromJson(
            json['implementation'] as Map<String, dynamic>),
    lockedDate: json['lockedDate'] as bool,
    element_lockedDate: json['element_lockedDate'] == null
        ? null
        : Element.fromJson(json['element_lockedDate'] as Map<String, dynamic>),
    codeSystem: (json['codeSystem'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_CodeSystem.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    expansion: json['expansion'] == null
        ? null
        : TerminologyCapabilities_Expansion.fromJson(
            json['expansion'] as Map<String, dynamic>),
    codeSearch: json['codeSearch'] as String,
    element_codeSearch: json['element_codeSearch'] == null
        ? null
        : Element.fromJson(json['element_codeSearch'] as Map<String, dynamic>),
    validateCode: json['validateCode'] == null
        ? null
        : TerminologyCapabilities_ValidateCode.fromJson(
            json['validateCode'] as Map<String, dynamic>),
    translation: json['translation'] == null
        ? null
        : TerminologyCapabilities_Translation.fromJson(
            json['translation'] as Map<String, dynamic>),
    closure: json['closure'] == null
        ? null
        : TerminologyCapabilities_Closure.fromJson(
            json['closure'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilitiesToJson(
        TerminologyCapabilities instance) =>
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
      'kind': instance.kind,
      'element_kind': instance.element_kind?.toJson(),
      'software': instance.software?.toJson(),
      'implementation': instance.implementation?.toJson(),
      'lockedDate': instance.lockedDate,
      'element_lockedDate': instance.element_lockedDate?.toJson(),
      'codeSystem': instance.codeSystem?.map((e) => e?.toJson())?.toList(),
      'expansion': instance.expansion?.toJson(),
      'codeSearch': instance.codeSearch,
      'element_codeSearch': instance.element_codeSearch?.toJson(),
      'validateCode': instance.validateCode?.toJson(),
      'translation': instance.translation?.toJson(),
      'closure': instance.closure?.toJson(),
    };

TerminologyCapabilities_Software _$TerminologyCapabilities_SoftwareFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Software(
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
    version: json['version'] as String,
    element_version: json['element_version'] == null
        ? null
        : Element.fromJson(json['element_version'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_SoftwareToJson(
        TerminologyCapabilities_Software instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'version': instance.version,
      'element_version': instance.element_version?.toJson(),
    };

TerminologyCapabilities_Implementation
    _$TerminologyCapabilities_ImplementationFromJson(
        Map<String, dynamic> json) {
  return TerminologyCapabilities_Implementation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    url: json['url'] as String,
    element_url: json['element_url'] == null
        ? null
        : Element.fromJson(json['element_url'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ImplementationToJson(
        TerminologyCapabilities_Implementation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'url': instance.url,
      'element_url': instance.element_url?.toJson(),
    };

TerminologyCapabilities_CodeSystem _$TerminologyCapabilities_CodeSystemFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_CodeSystem(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    uri: json['uri'] as String,
    version: (json['version'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_Version.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    subsumption: json['subsumption'] as bool,
    element_subsumption: json['element_subsumption'] == null
        ? null
        : Element.fromJson(json['element_subsumption'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_CodeSystemToJson(
        TerminologyCapabilities_CodeSystem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'uri': instance.uri,
      'version': instance.version?.map((e) => e?.toJson())?.toList(),
      'subsumption': instance.subsumption,
      'element_subsumption': instance.element_subsumption?.toJson(),
    };

TerminologyCapabilities_Version _$TerminologyCapabilities_VersionFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Version(
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
    element_code: json['element_code'] == null
        ? null
        : Element.fromJson(json['element_code'] as Map<String, dynamic>),
    isDefault: json['isDefault'] as bool,
    element_isDefault: json['element_isDefault'] == null
        ? null
        : Element.fromJson(json['element_isDefault'] as Map<String, dynamic>),
    compositional: json['compositional'] as bool,
    element_compositional: json['element_compositional'] == null
        ? null
        : Element.fromJson(
            json['element_compositional'] as Map<String, dynamic>),
    language: (json['language'] as List)?.map((e) => e as String)?.toList(),
    element_language: (json['element_language'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    filter: (json['filter'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_Filter.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    property: (json['property'] as List)?.map((e) => e as String)?.toList(),
    element_property: (json['element_property'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_VersionToJson(
        TerminologyCapabilities_Version instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'element_code': instance.element_code?.toJson(),
      'isDefault': instance.isDefault,
      'element_isDefault': instance.element_isDefault?.toJson(),
      'compositional': instance.compositional,
      'element_compositional': instance.element_compositional?.toJson(),
      'language': instance.language,
      'element_language':
          instance.element_language?.map((e) => e?.toJson())?.toList(),
      'filter': instance.filter?.map((e) => e?.toJson())?.toList(),
      'property': instance.property,
      'element_property':
          instance.element_property?.map((e) => e?.toJson())?.toList(),
    };

TerminologyCapabilities_Filter _$TerminologyCapabilities_FilterFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Filter(
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
    element_code: json['element_code'] == null
        ? null
        : Element.fromJson(json['element_code'] as Map<String, dynamic>),
    op: (json['op'] as List)?.map((e) => e as String)?.toList(),
    element_op: (json['element_op'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_FilterToJson(
        TerminologyCapabilities_Filter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'element_code': instance.element_code?.toJson(),
      'op': instance.op,
      'element_op': instance.element_op?.map((e) => e?.toJson())?.toList(),
    };

TerminologyCapabilities_Expansion _$TerminologyCapabilities_ExpansionFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Expansion(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    hierarchical: json['hierarchical'] as bool,
    element_hierarchical: json['element_hierarchical'] == null
        ? null
        : Element.fromJson(
            json['element_hierarchical'] as Map<String, dynamic>),
    paging: json['paging'] as bool,
    element_paging: json['element_paging'] == null
        ? null
        : Element.fromJson(json['element_paging'] as Map<String, dynamic>),
    incomplete: json['incomplete'] as bool,
    element_incomplete: json['element_incomplete'] == null
        ? null
        : Element.fromJson(json['element_incomplete'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_Parameter.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    textFilter: json['textFilter'] as String,
    element_textFilter: json['element_textFilter'] == null
        ? null
        : Element.fromJson(json['element_textFilter'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ExpansionToJson(
        TerminologyCapabilities_Expansion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'hierarchical': instance.hierarchical,
      'element_hierarchical': instance.element_hierarchical?.toJson(),
      'paging': instance.paging,
      'element_paging': instance.element_paging?.toJson(),
      'incomplete': instance.incomplete,
      'element_incomplete': instance.element_incomplete?.toJson(),
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
      'textFilter': instance.textFilter,
      'element_textFilter': instance.element_textFilter?.toJson(),
    };

TerminologyCapabilities_Parameter _$TerminologyCapabilities_ParameterFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Parameter(
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
    documentation: json['documentation'] as String,
    element_documentation: json['element_documentation'] == null
        ? null
        : Element.fromJson(
            json['element_documentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ParameterToJson(
        TerminologyCapabilities_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'documentation': instance.documentation,
      'element_documentation': instance.element_documentation?.toJson(),
    };

TerminologyCapabilities_ValidateCode
    _$TerminologyCapabilities_ValidateCodeFromJson(Map<String, dynamic> json) {
  return TerminologyCapabilities_ValidateCode(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    translations: json['translations'] as bool,
    element_translations: json['element_translations'] == null
        ? null
        : Element.fromJson(
            json['element_translations'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ValidateCodeToJson(
        TerminologyCapabilities_ValidateCode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'translations': instance.translations,
      'element_translations': instance.element_translations?.toJson(),
    };

TerminologyCapabilities_Translation
    _$TerminologyCapabilities_TranslationFromJson(Map<String, dynamic> json) {
  return TerminologyCapabilities_Translation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    needsMap: json['needsMap'] as bool,
    element_needsMap: json['element_needsMap'] == null
        ? null
        : Element.fromJson(json['element_needsMap'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_TranslationToJson(
        TerminologyCapabilities_Translation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'needsMap': instance.needsMap,
      'element_needsMap': instance.element_needsMap?.toJson(),
    };

TerminologyCapabilities_Closure _$TerminologyCapabilities_ClosureFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Closure(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    translation: json['translation'] as bool,
    element_translation: json['element_translation'] == null
        ? null
        : Element.fromJson(json['element_translation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ClosureToJson(
        TerminologyCapabilities_Closure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'translation': instance.translation,
      'element_translation': instance.element_translation?.toJson(),
    };
