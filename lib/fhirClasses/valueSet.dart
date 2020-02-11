import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/coding.dart';
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
@HiveType(typeId: 199)
class ValueSet {

	static Future<ValueSet> newInstance({
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
		List<Identifier> identifier,
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
		bool immutable,
		Element elementImmutable,
		String purpose,
		Element elementPurpose,
		String copyright,
		Element elementCopyright,
		ValueSet_Compose compose,
		ValueSet_Expansion expansion}) async {
	 return ValueSet(
			id: await newEntry('ValueSet'),
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
			immutable: immutable,
			elementImmutable: elementImmutable,
			purpose: purpose,
			elementPurpose: elementPurpose,
			copyright: copyright,
			elementCopyright: elementCopyright,
			compose: compose,
			expansion: expansion);
	}

  @HiveField(0)
  final String resourceType= 'ValueSet';
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
  List<Identifier> identifier;
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
  bool immutable;
  @HiveField(34)
  Element elementImmutable;
  @HiveField(35)
  String purpose;
  @HiveField(36)
  Element elementPurpose;
  @HiveField(37)
  String copyright;
  @HiveField(38)
  Element elementCopyright;
  @HiveField(39)
  ValueSet_Compose compose;
  @HiveField(40)
  ValueSet_Expansion expansion;

ValueSet(
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
    this.immutable,
    this.elementImmutable,
    this.purpose,
    this.elementPurpose,
    this.copyright,
    this.elementCopyright,
    this.compose,
    this.expansion
    });

  factory ValueSet.fromJson(Map<String, dynamic> json) => _$ValueSetFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Compose {

	static Future<ValueSet_Compose> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String lockedDate,
		Element elementLockedDate,
		bool inactive,
		Element elementInactive,
		List<ValueSet_Include> include,
		List<ValueSet_Include> exclude}) async {
	 return ValueSet_Compose(
			id: await newEntry('ValueSet_Compose'),
			extension: extension,
			modifierExtension: modifierExtension,
			lockedDate: lockedDate,
			elementLockedDate: elementLockedDate,
			inactive: inactive,
			elementInactive: elementInactive,
			include: include,
			exclude: exclude);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String lockedDate;
  Element elementLockedDate;
  bool inactive;
  Element elementInactive;
  List<ValueSet_Include> include;
  List<ValueSet_Include> exclude;

ValueSet_Compose(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.lockedDate,
    this.elementLockedDate,
    this.inactive,
    this.elementInactive,
    @required this.include,
    this.exclude
    });

  factory ValueSet_Compose.fromJson(Map<String, dynamic> json) => _$ValueSet_ComposeFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ComposeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Include {

	static Future<ValueSet_Include> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String system,
		Element elementSystem,
		String version,
		Element elementVersion,
		List<ValueSet_Concept> concept,
		List<ValueSet_Filter> filter,
		List<String> valueSet}) async {
	 return ValueSet_Include(
			id: await newEntry('ValueSet_Include'),
			extension: extension,
			modifierExtension: modifierExtension,
			system: system,
			elementSystem: elementSystem,
			version: version,
			elementVersion: elementVersion,
			concept: concept,
			filter: filter,
			valueSet: valueSet);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String system;
  Element elementSystem;
  String version;
  Element elementVersion;
  List<ValueSet_Concept> concept;
  List<ValueSet_Filter> filter;
  List<String> valueSet;

ValueSet_Include(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.system,
    this.elementSystem,
    this.version,
    this.elementVersion,
    this.concept,
    this.filter,
    this.valueSet
    });

  factory ValueSet_Include.fromJson(Map<String, dynamic> json) => _$ValueSet_IncludeFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_IncludeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Concept {

	static Future<ValueSet_Concept> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String code,
		Element elementCode,
		String display,
		Element elementDisplay,
		List<ValueSet_Designation> designation}) async {
	 return ValueSet_Concept(
			id: await newEntry('ValueSet_Concept'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			elementCode: elementCode,
			display: display,
			elementDisplay: elementDisplay,
			designation: designation);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  String display;
  Element elementDisplay;
  List<ValueSet_Designation> designation;

ValueSet_Concept(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.designation
    });

  factory ValueSet_Concept.fromJson(Map<String, dynamic> json) => _$ValueSet_ConceptFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ConceptToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Designation {

	static Future<ValueSet_Designation> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String language,
		Element elementLanguage,
		Coding use,
		String value,
		Element elementValue}) async {
	 return ValueSet_Designation(
			id: await newEntry('ValueSet_Designation'),
			extension: extension,
			modifierExtension: modifierExtension,
			language: language,
			elementLanguage: elementLanguage,
			use: use,
			value: value,
			elementValue: elementValue);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String language;
  Element elementLanguage;
  Coding use;
  String value;
  Element elementValue;

ValueSet_Designation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.language,
    this.elementLanguage,
    this.use,
    this.value,
    this.elementValue
    });

  factory ValueSet_Designation.fromJson(Map<String, dynamic> json) => _$ValueSet_DesignationFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_DesignationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Filter {

	static Future<ValueSet_Filter> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String property,
		Element elementProperty,
		String op,
		Element elementOp,
		String value,
		Element elementValue}) async {
	 return ValueSet_Filter(
			id: await newEntry('ValueSet_Filter'),
			extension: extension,
			modifierExtension: modifierExtension,
			property: property,
			elementProperty: elementProperty,
			op: op,
			elementOp: elementOp,
			value: value,
			elementValue: elementValue);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String property;
  Element elementProperty;
  String op; // <code> enum: =/is-a/descendent-of/is-not-a/regex/in/not-in/generalizes/exists;
  Element elementOp;
  String value;
  Element elementValue;

ValueSet_Filter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.property,
    this.elementProperty,
    this.op,
    this.elementOp,
    this.value,
    this.elementValue
    });

  factory ValueSet_Filter.fromJson(Map<String, dynamic> json) => _$ValueSet_FilterFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_FilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Expansion {

	static Future<ValueSet_Expansion> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String identifier,
		Element elementIdentifier,
		DateTime timestamp,
		Element elementTimestamp,
		int total,
		Element elementTotal,
		int offset,
		Element elementOffset,
		List<ValueSet_Parameter> parameter,
		List<ValueSet_Contains> contains}) async {
	 return ValueSet_Expansion(
			id: await newEntry('ValueSet_Expansion'),
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			elementIdentifier: elementIdentifier,
			timestamp: timestamp,
			elementTimestamp: elementTimestamp,
			total: total,
			elementTotal: elementTotal,
			offset: offset,
			elementOffset: elementOffset,
			parameter: parameter,
			contains: contains);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String identifier;
  Element elementIdentifier;
  DateTime timestamp;
  Element elementTimestamp;
  int total;
  Element elementTotal;
  int offset;
  Element elementOffset;
  List<ValueSet_Parameter> parameter;
  List<ValueSet_Contains> contains;

ValueSet_Expansion(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.elementIdentifier,
    this.timestamp,
    this.elementTimestamp,
    this.total,
    this.elementTotal,
    this.offset,
    this.elementOffset,
    this.parameter,
    this.contains
    });

  factory ValueSet_Expansion.fromJson(Map<String, dynamic> json) => _$ValueSet_ExpansionFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ExpansionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Parameter {

	static Future<ValueSet_Parameter> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String name,
		Element elementName,
		String valueString,
		Element elementValueString,
		bool valueBoolean,
		Element elementValueBoolean,
		int valueInteger,
		Element elementValueInteger,
		double valueDecimal,
		Element elementValueDecimal,
		String valueUri,
		Element elementValueUri,
		String valueCode,
		Element elementValueCode,
		String valueDateTime,
		Element elementValueDateTime}) async {
	 return ValueSet_Parameter(
			id: await newEntry('ValueSet_Parameter'),
			extension: extension,
			modifierExtension: modifierExtension,
			name: name,
			elementName: elementName,
			valueString: valueString,
			elementValueString: elementValueString,
			valueBoolean: valueBoolean,
			elementValueBoolean: elementValueBoolean,
			valueInteger: valueInteger,
			elementValueInteger: elementValueInteger,
			valueDecimal: valueDecimal,
			elementValueDecimal: elementValueDecimal,
			valueUri: valueUri,
			elementValueUri: elementValueUri,
			valueCode: valueCode,
			elementValueCode: elementValueCode,
			valueDateTime: valueDateTime,
			elementValueDateTime: elementValueDateTime);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String valueString; //  pattern: ^[ \r\n\t\S]+$
  Element elementValueString;
  bool valueBoolean; //  pattern: ^true|false$
  Element elementValueBoolean;
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
  Element elementValueInteger;
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
  Element elementValueDecimal;
  String valueUri; //  pattern: ^\S*$
  Element elementValueUri;
  String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$
  Element elementValueCode;
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementValueDateTime;

ValueSet_Parameter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.valueString,
    this.elementValueString,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueInteger,
    this.elementValueInteger,
    this.valueDecimal,
    this.elementValueDecimal,
    this.valueUri,
    this.elementValueUri,
    this.valueCode,
    this.elementValueCode,
    this.valueDateTime,
    this.elementValueDateTime
    });

  factory ValueSet_Parameter.fromJson(Map<String, dynamic> json) => _$ValueSet_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Contains {

	static Future<ValueSet_Contains> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String system,
		Element elementSystem,
		bool abstract,
		Element elementAbstract,
		bool inactive,
		Element elementInactive,
		String version,
		Element elementVersion,
		String code,
		Element elementCode,
		String display,
		Element elementDisplay,
		List<ValueSet_Designation> designation,
		List<ValueSet_Contains> contains}) async {
	 return ValueSet_Contains(
			id: await newEntry('ValueSet_Contains'),
			extension: extension,
			modifierExtension: modifierExtension,
			system: system,
			elementSystem: elementSystem,
			abstract: abstract,
			elementAbstract: elementAbstract,
			inactive: inactive,
			elementInactive: elementInactive,
			version: version,
			elementVersion: elementVersion,
			code: code,
			elementCode: elementCode,
			display: display,
			elementDisplay: elementDisplay,
			designation: designation,
			contains: contains);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String system;
  Element elementSystem;
  bool abstract;
  Element elementAbstract;
  bool inactive;
  Element elementInactive;
  String version;
  Element elementVersion;
  String code;
  Element elementCode;
  String display;
  Element elementDisplay;
  List<ValueSet_Designation> designation;
  List<ValueSet_Contains> contains;

ValueSet_Contains(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.system,
    this.elementSystem,
    this.abstract,
    this.elementAbstract,
    this.inactive,
    this.elementInactive,
    this.version,
    this.elementVersion,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.designation,
    this.contains
    });

  factory ValueSet_Contains.fromJson(Map<String, dynamic> json) => _$ValueSet_ContainsFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ContainsToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ValueSetAdapter extends TypeAdapter<ValueSet> {
  @override
  final typeId = 199;

  @override
  ValueSet read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ValueSet(
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
      identifier: (fields[13] as List)?.cast<Identifier>(),
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
      immutable: fields[33] as bool,
      elementImmutable: fields[34] as Element,
      purpose: fields[35] as String,
      elementPurpose: fields[36] as Element,
      copyright: fields[37] as String,
      elementCopyright: fields[38] as Element,
      compose: fields[39] as ValueSet_Compose,
      expansion: fields[40] as ValueSet_Expansion,
    );
  }

  @override
  void write(BinaryWriter writer, ValueSet obj) {
    writer
      ..writeByte(41)
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
      ..write(obj.immutable)
      ..writeByte(34)
      ..write(obj.elementImmutable)
      ..writeByte(35)
      ..write(obj.purpose)
      ..writeByte(36)
      ..write(obj.elementPurpose)
      ..writeByte(37)
      ..write(obj.copyright)
      ..writeByte(38)
      ..write(obj.elementCopyright)
      ..writeByte(39)
      ..write(obj.compose)
      ..writeByte(40)
      ..write(obj.expansion);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValueSet _$ValueSetFromJson(Map<String, dynamic> json) {
  return ValueSet(
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    immutable: json['immutable'] as bool,
    elementImmutable: json['elementImmutable'] == null
        ? null
        : Element.fromJson(json['elementImmutable'] as Map<String, dynamic>),
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    compose: json['compose'] == null
        ? null
        : ValueSet_Compose.fromJson(json['compose'] as Map<String, dynamic>),
    expansion: json['expansion'] == null
        ? null
        : ValueSet_Expansion.fromJson(
            json['expansion'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ValueSetToJson(ValueSet instance) => <String, dynamic>{
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
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
      'immutable': instance.immutable,
      'elementImmutable': instance.elementImmutable?.toJson(),
      'purpose': instance.purpose,
      'elementPurpose': instance.elementPurpose?.toJson(),
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'compose': instance.compose?.toJson(),
      'expansion': instance.expansion?.toJson(),
    };

ValueSet_Compose _$ValueSet_ComposeFromJson(Map<String, dynamic> json) {
  return ValueSet_Compose(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lockedDate: json['lockedDate'] as String,
    elementLockedDate: json['elementLockedDate'] == null
        ? null
        : Element.fromJson(json['elementLockedDate'] as Map<String, dynamic>),
    inactive: json['inactive'] as bool,
    elementInactive: json['elementInactive'] == null
        ? null
        : Element.fromJson(json['elementInactive'] as Map<String, dynamic>),
    include: (json['include'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Include.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    exclude: (json['exclude'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Include.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ValueSet_ComposeToJson(ValueSet_Compose instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'lockedDate': instance.lockedDate,
      'elementLockedDate': instance.elementLockedDate?.toJson(),
      'inactive': instance.inactive,
      'elementInactive': instance.elementInactive?.toJson(),
      'include': instance.include?.map((e) => e?.toJson())?.toList(),
      'exclude': instance.exclude?.map((e) => e?.toJson())?.toList(),
    };

ValueSet_Include _$ValueSet_IncludeFromJson(Map<String, dynamic> json) {
  return ValueSet_Include(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] as String,
    elementSystem: json['elementSystem'] == null
        ? null
        : Element.fromJson(json['elementSystem'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    concept: (json['concept'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Concept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    filter: (json['filter'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Filter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueSet: (json['valueSet'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ValueSet_IncludeToJson(ValueSet_Include instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'system': instance.system,
      'elementSystem': instance.elementSystem?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'concept': instance.concept?.map((e) => e?.toJson())?.toList(),
      'filter': instance.filter?.map((e) => e?.toJson())?.toList(),
      'valueSet': instance.valueSet,
    };

ValueSet_Concept _$ValueSet_ConceptFromJson(Map<String, dynamic> json) {
  return ValueSet_Concept(
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
    designation: (json['designation'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Designation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ValueSet_ConceptToJson(ValueSet_Concept instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'display': instance.display,
      'elementDisplay': instance.elementDisplay?.toJson(),
      'designation': instance.designation?.map((e) => e?.toJson())?.toList(),
    };

ValueSet_Designation _$ValueSet_DesignationFromJson(Map<String, dynamic> json) {
  return ValueSet_Designation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    use: json['use'] == null
        ? null
        : Coding.fromJson(json['use'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ValueSet_DesignationToJson(
        ValueSet_Designation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'use': instance.use?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
    };

ValueSet_Filter _$ValueSet_FilterFromJson(Map<String, dynamic> json) {
  return ValueSet_Filter(
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
    op: json['op'] as String,
    elementOp: json['elementOp'] == null
        ? null
        : Element.fromJson(json['elementOp'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ValueSet_FilterToJson(ValueSet_Filter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'property': instance.property,
      'elementProperty': instance.elementProperty?.toJson(),
      'op': instance.op,
      'elementOp': instance.elementOp?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
    };

ValueSet_Expansion _$ValueSet_ExpansionFromJson(Map<String, dynamic> json) {
  return ValueSet_Expansion(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: json['identifier'] as String,
    elementIdentifier: json['elementIdentifier'] == null
        ? null
        : Element.fromJson(json['elementIdentifier'] as Map<String, dynamic>),
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    elementTimestamp: json['elementTimestamp'] == null
        ? null
        : Element.fromJson(json['elementTimestamp'] as Map<String, dynamic>),
    total: json['total'] as int,
    elementTotal: json['elementTotal'] == null
        ? null
        : Element.fromJson(json['elementTotal'] as Map<String, dynamic>),
    offset: json['offset'] as int,
    elementOffset: json['elementOffset'] == null
        ? null
        : Element.fromJson(json['elementOffset'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contains: (json['contains'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Contains.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ValueSet_ExpansionToJson(ValueSet_Expansion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier,
      'elementIdentifier': instance.elementIdentifier?.toJson(),
      'timestamp': instance.timestamp?.toIso8601String(),
      'elementTimestamp': instance.elementTimestamp?.toJson(),
      'total': instance.total,
      'elementTotal': instance.elementTotal?.toJson(),
      'offset': instance.offset,
      'elementOffset': instance.elementOffset?.toJson(),
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
      'contains': instance.contains?.map((e) => e?.toJson())?.toList(),
    };

ValueSet_Parameter _$ValueSet_ParameterFromJson(Map<String, dynamic> json) {
  return ValueSet_Parameter(
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
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
    elementValueDecimal: json['elementValueDecimal'] == null
        ? null
        : Element.fromJson(json['elementValueDecimal'] as Map<String, dynamic>),
    valueUri: json['valueUri'] as String,
    elementValueUri: json['elementValueUri'] == null
        ? null
        : Element.fromJson(json['elementValueUri'] as Map<String, dynamic>),
    valueCode: json['valueCode'] as String,
    elementValueCode: json['elementValueCode'] == null
        ? null
        : Element.fromJson(json['elementValueCode'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ValueSet_ParameterToJson(ValueSet_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'elementValueDecimal': instance.elementValueDecimal?.toJson(),
      'valueUri': instance.valueUri,
      'elementValueUri': instance.elementValueUri?.toJson(),
      'valueCode': instance.valueCode,
      'elementValueCode': instance.elementValueCode?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'elementValueDateTime': instance.elementValueDateTime?.toJson(),
    };

ValueSet_Contains _$ValueSet_ContainsFromJson(Map<String, dynamic> json) {
  return ValueSet_Contains(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] as String,
    elementSystem: json['elementSystem'] == null
        ? null
        : Element.fromJson(json['elementSystem'] as Map<String, dynamic>),
    abstract: json['abstract'] as bool,
    elementAbstract: json['elementAbstract'] == null
        ? null
        : Element.fromJson(json['elementAbstract'] as Map<String, dynamic>),
    inactive: json['inactive'] as bool,
    elementInactive: json['elementInactive'] == null
        ? null
        : Element.fromJson(json['elementInactive'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
    designation: (json['designation'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Designation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contains: (json['contains'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Contains.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ValueSet_ContainsToJson(ValueSet_Contains instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'system': instance.system,
      'elementSystem': instance.elementSystem?.toJson(),
      'abstract': instance.abstract,
      'elementAbstract': instance.elementAbstract?.toJson(),
      'inactive': instance.inactive,
      'elementInactive': instance.elementInactive?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'display': instance.display,
      'elementDisplay': instance.elementDisplay?.toJson(),
      'designation': instance.designation?.map((e) => e?.toJson())?.toList(),
      'contains': instance.contains?.map((e) => e?.toJson())?.toList(),
    };
