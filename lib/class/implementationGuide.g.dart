// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'implementationGuide.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImplementationGuide _$ImplementationGuideFromJson(Map<String, dynamic> json) {
  return ImplementationGuide(
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
    copyright: json['copyright'] as String,
    element_copyright: json['element_copyright'] == null
        ? null
        : Element.fromJson(json['element_copyright'] as Map<String, dynamic>),
    packageId: json['packageId'] as String,
    element_packageId: json['element_packageId'] == null
        ? null
        : Element.fromJson(json['element_packageId'] as Map<String, dynamic>),
    license: json['license'] as String,
    element_license: json['element_license'] == null
        ? null
        : Element.fromJson(json['element_license'] as Map<String, dynamic>),
    fhirVersion:
        (json['fhirVersion'] as List)?.map((e) => e as String)?.toList(),
    element_fhirVersion: (json['element_fhirVersion'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dependsOn: (json['dependsOn'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_DependsOn.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    global: (json['global'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Global.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    definition: json['definition'] == null
        ? null
        : ImplementationGuide_Definition.fromJson(
            json['definition'] as Map<String, dynamic>),
    manifest: json['manifest'] == null
        ? null
        : ImplementationGuide_Manifest.fromJson(
            json['manifest'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuideToJson(
        ImplementationGuide instance) =>
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
      'copyright': instance.copyright,
      'element_copyright': instance.element_copyright?.toJson(),
      'packageId': instance.packageId,
      'element_packageId': instance.element_packageId?.toJson(),
      'license': instance.license,
      'element_license': instance.element_license?.toJson(),
      'fhirVersion': instance.fhirVersion,
      'element_fhirVersion':
          instance.element_fhirVersion?.map((e) => e?.toJson())?.toList(),
      'dependsOn': instance.dependsOn?.map((e) => e?.toJson())?.toList(),
      'global': instance.global?.map((e) => e?.toJson())?.toList(),
      'definition': instance.definition?.toJson(),
      'manifest': instance.manifest?.toJson(),
    };

ImplementationGuide_DependsOn _$ImplementationGuide_DependsOnFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_DependsOn(
    json['uri'] as String,
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    packageId: json['packageId'] as String,
    element_packageId: json['element_packageId'] == null
        ? null
        : Element.fromJson(json['element_packageId'] as Map<String, dynamic>),
    version: json['version'] as String,
    element_version: json['element_version'] == null
        ? null
        : Element.fromJson(json['element_version'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_DependsOnToJson(
        ImplementationGuide_DependsOn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'uri': instance.uri,
      'packageId': instance.packageId,
      'element_packageId': instance.element_packageId?.toJson(),
      'version': instance.version,
      'element_version': instance.element_version?.toJson(),
    };

ImplementationGuide_Global _$ImplementationGuide_GlobalFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Global(
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
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_GlobalToJson(
        ImplementationGuide_Global instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'profile': instance.profile,
    };

ImplementationGuide_Definition _$ImplementationGuide_DefinitionFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Definition(
    (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Resource.fromJson(e as Map<String, dynamic>))
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
    grouping: (json['grouping'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Grouping.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    page: json['page'] == null
        ? null
        : ImplementationGuide_Page.fromJson(
            json['page'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: (json['template'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Template.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImplementationGuide_DefinitionToJson(
        ImplementationGuide_Definition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'grouping': instance.grouping?.map((e) => e?.toJson())?.toList(),
      'resource': instance.resource?.map((e) => e?.toJson())?.toList(),
      'page': instance.page?.toJson(),
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
      'template': instance.template?.map((e) => e?.toJson())?.toList(),
    };

ImplementationGuide_Grouping _$ImplementationGuide_GroupingFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Grouping(
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

Map<String, dynamic> _$ImplementationGuide_GroupingToJson(
        ImplementationGuide_Grouping instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
    };

ImplementationGuide_Resource _$ImplementationGuide_ResourceFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Resource(
    json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fhirVersion:
        (json['fhirVersion'] as List)?.map((e) => e as String)?.toList(),
    element_fhirVersion: (json['element_fhirVersion'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    exampleBoolean: json['exampleBoolean'] as bool,
    element_exampleBoolean: json['element_exampleBoolean'] == null
        ? null
        : Element.fromJson(
            json['element_exampleBoolean'] as Map<String, dynamic>),
    exampleCanonical: json['exampleCanonical'] as String,
    element_exampleCanonical: json['element_exampleCanonical'] == null
        ? null
        : Element.fromJson(
            json['element_exampleCanonical'] as Map<String, dynamic>),
    groupingId: json['groupingId'] as String,
    element_groupingId: json['element_groupingId'] == null
        ? null
        : Element.fromJson(json['element_groupingId'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_ResourceToJson(
        ImplementationGuide_Resource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference?.toJson(),
      'fhirVersion': instance.fhirVersion,
      'element_fhirVersion':
          instance.element_fhirVersion?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'exampleBoolean': instance.exampleBoolean,
      'element_exampleBoolean': instance.element_exampleBoolean?.toJson(),
      'exampleCanonical': instance.exampleCanonical,
      'element_exampleCanonical': instance.element_exampleCanonical?.toJson(),
      'groupingId': instance.groupingId,
      'element_groupingId': instance.element_groupingId?.toJson(),
    };

ImplementationGuide_Page _$ImplementationGuide_PageFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Page(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nameUrl: json['nameUrl'] as String,
    element_nameUrl: json['element_nameUrl'] == null
        ? null
        : Element.fromJson(json['element_nameUrl'] as Map<String, dynamic>),
    nameReference: json['nameReference'] == null
        ? null
        : Reference.fromJson(json['nameReference'] as Map<String, dynamic>),
    title: json['title'] as String,
    element_title: json['element_title'] == null
        ? null
        : Element.fromJson(json['element_title'] as Map<String, dynamic>),
    generation: json['generation'] as String,
    element_generation: json['element_generation'] == null
        ? null
        : Element.fromJson(json['element_generation'] as Map<String, dynamic>),
    page: (json['page'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Page.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImplementationGuide_PageToJson(
        ImplementationGuide_Page instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'nameUrl': instance.nameUrl,
      'element_nameUrl': instance.element_nameUrl?.toJson(),
      'nameReference': instance.nameReference?.toJson(),
      'title': instance.title,
      'element_title': instance.element_title?.toJson(),
      'generation': instance.generation,
      'element_generation': instance.element_generation?.toJson(),
      'page': instance.page?.map((e) => e?.toJson())?.toList(),
    };

ImplementationGuide_Parameter _$ImplementationGuide_ParameterFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Parameter(
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
    value: json['value'] as String,
    element_value: json['element_value'] == null
        ? null
        : Element.fromJson(json['element_value'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_ParameterToJson(
        ImplementationGuide_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'element_code': instance.element_code?.toJson(),
      'value': instance.value,
      'element_value': instance.element_value?.toJson(),
    };

ImplementationGuide_Template _$ImplementationGuide_TemplateFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Template(
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
    source: json['source'] as String,
    element_source: json['element_source'] == null
        ? null
        : Element.fromJson(json['element_source'] as Map<String, dynamic>),
    scope: json['scope'] as String,
    element_scope: json['element_scope'] == null
        ? null
        : Element.fromJson(json['element_scope'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_TemplateToJson(
        ImplementationGuide_Template instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'element_code': instance.element_code?.toJson(),
      'source': instance.source,
      'element_source': instance.element_source?.toJson(),
      'scope': instance.scope,
      'element_scope': instance.element_scope?.toJson(),
    };

ImplementationGuide_Manifest _$ImplementationGuide_ManifestFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Manifest(
    (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Resource1.fromJson(e as Map<String, dynamic>))
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
    rendering: json['rendering'] as String,
    element_rendering: json['element_rendering'] == null
        ? null
        : Element.fromJson(json['element_rendering'] as Map<String, dynamic>),
    page: (json['page'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Page1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    image: (json['image'] as List)?.map((e) => e as String)?.toList(),
    element_image: (json['element_image'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    other: (json['other'] as List)?.map((e) => e as String)?.toList(),
    element_other: (json['element_other'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImplementationGuide_ManifestToJson(
        ImplementationGuide_Manifest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'rendering': instance.rendering,
      'element_rendering': instance.element_rendering?.toJson(),
      'resource': instance.resource?.map((e) => e?.toJson())?.toList(),
      'page': instance.page?.map((e) => e?.toJson())?.toList(),
      'image': instance.image,
      'element_image':
          instance.element_image?.map((e) => e?.toJson())?.toList(),
      'other': instance.other,
      'element_other':
          instance.element_other?.map((e) => e?.toJson())?.toList(),
    };

ImplementationGuide_Resource1 _$ImplementationGuide_Resource1FromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Resource1(
    json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    exampleBoolean: json['exampleBoolean'] as bool,
    element_exampleBoolean: json['element_exampleBoolean'] == null
        ? null
        : Element.fromJson(
            json['element_exampleBoolean'] as Map<String, dynamic>),
    exampleCanonical: json['exampleCanonical'] as String,
    element_exampleCanonical: json['element_exampleCanonical'] == null
        ? null
        : Element.fromJson(
            json['element_exampleCanonical'] as Map<String, dynamic>),
    relativePath: json['relativePath'] as String,
    element_relativePath: json['element_relativePath'] == null
        ? null
        : Element.fromJson(
            json['element_relativePath'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_Resource1ToJson(
        ImplementationGuide_Resource1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference?.toJson(),
      'exampleBoolean': instance.exampleBoolean,
      'element_exampleBoolean': instance.element_exampleBoolean?.toJson(),
      'exampleCanonical': instance.exampleCanonical,
      'element_exampleCanonical': instance.element_exampleCanonical?.toJson(),
      'relativePath': instance.relativePath,
      'element_relativePath': instance.element_relativePath?.toJson(),
    };

ImplementationGuide_Page1 _$ImplementationGuide_Page1FromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Page1(
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
    title: json['title'] as String,
    element_title: json['element_title'] == null
        ? null
        : Element.fromJson(json['element_title'] as Map<String, dynamic>),
    anchor: (json['anchor'] as List)?.map((e) => e as String)?.toList(),
    element_anchor: (json['element_anchor'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImplementationGuide_Page1ToJson(
        ImplementationGuide_Page1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'title': instance.title,
      'element_title': instance.element_title?.toJson(),
      'anchor': instance.anchor,
      'element_anchor':
          instance.element_anchor?.map((e) => e?.toJson())?.toList(),
    };
