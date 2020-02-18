import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class CompartmentDefinition {
  static Future<CompartmentDefinition> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    Narrative text,
    List<dynamic> contained,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String url,
    Element elementUrl,
    String version,
    Element elementVersion,
    String name,
    Element elementName,
    String status,
    Element elementStatus,
    bool experimental,
    Element elementExperimental,
    DateTime date,
    Element elementDate,
    String publisher,
    Element elementPublisher,
    List<ContactDetail> contact,
    String description,
    Element elementDescription,
    List<UsageContext> useContext,
    String purpose,
    Element elementPurpose,
    String code,
    Element elementCode,
    bool search,
    Element elementSearch,
    List<CompartmentDefinition_Resource> resource,
  }) async {
    var fhirDb = new DatabaseHelper();
    CompartmentDefinition newCompartmentDefinition = new CompartmentDefinition(
      resourceType: 'CompartmentDefinition',
      id: id ?? await fhirDb.newResourceId('CompartmentDefinition'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      url: url,
      elementUrl: elementUrl,
      version: version,
      elementVersion: elementVersion,
      name: name,
      elementName: elementName,
      status: status,
      elementStatus: elementStatus,
      experimental: experimental,
      elementExperimental: elementExperimental,
      date: date,
      elementDate: elementDate,
      publisher: publisher,
      elementPublisher: elementPublisher,
      contact: contact,
      description: description,
      elementDescription: elementDescription,
      useContext: useContext,
      purpose: purpose,
      elementPurpose: elementPurpose,
      code: code,
      elementCode: elementCode,
      search: search,
      elementSearch: elementSearch,
      resource: resource,
    );
    newCompartmentDefinition.meta.createdAt = DateTime.now();
    newCompartmentDefinition.meta.lastUpdated =
        newCompartmentDefinition.meta.createdAt;
    int saved = await fhirDb.saveResource(newCompartmentDefinition);
    return newCompartmentDefinition;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saveed = await fhirDb.saveResource(this);
  }

  String resourceType = 'CompartmentDefinition';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String url;
  Element elementUrl;
  String version;
  Element elementVersion;
  String name;
  Element elementName;
  String status;
  Element elementStatus;
  bool experimental;
  Element elementExperimental;
  DateTime date;
  Element elementDate;
  String publisher;
  Element elementPublisher;
  List<ContactDetail> contact;
  String description;
  Element elementDescription;
  List<UsageContext> useContext;
  String purpose;
  Element elementPurpose;
  String code;
  Element elementCode;
  bool search;
  Element elementSearch;
  List<CompartmentDefinition_Resource> resource;

  CompartmentDefinition({
    @required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.url,
    this.elementUrl,
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
    this.status,
    this.elementStatus,
    this.experimental,
    this.elementExperimental,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.useContext,
    this.purpose,
    this.elementPurpose,
    this.code,
    this.elementCode,
    this.search,
    this.elementSearch,
    this.resource,
  });

  factory CompartmentDefinition.fromJson(Map<String, dynamic> json) =>
      _$CompartmentDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$CompartmentDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompartmentDefinition_Resource {
  static Future<CompartmentDefinition_Resource> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    List<String> param,
    List<Element> elementParam,
    String documentation,
    Element elementDocumentation,
  }) async {
    var fhirDb = new DatabaseHelper();
    CompartmentDefinition_Resource newCompartmentDefinition_Resource =
        new CompartmentDefinition_Resource(
      id: id ?? await fhirDb.newResourceId('CompartmentDefinition_Resource'),
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      param: param,
      elementParam: elementParam,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
    );
    return newCompartmentDefinition_Resource;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  List<String> param;
  List<Element> elementParam;
  String documentation;
  Element elementDocumentation;

  CompartmentDefinition_Resource({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.param,
    this.elementParam,
    this.documentation,
    this.elementDocumentation,
  });

  factory CompartmentDefinition_Resource.fromJson(Map<String, dynamic> json) =>
      _$CompartmentDefinition_ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$CompartmentDefinition_ResourceToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompartmentDefinition _$CompartmentDefinitionFromJson(
    Map<String, dynamic> json) {
  return CompartmentDefinition(
    resourceType: json['resourceType'] as String,
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    search: json['search'] as bool,
    elementSearch: json['elementSearch'] == null
        ? null
        : Element.fromJson(json['elementSearch'] as Map<String, dynamic>),
    resource: (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : CompartmentDefinition_Resource.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CompartmentDefinitionToJson(
        CompartmentDefinition instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
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
      'purpose': instance.purpose,
      'elementPurpose': instance.elementPurpose?.toJson(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'search': instance.search,
      'elementSearch': instance.elementSearch?.toJson(),
      'resource': instance.resource?.map((e) => e?.toJson())?.toList(),
    };

CompartmentDefinition_Resource _$CompartmentDefinition_ResourceFromJson(
    Map<String, dynamic> json) {
  return CompartmentDefinition_Resource(
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
    param: (json['param'] as List)?.map((e) => e as String)?.toList(),
    elementParam: (json['elementParam'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CompartmentDefinition_ResourceToJson(
        CompartmentDefinition_Resource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'param': instance.param,
      'elementParam': instance.elementParam?.map((e) => e?.toJson())?.toList(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
    };
