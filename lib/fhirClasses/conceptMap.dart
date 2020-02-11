import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 82)
class ConceptMap {

	static Future<ConceptMap> newInstance({
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
		Identifier identifier,
		String version,
		Element elementVersion,
		String name,
		Element elementName,
		String title,
		Element elementTitle,
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
		List<CodeableConcept> jurisdiction,
		String purpose,
		Element elementPurpose,
		String copyright,
		Element elementCopyright,
		String sourceUri,
		Element elementSourceUri,
		String sourceCanonical,
		Element elementSourceCanonical,
		String targetUri,
		Element elementTargetUri,
		String targetCanonical,
		Element elementTargetCanonical,
		List<ConceptMap_Group> group}) async {
	 return ConceptMap(
			id: await newEntry('ConceptMap'),
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
			identifier: identifier,
			version: version,
			elementVersion: elementVersion,
			name: name,
			elementName: elementName,
			title: title,
			elementTitle: elementTitle,
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
			jurisdiction: jurisdiction,
			purpose: purpose,
			elementPurpose: elementPurpose,
			copyright: copyright,
			elementCopyright: elementCopyright,
			sourceUri: sourceUri,
			elementSourceUri: elementSourceUri,
			sourceCanonical: sourceCanonical,
			elementSourceCanonical: elementSourceCanonical,
			targetUri: targetUri,
			elementTargetUri: elementTargetUri,
			targetCanonical: targetCanonical,
			elementTargetCanonical: elementTargetCanonical,
			group: group);
	}

