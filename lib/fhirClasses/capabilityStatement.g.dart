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
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
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
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    kind: json['kind'] as String,
    elementKind: json['elementKind'] == null
        ? null
        : Element.fromJson(json['elementKind'] as Map<String, dynamic>),
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
    elementFhirVersion: json['elementFhirVersion'] == null
        ? null
        : Element.fromJson(json['elementFhirVersion'] as Map<String, dynamic>),
    format: (json['format'] as List)?.map((e) => e as String)?.toList(),
    elementFormat: (json['elementFormat'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    patchFormat:
        (json['patchFormat'] as List)?.map((e) => e as String)?.toList(),
    elementPatchFormat: (json['elementPatchFormat'] as List)
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
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
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
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'kind': instance.kind,
      'elementKind': instance.elementKind?.toJson(),
      'instantiates': instance.instantiates,
      'imports': instance.imports,
      'software': instance.software?.toJson(),
      'implementation': instance.implementation?.toJson(),
      'fhirVersion': instance.fhirVersion,
      'elementFhirVersion': instance.elementFhirVersion?.toJson(),
      'format': instance.format,
      'elementFormat':
          instance.elementFormat?.map((e) => e?.toJson())?.toList(),
      'patchFormat': instance.patchFormat,
      'elementPatchFormat':
          instance.elementPatchFormat?.map((e) => e?.toJson())?.toList(),
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
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    releaseDate: json['releaseDate'] == null
        ? null
        : DateTime.parse(json['releaseDate'] as String),
    elementReleaseDate: json['elementReleaseDate'] == null
        ? null
        : Element.fromJson(json['elementReleaseDate'] as Map<String, dynamic>),
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
      'elementName': instance.elementName?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'elementReleaseDate': instance.elementReleaseDate?.toJson(),
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
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
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
      'elementDescription': instance.elementDescription?.toJson(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
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
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
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
      'elementMode': instance.elementMode?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
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
    elementCors: json['elementCors'] == null
        ? null
        : Element.fromJson(json['elementCors'] as Map<String, dynamic>),
    service: (json['service'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
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
      'elementCors': instance.elementCors?.toJson(),
      'service': instance.service?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
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
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    profile: json['profile'] as String,
    supportedProfile:
        (json['supportedProfile'] as List)?.map((e) => e as String)?.toList(),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
    interaction: (json['interaction'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Interaction.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    versioning: json['versioning'] as String,
    elementVersioning: json['elementVersioning'] == null
        ? null
        : Element.fromJson(json['elementVersioning'] as Map<String, dynamic>),
    readHistory: json['readHistory'] as bool,
    elementReadHistory: json['elementReadHistory'] == null
        ? null
        : Element.fromJson(json['elementReadHistory'] as Map<String, dynamic>),
    updateCreate: json['updateCreate'] as bool,
    elementUpdateCreate: json['elementUpdateCreate'] == null
        ? null
        : Element.fromJson(json['elementUpdateCreate'] as Map<String, dynamic>),
    conditionalCreate: json['conditionalCreate'] as bool,
    elementConditionalCreate: json['elementConditionalCreate'] == null
        ? null
        : Element.fromJson(
            json['elementConditionalCreate'] as Map<String, dynamic>),
    conditionalRead: json['conditionalRead'] as String,
    elementConditionalRead: json['elementConditionalRead'] == null
        ? null
        : Element.fromJson(
            json['elementConditionalRead'] as Map<String, dynamic>),
    conditionalUpdate: json['conditionalUpdate'] as bool,
    elementConditionalUpdate: json['elementConditionalUpdate'] == null
        ? null
        : Element.fromJson(
            json['elementConditionalUpdate'] as Map<String, dynamic>),
    conditionalDelete: json['conditionalDelete'] as String,
    elementConditionalDelete: json['elementConditionalDelete'] == null
        ? null
        : Element.fromJson(
            json['elementConditionalDelete'] as Map<String, dynamic>),
    referencePolicy:
        (json['referencePolicy'] as List)?.map((e) => e as String)?.toList(),
    elementReferencePolicy: (json['elementReferencePolicy'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    searchInclude:
        (json['searchInclude'] as List)?.map((e) => e as String)?.toList(),
    elementSearchInclude: (json['elementSearchInclude'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    searchRevInclude:
        (json['searchRevInclude'] as List)?.map((e) => e as String)?.toList(),
    elementSearchRevInclude: (json['elementSearchRevInclude'] as List)
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
      'elementType': instance.elementType?.toJson(),
      'profile': instance.profile,
      'supportedProfile': instance.supportedProfile,
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
      'interaction': instance.interaction?.map((e) => e?.toJson())?.toList(),
      'versioning': instance.versioning,
      'elementVersioning': instance.elementVersioning?.toJson(),
      'readHistory': instance.readHistory,
      'elementReadHistory': instance.elementReadHistory?.toJson(),
      'updateCreate': instance.updateCreate,
      'elementUpdateCreate': instance.elementUpdateCreate?.toJson(),
      'conditionalCreate': instance.conditionalCreate,
      'elementConditionalCreate': instance.elementConditionalCreate?.toJson(),
      'conditionalRead': instance.conditionalRead,
      'elementConditionalRead': instance.elementConditionalRead?.toJson(),
      'conditionalUpdate': instance.conditionalUpdate,
      'elementConditionalUpdate': instance.elementConditionalUpdate?.toJson(),
      'conditionalDelete': instance.conditionalDelete,
      'elementConditionalDelete': instance.elementConditionalDelete?.toJson(),
      'referencePolicy': instance.referencePolicy,
      'elementReferencePolicy':
          instance.elementReferencePolicy?.map((e) => e?.toJson())?.toList(),
      'searchInclude': instance.searchInclude,
      'elementSearchInclude':
          instance.elementSearchInclude?.map((e) => e?.toJson())?.toList(),
      'searchRevInclude': instance.searchRevInclude,
      'elementSearchRevInclude':
          instance.elementSearchRevInclude?.map((e) => e?.toJson())?.toList(),
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
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
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
      'elementCode': instance.elementCode?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
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
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    definition: json['definition'] as String,
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
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
      'elementName': instance.elementName?.toJson(),
      'definition': instance.definition,
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
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
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
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
      'elementName': instance.elementName?.toJson(),
      'definition': instance.definition,
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
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
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
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
      'elementCode': instance.elementCode?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
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
    elementReliableCache: json['elementReliableCache'] == null
        ? null
        : Element.fromJson(
            json['elementReliableCache'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
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
      'elementReliableCache': instance.elementReliableCache?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
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
    elementAddress: json['elementAddress'] == null
        ? null
        : Element.fromJson(json['elementAddress'] as Map<String, dynamic>),
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
      'elementAddress': instance.elementAddress?.toJson(),
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
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
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
      'elementMode': instance.elementMode?.toJson(),
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
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
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
      'elementMode': instance.elementMode?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
      'profile': instance.profile,
    };
