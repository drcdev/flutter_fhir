// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capabilityStatement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CapabilityStatement _$CapabilityStatementFromJson(Map<String, dynamic> json) {
  return CapabilityStatement(
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
    kind: json['kind'] as String,
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
    format: (json['format'] as List)?.map((e) => e as String)?.toList(),
    patchFormat:
        (json['patchFormat'] as List)?.map((e) => e as String)?.toList(),
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
      'kind': instance.kind,
      'instantiates': instance.instantiates,
      'imports': instance.imports,
      'software': instance.software?.toJson(),
      'implementation': instance.implementation?.toJson(),
      'fhirVersion': instance.fhirVersion,
      'format': instance.format,
      'patchFormat': instance.patchFormat,
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
    version: json['version'] as String,
    releaseDate: json['releaseDate'] == null
        ? null
        : DateTime.parse(json['releaseDate'] as String),
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
      'version': instance.version,
      'releaseDate': instance.releaseDate?.toIso8601String(),
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
    url: json['url'] as String,
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
      'url': instance.url,
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
    documentation: json['documentation'] as String,
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
      'documentation': instance.documentation,
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
    service: (json['service'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
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
      'service': instance.service?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
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
    profile: json['profile'] as String,
    supportedProfile:
        (json['supportedProfile'] as List)?.map((e) => e as String)?.toList(),
    documentation: json['documentation'] as String,
    interaction: (json['interaction'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Interaction.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    versioning: json['versioning'] as String,
    readHistory: json['readHistory'] as bool,
    updateCreate: json['updateCreate'] as bool,
    conditionalCreate: json['conditionalCreate'] as bool,
    conditionalRead: json['conditionalRead'] as String,
    conditionalUpdate: json['conditionalUpdate'] as bool,
    conditionalDelete: json['conditionalDelete'] as String,
    referencePolicy:
        (json['referencePolicy'] as List)?.map((e) => e as String)?.toList(),
    searchInclude:
        (json['searchInclude'] as List)?.map((e) => e as String)?.toList(),
    searchRevInclude:
        (json['searchRevInclude'] as List)?.map((e) => e as String)?.toList(),
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
      'profile': instance.profile,
      'supportedProfile': instance.supportedProfile,
      'documentation': instance.documentation,
      'interaction': instance.interaction?.map((e) => e?.toJson())?.toList(),
      'versioning': instance.versioning,
      'readHistory': instance.readHistory,
      'updateCreate': instance.updateCreate,
      'conditionalCreate': instance.conditionalCreate,
      'conditionalRead': instance.conditionalRead,
      'conditionalUpdate': instance.conditionalUpdate,
      'conditionalDelete': instance.conditionalDelete,
      'referencePolicy': instance.referencePolicy,
      'searchInclude': instance.searchInclude,
      'searchRevInclude': instance.searchRevInclude,
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
    documentation: json['documentation'] as String,
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
      'documentation': instance.documentation,
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
    definition: json['definition'] as String,
    type: json['type'] as String,
    documentation: json['documentation'] as String,
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
      'definition': instance.definition,
      'type': instance.type,
      'documentation': instance.documentation,
    };

CapabilityStatement_Operation _$CapabilityStatement_OperationFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Operation(
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
    definition: json['definition'] as String,
    documentation: json['documentation'] as String,
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
      'definition': instance.definition,
      'documentation': instance.documentation,
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
    documentation: json['documentation'] as String,
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
      'documentation': instance.documentation,
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
    documentation: json['documentation'] as String,
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
      'documentation': instance.documentation,
      'supportedMessage':
          instance.supportedMessage?.map((e) => e?.toJson())?.toList(),
    };

CapabilityStatement_Endpoint _$CapabilityStatement_EndpointFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Endpoint(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    protocol: json['protocol'] == null
        ? null
        : Coding.fromJson(json['protocol'] as Map<String, dynamic>),
    address: json['address'] as String,
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
    };

CapabilityStatement_SupportedMessage
    _$CapabilityStatement_SupportedMessageFromJson(Map<String, dynamic> json) {
  return CapabilityStatement_SupportedMessage(
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
    definition: json['definition'] as String,
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
      'definition': instance.definition,
    };

CapabilityStatement_Document _$CapabilityStatement_DocumentFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Document(
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
    documentation: json['documentation'] as String,
    profile: json['profile'] as String,
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
      'documentation': instance.documentation,
      'profile': instance.profile,
    };
