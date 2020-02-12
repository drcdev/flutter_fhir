import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class OperationDefinition {

	static Future<OperationDefinition> newInstance({
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
		List<OperationDefinition_Overload> overload}) async {
	OperationDefinition newOperationDefinition = new OperationDefinition(
			id: await newId('OperationDefinition'),
			meta: meta,
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
			overload: overload);
	var operationDefinitionBox = await Hive.openBox<OperationDefinition>('OperationDefinitionBox');
	operationDefinitionBox.put(newOperationDefinition.id, newOperationDefinition);
	return newOperationDefinition;
}
  final String resourceType= 'OperationDefinition';
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
  String status; // <code> enum: draft/active/retired/unknown;
  Element elementStatus;
  String kind; // <code> enum: operation/query;
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

OperationDefinition(
  {this.id,
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
    this.overload
    });

  factory OperationDefinition.fromJson(Map<String, dynamic> json) => _$OperationDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		List<OperationDefinition_Parameter> part}) async {
	OperationDefinition_Parameter newOperationDefinition_Parameter = new OperationDefinition_Parameter(
			id: await newId('OperationDefinition_Parameter'),
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
			part: part);
	var operationDefinition_ParameterBox = await Hive.openBox<OperationDefinition_Parameter>('OperationDefinition_ParameterBox');
	operationDefinition_ParameterBox.put(newOperationDefinition_Parameter.id, newOperationDefinition_Parameter);
	return newOperationDefinition_Parameter;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String use; // <code> enum: in/out;
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
  String searchType; // <code> enum: number/date/string/token/reference/composite/quantity/uri/special;
  Element elementSearchType;
  OperationDefinition_Binding binding;
  List<OperationDefinition_ReferencedFrom> referencedFrom;
  List<OperationDefinition_Parameter> part;

OperationDefinition_Parameter(
  {this.id,
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
    this.part
    });

  factory OperationDefinition_Parameter.fromJson(Map<String, dynamic> json) => _$OperationDefinition_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_Binding {

	static Future<OperationDefinition_Binding> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String strength,
		Element elementStrength,
		String valueSet}) async {
	OperationDefinition_Binding newOperationDefinition_Binding = new OperationDefinition_Binding(
			id: await newId('OperationDefinition_Binding'),
			extension: extension,
			modifierExtension: modifierExtension,
			strength: strength,
			elementStrength: elementStrength,
			valueSet: valueSet);
	var operationDefinition_BindingBox = await Hive.openBox<OperationDefinition_Binding>('OperationDefinition_BindingBox');
	operationDefinition_BindingBox.put(newOperationDefinition_Binding.id, newOperationDefinition_Binding);
	return newOperationDefinition_Binding;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String strength; // <code> enum: required/extensible/preferred/example;
  Element elementStrength;
  String valueSet;

OperationDefinition_Binding(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.strength,
    this.elementStrength,
    @required this.valueSet
    });

  factory OperationDefinition_Binding.fromJson(Map<String, dynamic> json) => _$OperationDefinition_BindingFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_BindingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_ReferencedFrom {

	static Future<OperationDefinition_ReferencedFrom> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String source,
		Element elementSource,
		String sourceId,
		Element elementSourceId}) async {
	OperationDefinition_ReferencedFrom newOperationDefinition_ReferencedFrom = new OperationDefinition_ReferencedFrom(
			id: await newId('OperationDefinition_ReferencedFrom'),
			extension: extension,
			modifierExtension: modifierExtension,
			source: source,
			elementSource: elementSource,
			sourceId: sourceId,
			elementSourceId: elementSourceId);
	var operationDefinition_ReferencedFromBox = await Hive.openBox<OperationDefinition_ReferencedFrom>('OperationDefinition_ReferencedFromBox');
	operationDefinition_ReferencedFromBox.put(newOperationDefinition_ReferencedFrom.id, newOperationDefinition_ReferencedFrom);
	return newOperationDefinition_ReferencedFrom;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String source;
  Element elementSource;
  String sourceId;
  Element elementSourceId;

OperationDefinition_ReferencedFrom(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.source,
    this.elementSource,
    this.sourceId,
    this.elementSourceId
    });

  factory OperationDefinition_ReferencedFrom.fromJson(Map<String, dynamic> json) => _$OperationDefinition_ReferencedFromFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_ReferencedFromToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_Overload {

	static Future<OperationDefinition_Overload> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<String> parameterName,
		List<Element> elementParameterName,
		String comment,
		Element elementComment}) async {
	OperationDefinition_Overload newOperationDefinition_Overload = new OperationDefinition_Overload(
			id: await newId('OperationDefinition_Overload'),
			extension: extension,
			modifierExtension: modifierExtension,
			parameterName: parameterName,
			elementParameterName: elementParameterName,
			comment: comment,
			elementComment: elementComment);
	var operationDefinition_OverloadBox = await Hive.openBox<OperationDefinition_Overload>('OperationDefinition_OverloadBox');
	operationDefinition_OverloadBox.put(newOperationDefinition_Overload.id, newOperationDefinition_Overload);
	return newOperationDefinition_Overload;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<String> parameterName;
  List<Element> elementParameterName;
  String comment;
  Element elementComment;

OperationDefinition_Overload(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.parameterName,
    this.elementParameterName,
    this.comment,
    this.elementComment
    });

  factory OperationDefinition_Overload.fromJson(Map<String, dynamic> json) => _$OperationDefinition_OverloadFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_OverloadToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperationDefinition _$OperationDefinitionFromJson(Map<String, dynamic> json) {
  return OperationDefinition(
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

Map<String, dynamic> _$OperationDefinitionToJson(
        OperationDefinition instance) =>
    <String, dynamic>{
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
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'kind': instance.kind,
      'elementKind': instance.elementKind?.toJson(),
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
      'affectsState': instance.affectsState,
      'elementAffectsState': instance.elementAffectsState?.toJson(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
      'base': instance.base,
      'resource': instance.resource,
      'elementResource':
          instance.elementResource?.map((e) => e?.toJson())?.toList(),
      'system': instance.system,
      'elementSystem': instance.elementSystem?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'instance': instance.instance,
      'elementInstance': instance.elementInstance?.toJson(),
      'inputProfile': instance.inputProfile,
      'outputProfile': instance.outputProfile,
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
      'overload': instance.overload?.map((e) => e?.toJson())?.toList(),
    };

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
        OperationDefinition_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'use': instance.use,
      'elementUse': instance.elementUse?.toJson(),
      'min': instance.min,
      'elementMin': instance.elementMin?.toJson(),
      'max': instance.max,
      'elementMax': instance.elementMax?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'targetProfile': instance.targetProfile,
      'searchType': instance.searchType,
      'elementSearchType': instance.elementSearchType?.toJson(),
      'binding': instance.binding?.toJson(),
      'referencedFrom':
          instance.referencedFrom?.map((e) => e?.toJson())?.toList(),
      'part': instance.part?.map((e) => e?.toJson())?.toList(),
    };

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
        OperationDefinition_Binding instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'strength': instance.strength,
      'elementStrength': instance.elementStrength?.toJson(),
      'valueSet': instance.valueSet,
    };

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
        OperationDefinition_ReferencedFrom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'source': instance.source,
      'elementSource': instance.elementSource?.toJson(),
      'sourceId': instance.sourceId,
      'elementSourceId': instance.elementSourceId?.toJson(),
    };

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
        OperationDefinition_Overload instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'parameterName': instance.parameterName,
      'elementParameterName':
          instance.elementParameterName?.map((e) => e?.toJson())?.toList(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
    };
