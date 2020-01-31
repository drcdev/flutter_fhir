// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testScript.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestScript _$TestScriptFromJson(Map<String, dynamic> json) {
  return TestScript(
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
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
    origin: (json['origin'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Origin.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    destination: (json['destination'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Destination.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    metadata: json['metadata'] == null
        ? null
        : TestScript_Metadata.fromJson(
            json['metadata'] as Map<String, dynamic>),
    fixture: (json['fixture'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Fixture.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    profile: (json['profile'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    variable: (json['variable'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Variable.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    setup: json['setup'] == null
        ? null
        : TestScript_Setup.fromJson(json['setup'] as Map<String, dynamic>),
    test: (json['test'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Test.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    teardown: json['teardown'] == null
        ? null
        : TestScript_Teardown.fromJson(
            json['teardown'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScriptToJson(TestScript instance) =>
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
      'identifier': instance.identifier?.toJson(),
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
      'origin': instance.origin?.map((e) => e?.toJson())?.toList(),
      'destination': instance.destination?.map((e) => e?.toJson())?.toList(),
      'metadata': instance.metadata?.toJson(),
      'fixture': instance.fixture?.map((e) => e?.toJson())?.toList(),
      'profile': instance.profile?.map((e) => e?.toJson())?.toList(),
      'variable': instance.variable?.map((e) => e?.toJson())?.toList(),
      'setup': instance.setup?.toJson(),
      'test': instance.test?.map((e) => e?.toJson())?.toList(),
      'teardown': instance.teardown?.toJson(),
    };

TestScript_Origin _$TestScript_OriginFromJson(Map<String, dynamic> json) {
  return TestScript_Origin(
    json['profile'] == null
        ? null
        : Coding.fromJson(json['profile'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    index: json['index'] as int,
    element_index: json['element_index'] == null
        ? null
        : Element.fromJson(json['element_index'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_OriginToJson(TestScript_Origin instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'index': instance.index,
      'element_index': instance.element_index?.toJson(),
      'profile': instance.profile?.toJson(),
    };

TestScript_Destination _$TestScript_DestinationFromJson(
    Map<String, dynamic> json) {
  return TestScript_Destination(
    json['profile'] == null
        ? null
        : Coding.fromJson(json['profile'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    index: json['index'] as int,
    element_index: json['element_index'] == null
        ? null
        : Element.fromJson(json['element_index'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_DestinationToJson(
        TestScript_Destination instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'index': instance.index,
      'element_index': instance.element_index?.toJson(),
      'profile': instance.profile?.toJson(),
    };

TestScript_Metadata _$TestScript_MetadataFromJson(Map<String, dynamic> json) {
  return TestScript_Metadata(
    (json['capability'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Capability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    link: (json['link'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TestScript_MetadataToJson(
        TestScript_Metadata instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'link': instance.link?.map((e) => e?.toJson())?.toList(),
      'capability': instance.capability?.map((e) => e?.toJson())?.toList(),
    };

TestScript_Link _$TestScript_LinkFromJson(Map<String, dynamic> json) {
  return TestScript_Link(
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
    element_url: json['element_url'] == null
        ? null
        : Element.fromJson(json['element_url'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_LinkToJson(TestScript_Link instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'element_url': instance.element_url?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
    };

TestScript_Capability _$TestScript_CapabilityFromJson(
    Map<String, dynamic> json) {
  return TestScript_Capability(
    json['capabilities'] as String,
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    required: json['required'] as bool,
    element_required: json['element_required'] == null
        ? null
        : Element.fromJson(json['element_required'] as Map<String, dynamic>),
    validated: json['validated'] as bool,
    element_validated: json['element_validated'] == null
        ? null
        : Element.fromJson(json['element_validated'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    origin: (json['origin'] as List)?.map((e) => e as int)?.toList(),
    element_origin: (json['element_origin'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    destination: json['destination'] as int,
    element_destination: json['element_destination'] == null
        ? null
        : Element.fromJson(json['element_destination'] as Map<String, dynamic>),
    link: (json['link'] as List)?.map((e) => e as String)?.toList(),
    element_link: (json['element_link'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TestScript_CapabilityToJson(
        TestScript_Capability instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'required': instance.required,
      'element_required': instance.element_required?.toJson(),
      'validated': instance.validated,
      'element_validated': instance.element_validated?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'origin': instance.origin,
      'element_origin':
          instance.element_origin?.map((e) => e?.toJson())?.toList(),
      'destination': instance.destination,
      'element_destination': instance.element_destination?.toJson(),
      'link': instance.link,
      'element_link': instance.element_link?.map((e) => e?.toJson())?.toList(),
      'capabilities': instance.capabilities,
    };

TestScript_Fixture _$TestScript_FixtureFromJson(Map<String, dynamic> json) {
  return TestScript_Fixture(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    autocreate: json['autocreate'] as bool,
    element_autocreate: json['element_autocreate'] == null
        ? null
        : Element.fromJson(json['element_autocreate'] as Map<String, dynamic>),
    autodelete: json['autodelete'] as bool,
    element_autodelete: json['element_autodelete'] == null
        ? null
        : Element.fromJson(json['element_autodelete'] as Map<String, dynamic>),
    resource: json['resource'] == null
        ? null
        : Reference.fromJson(json['resource'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_FixtureToJson(TestScript_Fixture instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'autocreate': instance.autocreate,
      'element_autocreate': instance.element_autocreate?.toJson(),
      'autodelete': instance.autodelete,
      'element_autodelete': instance.element_autodelete?.toJson(),
      'resource': instance.resource?.toJson(),
    };

TestScript_Variable _$TestScript_VariableFromJson(Map<String, dynamic> json) {
  return TestScript_Variable(
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
    defaultValue: json['defaultValue'] as String,
    element_defaultValue: json['element_defaultValue'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValue'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    element_expression: json['element_expression'] == null
        ? null
        : Element.fromJson(json['element_expression'] as Map<String, dynamic>),
    headerField: json['headerField'] as String,
    element_headerField: json['element_headerField'] == null
        ? null
        : Element.fromJson(json['element_headerField'] as Map<String, dynamic>),
    hint: json['hint'] as String,
    element_hint: json['element_hint'] == null
        ? null
        : Element.fromJson(json['element_hint'] as Map<String, dynamic>),
    path: json['path'] as String,
    element_path: json['element_path'] == null
        ? null
        : Element.fromJson(json['element_path'] as Map<String, dynamic>),
    sourceId: json['sourceId'] as String,
    element_sourceId: json['element_sourceId'] == null
        ? null
        : Element.fromJson(json['element_sourceId'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_VariableToJson(
        TestScript_Variable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'defaultValue': instance.defaultValue,
      'element_defaultValue': instance.element_defaultValue?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'expression': instance.expression,
      'element_expression': instance.element_expression?.toJson(),
      'headerField': instance.headerField,
      'element_headerField': instance.element_headerField?.toJson(),
      'hint': instance.hint,
      'element_hint': instance.element_hint?.toJson(),
      'path': instance.path,
      'element_path': instance.element_path?.toJson(),
      'sourceId': instance.sourceId,
      'element_sourceId': instance.element_sourceId?.toJson(),
    };

TestScript_Setup _$TestScript_SetupFromJson(Map<String, dynamic> json) {
  return TestScript_Setup(
    (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Action.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TestScript_SetupToJson(TestScript_Setup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
    };

TestScript_Action _$TestScript_ActionFromJson(Map<String, dynamic> json) {
  return TestScript_Action(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    operation: json['operation'] == null
        ? null
        : TestScript_Operation.fromJson(
            json['operation'] as Map<String, dynamic>),
    asserts: json['asserts'] == null
        ? null
        : TestScript_Assert.fromJson(json['asserts'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_ActionToJson(TestScript_Action instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'operation': instance.operation?.toJson(),
      'asserts': instance.asserts?.toJson(),
    };

TestScript_Operation _$TestScript_OperationFromJson(Map<String, dynamic> json) {
  return TestScript_Operation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : Coding.fromJson(json['type'] as Map<String, dynamic>),
    resource: json['resource'] as String,
    element_resource: json['element_resource'] == null
        ? null
        : Element.fromJson(json['element_resource'] as Map<String, dynamic>),
    label: json['label'] as String,
    element_label: json['element_label'] == null
        ? null
        : Element.fromJson(json['element_label'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    accept: json['accept'] as String,
    element_accept: json['element_accept'] == null
        ? null
        : Element.fromJson(json['element_accept'] as Map<String, dynamic>),
    contentType: json['contentType'] as String,
    element_contentType: json['element_contentType'] == null
        ? null
        : Element.fromJson(json['element_contentType'] as Map<String, dynamic>),
    destination: json['destination'] as int,
    element_destination: json['element_destination'] == null
        ? null
        : Element.fromJson(json['element_destination'] as Map<String, dynamic>),
    encodeRequestUrl: json['encodeRequestUrl'] as bool,
    element_encodeRequestUrl: json['element_encodeRequestUrl'] == null
        ? null
        : Element.fromJson(
            json['element_encodeRequestUrl'] as Map<String, dynamic>),
    method: json['method'] as String,
    element_method: json['element_method'] == null
        ? null
        : Element.fromJson(json['element_method'] as Map<String, dynamic>),
    origin: json['origin'] as int,
    element_origin: json['element_origin'] == null
        ? null
        : Element.fromJson(json['element_origin'] as Map<String, dynamic>),
    params: json['params'] as String,
    element_params: json['element_params'] == null
        ? null
        : Element.fromJson(json['element_params'] as Map<String, dynamic>),
    requestHeader: (json['requestHeader'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_RequestHeader.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    requestId: json['requestId'] as String,
    element_requestId: json['element_requestId'] == null
        ? null
        : Element.fromJson(json['element_requestId'] as Map<String, dynamic>),
    responseId: json['responseId'] as String,
    element_responseId: json['element_responseId'] == null
        ? null
        : Element.fromJson(json['element_responseId'] as Map<String, dynamic>),
    sourceId: json['sourceId'] as String,
    element_sourceId: json['element_sourceId'] == null
        ? null
        : Element.fromJson(json['element_sourceId'] as Map<String, dynamic>),
    targetId: json['targetId'] as String,
    element_targetId: json['element_targetId'] == null
        ? null
        : Element.fromJson(json['element_targetId'] as Map<String, dynamic>),
    url: json['url'] as String,
    element_url: json['element_url'] == null
        ? null
        : Element.fromJson(json['element_url'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_OperationToJson(
        TestScript_Operation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'resource': instance.resource,
      'element_resource': instance.element_resource?.toJson(),
      'label': instance.label,
      'element_label': instance.element_label?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'accept': instance.accept,
      'element_accept': instance.element_accept?.toJson(),
      'contentType': instance.contentType,
      'element_contentType': instance.element_contentType?.toJson(),
      'destination': instance.destination,
      'element_destination': instance.element_destination?.toJson(),
      'encodeRequestUrl': instance.encodeRequestUrl,
      'element_encodeRequestUrl': instance.element_encodeRequestUrl?.toJson(),
      'method': instance.method,
      'element_method': instance.element_method?.toJson(),
      'origin': instance.origin,
      'element_origin': instance.element_origin?.toJson(),
      'params': instance.params,
      'element_params': instance.element_params?.toJson(),
      'requestHeader':
          instance.requestHeader?.map((e) => e?.toJson())?.toList(),
      'requestId': instance.requestId,
      'element_requestId': instance.element_requestId?.toJson(),
      'responseId': instance.responseId,
      'element_responseId': instance.element_responseId?.toJson(),
      'sourceId': instance.sourceId,
      'element_sourceId': instance.element_sourceId?.toJson(),
      'targetId': instance.targetId,
      'element_targetId': instance.element_targetId?.toJson(),
      'url': instance.url,
      'element_url': instance.element_url?.toJson(),
    };

TestScript_RequestHeader _$TestScript_RequestHeaderFromJson(
    Map<String, dynamic> json) {
  return TestScript_RequestHeader(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    field: json['field'] as String,
    element_field: json['element_field'] == null
        ? null
        : Element.fromJson(json['element_field'] as Map<String, dynamic>),
    value: json['value'] as String,
    element_value: json['element_value'] == null
        ? null
        : Element.fromJson(json['element_value'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_RequestHeaderToJson(
        TestScript_RequestHeader instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'field': instance.field,
      'element_field': instance.element_field?.toJson(),
      'value': instance.value,
      'element_value': instance.element_value?.toJson(),
    };

TestScript_Assert _$TestScript_AssertFromJson(Map<String, dynamic> json) {
  return TestScript_Assert(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    label: json['label'] as String,
    element_label: json['element_label'] == null
        ? null
        : Element.fromJson(json['element_label'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    direction: json['direction'] as String,
    element_direction: json['element_direction'] == null
        ? null
        : Element.fromJson(json['element_direction'] as Map<String, dynamic>),
    compareToSourceId: json['compareToSourceId'] as String,
    element_compareToSourceId: json['element_compareToSourceId'] == null
        ? null
        : Element.fromJson(
            json['element_compareToSourceId'] as Map<String, dynamic>),
    compareToSourceExpression: json['compareToSourceExpression'] as String,
    element_compareToSourceExpression:
        json['element_compareToSourceExpression'] == null
            ? null
            : Element.fromJson(json['element_compareToSourceExpression']
                as Map<String, dynamic>),
    compareToSourcePath: json['compareToSourcePath'] as String,
    element_compareToSourcePath: json['element_compareToSourcePath'] == null
        ? null
        : Element.fromJson(
            json['element_compareToSourcePath'] as Map<String, dynamic>),
    contentType: json['contentType'] as String,
    element_contentType: json['element_contentType'] == null
        ? null
        : Element.fromJson(json['element_contentType'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    element_expression: json['element_expression'] == null
        ? null
        : Element.fromJson(json['element_expression'] as Map<String, dynamic>),
    headerField: json['headerField'] as String,
    element_headerField: json['element_headerField'] == null
        ? null
        : Element.fromJson(json['element_headerField'] as Map<String, dynamic>),
    minimumId: json['minimumId'] as String,
    element_minimumId: json['element_minimumId'] == null
        ? null
        : Element.fromJson(json['element_minimumId'] as Map<String, dynamic>),
    navigationLinks: json['navigationLinks'] as bool,
    element_navigationLinks: json['element_navigationLinks'] == null
        ? null
        : Element.fromJson(
            json['element_navigationLinks'] as Map<String, dynamic>),
    operator: json['operator'] as String,
    element_operator: json['element_operator'] == null
        ? null
        : Element.fromJson(json['element_operator'] as Map<String, dynamic>),
    path: json['path'] as String,
    element_path: json['element_path'] == null
        ? null
        : Element.fromJson(json['element_path'] as Map<String, dynamic>),
    requestMethod: json['requestMethod'] as String,
    element_requestMethod: json['element_requestMethod'] == null
        ? null
        : Element.fromJson(
            json['element_requestMethod'] as Map<String, dynamic>),
    requestURL: json['requestURL'] as String,
    element_requestURL: json['element_requestURL'] == null
        ? null
        : Element.fromJson(json['element_requestURL'] as Map<String, dynamic>),
    resource: json['resource'] as String,
    element_resource: json['element_resource'] == null
        ? null
        : Element.fromJson(json['element_resource'] as Map<String, dynamic>),
    response: json['response'] as String,
    element_response: json['element_response'] == null
        ? null
        : Element.fromJson(json['element_response'] as Map<String, dynamic>),
    responseCode: json['responseCode'] as String,
    element_responseCode: json['element_responseCode'] == null
        ? null
        : Element.fromJson(
            json['element_responseCode'] as Map<String, dynamic>),
    sourceId: json['sourceId'] as String,
    element_sourceId: json['element_sourceId'] == null
        ? null
        : Element.fromJson(json['element_sourceId'] as Map<String, dynamic>),
    validateProfileId: json['validateProfileId'] as String,
    element_validateProfileId: json['element_validateProfileId'] == null
        ? null
        : Element.fromJson(
            json['element_validateProfileId'] as Map<String, dynamic>),
    value: json['value'] as String,
    element_value: json['element_value'] == null
        ? null
        : Element.fromJson(json['element_value'] as Map<String, dynamic>),
    warningOnly: json['warningOnly'] as bool,
    element_warningOnly: json['element_warningOnly'] == null
        ? null
        : Element.fromJson(json['element_warningOnly'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_AssertToJson(TestScript_Assert instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'label': instance.label,
      'element_label': instance.element_label?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'direction': instance.direction,
      'element_direction': instance.element_direction?.toJson(),
      'compareToSourceId': instance.compareToSourceId,
      'element_compareToSourceId': instance.element_compareToSourceId?.toJson(),
      'compareToSourceExpression': instance.compareToSourceExpression,
      'element_compareToSourceExpression':
          instance.element_compareToSourceExpression?.toJson(),
      'compareToSourcePath': instance.compareToSourcePath,
      'element_compareToSourcePath':
          instance.element_compareToSourcePath?.toJson(),
      'contentType': instance.contentType,
      'element_contentType': instance.element_contentType?.toJson(),
      'expression': instance.expression,
      'element_expression': instance.element_expression?.toJson(),
      'headerField': instance.headerField,
      'element_headerField': instance.element_headerField?.toJson(),
      'minimumId': instance.minimumId,
      'element_minimumId': instance.element_minimumId?.toJson(),
      'navigationLinks': instance.navigationLinks,
      'element_navigationLinks': instance.element_navigationLinks?.toJson(),
      'operator': instance.operator,
      'element_operator': instance.element_operator?.toJson(),
      'path': instance.path,
      'element_path': instance.element_path?.toJson(),
      'requestMethod': instance.requestMethod,
      'element_requestMethod': instance.element_requestMethod?.toJson(),
      'requestURL': instance.requestURL,
      'element_requestURL': instance.element_requestURL?.toJson(),
      'resource': instance.resource,
      'element_resource': instance.element_resource?.toJson(),
      'response': instance.response,
      'element_response': instance.element_response?.toJson(),
      'responseCode': instance.responseCode,
      'element_responseCode': instance.element_responseCode?.toJson(),
      'sourceId': instance.sourceId,
      'element_sourceId': instance.element_sourceId?.toJson(),
      'validateProfileId': instance.validateProfileId,
      'element_validateProfileId': instance.element_validateProfileId?.toJson(),
      'value': instance.value,
      'element_value': instance.element_value?.toJson(),
      'warningOnly': instance.warningOnly,
      'element_warningOnly': instance.element_warningOnly?.toJson(),
    };

TestScript_Test _$TestScript_TestFromJson(Map<String, dynamic> json) {
  return TestScript_Test(
    (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Action1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_TestToJson(TestScript_Test instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
    };

TestScript_Action1 _$TestScript_Action1FromJson(Map<String, dynamic> json) {
  return TestScript_Action1(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    operation: json['operation'] == null
        ? null
        : TestScript_Operation.fromJson(
            json['operation'] as Map<String, dynamic>),
    asserts: json['asserts'] == null
        ? null
        : TestScript_Assert.fromJson(json['asserts'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_Action1ToJson(TestScript_Action1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'operation': instance.operation?.toJson(),
      'asserts': instance.asserts?.toJson(),
    };

TestScript_Teardown _$TestScript_TeardownFromJson(Map<String, dynamic> json) {
  return TestScript_Teardown(
    (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Action2.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TestScript_TeardownToJson(
        TestScript_Teardown instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
    };

TestScript_Action2 _$TestScript_Action2FromJson(Map<String, dynamic> json) {
  return TestScript_Action2(
    json['operation'] == null
        ? null
        : TestScript_Operation.fromJson(
            json['operation'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TestScript_Action2ToJson(TestScript_Action2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'operation': instance.operation?.toJson(),
    };
