// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capabilityStatement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CapabilityStatement _$CapabilityStatementFromJson(Map<String, dynamic> json) {
  return CapabilityStatement(
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
    instantiates:
        (json['instantiates'] as List)?.map((e) => e as String)?.toList(),
    imports: (json['imports'] as List)?.map((e) => e as String)?.toList(),
    software: json['software'] == null
        ? null
        : CapabilityStatement_Software.fromJson(
            json['software'] as Map<String, dynamic>),
    implementation: json['implementation'] == null
        ? null
        : CapabilityStatement_Implementation.fromJson(
            json['implementation'] as Map<String, dynamic>),
    fhirVersion: json['fhirVersion'] as String,
    element_fhirVersion: json['element_fhirVersion'] == null
        ? null
        : Element.fromJson(json['element_fhirVersion'] as Map<String, dynamic>),
    format: (json['format'] as List)?.map((e) => e as String)?.toList(),
    element_format: (json['element_format'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    patchFormat:
        (json['patchFormat'] as List)?.map((e) => e as String)?.toList(),
    element_patchFormat: (json['element_patchFormat'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    implementationGuide: (json['implementationGuide'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    rest: (json['rest'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Rest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    messaging: (json['messaging'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Messaging.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    document: (json['document'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Document.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CapabilityStatementToJson(
        CapabilityStatement instance) =>
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
      'instantiates': instance.instantiates,
      'imports': instance.imports,
      'software': instance.software?.toJson(),
      'implementation': instance.implementation?.toJson(),
      'fhirVersion': instance.fhirVersion,
      'element_fhirVersion': instance.element_fhirVersion?.toJson(),
      'format': instance.format,
      'element_format':
          instance.element_format?.map((e) => e?.toJson())?.toList(),
      'patchFormat': instance.patchFormat,
      'element_patchFormat':
          instance.element_patchFormat?.map((e) => e?.toJson())?.toList(),
      'implementationGuide': instance.implementationGuide,
      'rest': instance.rest?.map((e) => e?.toJson())?.toList(),
      'messaging': instance.messaging?.map((e) => e?.toJson())?.toList(),
      'document': instance.document?.map((e) => e?.toJson())?.toList(),
    };

CapabilityStatement_Software _$CapabilityStatement_SoftwareFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Software(
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
    releaseDate: json['releaseDate'] == null
        ? null
        : DateTime.parse(json['releaseDate'] as String),
    element_releaseDate: json['element_releaseDate'] == null
        ? null
        : Element.fromJson(json['element_releaseDate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_SoftwareToJson(
        CapabilityStatement_Software instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'version': instance.version,
      'element_version': instance.element_version?.toJson(),
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'element_releaseDate': instance.element_releaseDate?.toJson(),
    };

CapabilityStatement_Implementation _$CapabilityStatement_ImplementationFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Implementation(
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
    custodian: json['custodian'] == null
        ? null
        : Reference.fromJson(json['custodian'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_ImplementationToJson(
        CapabilityStatement_Implementation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'url': instance.url,
      'element_url': instance.element_url?.toJson(),
      'custodian': instance.custodian?.toJson(),
    };

CapabilityStatement_Rest _$CapabilityStatement_RestFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Rest(
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
    element_mode: json['element_mode'] == null
        ? null
        : Element.fromJson(json['element_mode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    element_documentation: json['element_documentation'] == null
        ? null
        : Element.fromJson(
            json['element_documentation'] as Map<String, dynamic>),
    security: json['security'] == null
        ? null
        : CapabilityStatement_Security.fromJson(
            json['security'] as Map<String, dynamic>),
    resource: (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Resource.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    interaction: (json['interaction'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Interaction1.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    searchParam: (json['searchParam'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_SearchParam.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    operation: (json['operation'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Operation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    compartment:
        (json['compartment'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$CapabilityStatement_RestToJson(
        CapabilityStatement_Rest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'mode': instance.mode,
      'element_mode': instance.element_mode?.toJson(),
      'documentation': instance.documentation,
      'element_documentation': instance.element_documentation?.toJson(),
      'security': instance.security?.toJson(),
      'resource': instance.resource?.map((e) => e?.toJson())?.toList(),
      'interaction': instance.interaction?.map((e) => e?.toJson())?.toList(),
      'searchParam': instance.searchParam?.map((e) => e?.toJson())?.toList(),
      'operation': instance.operation?.map((e) => e?.toJson())?.toList(),
      'compartment': instance.compartment,
    };

CapabilityStatement_Security _$CapabilityStatement_SecurityFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Security(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    cors: json['cors'] as bool,
    element_cors: json['element_cors'] == null
        ? null
        : Element.fromJson(json['element_cors'] as Map<String, dynamic>),
    service: (json['service'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_SecurityToJson(
        CapabilityStatement_Security instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'cors': instance.cors,
      'element_cors': instance.element_cors?.toJson(),
      'service': instance.service?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
    };

CapabilityStatement_Resource _$CapabilityStatement_ResourceFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Resource(
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
    profile: json['profile'] as String,
    supportedProfile:
        (json['supportedProfile'] as List)?.map((e) => e as String)?.toList(),
    documentation: json['documentation'] as String,
    element_documentation: json['element_documentation'] == null
        ? null
        : Element.fromJson(
            json['element_documentation'] as Map<String, dynamic>),
    interaction: (json['interaction'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Interaction.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    versioning: json['versioning'] as String,
    element_versioning: json['element_versioning'] == null
        ? null
        : Element.fromJson(json['element_versioning'] as Map<String, dynamic>),
    readHistory: json['readHistory'] as bool,
    element_readHistory: json['element_readHistory'] == null
        ? null
        : Element.fromJson(json['element_readHistory'] as Map<String, dynamic>),
    updateCreate: json['updateCreate'] as bool,
    element_updateCreate: json['element_updateCreate'] == null
        ? null
        : Element.fromJson(
            json['element_updateCreate'] as Map<String, dynamic>),
    conditionalCreate: json['conditionalCreate'] as bool,
    element_conditionalCreate: json['element_conditionalCreate'] == null
        ? null
        : Element.fromJson(
            json['element_conditionalCreate'] as Map<String, dynamic>),
    conditionalRead: json['conditionalRead'] as String,
    element_conditionalRead: json['element_conditionalRead'] == null
        ? null
        : Element.fromJson(
            json['element_conditionalRead'] as Map<String, dynamic>),
    conditionalUpdate: json['conditionalUpdate'] as bool,
    element_conditionalUpdate: json['element_conditionalUpdate'] == null
        ? null
        : Element.fromJson(
            json['element_conditionalUpdate'] as Map<String, dynamic>),
    conditionalDelete: json['conditionalDelete'] as String,
    element_conditionalDelete: json['element_conditionalDelete'] == null
        ? null
        : Element.fromJson(
            json['element_conditionalDelete'] as Map<String, dynamic>),
    referencePolicy:
        (json['referencePolicy'] as List)?.map((e) => e as String)?.toList(),
    element_referencePolicy: (json['element_referencePolicy'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    searchInclude:
        (json['searchInclude'] as List)?.map((e) => e as String)?.toList(),
    element_searchInclude: (json['element_searchInclude'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    searchRevInclude:
        (json['searchRevInclude'] as List)?.map((e) => e as String)?.toList(),
    element_searchRevInclude: (json['element_searchRevInclude'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    searchParam: (json['searchParam'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_SearchParam.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    operation: (json['operation'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Operation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CapabilityStatement_ResourceToJson(
        CapabilityStatement_Resource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'profile': instance.profile,
      'supportedProfile': instance.supportedProfile,
      'documentation': instance.documentation,
      'element_documentation': instance.element_documentation?.toJson(),
      'interaction': instance.interaction?.map((e) => e?.toJson())?.toList(),
      'versioning': instance.versioning,
      'element_versioning': instance.element_versioning?.toJson(),
      'readHistory': instance.readHistory,
      'element_readHistory': instance.element_readHistory?.toJson(),
      'updateCreate': instance.updateCreate,
      'element_updateCreate': instance.element_updateCreate?.toJson(),
      'conditionalCreate': instance.conditionalCreate,
      'element_conditionalCreate': instance.element_conditionalCreate?.toJson(),
      'conditionalRead': instance.conditionalRead,
      'element_conditionalRead': instance.element_conditionalRead?.toJson(),
      'conditionalUpdate': instance.conditionalUpdate,
      'element_conditionalUpdate': instance.element_conditionalUpdate?.toJson(),
      'conditionalDelete': instance.conditionalDelete,
      'element_conditionalDelete': instance.element_conditionalDelete?.toJson(),
      'referencePolicy': instance.referencePolicy,
      'element_referencePolicy':
          instance.element_referencePolicy?.map((e) => e?.toJson())?.toList(),
      'searchInclude': instance.searchInclude,
      'element_searchInclude':
          instance.element_searchInclude?.map((e) => e?.toJson())?.toList(),
      'searchRevInclude': instance.searchRevInclude,
      'element_searchRevInclude':
          instance.element_searchRevInclude?.map((e) => e?.toJson())?.toList(),
      'searchParam': instance.searchParam?.map((e) => e?.toJson())?.toList(),
      'operation': instance.operation?.map((e) => e?.toJson())?.toList(),
    };

CapabilityStatement_Interaction _$CapabilityStatement_InteractionFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Interaction(
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
    documentation: json['documentation'] as String,
    element_documentation: json['element_documentation'] == null
        ? null
        : Element.fromJson(
            json['element_documentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_InteractionToJson(
        CapabilityStatement_Interaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'element_code': instance.element_code?.toJson(),
      'documentation': instance.documentation,
      'element_documentation': instance.element_documentation?.toJson(),
    };

CapabilityStatement_SearchParam _$CapabilityStatement_SearchParamFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_SearchParam(
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
    definition: json['definition'] as String,
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    element_documentation: json['element_documentation'] == null
        ? null
        : Element.fromJson(
            json['element_documentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_SearchParamToJson(
        CapabilityStatement_SearchParam instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'definition': instance.definition,
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'documentation': instance.documentation,
      'element_documentation': instance.element_documentation?.toJson(),
    };

CapabilityStatement_Operation _$CapabilityStatement_OperationFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Operation(
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

Map<String, dynamic> _$CapabilityStatement_OperationToJson(
        CapabilityStatement_Operation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'definition': instance.definition,
      'documentation': instance.documentation,
      'element_documentation': instance.element_documentation?.toJson(),
    };

CapabilityStatement_Interaction1 _$CapabilityStatement_Interaction1FromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Interaction1(
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
    documentation: json['documentation'] as String,
    element_documentation: json['element_documentation'] == null
        ? null
        : Element.fromJson(
            json['element_documentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_Interaction1ToJson(
        CapabilityStatement_Interaction1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'element_code': instance.element_code?.toJson(),
      'documentation': instance.documentation,
      'element_documentation': instance.element_documentation?.toJson(),
    };

CapabilityStatement_Messaging _$CapabilityStatement_MessagingFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Messaging(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    endpoint: (json['endpoint'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Endpoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reliableCache: json['reliableCache'] as int,
    element_reliableCache: json['element_reliableCache'] == null
        ? null
        : Element.fromJson(
            json['element_reliableCache'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    element_documentation: json['element_documentation'] == null
        ? null
        : Element.fromJson(
            json['element_documentation'] as Map<String, dynamic>),
    supportedMessage: (json['supportedMessage'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_SupportedMessage.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CapabilityStatement_MessagingToJson(
        CapabilityStatement_Messaging instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'endpoint': instance.endpoint?.map((e) => e?.toJson())?.toList(),
      'reliableCache': instance.reliableCache,
      'element_reliableCache': instance.element_reliableCache?.toJson(),
      'documentation': instance.documentation,
      'element_documentation': instance.element_documentation?.toJson(),
      'supportedMessage':
          instance.supportedMessage?.map((e) => e?.toJson())?.toList(),
    };

CapabilityStatement_Endpoint _$CapabilityStatement_EndpointFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Endpoint(
    json['protocol'] == null
        ? null
        : Coding.fromJson(json['protocol'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    address: json['address'] as String,
    element_address: json['element_address'] == null
        ? null
        : Element.fromJson(json['element_address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_EndpointToJson(
        CapabilityStatement_Endpoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'protocol': instance.protocol?.toJson(),
      'address': instance.address,
      'element_address': instance.element_address?.toJson(),
    };

CapabilityStatement_SupportedMessage
    _$CapabilityStatement_SupportedMessageFromJson(Map<String, dynamic> json) {
  return CapabilityStatement_SupportedMessage(
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
    mode: json['mode'] as String,
    element_mode: json['element_mode'] == null
        ? null
        : Element.fromJson(json['element_mode'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_SupportedMessageToJson(
        CapabilityStatement_SupportedMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'mode': instance.mode,
      'element_mode': instance.element_mode?.toJson(),
      'definition': instance.definition,
    };

CapabilityStatement_Document _$CapabilityStatement_DocumentFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Document(
    json['profile'] as String,
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

Map<String, dynamic> _$CapabilityStatement_DocumentToJson(
        CapabilityStatement_Document instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'mode': instance.mode,
      'element_mode': instance.element_mode?.toJson(),
      'documentation': instance.documentation,
      'element_documentation': instance.element_documentation?.toJson(),
      'profile': instance.profile,
    };
