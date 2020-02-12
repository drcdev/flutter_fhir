import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 80)
class CompartmentDefinition {

	static Future<CompartmentDefinition> newInstance({
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
		List<CompartmentDefinition_Resource> resource}) async {
	CompartmentDefinition newCompartmentDefinition = new CompartmentDefinition(
			id: await newId('CompartmentDefinition'),
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
			resource: resource);
	var compartmentDefinitionBox = await Hive.openBox<CompartmentDefinition>('CompartmentDefinitionBox');
	compartmentDefinitionBox.add(newCompartmentDefinition);
	return newCompartmentDefinition;
}
  @HiveField(0)
  final String resourceType= 'CompartmentDefinition';
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
  String version;
  @HiveField(14)
  Element elementVersion;
  @HiveField(15)
  String name;
  @HiveField(16)
  Element elementName;
  @HiveField(17)
  String status; // <code> enum: draft/active/retired/unknown;
  @HiveField(18)
  Element elementStatus;
  @HiveField(19)
  bool experimental;
  @HiveField(20)
  Element elementExperimental;
  @HiveField(21)
  DateTime date;
  @HiveField(22)
  Element elementDate;
  @HiveField(23)
  String publisher;
  @HiveField(24)
  Element elementPublisher;
  @HiveField(25)
  List<ContactDetail> contact;
  @HiveField(26)
  String description;
  @HiveField(27)
  Element elementDescription;
  @HiveField(28)
  List<UsageContext> useContext;
  @HiveField(29)
  String purpose;
  @HiveField(30)
  Element elementPurpose;
  @HiveField(31)
  String code; // <code> enum: Patient/Encounter/RelatedPerson/Practitioner/Device;
  @HiveField(32)
  Element elementCode;
  @HiveField(33)
  bool search;
  @HiveField(34)
  Element elementSearch;
  @HiveField(35)
  List<CompartmentDefinition_Resource> resource;

CompartmentDefinition(
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
    this.resource
    });

  factory CompartmentDefinition.fromJson(Map<String, dynamic> json) => _$CompartmentDefinitionFromJson(json);
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
		Element elementDocumentation}) async {
	CompartmentDefinition_Resource newCompartmentDefinition_Resource = new CompartmentDefinition_Resource(
			id: await newId('CompartmentDefinition_Resource'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			elementCode: elementCode,
			param: param,
			elementParam: elementParam,
			documentation: documentation,
			elementDocumentation: elementDocumentation);
	var compartmentDefinition_ResourceBox = await Hive.openBox<CompartmentDefinition_Resource>('CompartmentDefinition_ResourceBox');
	compartmentDefinition_ResourceBox.add(newCompartmentDefinition_Resource);
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

CompartmentDefinition_Resource(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.param,
    this.elementParam,
    this.documentation,
    this.elementDocumentation
    });

  factory CompartmentDefinition_Resource.fromJson(Map<String, dynamic> json) => _$CompartmentDefinition_ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$CompartmentDefinition_ResourceToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CompartmentDefinitionAdapter extends TypeAdapter<CompartmentDefinition> {
  @override
  final typeId = 80;

  @override
  CompartmentDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CompartmentDefinition(
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
      version: fields[13] as String,
      elementVersion: fields[14] as Element,
      name: fields[15] as String,
      elementName: fields[16] as Element,
      status: fields[17] as String,
      elementStatus: fields[18] as Element,
      experimental: fields[19] as bool,
      elementExperimental: fields[20] as Element,
      date: fields[21] as DateTime,
      elementDate: fields[22] as Element,
      publisher: fields[23] as String,
      elementPublisher: fields[24] as Element,
      contact: (fields[25] as List)?.cast<ContactDetail>(),
      description: fields[26] as String,
      elementDescription: fields[27] as Element,
      useContext: (fields[28] as List)?.cast<UsageContext>(),
      purpose: fields[29] as String,
      elementPurpose: fields[30] as Element,
      code: fields[31] as String,
      elementCode: fields[32] as Element,
      search: fields[33] as bool,
      elementSearch: fields[34] as Element,
      resource: (fields[35] as List)?.cast<CompartmentDefinition_Resource>(),
    );
  }

  @override
  void write(BinaryWriter writer, CompartmentDefinition obj) {
    writer
      ..writeByte(36)
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
      ..write(obj.version)
      ..writeByte(14)
      ..write(obj.elementVersion)
      ..writeByte(15)
      ..write(obj.name)
      ..writeByte(16)
      ..write(obj.elementName)
      ..writeByte(17)
      ..write(obj.status)
      ..writeByte(18)
      ..write(obj.elementStatus)
      ..writeByte(19)
      ..write(obj.experimental)
      ..writeByte(20)
      ..write(obj.elementExperimental)
      ..writeByte(21)
      ..write(obj.date)
      ..writeByte(22)
      ..write(obj.elementDate)
      ..writeByte(23)
      ..write(obj.publisher)
      ..writeByte(24)
      ..write(obj.elementPublisher)
      ..writeByte(25)
      ..write(obj.contact)
      ..writeByte(26)
      ..write(obj.description)
      ..writeByte(27)
      ..write(obj.elementDescription)
      ..writeByte(28)
      ..write(obj.useContext)
      ..writeByte(29)
      ..write(obj.purpose)
      ..writeByte(30)
      ..write(obj.elementPurpose)
      ..writeByte(31)
      ..write(obj.code)
      ..writeByte(32)
      ..write(obj.elementCode)
      ..writeByte(33)
      ..write(obj.search)
      ..writeByte(34)
      ..write(obj.elementSearch)
      ..writeByte(35)
      ..write(obj.resource);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompartmentDefinition _$CompartmentDefinitionFromJson(
    Map<String, dynamic> json) {
  return CompartmentDefinition(
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
