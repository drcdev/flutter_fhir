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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
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
      'identifier': instance.identifier?.toJson(),
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
    elementIndex: json['elementIndex'] == null
        ? null
        : Element.fromJson(json['elementIndex'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_OriginToJson(TestScript_Origin instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'index': instance.index,
      'elementIndex': instance.elementIndex?.toJson(),
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
    elementIndex: json['elementIndex'] == null
        ? null
        : Element.fromJson(json['elementIndex'] as Map<String, dynamic>),
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
      'elementIndex': instance.elementIndex?.toJson(),
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
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_LinkToJson(TestScript_Link instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
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
    elementRequired: json['elementRequired'] == null
        ? null
        : Element.fromJson(json['elementRequired'] as Map<String, dynamic>),
    validated: json['validated'] as bool,
    elementValidated: json['elementValidated'] == null
        ? null
        : Element.fromJson(json['elementValidated'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    origin: (json['origin'] as List)?.map((e) => e as int)?.toList(),
    elementOrigin: (json['elementOrigin'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    destination: json['destination'] as int,
    elementDestination: json['elementDestination'] == null
        ? null
        : Element.fromJson(json['elementDestination'] as Map<String, dynamic>),
    link: (json['link'] as List)?.map((e) => e as String)?.toList(),
    elementLink: (json['elementLink'] as List)
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
      'elementRequired': instance.elementRequired?.toJson(),
      'validated': instance.validated,
      'elementValidated': instance.elementValidated?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'origin': instance.origin,
      'elementOrigin':
          instance.elementOrigin?.map((e) => e?.toJson())?.toList(),
      'destination': instance.destination,
      'elementDestination': instance.elementDestination?.toJson(),
      'link': instance.link,
      'elementLink': instance.elementLink?.map((e) => e?.toJson())?.toList(),
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
    elementAutocreate: json['elementAutocreate'] == null
        ? null
        : Element.fromJson(json['elementAutocreate'] as Map<String, dynamic>),
    autodelete: json['autodelete'] as bool,
    elementAutodelete: json['elementAutodelete'] == null
        ? null
        : Element.fromJson(json['elementAutodelete'] as Map<String, dynamic>),
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
      'elementAutocreate': instance.elementAutocreate?.toJson(),
      'autodelete': instance.autodelete,
      'elementAutodelete': instance.elementAutodelete?.toJson(),
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
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    defaultValue: json['defaultValue'] as String,
    elementDefaultValue: json['elementDefaultValue'] == null
        ? null
        : Element.fromJson(json['elementDefaultValue'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
    headerField: json['headerField'] as String,
    elementHeaderField: json['elementHeaderField'] == null
        ? null
        : Element.fromJson(json['elementHeaderField'] as Map<String, dynamic>),
    hint: json['hint'] as String,
    elementHint: json['elementHint'] == null
        ? null
        : Element.fromJson(json['elementHint'] as Map<String, dynamic>),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
    sourceId: json['sourceId'] as String,
    elementSourceId: json['elementSourceId'] == null
        ? null
        : Element.fromJson(json['elementSourceId'] as Map<String, dynamic>),
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
      'elementName': instance.elementName?.toJson(),
      'defaultValue': instance.defaultValue,
      'elementDefaultValue': instance.elementDefaultValue?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
      'headerField': instance.headerField,
      'elementHeaderField': instance.elementHeaderField?.toJson(),
      'hint': instance.hint,
      'elementHint': instance.elementHint?.toJson(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
      'sourceId': instance.sourceId,
      'elementSourceId': instance.elementSourceId?.toJson(),
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
    elementResource: json['elementResource'] == null
        ? null
        : Element.fromJson(json['elementResource'] as Map<String, dynamic>),
    label: json['label'] as String,
    elementLabel: json['elementLabel'] == null
        ? null
        : Element.fromJson(json['elementLabel'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    accept: json['accept'] as String,
    elementAccept: json['elementAccept'] == null
        ? null
        : Element.fromJson(json['elementAccept'] as Map<String, dynamic>),
    contentType: json['contentType'] as String,
    elementContentType: json['elementContentType'] == null
        ? null
        : Element.fromJson(json['elementContentType'] as Map<String, dynamic>),
    destination: json['destination'] as int,
    elementDestination: json['elementDestination'] == null
        ? null
        : Element.fromJson(json['elementDestination'] as Map<String, dynamic>),
    encodeRequestUrl: json['encodeRequestUrl'] as bool,
    elementEncodeRequestUrl: json['elementEncodeRequestUrl'] == null
        ? null
        : Element.fromJson(
            json['elementEncodeRequestUrl'] as Map<String, dynamic>),
    method: json['method'] as String,
    elementMethod: json['elementMethod'] == null
        ? null
        : Element.fromJson(json['elementMethod'] as Map<String, dynamic>),
    origin: json['origin'] as int,
    elementOrigin: json['elementOrigin'] == null
        ? null
        : Element.fromJson(json['elementOrigin'] as Map<String, dynamic>),
    params: json['params'] as String,
    elementParams: json['elementParams'] == null
        ? null
        : Element.fromJson(json['elementParams'] as Map<String, dynamic>),
    requestHeader: (json['requestHeader'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_RequestHeader.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    requestId: json['requestId'] as String,
    elementRequestId: json['elementRequestId'] == null
        ? null
        : Element.fromJson(json['elementRequestId'] as Map<String, dynamic>),
    responseId: json['responseId'] as String,
    elementResponseId: json['elementResponseId'] == null
        ? null
        : Element.fromJson(json['elementResponseId'] as Map<String, dynamic>),
    sourceId: json['sourceId'] as String,
    elementSourceId: json['elementSourceId'] == null
        ? null
        : Element.fromJson(json['elementSourceId'] as Map<String, dynamic>),
    targetId: json['targetId'] as String,
    elementTargetId: json['elementTargetId'] == null
        ? null
        : Element.fromJson(json['elementTargetId'] as Map<String, dynamic>),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
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
      'elementResource': instance.elementResource?.toJson(),
      'label': instance.label,
      'elementLabel': instance.elementLabel?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'accept': instance.accept,
      'elementAccept': instance.elementAccept?.toJson(),
      'contentType': instance.contentType,
      'elementContentType': instance.elementContentType?.toJson(),
      'destination': instance.destination,
      'elementDestination': instance.elementDestination?.toJson(),
      'encodeRequestUrl': instance.encodeRequestUrl,
      'elementEncodeRequestUrl': instance.elementEncodeRequestUrl?.toJson(),
      'method': instance.method,
      'elementMethod': instance.elementMethod?.toJson(),
      'origin': instance.origin,
      'elementOrigin': instance.elementOrigin?.toJson(),
      'params': instance.params,
      'elementParams': instance.elementParams?.toJson(),
      'requestHeader':
          instance.requestHeader?.map((e) => e?.toJson())?.toList(),
      'requestId': instance.requestId,
      'elementRequestId': instance.elementRequestId?.toJson(),
      'responseId': instance.responseId,
      'elementResponseId': instance.elementResponseId?.toJson(),
      'sourceId': instance.sourceId,
      'elementSourceId': instance.elementSourceId?.toJson(),
      'targetId': instance.targetId,
      'elementTargetId': instance.elementTargetId?.toJson(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
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
    elementField: json['elementField'] == null
        ? null
        : Element.fromJson(json['elementField'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
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
      'elementField': instance.elementField?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
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
    elementLabel: json['elementLabel'] == null
        ? null
        : Element.fromJson(json['elementLabel'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    direction: json['direction'] as String,
    elementDirection: json['elementDirection'] == null
        ? null
        : Element.fromJson(json['elementDirection'] as Map<String, dynamic>),
    compareToSourceId: json['compareToSourceId'] as String,
    elementCompareToSourceId: json['elementCompareToSourceId'] == null
        ? null
        : Element.fromJson(
            json['elementCompareToSourceId'] as Map<String, dynamic>),
    compareToSourceExpression: json['compareToSourceExpression'] as String,
    elementCompareToSourceExpression:
        json['elementCompareToSourceExpression'] == null
            ? null
            : Element.fromJson(json['elementCompareToSourceExpression']
                as Map<String, dynamic>),
    compareToSourcePath: json['compareToSourcePath'] as String,
    elementCompareToSourcePath: json['elementCompareToSourcePath'] == null
        ? null
        : Element.fromJson(
            json['elementCompareToSourcePath'] as Map<String, dynamic>),
    contentType: json['contentType'] as String,
    elementContentType: json['elementContentType'] == null
        ? null
        : Element.fromJson(json['elementContentType'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
    headerField: json['headerField'] as String,
    elementHeaderField: json['elementHeaderField'] == null
        ? null
        : Element.fromJson(json['elementHeaderField'] as Map<String, dynamic>),
    minimumId: json['minimumId'] as String,
    elementMinimumId: json['elementMinimumId'] == null
        ? null
        : Element.fromJson(json['elementMinimumId'] as Map<String, dynamic>),
    navigationLinks: json['navigationLinks'] as bool,
    elementNavigationLinks: json['elementNavigationLinks'] == null
        ? null
        : Element.fromJson(
            json['elementNavigationLinks'] as Map<String, dynamic>),
    operator: json['operator'] as String,
    elementOperator: json['elementOperator'] == null
        ? null
        : Element.fromJson(json['elementOperator'] as Map<String, dynamic>),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
    requestMethod: json['requestMethod'] as String,
    elementRequestMethod: json['elementRequestMethod'] == null
        ? null
        : Element.fromJson(
            json['elementRequestMethod'] as Map<String, dynamic>),
    requestURL: json['requestURL'] as String,
    elementRequestURL: json['elementRequestURL'] == null
        ? null
        : Element.fromJson(json['elementRequestURL'] as Map<String, dynamic>),
    resource: json['resource'] as String,
    elementResource: json['elementResource'] == null
        ? null
        : Element.fromJson(json['elementResource'] as Map<String, dynamic>),
    response: json['response'] as String,
    elementResponse: json['elementResponse'] == null
        ? null
        : Element.fromJson(json['elementResponse'] as Map<String, dynamic>),
    responseCode: json['responseCode'] as String,
    elementResponseCode: json['elementResponseCode'] == null
        ? null
        : Element.fromJson(json['elementResponseCode'] as Map<String, dynamic>),
    sourceId: json['sourceId'] as String,
    elementSourceId: json['elementSourceId'] == null
        ? null
        : Element.fromJson(json['elementSourceId'] as Map<String, dynamic>),
    validateProfileId: json['validateProfileId'] as String,
    elementValidateProfileId: json['elementValidateProfileId'] == null
        ? null
        : Element.fromJson(
            json['elementValidateProfileId'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    warningOnly: json['warningOnly'] as bool,
    elementWarningOnly: json['elementWarningOnly'] == null
        ? null
        : Element.fromJson(json['elementWarningOnly'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_AssertToJson(TestScript_Assert instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'label': instance.label,
      'elementLabel': instance.elementLabel?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'direction': instance.direction,
      'elementDirection': instance.elementDirection?.toJson(),
      'compareToSourceId': instance.compareToSourceId,
      'elementCompareToSourceId': instance.elementCompareToSourceId?.toJson(),
      'compareToSourceExpression': instance.compareToSourceExpression,
      'elementCompareToSourceExpression':
          instance.elementCompareToSourceExpression?.toJson(),
      'compareToSourcePath': instance.compareToSourcePath,
      'elementCompareToSourcePath':
          instance.elementCompareToSourcePath?.toJson(),
      'contentType': instance.contentType,
      'elementContentType': instance.elementContentType?.toJson(),
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
      'headerField': instance.headerField,
      'elementHeaderField': instance.elementHeaderField?.toJson(),
      'minimumId': instance.minimumId,
      'elementMinimumId': instance.elementMinimumId?.toJson(),
      'navigationLinks': instance.navigationLinks,
      'elementNavigationLinks': instance.elementNavigationLinks?.toJson(),
      'operator': instance.operator,
      'elementOperator': instance.elementOperator?.toJson(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
      'requestMethod': instance.requestMethod,
      'elementRequestMethod': instance.elementRequestMethod?.toJson(),
      'requestURL': instance.requestURL,
      'elementRequestURL': instance.elementRequestURL?.toJson(),
      'resource': instance.resource,
      'elementResource': instance.elementResource?.toJson(),
      'response': instance.response,
      'elementResponse': instance.elementResponse?.toJson(),
      'responseCode': instance.responseCode,
      'elementResponseCode': instance.elementResponseCode?.toJson(),
      'sourceId': instance.sourceId,
      'elementSourceId': instance.elementSourceId?.toJson(),
      'validateProfileId': instance.validateProfileId,
      'elementValidateProfileId': instance.elementValidateProfileId?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
      'warningOnly': instance.warningOnly,
      'elementWarningOnly': instance.elementWarningOnly?.toJson(),
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
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_TestToJson(TestScript_Test instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
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
