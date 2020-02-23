import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OperationDefinition {
  static Future<OperationDefinition> newInstance({
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
    String title,
    Element elementTitle,
    String status,
    Element elementStatus,
    String kind,
    Element elementKind,
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
    List<CodeableConcept> jurisdiction,
    String purpose,
    Element elementPurpose,
    bool affectsState,
    Element elementAffectsState,
    String code,
    Element elementCode,
    String comment,
    Element elementComment,
    String base,
    List<String> resource,
    List<Element> elementResource,
    bool system,
    Element elementSystem,
    bool type,
    Element elementType,
    bool instance,
    Element elementInstance,
    String inputProfile,
    String outputProfile,
    List<OperationDefinition_Parameter> parameter,
    List<OperationDefinition_Overload> overload,
  }) async {
    var fhirDb = new DatabaseHelper();
    OperationDefinition newOperationDefinition = new OperationDefinition(
      resourceType: 'OperationDefinition',
      id: id ?? await fhirDb.newResourceId('OperationDefinition'),
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
      title: title,
      elementTitle: elementTitle,
      status: status,
      elementStatus: elementStatus,
      kind: kind,
      elementKind: elementKind,
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
      jurisdiction: jurisdiction,
      purpose: purpose,
      elementPurpose: elementPurpose,
      affectsState: affectsState,
      elementAffectsState: elementAffectsState,
      code: code,
      elementCode: elementCode,
      comment: comment,
      elementComment: elementComment,
      base: base,
      resource: resource,
      elementResource: elementResource,
      system: system,
      elementSystem: elementSystem,
      type: type,
      elementType: elementType,
      instance: instance,
      elementInstance: elementInstance,
      inputProfile: inputProfile,
      outputProfile: outputProfile,
      parameter: parameter,
      overload: overload,
    );
    newOperationDefinition.meta.createdAt = DateTime.now();
    newOperationDefinition.meta.lastUpdated =
        newOperationDefinition.meta.createdAt;
    int saved = await fhirDb.saveResource(newOperationDefinition);
    return newOperationDefinition;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'OperationDefinition';
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
  String title;
  Element elementTitle;
  String status;
  Element elementStatus;
  String kind;
  Element elementKind;
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
  List<CodeableConcept> jurisdiction;
  String purpose;
  Element elementPurpose;
  bool affectsState;
  Element elementAffectsState;
  String code;
  Element elementCode;
  String comment;
  Element elementComment;
  String base;
  List<String> resource;
  List<Element> elementResource;
  bool system;
  Element elementSystem;
  bool type;
  Element elementType;
  bool instance;
  Element elementInstance;
  String inputProfile;
  String outputProfile;
  List<OperationDefinition_Parameter> parameter;
  List<OperationDefinition_Overload> overload;

  OperationDefinition({
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
    this.title,
    this.elementTitle,
    this.status,
    this.elementStatus,
    this.kind,
    this.elementKind,
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
    this.jurisdiction,
    this.purpose,
    this.elementPurpose,
    this.affectsState,
    this.elementAffectsState,
    this.code,
    this.elementCode,
    this.comment,
    this.elementComment,
    this.base,
    this.resource,
    this.elementResource,
    this.system,
    this.elementSystem,
    this.type,
    this.elementType,
    this.instance,
    this.elementInstance,
    this.inputProfile,
    this.outputProfile,
    this.parameter,
    this.overload,
  });

  factory OperationDefinition.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OperationDefinition_Parameter {
  static Future<OperationDefinition_Parameter> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String use,
    Element elementUse,
    int min,
    Element elementMin,
    String max,
    Element elementMax,
    String documentation,
    Element elementDocumentation,
    String type,
    Element elementType,
    List<String> targetProfile,
    String searchType,
    Element elementSearchType,
    OperationDefinition_Binding binding,
    List<OperationDefinition_ReferencedFrom> referencedFrom,
    List<OperationDefinition_Parameter> part,
  }) async {
    var fhirDb = new DatabaseHelper();
    OperationDefinition_Parameter newOperationDefinition_Parameter =
        new OperationDefinition_Parameter(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      use: use,
      elementUse: elementUse,
      min: min,
      elementMin: elementMin,
      max: max,
      elementMax: elementMax,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
      type: type,
      elementType: elementType,
      targetProfile: targetProfile,
      searchType: searchType,
      elementSearchType: elementSearchType,
      binding: binding,
      referencedFrom: referencedFrom,
      part: part,
    );
    return newOperationDefinition_Parameter;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String use;
  Element elementUse;
  int min;
  Element elementMin;
  String max;
  Element elementMax;
  String documentation;
  Element elementDocumentation;
  String type;
  Element elementType;
  List<String> targetProfile;
  String searchType;
  Element elementSearchType;
  OperationDefinition_Binding binding;
  List<OperationDefinition_ReferencedFrom> referencedFrom;
  List<OperationDefinition_Parameter> part;

  OperationDefinition_Parameter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.use,
    this.elementUse,
    this.min,
    this.elementMin,
    this.max,
    this.elementMax,
    this.documentation,
    this.elementDocumentation,
    this.type,
    this.elementType,
    this.targetProfile,
    this.searchType,
    this.elementSearchType,
    this.binding,
    this.referencedFrom,
    this.part,
  });

  factory OperationDefinition_Parameter.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinition_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OperationDefinition_Binding {
  static Future<OperationDefinition_Binding> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String strength,
    Element elementStrength,
    String valueSet,
  }) async {
    var fhirDb = new DatabaseHelper();
    OperationDefinition_Binding newOperationDefinition_Binding =
        new OperationDefinition_Binding(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      strength: strength,
      elementStrength: elementStrength,
      valueSet: valueSet,
    );
    return newOperationDefinition_Binding;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String strength;
  Element elementStrength;
  String valueSet;

  OperationDefinition_Binding({
    this.id,
    this.extension,
    this.modifierExtension,
    this.strength,
    this.elementStrength,
    @required this.valueSet,
  });

  factory OperationDefinition_Binding.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinition_BindingFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_BindingToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OperationDefinition_ReferencedFrom {
  static Future<OperationDefinition_ReferencedFrom> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String source,
    Element elementSource,
    String sourceId,
    Element elementSourceId,
  }) async {
    var fhirDb = new DatabaseHelper();
    OperationDefinition_ReferencedFrom newOperationDefinition_ReferencedFrom =
        new OperationDefinition_ReferencedFrom(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      source: source,
      elementSource: elementSource,
      sourceId: sourceId,
      elementSourceId: elementSourceId,
    );
    return newOperationDefinition_ReferencedFrom;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String source;
  Element elementSource;
  String sourceId;
  Element elementSourceId;

  OperationDefinition_ReferencedFrom({
    this.id,
    this.extension,
    this.modifierExtension,
    this.source,
    this.elementSource,
    this.sourceId,
    this.elementSourceId,
  });

  factory OperationDefinition_ReferencedFrom.fromJson(
          Map<String, dynamic> json) =>
      _$OperationDefinition_ReferencedFromFromJson(json);
  Map<String, dynamic> toJson() =>
      _$OperationDefinition_ReferencedFromToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OperationDefinition_Overload {
  static Future<OperationDefinition_Overload> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<String> parameterName,
    List<Element> elementParameterName,
    String comment,
    Element elementComment,
  }) async {
    var fhirDb = new DatabaseHelper();
    OperationDefinition_Overload newOperationDefinition_Overload =
        new OperationDefinition_Overload(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      parameterName: parameterName,
      elementParameterName: elementParameterName,
      comment: comment,
      elementComment: elementComment,
    );
    return newOperationDefinition_Overload;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<String> parameterName;
  List<Element> elementParameterName;
  String comment;
  Element elementComment;

  OperationDefinition_Overload({
    this.id,
    this.extension,
    this.modifierExtension,
    this.parameterName,
    this.elementParameterName,
    this.comment,
    this.elementComment,
  });

  factory OperationDefinition_Overload.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinition_OverloadFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_OverloadToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperationDefinition _$OperationDefinitionFromJson(Map<String, dynamic> json) {
  return OperationDefinition(
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
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    kind: json['kind'] as String,
    elementKind: json['elementKind'] == null
        ? null
        : Element.fromJson(json['elementKind'] as Map<String, dynamic>),
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
    affectsState: json['affectsState'] as bool,
    elementAffectsState: json['elementAffectsState'] == null
        ? null
        : Element.fromJson(json['elementAffectsState'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    base: json['base'] as String,
    resource: (json['resource'] as List)?.map((e) => e as String)?.toList(),
    elementResource: (json['elementResource'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] as bool,
    elementSystem: json['elementSystem'] == null
        ? null
        : Element.fromJson(json['elementSystem'] as Map<String, dynamic>),
    type: json['type'] as bool,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    instance: json['instance'] as bool,
    elementInstance: json['elementInstance'] == null
        ? null
        : Element.fromJson(json['elementInstance'] as Map<String, dynamic>),
    inputProfile: json['inputProfile'] as String,
    outputProfile: json['outputProfile'] as String,
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : OperationDefinition_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    overload: (json['overload'] as List)
        ?.map((e) => e == null
            ? null
            : OperationDefinition_Overload.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$OperationDefinitionToJson(OperationDefinition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('kind', instance.kind);
  writeNotNull('elementKind', instance.elementKind?.toJson());
  writeNotNull('experimental', instance.experimental);
  writeNotNull('elementExperimental', instance.elementExperimental?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('publisher', instance.publisher);
  writeNotNull('elementPublisher', instance.elementPublisher?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e?.toJson())?.toList());
  writeNotNull('purpose', instance.purpose);
  writeNotNull('elementPurpose', instance.elementPurpose?.toJson());
  writeNotNull('affectsState', instance.affectsState);
  writeNotNull('elementAffectsState', instance.elementAffectsState?.toJson());
  writeNotNull('code', instance.code);
  writeNotNull('elementCode', instance.elementCode?.toJson());
  writeNotNull('comment', instance.comment);
  writeNotNull('elementComment', instance.elementComment?.toJson());
  writeNotNull('base', instance.base);
  writeNotNull('resource', instance.resource);
  writeNotNull('elementResource',
      instance.elementResource?.map((e) => e?.toJson())?.toList());
  writeNotNull('system', instance.system);
  writeNotNull('elementSystem', instance.elementSystem?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('instance', instance.instance);
  writeNotNull('elementInstance', instance.elementInstance?.toJson());
  writeNotNull('inputProfile', instance.inputProfile);
  writeNotNull('outputProfile', instance.outputProfile);
  writeNotNull(
      'parameter', instance.parameter?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'overload', instance.overload?.map((e) => e?.toJson())?.toList());
  return val;
}

OperationDefinition_Parameter _$OperationDefinition_ParameterFromJson(
    Map<String, dynamic> json) {
  return OperationDefinition_Parameter(
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
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    min: json['min'] as int,
    elementMin: json['elementMin'] == null
        ? null
        : Element.fromJson(json['elementMin'] as Map<String, dynamic>),
    max: json['max'] as String,
    elementMax: json['elementMax'] == null
        ? null
        : Element.fromJson(json['elementMax'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    targetProfile:
        (json['targetProfile'] as List)?.map((e) => e as String)?.toList(),
    searchType: json['searchType'] as String,
    elementSearchType: json['elementSearchType'] == null
        ? null
        : Element.fromJson(json['elementSearchType'] as Map<String, dynamic>),
    binding: json['binding'] == null
        ? null
        : OperationDefinition_Binding.fromJson(
            json['binding'] as Map<String, dynamic>),
    referencedFrom: (json['referencedFrom'] as List)
        ?.map((e) => e == null
            ? null
            : OperationDefinition_ReferencedFrom.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    part: (json['part'] as List)
        ?.map((e) => e == null
            ? null
            : OperationDefinition_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$OperationDefinition_ParameterToJson(
    OperationDefinition_Parameter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('use', instance.use);
  writeNotNull('elementUse', instance.elementUse?.toJson());
  writeNotNull('min', instance.min);
  writeNotNull('elementMin', instance.elementMin?.toJson());
  writeNotNull('max', instance.max);
  writeNotNull('elementMax', instance.elementMax?.toJson());
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('targetProfile', instance.targetProfile);
  writeNotNull('searchType', instance.searchType);
  writeNotNull('elementSearchType', instance.elementSearchType?.toJson());
  writeNotNull('binding', instance.binding?.toJson());
  writeNotNull('referencedFrom',
      instance.referencedFrom?.map((e) => e?.toJson())?.toList());
  writeNotNull('part', instance.part?.map((e) => e?.toJson())?.toList());
  return val;
}

OperationDefinition_Binding _$OperationDefinition_BindingFromJson(
    Map<String, dynamic> json) {
  return OperationDefinition_Binding(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    strength: json['strength'] as String,
    elementStrength: json['elementStrength'] == null
        ? null
        : Element.fromJson(json['elementStrength'] as Map<String, dynamic>),
    valueSet: json['valueSet'] as String,
  );
}

Map<String, dynamic> _$OperationDefinition_BindingToJson(
    OperationDefinition_Binding instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('strength', instance.strength);
  writeNotNull('elementStrength', instance.elementStrength?.toJson());
  writeNotNull('valueSet', instance.valueSet);
  return val;
}

OperationDefinition_ReferencedFrom _$OperationDefinition_ReferencedFromFromJson(
    Map<String, dynamic> json) {
  return OperationDefinition_ReferencedFrom(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    source: json['source'] as String,
    elementSource: json['elementSource'] == null
        ? null
        : Element.fromJson(json['elementSource'] as Map<String, dynamic>),
    sourceId: json['sourceId'] as String,
    elementSourceId: json['elementSourceId'] == null
        ? null
        : Element.fromJson(json['elementSourceId'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OperationDefinition_ReferencedFromToJson(
    OperationDefinition_ReferencedFrom instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('source', instance.source);
  writeNotNull('elementSource', instance.elementSource?.toJson());
  writeNotNull('sourceId', instance.sourceId);
  writeNotNull('elementSourceId', instance.elementSourceId?.toJson());
  return val;
}

OperationDefinition_Overload _$OperationDefinition_OverloadFromJson(
    Map<String, dynamic> json) {
  return OperationDefinition_Overload(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    parameterName:
        (json['parameterName'] as List)?.map((e) => e as String)?.toList(),
    elementParameterName: (json['elementParameterName'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OperationDefinition_OverloadToJson(
    OperationDefinition_Overload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('parameterName', instance.parameterName);
  writeNotNull('elementParameterName',
      instance.elementParameterName?.map((e) => e?.toJson())?.toList());
  writeNotNull('comment', instance.comment);
  writeNotNull('elementComment', instance.elementComment?.toJson());
  return val;
}
