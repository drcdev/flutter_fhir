// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exampleScenario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleScenario _$ExampleScenarioFromJson(Map<String, dynamic> json) {
  return ExampleScenario(
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
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    copyright: json['copyright'] as String,
    element_copyright: json['element_copyright'] == null
        ? null
        : Element.fromJson(json['element_copyright'] as Map<String, dynamic>),
    purpose: json['purpose'] as String,
    element_purpose: json['element_purpose'] == null
        ? null
        : Element.fromJson(json['element_purpose'] as Map<String, dynamic>),
    actor: (json['actor'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Actor.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instance: (json['instance'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Instance.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    process: (json['process'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Process.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    workflow: (json['workflow'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ExampleScenarioToJson(ExampleScenario instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
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
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'copyright': instance.copyright,
      'element_copyright': instance.element_copyright?.toJson(),
      'purpose': instance.purpose,
      'element_purpose': instance.element_purpose?.toJson(),
      'actor': instance.actor?.map((e) => e?.toJson())?.toList(),
      'instance': instance.instance?.map((e) => e?.toJson())?.toList(),
      'process': instance.process?.map((e) => e?.toJson())?.toList(),
      'workflow': instance.workflow,
    };

ExampleScenario_Actor _$ExampleScenario_ActorFromJson(
    Map<String, dynamic> json) {
  return ExampleScenario_Actor(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    actorId: json['actorId'] as String,
    element_actorId: json['element_actorId'] == null
        ? null
        : Element.fromJson(json['element_actorId'] as Map<String, dynamic>),
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExampleScenario_ActorToJson(
        ExampleScenario_Actor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'actorId': instance.actorId,
      'element_actorId': instance.element_actorId?.toJson(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
    };

ExampleScenario_Instance _$ExampleScenario_InstanceFromJson(
    Map<String, dynamic> json) {
  return ExampleScenario_Instance(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    resourceId: json['resourceId'] as String,
    element_resourceId: json['element_resourceId'] == null
        ? null
        : Element.fromJson(json['element_resourceId'] as Map<String, dynamic>),
    element_resourceType: json['element_resourceType'] == null
        ? null
        : Element.fromJson(
            json['element_resourceType'] as Map<String, dynamic>),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    version: (json['version'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Version.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    containedInstance: (json['containedInstance'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_ContainedInstance.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  )..resourceType = json['resourceType'] as String;
}

Map<String, dynamic> _$ExampleScenario_InstanceToJson(
        ExampleScenario_Instance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'resourceId': instance.resourceId,
      'element_resourceId': instance.element_resourceId?.toJson(),
      'resourceType': instance.resourceType,
      'element_resourceType': instance.element_resourceType?.toJson(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'version': instance.version?.map((e) => e?.toJson())?.toList(),
      'containedInstance':
          instance.containedInstance?.map((e) => e?.toJson())?.toList(),
    };

ExampleScenario_Version _$ExampleScenario_VersionFromJson(
    Map<String, dynamic> json) {
  return ExampleScenario_Version(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    versionId: json['versionId'] as String,
    element_versionId: json['element_versionId'] == null
        ? null
        : Element.fromJson(json['element_versionId'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExampleScenario_VersionToJson(
        ExampleScenario_Version instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'versionId': instance.versionId,
      'element_versionId': instance.element_versionId?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
    };

ExampleScenario_ContainedInstance _$ExampleScenario_ContainedInstanceFromJson(
    Map<String, dynamic> json) {
  return ExampleScenario_ContainedInstance(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    resourceId: json['resourceId'] as String,
    element_resourceId: json['element_resourceId'] == null
        ? null
        : Element.fromJson(json['element_resourceId'] as Map<String, dynamic>),
    versionId: json['versionId'] as String,
    element_versionId: json['element_versionId'] == null
        ? null
        : Element.fromJson(json['element_versionId'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExampleScenario_ContainedInstanceToJson(
        ExampleScenario_ContainedInstance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'resourceId': instance.resourceId,
      'element_resourceId': instance.element_resourceId?.toJson(),
      'versionId': instance.versionId,
      'element_versionId': instance.element_versionId?.toJson(),
    };

ExampleScenario_Process _$ExampleScenario_ProcessFromJson(
    Map<String, dynamic> json) {
  return ExampleScenario_Process(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    title: json['title'] as String,
    element_title: json['element_title'] == null
        ? null
        : Element.fromJson(json['element_title'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    preConditions: json['preConditions'] as String,
    element_preConditions: json['element_preConditions'] == null
        ? null
        : Element.fromJson(
            json['element_preConditions'] as Map<String, dynamic>),
    postConditions: json['postConditions'] as String,
    element_postConditions: json['element_postConditions'] == null
        ? null
        : Element.fromJson(
            json['element_postConditions'] as Map<String, dynamic>),
    step: (json['step'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Step.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExampleScenario_ProcessToJson(
        ExampleScenario_Process instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'title': instance.title,
      'element_title': instance.element_title?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'preConditions': instance.preConditions,
      'element_preConditions': instance.element_preConditions?.toJson(),
      'postConditions': instance.postConditions,
      'element_postConditions': instance.element_postConditions?.toJson(),
      'step': instance.step?.map((e) => e?.toJson())?.toList(),
    };

ExampleScenario_Step _$ExampleScenario_StepFromJson(Map<String, dynamic> json) {
  return ExampleScenario_Step(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    process: (json['process'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Process.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    pause: json['pause'] as bool,
    element_pause: json['element_pause'] == null
        ? null
        : Element.fromJson(json['element_pause'] as Map<String, dynamic>),
    operation: json['operation'] == null
        ? null
        : ExampleScenario_Operation.fromJson(
            json['operation'] as Map<String, dynamic>),
    alternative: (json['alternative'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Alternative.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExampleScenario_StepToJson(
        ExampleScenario_Step instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'process': instance.process?.map((e) => e?.toJson())?.toList(),
      'pause': instance.pause,
      'element_pause': instance.element_pause?.toJson(),
      'operation': instance.operation?.toJson(),
      'alternative': instance.alternative?.map((e) => e?.toJson())?.toList(),
    };

ExampleScenario_Operation _$ExampleScenario_OperationFromJson(
    Map<String, dynamic> json) {
  return ExampleScenario_Operation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    number: json['number'] as String,
    element_number: json['element_number'] == null
        ? null
        : Element.fromJson(json['element_number'] as Map<String, dynamic>),
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    initiator: json['initiator'] as String,
    element_initiator: json['element_initiator'] == null
        ? null
        : Element.fromJson(json['element_initiator'] as Map<String, dynamic>),
    receiver: json['receiver'] as String,
    element_receiver: json['element_receiver'] == null
        ? null
        : Element.fromJson(json['element_receiver'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    initiatorActive: json['initiatorActive'] as bool,
    element_initiatorActive: json['element_initiatorActive'] == null
        ? null
        : Element.fromJson(
            json['element_initiatorActive'] as Map<String, dynamic>),
    receiverActive: json['receiverActive'] as bool,
    element_receiverActive: json['element_receiverActive'] == null
        ? null
        : Element.fromJson(
            json['element_receiverActive'] as Map<String, dynamic>),
    request: json['request'] == null
        ? null
        : ExampleScenario_ContainedInstance.fromJson(
            json['request'] as Map<String, dynamic>),
    response: json['response'] == null
        ? null
        : ExampleScenario_ContainedInstance.fromJson(
            json['response'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExampleScenario_OperationToJson(
        ExampleScenario_Operation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'number': instance.number,
      'element_number': instance.element_number?.toJson(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'initiator': instance.initiator,
      'element_initiator': instance.element_initiator?.toJson(),
      'receiver': instance.receiver,
      'element_receiver': instance.element_receiver?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'initiatorActive': instance.initiatorActive,
      'element_initiatorActive': instance.element_initiatorActive?.toJson(),
      'receiverActive': instance.receiverActive,
      'element_receiverActive': instance.element_receiverActive?.toJson(),
      'request': instance.request?.toJson(),
      'response': instance.response?.toJson(),
    };

ExampleScenario_Alternative _$ExampleScenario_AlternativeFromJson(
    Map<String, dynamic> json) {
  return ExampleScenario_Alternative(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    title: json['title'] as String,
    element_title: json['element_title'] == null
        ? null
        : Element.fromJson(json['element_title'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    step: (json['step'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleScenario_Step.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExampleScenario_AlternativeToJson(
        ExampleScenario_Alternative instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'title': instance.title,
      'element_title': instance.element_title?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'step': instance.step?.map((e) => e?.toJson())?.toList(),
    };