  @HiveField(0)
  final String resourceType= 'ConceptMap';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  String url;
  @HiveField(12)
  Element elementUrl;
  @HiveField(13)
  Identifier identifier;
  @HiveField(14)
  String version;
  @HiveField(15)
  Element elementVersion;
  @HiveField(16)
  String name;
  @HiveField(17)
  Element elementName;
  @HiveField(18)
  String title;
  @HiveField(19)
  Element elementTitle;
  @HiveField(20)
  String status; // <code> enum: draft/active/retired/unknown;
  @HiveField(21)
  Element elementStatus;
  @HiveField(22)
  bool experimental;
  @HiveField(23)
  Element elementExperimental;
  @HiveField(24)
  DateTime date;
  @HiveField(25)
  Element elementDate;
  @HiveField(26)
  String publisher;
  @HiveField(27)
  Element elementPublisher;
  @HiveField(28)
  List<ContactDetail> contact;
  @HiveField(29)
  String description;
  @HiveField(30)
  Element elementDescription;
  @HiveField(31)
  List<UsageContext> useContext;
  @HiveField(32)
  List<CodeableConcept> jurisdiction;
  @HiveField(33)
  String purpose;
  @HiveField(34)
  Element elementPurpose;
  @HiveField(35)
  String copyright;
  @HiveField(36)
  Element elementCopyright;
  @HiveField(37)
  String sourceUri; //  pattern: ^\S*$
  @HiveField(38)
  Element elementSourceUri;
  @HiveField(39)
  String sourceCanonical; //  pattern: ^\S*$
  @HiveField(40)
  Element elementSourceCanonical;
  @HiveField(41)
  String targetUri; //  pattern: ^\S*$
  @HiveField(42)
  Element elementTargetUri;
  @HiveField(43)
  String targetCanonical; //  pattern: ^\S*$
  @HiveField(44)
  Element elementTargetCanonical;
  @HiveField(45)
  List<ConceptMap_Group> group;

ConceptMap(
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
    this.identifier,
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
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
    this.jurisdiction,
    this.purpose,
    this.elementPurpose,
    this.copyright,
    this.elementCopyright,
    this.sourceUri,
    this.elementSourceUri,
    this.sourceCanonical,
    this.elementSourceCanonical,
    this.targetUri,
    this.elementTargetUri,
    this.targetCanonical,
    this.elementTargetCanonical,
    this.group
    });

  factory ConceptMap.fromJson(Map<String, dynamic> json) => _$ConceptMapFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMapToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Group {

	static Future<ConceptMap_Group> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String source,
		Element elementSource,
		String sourceVersion,
		Element elementSourceVersion,
		String target,
		Element elementTarget,
		String targetVersion,
		Element elementTargetVersion,
		List<ConceptMap_Element> element,
		ConceptMap_Unmapped unmapped}) async {
	 return ConceptMap_Group(
			id: await newEntry('ConceptMap_Group'),
			extension: extension,
			modifierExtension: modifierExtension,
			source: source,
			elementSource: elementSource,
			sourceVersion: sourceVersion,
			elementSourceVersion: elementSourceVersion,
			target: target,
			elementTarget: elementTarget,
			targetVersion: targetVersion,
			elementTargetVersion: elementTargetVersion,
			element: element,
			unmapped: unmapped);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String source;
  Element elementSource;
  String sourceVersion;
  Element elementSourceVersion;
  String target;
  Element elementTarget;
  String targetVersion;
  Element elementTargetVersion;
  List<ConceptMap_Element> element;
  ConceptMap_Unmapped unmapped;

ConceptMap_Group(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.source,
    this.elementSource,
    this.sourceVersion,
    this.elementSourceVersion,
    this.target,
    this.elementTarget,
    this.targetVersion,
    this.elementTargetVersion,
    @required this.element,
    this.unmapped
    });

  factory ConceptMap_Group.fromJson(Map<String, dynamic> json) => _$ConceptMap_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Element {

	static Future<ConceptMap_Element> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String code,
		Element elementCode,
		String display,
		Element elementDisplay,
		List<ConceptMap_Target> target}) async {
	 return ConceptMap_Element(
			id: await newEntry('ConceptMap_Element'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			elementCode: elementCode,
			display: display,
			elementDisplay: elementDisplay,
			target: target);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  String display;
  Element elementDisplay;
  List<ConceptMap_Target> target;

ConceptMap_Element(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.target
    });

  factory ConceptMap_Element.fromJson(Map<String, dynamic> json) => _$ConceptMap_ElementFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_ElementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Target {

	static Future<ConceptMap_Target> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String code,
		Element elementCode,
		String display,
		Element elementDisplay,
		String equivalence,
		Element elementEquivalence,
		String comment,
		Element elementComment,
		List<ConceptMap_DependsOn> dependsOn,
		List<ConceptMap_DependsOn> product}) async {
	 return ConceptMap_Target(
			id: await newEntry('ConceptMap_Target'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			elementCode: elementCode,
			display: display,
			elementDisplay: elementDisplay,
			equivalence: equivalence,
			elementEquivalence: elementEquivalence,
			comment: comment,
			elementComment: elementComment,
			dependsOn: dependsOn,
			product: product);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  String display;
  Element elementDisplay;
  String equivalence; // <code> enum: relatedto/equivalent/equal/wider/subsumes/narrower/specializes/inexact/unmatched/disjoint;
  Element elementEquivalence;
  String comment;
  Element elementComment;
  List<ConceptMap_DependsOn> dependsOn;
  List<ConceptMap_DependsOn> product;

ConceptMap_Target(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.equivalence,
    this.elementEquivalence,
    this.comment,
    this.elementComment,
    this.dependsOn,
    this.product
    });

  factory ConceptMap_Target.fromJson(Map<String, dynamic> json) => _$ConceptMap_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_TargetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConceptMap_DependsOn {

	static Future<ConceptMap_DependsOn> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String property,
		Element elementProperty,
		String system,
		String value,
		Element elementValue,
		String display,
		Element elementDisplay}) async {
	 return ConceptMap_DependsOn(
			id: await newEntry('ConceptMap_DependsOn'),
			extension: extension,
			modifierExtension: modifierExtension,
			property: property,
			elementProperty: elementProperty,
			system: system,
			value: value,
			elementValue: elementValue,
			display: display,
			elementDisplay: elementDisplay);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String property;
  Element elementProperty;
  String system;
  String value;
  Element elementValue;
  String display;
  Element elementDisplay;

ConceptMap_DependsOn(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.property,
    this.elementProperty,
    this.system,
    this.value,
    this.elementValue,
    this.display,
    this.elementDisplay
    });

  factory ConceptMap_DependsOn.fromJson(Map<String, dynamic> json) => _$ConceptMap_DependsOnFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_DependsOnToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Unmapped {

	static Future<ConceptMap_Unmapped> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String mode,
		Element elementMode,
		String code,
		Element elementCode,
		String display,
		Element elementDisplay,
		String url}) async {
	 return ConceptMap_Unmapped(
			id: await newEntry('ConceptMap_Unmapped'),
			extension: extension,
			modifierExtension: modifierExtension,
			mode: mode,
			elementMode: elementMode,
			code: code,
			elementCode: elementCode,
			display: display,
			elementDisplay: elementDisplay,
			url: url);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String mode; // <code> enum: provided/fixed/other-map;
  Element elementMode;
  String code;
  Element elementCode;
  String display;
  Element elementDisplay;
  String url;

ConceptMap_Unmapped(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.elementMode,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.url
    });

  factory ConceptMap_Unmapped.fromJson(Map<String, dynamic> json) => _$ConceptMap_UnmappedFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_UnmappedToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConceptMapAdapter extends TypeAdapter<ConceptMap> {
  @override
  final typeId = 82;

  @override
  ConceptMap read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ConceptMap(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      url: fields[11] as String,
      elementUrl: fields[12] as Element,
      identifier: fields[13] as Identifier,
      version: fields[14] as String,
      elementVersion: fields[15] as Element,
      name: fields[16] as String,
      elementName: fields[17] as Element,
      title: fields[18] as String,
      elementTitle: fields[19] as Element,
      status: fields[20] as String,
      elementStatus: fields[21] as Element,
      experimental: fields[22] as bool,
      elementExperimental: fields[23] as Element,
      date: fields[24] as DateTime,
      elementDate: fields[25] as Element,
      publisher: fields[26] as String,
      elementPublisher: fields[27] as Element,
      contact: (fields[28] as List)?.cast<ContactDetail>(),
      description: fields[29] as String,
      elementDescription: fields[30] as Element,
      useContext: (fields[31] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[32] as List)?.cast<CodeableConcept>(),
      purpose: fields[33] as String,
      elementPurpose: fields[34] as Element,
      copyright: fields[35] as String,
      elementCopyright: fields[36] as Element,
      sourceUri: fields[37] as String,
      elementSourceUri: fields[38] as Element,
      sourceCanonical: fields[39] as String,
      elementSourceCanonical: fields[40] as Element,
      targetUri: fields[41] as String,
      elementTargetUri: fields[42] as Element,
      targetCanonical: fields[43] as String,
      elementTargetCanonical: fields[44] as Element,
      group: (fields[45] as List)?.cast<ConceptMap_Group>(),
    );
  }

  @override
  void write(BinaryWriter writer, ConceptMap obj) {
    writer
      ..writeByte(46)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.url)
      ..writeByte(12)
      ..write(obj.elementUrl)
      ..writeByte(13)
      ..write(obj.identifier)
      ..writeByte(14)
      ..write(obj.version)
      ..writeByte(15)
      ..write(obj.elementVersion)
      ..writeByte(16)
      ..write(obj.name)
      ..writeByte(17)
      ..write(obj.elementName)
      ..writeByte(18)
      ..write(obj.title)
      ..writeByte(19)
      ..write(obj.elementTitle)
      ..writeByte(20)
      ..write(obj.status)
      ..writeByte(21)
      ..write(obj.elementStatus)
      ..writeByte(22)
      ..write(obj.experimental)
      ..writeByte(23)
      ..write(obj.elementExperimental)
      ..writeByte(24)
      ..write(obj.date)
      ..writeByte(25)
      ..write(obj.elementDate)
      ..writeByte(26)
      ..write(obj.publisher)
      ..writeByte(27)
      ..write(obj.elementPublisher)
      ..writeByte(28)
      ..write(obj.contact)
      ..writeByte(29)
      ..write(obj.description)
      ..writeByte(30)
      ..write(obj.elementDescription)
      ..writeByte(31)
      ..write(obj.useContext)
      ..writeByte(32)
      ..write(obj.jurisdiction)
      ..writeByte(33)
      ..write(obj.purpose)
      ..writeByte(34)
      ..write(obj.elementPurpose)
      ..writeByte(35)
      ..write(obj.copyright)
      ..writeByte(36)
      ..write(obj.elementCopyright)
      ..writeByte(37)
      ..write(obj.sourceUri)
      ..writeByte(38)
      ..write(obj.elementSourceUri)
      ..writeByte(39)
      ..write(obj.sourceCanonical)
      ..writeByte(40)
      ..write(obj.elementSourceCanonical)
      ..writeByte(41)
      ..write(obj.targetUri)
      ..writeByte(42)
      ..write(obj.elementTargetUri)
      ..writeByte(43)
      ..write(obj.targetCanonical)
      ..writeByte(44)
      ..write(obj.elementTargetCanonical)
      ..writeByte(45)
      ..write(obj.group);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConceptMap _$ConceptMapFromJson(Map<String, dynamic> json) {
  return ConceptMap(
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
    sourceUri: json['sourceUri'] as String,
    elementSourceUri: json['elementSourceUri'] == null
        ? null
        : Element.fromJson(json['elementSourceUri'] as Map<String, dynamic>),
    sourceCanonical: json['sourceCanonical'] as String,
    elementSourceCanonical: json['elementSourceCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementSourceCanonical'] as Map<String, dynamic>),
    targetUri: json['targetUri'] as String,
    elementTargetUri: json['elementTargetUri'] == null
        ? null
        : Element.fromJson(json['elementTargetUri'] as Map<String, dynamic>),
    targetCanonical: json['targetCanonical'] as String,
    elementTargetCanonical: json['elementTargetCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementTargetCanonical'] as Map<String, dynamic>),
    group: (json['group'] as List)
        ?.map((e) => e == null
            ? null
            : ConceptMap_Group.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ConceptMapToJson(ConceptMap instance) =>
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
      'sourceUri': instance.sourceUri,
      'elementSourceUri': instance.elementSourceUri?.toJson(),
      'sourceCanonical': instance.sourceCanonical,
      'elementSourceCanonical': instance.elementSourceCanonical?.toJson(),
      'targetUri': instance.targetUri,
      'elementTargetUri': instance.elementTargetUri?.toJson(),
      'targetCanonical': instance.targetCanonical,
      'elementTargetCanonical': instance.elementTargetCanonical?.toJson(),
      'group': instance.group?.map((e) => e?.toJson())?.toList(),
    };

