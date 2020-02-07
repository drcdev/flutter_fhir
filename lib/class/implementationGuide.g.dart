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
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    packageId: json['packageId'] as String,
    elementPackageId: json['elementPackageId'] == null
        ? null
        : Element.fromJson(json['elementPackageId'] as Map<String, dynamic>),
    license: json['license'] as String,
    elementLicense: json['elementLicense'] == null
        ? null
        : Element.fromJson(json['elementLicense'] as Map<String, dynamic>),
    fhirVersion:
        (json['fhirVersion'] as List)?.map((e) => e as String)?.toList(),
    elementFhirVersion: (json['elementFhirVersion'] as List)
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
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'packageId': instance.packageId,
      'elementPackageId': instance.elementPackageId?.toJson(),
      'license': instance.license,
      'elementLicense': instance.elementLicense?.toJson(),
      'fhirVersion': instance.fhirVersion,
      'elementFhirVersion':
          instance.elementFhirVersion?.map((e) => e?.toJson())?.toList(),
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
    elementPackageId: json['elementPackageId'] == null
        ? null
        : Element.fromJson(json['elementPackageId'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
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
      'elementPackageId': instance.elementPackageId?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
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
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
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
      'elementType': instance.elementType?.toJson(),
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
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
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
      'elementName': instance.elementName?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
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
    elementFhirVersion: (json['elementFhirVersion'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    exampleBoolean: json['exampleBoolean'] as bool,
    elementExampleBoolean: json['elementExampleBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementExampleBoolean'] as Map<String, dynamic>),
    exampleCanonical: json['exampleCanonical'] as String,
    elementExampleCanonical: json['elementExampleCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementExampleCanonical'] as Map<String, dynamic>),
    groupingId: json['groupingId'] as String,
    elementGroupingId: json['elementGroupingId'] == null
        ? null
        : Element.fromJson(json['elementGroupingId'] as Map<String, dynamic>),
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
      'elementFhirVersion':
          instance.elementFhirVersion?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'exampleBoolean': instance.exampleBoolean,
      'elementExampleBoolean': instance.elementExampleBoolean?.toJson(),
      'exampleCanonical': instance.exampleCanonical,
      'elementExampleCanonical': instance.elementExampleCanonical?.toJson(),
      'groupingId': instance.groupingId,
      'elementGroupingId': instance.elementGroupingId?.toJson(),
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
    elementNameUrl: json['elementNameUrl'] == null
        ? null
        : Element.fromJson(json['elementNameUrl'] as Map<String, dynamic>),
    nameReference: json['nameReference'] == null
        ? null
        : Reference.fromJson(json['nameReference'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    generation: json['generation'] as String,
    elementGeneration: json['elementGeneration'] == null
        ? null
        : Element.fromJson(json['elementGeneration'] as Map<String, dynamic>),
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
      'elementNameUrl': instance.elementNameUrl?.toJson(),
      'nameReference': instance.nameReference?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'generation': instance.generation,
      'elementGeneration': instance.elementGeneration?.toJson(),
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
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
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
      'elementCode': instance.elementCode?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
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
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    source: json['source'] as String,
    elementSource: json['elementSource'] == null
        ? null
        : Element.fromJson(json['elementSource'] as Map<String, dynamic>),
    scope: json['scope'] as String,
    elementScope: json['elementScope'] == null
        ? null
        : Element.fromJson(json['elementScope'] as Map<String, dynamic>),
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
      'elementCode': instance.elementCode?.toJson(),
      'source': instance.source,
      'elementSource': instance.elementSource?.toJson(),
      'scope': instance.scope,
      'elementScope': instance.elementScope?.toJson(),
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
    elementRendering: json['elementRendering'] == null
        ? null
        : Element.fromJson(json['elementRendering'] as Map<String, dynamic>),
    page: (json['page'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Page1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    image: (json['image'] as List)?.map((e) => e as String)?.toList(),
    elementImage: (json['elementImage'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    other: (json['other'] as List)?.map((e) => e as String)?.toList(),
    elementOther: (json['elementOther'] as List)
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
      'elementRendering': instance.elementRendering?.toJson(),
      'resource': instance.resource?.map((e) => e?.toJson())?.toList(),
      'page': instance.page?.map((e) => e?.toJson())?.toList(),
      'image': instance.image,
      'elementImage': instance.elementImage?.map((e) => e?.toJson())?.toList(),
      'other': instance.other,
      'elementOther': instance.elementOther?.map((e) => e?.toJson())?.toList(),
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
    elementExampleBoolean: json['elementExampleBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementExampleBoolean'] as Map<String, dynamic>),
    exampleCanonical: json['exampleCanonical'] as String,
    elementExampleCanonical: json['elementExampleCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementExampleCanonical'] as Map<String, dynamic>),
    relativePath: json['relativePath'] as String,
    elementRelativePath: json['elementRelativePath'] == null
        ? null
        : Element.fromJson(json['elementRelativePath'] as Map<String, dynamic>),
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
      'elementExampleBoolean': instance.elementExampleBoolean?.toJson(),
      'exampleCanonical': instance.exampleCanonical,
      'elementExampleCanonical': instance.elementExampleCanonical?.toJson(),
      'relativePath': instance.relativePath,
      'elementRelativePath': instance.elementRelativePath?.toJson(),
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
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    anchor: (json['anchor'] as List)?.map((e) => e as String)?.toList(),
    elementAnchor: (json['elementAnchor'] as List)
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
      'elementName': instance.elementName?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'anchor': instance.anchor,
      'elementAnchor':
          instance.elementAnchor?.map((e) => e?.toJson())?.toList(),
    };