ConceptMap_Group _$ConceptMap_GroupFromJson(Map<String, dynamic> json) {
  return ConceptMap_Group(
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
    sourceVersion: json['sourceVersion'] as String,
    elementSourceVersion: json['elementSourceVersion'] == null
        ? null
        : Element.fromJson(
            json['elementSourceVersion'] as Map<String, dynamic>),
    target: json['target'] as String,
    elementTarget: json['elementTarget'] == null
        ? null
        : Element.fromJson(json['elementTarget'] as Map<String, dynamic>),
    targetVersion: json['targetVersion'] as String,
    elementTargetVersion: json['elementTargetVersion'] == null
        ? null
        : Element.fromJson(
            json['elementTargetVersion'] as Map<String, dynamic>),
    element: (json['element'] as List)
        ?.map((e) => e == null
            ? null
            : ConceptMap_Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    unmapped: json['unmapped'] == null
        ? null
        : ConceptMap_Unmapped.fromJson(
            json['unmapped'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ConceptMap_GroupToJson(ConceptMap_Group instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'source': instance.source,
      'elementSource': instance.elementSource?.toJson(),
      'sourceVersion': instance.sourceVersion,
      'elementSourceVersion': instance.elementSourceVersion?.toJson(),
      'target': instance.target,
      'elementTarget': instance.elementTarget?.toJson(),
      'targetVersion': instance.targetVersion,
      'elementTargetVersion': instance.elementTargetVersion?.toJson(),
      'element': instance.element?.map((e) => e?.toJson())?.toList(),
      'unmapped': instance.unmapped?.toJson(),
    };

ConceptMap_Element _$ConceptMap_ElementFromJson(Map<String, dynamic> json) {
  return ConceptMap_Element(
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
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
    target: (json['target'] as List)
        ?.map((e) => e == null
            ? null
            : ConceptMap_Target.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ConceptMap_ElementToJson(ConceptMap_Element instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'display': instance.display,
      'elementDisplay': instance.elementDisplay?.toJson(),
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
    };

ConceptMap_Target _$ConceptMap_TargetFromJson(Map<String, dynamic> json) {
  return ConceptMap_Target(
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
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
    equivalence: json['equivalence'] as String,
    elementEquivalence: json['elementEquivalence'] == null
        ? null
        : Element.fromJson(json['elementEquivalence'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    dependsOn: (json['dependsOn'] as List)
        ?.map((e) => e == null
            ? null
            : ConceptMap_DependsOn.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    product: (json['product'] as List)
        ?.map((e) => e == null
            ? null
            : ConceptMap_DependsOn.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ConceptMap_TargetToJson(ConceptMap_Target instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'display': instance.display,
      'elementDisplay': instance.elementDisplay?.toJson(),
      'equivalence': instance.equivalence,
      'elementEquivalence': instance.elementEquivalence?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
      'dependsOn': instance.dependsOn?.map((e) => e?.toJson())?.toList(),
      'product': instance.product?.map((e) => e?.toJson())?.toList(),
    };

ConceptMap_DependsOn _$ConceptMap_DependsOnFromJson(Map<String, dynamic> json) {
  return ConceptMap_DependsOn(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    property: json['property'] as String,
    elementProperty: json['elementProperty'] == null
        ? null
        : Element.fromJson(json['elementProperty'] as Map<String, dynamic>),
    system: json['system'] as String,
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ConceptMap_DependsOnToJson(
        ConceptMap_DependsOn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'property': instance.property,
      'elementProperty': instance.elementProperty?.toJson(),
      'system': instance.system,
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
      'display': instance.display,
      'elementDisplay': instance.elementDisplay?.toJson(),
    };

ConceptMap_Unmapped _$ConceptMap_UnmappedFromJson(Map<String, dynamic> json) {
  return ConceptMap_Unmapped(
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
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$ConceptMap_UnmappedToJson(
        ConceptMap_Unmapped instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'mode': instance.mode,
      'elementMode': instance.elementMode?.toJson(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'display': instance.display,
      'elementDisplay': instance.elementDisplay?.toJson(),
      'url': instance.url,
    };
