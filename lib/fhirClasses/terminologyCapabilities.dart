import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
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
@HiveType(typeId: 196)
class TerminologyCapabilities {

	static Future<TerminologyCapabilities> newInstance({
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
		String kind,
		Element elementKind,
		TerminologyCapabilities_Software software,
		TerminologyCapabilities_Implementation implementation,
		bool lockedDate,
		Element elementLockedDate,
		List<TerminologyCapabilities_CodeSystem> codeSystem,
		TerminologyCapabilities_Expansion expansion,
		String codeSearch,
		Element elementCodeSearch,
		TerminologyCapabilities_ValidateCode validateCode,
		TerminologyCapabilities_Translation translation,
		TerminologyCapabilities_Closure closure}) async {
	TerminologyCapabilities newTerminologyCapabilities = new TerminologyCapabilities(
			id: await newId('TerminologyCapabilities'),
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
			kind: kind,
			elementKind: elementKind,
			software: software,
			implementation: implementation,
			lockedDate: lockedDate,
			elementLockedDate: elementLockedDate,
			codeSystem: codeSystem,
			expansion: expansion,
			codeSearch: codeSearch,
			elementCodeSearch: elementCodeSearch,
			validateCode: validateCode,
			translation: translation,
			closure: closure);
	var terminologyCapabilitiesBox = await Hive.openBox<TerminologyCapabilities>('TerminologyCapabilitiesBox');
	terminologyCapabilitiesBox.add(newTerminologyCapabilities);
	return newTerminologyCapabilities;
}
  @HiveField(0)
  final String resourceType= 'TerminologyCapabilities';
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
  String title;
  @HiveField(18)
  Element elementTitle;
  @HiveField(19)
  String status; // <code> enum: draft/active/retired/unknown;
  @HiveField(20)
  Element elementStatus;
  @HiveField(21)
  bool experimental;
  @HiveField(22)
  Element elementExperimental;
  @HiveField(23)
  DateTime date;
  @HiveField(24)
  Element elementDate;
  @HiveField(25)
  String publisher;
  @HiveField(26)
  Element elementPublisher;
  @HiveField(27)
  List<ContactDetail> contact;
  @HiveField(28)
  String description;
  @HiveField(29)
  Element elementDescription;
  @HiveField(30)
  List<UsageContext> useContext;
  @HiveField(31)
  List<CodeableConcept> jurisdiction;
  @HiveField(32)
  String purpose;
  @HiveField(33)
  Element elementPurpose;
  @HiveField(34)
  String copyright;
  @HiveField(35)
  Element elementCopyright;
  @HiveField(36)
  String kind;
  @HiveField(37)
  Element elementKind;
  @HiveField(38)
  TerminologyCapabilities_Software software;
  @HiveField(39)
  TerminologyCapabilities_Implementation implementation;
  @HiveField(40)
  bool lockedDate;
  @HiveField(41)
  Element elementLockedDate;
  @HiveField(42)
  List<TerminologyCapabilities_CodeSystem> codeSystem;
  @HiveField(43)
  TerminologyCapabilities_Expansion expansion;
  @HiveField(44)
  String codeSearch; // <code> enum: explicit/all;
  @HiveField(45)
  Element elementCodeSearch;
  @HiveField(46)
  TerminologyCapabilities_ValidateCode validateCode;
  @HiveField(47)
  TerminologyCapabilities_Translation translation;
  @HiveField(48)
  TerminologyCapabilities_Closure closure;

TerminologyCapabilities(
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
    this.kind,
    this.elementKind,
    this.software,
    this.implementation,
    this.lockedDate,
    this.elementLockedDate,
    this.codeSystem,
    this.expansion,
    this.codeSearch,
    this.elementCodeSearch,
    this.validateCode,
    this.translation,
    this.closure
    });

  factory TerminologyCapabilities.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilitiesFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilitiesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Software {

	static Future<TerminologyCapabilities_Software> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String name,
		Element elementName,
		String version,
		Element elementVersion}) async {
	TerminologyCapabilities_Software newTerminologyCapabilities_Software = new TerminologyCapabilities_Software(
			id: await newId('TerminologyCapabilities_Software'),
			extension: extension,
			modifierExtension: modifierExtension,
			name: name,
			elementName: elementName,
			version: version,
			elementVersion: elementVersion);
	var terminologyCapabilities_SoftwareBox = await Hive.openBox<TerminologyCapabilities_Software>('TerminologyCapabilities_SoftwareBox');
	terminologyCapabilities_SoftwareBox.add(newTerminologyCapabilities_Software);
	return newTerminologyCapabilities_Software;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String version;
  Element elementVersion;

TerminologyCapabilities_Software(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.version,
    this.elementVersion
    });

  factory TerminologyCapabilities_Software.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_SoftwareFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_SoftwareToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Implementation {

	static Future<TerminologyCapabilities_Implementation> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String description,
		Element elementDescription,
		String url,
		Element elementUrl}) async {
	TerminologyCapabilities_Implementation newTerminologyCapabilities_Implementation = new TerminologyCapabilities_Implementation(
			id: await newId('TerminologyCapabilities_Implementation'),
			extension: extension,
			modifierExtension: modifierExtension,
			description: description,
			elementDescription: elementDescription,
			url: url,
			elementUrl: elementUrl);
	var terminologyCapabilities_ImplementationBox = await Hive.openBox<TerminologyCapabilities_Implementation>('TerminologyCapabilities_ImplementationBox');
	terminologyCapabilities_ImplementationBox.add(newTerminologyCapabilities_Implementation);
	return newTerminologyCapabilities_Implementation;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  String url;
  Element elementUrl;

TerminologyCapabilities_Implementation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.url,
    this.elementUrl
    });

  factory TerminologyCapabilities_Implementation.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ImplementationFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ImplementationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_CodeSystem {

	static Future<TerminologyCapabilities_CodeSystem> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String uri,
		List<TerminologyCapabilities_Version> version,
		bool subsumption,
		Element elementSubsumption}) async {
	TerminologyCapabilities_CodeSystem newTerminologyCapabilities_CodeSystem = new TerminologyCapabilities_CodeSystem(
			id: await newId('TerminologyCapabilities_CodeSystem'),
			extension: extension,
			modifierExtension: modifierExtension,
			uri: uri,
			version: version,
			subsumption: subsumption,
			elementSubsumption: elementSubsumption);
	var terminologyCapabilities_CodeSystemBox = await Hive.openBox<TerminologyCapabilities_CodeSystem>('TerminologyCapabilities_CodeSystemBox');
	terminologyCapabilities_CodeSystemBox.add(newTerminologyCapabilities_CodeSystem);
	return newTerminologyCapabilities_CodeSystem;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String uri;
  List<TerminologyCapabilities_Version> version;
  bool subsumption;
  Element elementSubsumption;

TerminologyCapabilities_CodeSystem(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.uri,
    this.version,
    this.subsumption,
    this.elementSubsumption
    });

  factory TerminologyCapabilities_CodeSystem.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_CodeSystemFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_CodeSystemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Version {

	static Future<TerminologyCapabilities_Version> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String code,
		Element elementCode,
		bool isDefault,
		Element elementIsDefault,
		bool compositional,
		Element elementCompositional,
		List<String> language,
		List<Element> elementLanguage,
		List<TerminologyCapabilities_Filter> filter,
		List<String> property,
		List<Element> elementProperty}) async {
	TerminologyCapabilities_Version newTerminologyCapabilities_Version = new TerminologyCapabilities_Version(
			id: await newId('TerminologyCapabilities_Version'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			elementCode: elementCode,
			isDefault: isDefault,
			elementIsDefault: elementIsDefault,
			compositional: compositional,
			elementCompositional: elementCompositional,
			language: language,
			elementLanguage: elementLanguage,
			filter: filter,
			property: property,
			elementProperty: elementProperty);
	var terminologyCapabilities_VersionBox = await Hive.openBox<TerminologyCapabilities_Version>('TerminologyCapabilities_VersionBox');
	terminologyCapabilities_VersionBox.add(newTerminologyCapabilities_Version);
	return newTerminologyCapabilities_Version;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  bool isDefault;
  Element elementIsDefault;
  bool compositional;
  Element elementCompositional;
  List<String> language;
  List<Element> elementLanguage;
  List<TerminologyCapabilities_Filter> filter;
  List<String> property;
  List<Element> elementProperty;

TerminologyCapabilities_Version(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.isDefault,
    this.elementIsDefault,
    this.compositional,
    this.elementCompositional,
    this.language,
    this.elementLanguage,
    this.filter,
    this.property,
    this.elementProperty
    });

  factory TerminologyCapabilities_Version.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_VersionFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_VersionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Filter {

	static Future<TerminologyCapabilities_Filter> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String code,
		Element elementCode,
		List<String> op,
		List<Element> elementOp}) async {
	TerminologyCapabilities_Filter newTerminologyCapabilities_Filter = new TerminologyCapabilities_Filter(
			id: await newId('TerminologyCapabilities_Filter'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			elementCode: elementCode,
			op: op,
			elementOp: elementOp);
	var terminologyCapabilities_FilterBox = await Hive.openBox<TerminologyCapabilities_Filter>('TerminologyCapabilities_FilterBox');
	terminologyCapabilities_FilterBox.add(newTerminologyCapabilities_Filter);
	return newTerminologyCapabilities_Filter;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  List<String> op;
  List<Element> elementOp;

TerminologyCapabilities_Filter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.op,
    this.elementOp
    });

  factory TerminologyCapabilities_Filter.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_FilterFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_FilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Expansion {

	static Future<TerminologyCapabilities_Expansion> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		bool hierarchical,
		Element elementHierarchical,
		bool paging,
		Element elementPaging,
		bool incomplete,
		Element elementIncomplete,
		List<TerminologyCapabilities_Parameter> parameter,
		String textFilter,
		Element elementTextFilter}) async {
	TerminologyCapabilities_Expansion newTerminologyCapabilities_Expansion = new TerminologyCapabilities_Expansion(
			id: await newId('TerminologyCapabilities_Expansion'),
			extension: extension,
			modifierExtension: modifierExtension,
			hierarchical: hierarchical,
			elementHierarchical: elementHierarchical,
			paging: paging,
			elementPaging: elementPaging,
			incomplete: incomplete,
			elementIncomplete: elementIncomplete,
			parameter: parameter,
			textFilter: textFilter,
			elementTextFilter: elementTextFilter);
	var terminologyCapabilities_ExpansionBox = await Hive.openBox<TerminologyCapabilities_Expansion>('TerminologyCapabilities_ExpansionBox');
	terminologyCapabilities_ExpansionBox.add(newTerminologyCapabilities_Expansion);
	return newTerminologyCapabilities_Expansion;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool hierarchical;
  Element elementHierarchical;
  bool paging;
  Element elementPaging;
  bool incomplete;
  Element elementIncomplete;
  List<TerminologyCapabilities_Parameter> parameter;
  String textFilter;
  Element elementTextFilter;

TerminologyCapabilities_Expansion(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.hierarchical,
    this.elementHierarchical,
    this.paging,
    this.elementPaging,
    this.incomplete,
    this.elementIncomplete,
    this.parameter,
    this.textFilter,
    this.elementTextFilter
    });

  factory TerminologyCapabilities_Expansion.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ExpansionFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ExpansionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Parameter {

	static Future<TerminologyCapabilities_Parameter> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String name,
		Element elementName,
		String documentation,
		Element elementDocumentation}) async {
	TerminologyCapabilities_Parameter newTerminologyCapabilities_Parameter = new TerminologyCapabilities_Parameter(
			id: await newId('TerminologyCapabilities_Parameter'),
			extension: extension,
			modifierExtension: modifierExtension,
			name: name,
			elementName: elementName,
			documentation: documentation,
			elementDocumentation: elementDocumentation);
	var terminologyCapabilities_ParameterBox = await Hive.openBox<TerminologyCapabilities_Parameter>('TerminologyCapabilities_ParameterBox');
	terminologyCapabilities_ParameterBox.add(newTerminologyCapabilities_Parameter);
	return newTerminologyCapabilities_Parameter;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String documentation;
  Element elementDocumentation;

TerminologyCapabilities_Parameter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.documentation,
    this.elementDocumentation
    });

  factory TerminologyCapabilities_Parameter.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_ValidateCode {

	static Future<TerminologyCapabilities_ValidateCode> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		bool translations,
		Element elementTranslations}) async {
	TerminologyCapabilities_ValidateCode newTerminologyCapabilities_ValidateCode = new TerminologyCapabilities_ValidateCode(
			id: await newId('TerminologyCapabilities_ValidateCode'),
			extension: extension,
			modifierExtension: modifierExtension,
			translations: translations,
			elementTranslations: elementTranslations);
	var terminologyCapabilities_ValidateCodeBox = await Hive.openBox<TerminologyCapabilities_ValidateCode>('TerminologyCapabilities_ValidateCodeBox');
	terminologyCapabilities_ValidateCodeBox.add(newTerminologyCapabilities_ValidateCode);
	return newTerminologyCapabilities_ValidateCode;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool translations;
  Element elementTranslations;

TerminologyCapabilities_ValidateCode(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.translations,
    this.elementTranslations
    });

  factory TerminologyCapabilities_ValidateCode.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ValidateCodeFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ValidateCodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Translation {

	static Future<TerminologyCapabilities_Translation> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		bool needsMap,
		Element elementNeedsMap}) async {
	TerminologyCapabilities_Translation newTerminologyCapabilities_Translation = new TerminologyCapabilities_Translation(
			id: await newId('TerminologyCapabilities_Translation'),
			extension: extension,
			modifierExtension: modifierExtension,
			needsMap: needsMap,
			elementNeedsMap: elementNeedsMap);
	var terminologyCapabilities_TranslationBox = await Hive.openBox<TerminologyCapabilities_Translation>('TerminologyCapabilities_TranslationBox');
	terminologyCapabilities_TranslationBox.add(newTerminologyCapabilities_Translation);
	return newTerminologyCapabilities_Translation;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool needsMap;
  Element elementNeedsMap;

TerminologyCapabilities_Translation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.needsMap,
    this.elementNeedsMap
    });

  factory TerminologyCapabilities_Translation.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_TranslationFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_TranslationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Closure {

	static Future<TerminologyCapabilities_Closure> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		bool translation,
		Element elementTranslation}) async {
	TerminologyCapabilities_Closure newTerminologyCapabilities_Closure = new TerminologyCapabilities_Closure(
			id: await newId('TerminologyCapabilities_Closure'),
			extension: extension,
			modifierExtension: modifierExtension,
			translation: translation,
			elementTranslation: elementTranslation);
	var terminologyCapabilities_ClosureBox = await Hive.openBox<TerminologyCapabilities_Closure>('TerminologyCapabilities_ClosureBox');
	terminologyCapabilities_ClosureBox.add(newTerminologyCapabilities_Closure);
	return newTerminologyCapabilities_Closure;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool translation;
  Element elementTranslation;

TerminologyCapabilities_Closure(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.translation,
    this.elementTranslation
    });

  factory TerminologyCapabilities_Closure.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ClosureFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ClosureToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TerminologyCapabilitiesAdapter
    extends TypeAdapter<TerminologyCapabilities> {
  @override
  final typeId = 196;

  @override
  TerminologyCapabilities read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TerminologyCapabilities(
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
      title: fields[17] as String,
      elementTitle: fields[18] as Element,
      status: fields[19] as String,
      elementStatus: fields[20] as Element,
      experimental: fields[21] as bool,
      elementExperimental: fields[22] as Element,
      date: fields[23] as DateTime,
      elementDate: fields[24] as Element,
      publisher: fields[25] as String,
      elementPublisher: fields[26] as Element,
      contact: (fields[27] as List)?.cast<ContactDetail>(),
      description: fields[28] as String,
      elementDescription: fields[29] as Element,
      useContext: (fields[30] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[31] as List)?.cast<CodeableConcept>(),
      purpose: fields[32] as String,
      elementPurpose: fields[33] as Element,
      copyright: fields[34] as String,
      elementCopyright: fields[35] as Element,
      kind: fields[36] as String,
      elementKind: fields[37] as Element,
      software: fields[38] as TerminologyCapabilities_Software,
      implementation: fields[39] as TerminologyCapabilities_Implementation,
      lockedDate: fields[40] as bool,
      elementLockedDate: fields[41] as Element,
      codeSystem:
          (fields[42] as List)?.cast<TerminologyCapabilities_CodeSystem>(),
      expansion: fields[43] as TerminologyCapabilities_Expansion,
      codeSearch: fields[44] as String,
      elementCodeSearch: fields[45] as Element,
      validateCode: fields[46] as TerminologyCapabilities_ValidateCode,
      translation: fields[47] as TerminologyCapabilities_Translation,
      closure: fields[48] as TerminologyCapabilities_Closure,
    );
  }

  @override
  void write(BinaryWriter writer, TerminologyCapabilities obj) {
    writer
      ..writeByte(49)
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
      ..write(obj.title)
      ..writeByte(18)
      ..write(obj.elementTitle)
      ..writeByte(19)
      ..write(obj.status)
      ..writeByte(20)
      ..write(obj.elementStatus)
      ..writeByte(21)
      ..write(obj.experimental)
      ..writeByte(22)
      ..write(obj.elementExperimental)
      ..writeByte(23)
      ..write(obj.date)
      ..writeByte(24)
      ..write(obj.elementDate)
      ..writeByte(25)
      ..write(obj.publisher)
      ..writeByte(26)
      ..write(obj.elementPublisher)
      ..writeByte(27)
      ..write(obj.contact)
      ..writeByte(28)
      ..write(obj.description)
      ..writeByte(29)
      ..write(obj.elementDescription)
      ..writeByte(30)
      ..write(obj.useContext)
      ..writeByte(31)
      ..write(obj.jurisdiction)
      ..writeByte(32)
      ..write(obj.purpose)
      ..writeByte(33)
      ..write(obj.elementPurpose)
      ..writeByte(34)
      ..write(obj.copyright)
      ..writeByte(35)
      ..write(obj.elementCopyright)
      ..writeByte(36)
      ..write(obj.kind)
      ..writeByte(37)
      ..write(obj.elementKind)
      ..writeByte(38)
      ..write(obj.software)
      ..writeByte(39)
      ..write(obj.implementation)
      ..writeByte(40)
      ..write(obj.lockedDate)
      ..writeByte(41)
      ..write(obj.elementLockedDate)
      ..writeByte(42)
      ..write(obj.codeSystem)
      ..writeByte(43)
      ..write(obj.expansion)
      ..writeByte(44)
      ..write(obj.codeSearch)
      ..writeByte(45)
      ..write(obj.elementCodeSearch)
      ..writeByte(46)
      ..write(obj.validateCode)
      ..writeByte(47)
      ..write(obj.translation)
      ..writeByte(48)
      ..write(obj.closure);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TerminologyCapabilities _$TerminologyCapabilitiesFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities(
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
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    kind: json['kind'] as String,
    elementKind: json['elementKind'] == null
        ? null
        : Element.fromJson(json['elementKind'] as Map<String, dynamic>),
    software: json['software'] == null
        ? null
        : TerminologyCapabilities_Software.fromJson(
            json['software'] as Map<String, dynamic>),
    implementation: json['implementation'] == null
        ? null
        : TerminologyCapabilities_Implementation.fromJson(
            json['implementation'] as Map<String, dynamic>),
    lockedDate: json['lockedDate'] as bool,
    elementLockedDate: json['elementLockedDate'] == null
        ? null
        : Element.fromJson(json['elementLockedDate'] as Map<String, dynamic>),
    codeSystem: (json['codeSystem'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_CodeSystem.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    expansion: json['expansion'] == null
        ? null
        : TerminologyCapabilities_Expansion.fromJson(
            json['expansion'] as Map<String, dynamic>),
    codeSearch: json['codeSearch'] as String,
    elementCodeSearch: json['elementCodeSearch'] == null
        ? null
        : Element.fromJson(json['elementCodeSearch'] as Map<String, dynamic>),
    validateCode: json['validateCode'] == null
        ? null
        : TerminologyCapabilities_ValidateCode.fromJson(
            json['validateCode'] as Map<String, dynamic>),
    translation: json['translation'] == null
        ? null
        : TerminologyCapabilities_Translation.fromJson(
            json['translation'] as Map<String, dynamic>),
    closure: json['closure'] == null
        ? null
        : TerminologyCapabilities_Closure.fromJson(
            json['closure'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilitiesToJson(
        TerminologyCapabilities instance) =>
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
      'kind': instance.kind,
      'elementKind': instance.elementKind?.toJson(),
      'software': instance.software?.toJson(),
      'implementation': instance.implementation?.toJson(),
      'lockedDate': instance.lockedDate,
      'elementLockedDate': instance.elementLockedDate?.toJson(),
      'codeSystem': instance.codeSystem?.map((e) => e?.toJson())?.toList(),
      'expansion': instance.expansion?.toJson(),
      'codeSearch': instance.codeSearch,
      'elementCodeSearch': instance.elementCodeSearch?.toJson(),
      'validateCode': instance.validateCode?.toJson(),
      'translation': instance.translation?.toJson(),
      'closure': instance.closure?.toJson(),
    };

TerminologyCapabilities_Software _$TerminologyCapabilities_SoftwareFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Software(
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
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_SoftwareToJson(
        TerminologyCapabilities_Software instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
    };

TerminologyCapabilities_Implementation
    _$TerminologyCapabilities_ImplementationFromJson(
        Map<String, dynamic> json) {
  return TerminologyCapabilities_Implementation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ImplementationToJson(
        TerminologyCapabilities_Implementation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
    };

TerminologyCapabilities_CodeSystem _$TerminologyCapabilities_CodeSystemFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_CodeSystem(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    uri: json['uri'] as String,
    version: (json['version'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_Version.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    subsumption: json['subsumption'] as bool,
    elementSubsumption: json['elementSubsumption'] == null
        ? null
        : Element.fromJson(json['elementSubsumption'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_CodeSystemToJson(
        TerminologyCapabilities_CodeSystem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'uri': instance.uri,
      'version': instance.version?.map((e) => e?.toJson())?.toList(),
      'subsumption': instance.subsumption,
      'elementSubsumption': instance.elementSubsumption?.toJson(),
    };

TerminologyCapabilities_Version _$TerminologyCapabilities_VersionFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Version(
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
    isDefault: json['isDefault'] as bool,
    elementIsDefault: json['elementIsDefault'] == null
        ? null
        : Element.fromJson(json['elementIsDefault'] as Map<String, dynamic>),
    compositional: json['compositional'] as bool,
    elementCompositional: json['elementCompositional'] == null
        ? null
        : Element.fromJson(
            json['elementCompositional'] as Map<String, dynamic>),
    language: (json['language'] as List)?.map((e) => e as String)?.toList(),
    elementLanguage: (json['elementLanguage'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    filter: (json['filter'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_Filter.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    property: (json['property'] as List)?.map((e) => e as String)?.toList(),
    elementProperty: (json['elementProperty'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_VersionToJson(
        TerminologyCapabilities_Version instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'isDefault': instance.isDefault,
      'elementIsDefault': instance.elementIsDefault?.toJson(),
      'compositional': instance.compositional,
      'elementCompositional': instance.elementCompositional?.toJson(),
      'language': instance.language,
      'elementLanguage':
          instance.elementLanguage?.map((e) => e?.toJson())?.toList(),
      'filter': instance.filter?.map((e) => e?.toJson())?.toList(),
      'property': instance.property,
      'elementProperty':
          instance.elementProperty?.map((e) => e?.toJson())?.toList(),
    };

TerminologyCapabilities_Filter _$TerminologyCapabilities_FilterFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Filter(
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
    op: (json['op'] as List)?.map((e) => e as String)?.toList(),
    elementOp: (json['elementOp'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_FilterToJson(
        TerminologyCapabilities_Filter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'op': instance.op,
      'elementOp': instance.elementOp?.map((e) => e?.toJson())?.toList(),
    };

TerminologyCapabilities_Expansion _$TerminologyCapabilities_ExpansionFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Expansion(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    hierarchical: json['hierarchical'] as bool,
    elementHierarchical: json['elementHierarchical'] == null
        ? null
        : Element.fromJson(json['elementHierarchical'] as Map<String, dynamic>),
    paging: json['paging'] as bool,
    elementPaging: json['elementPaging'] == null
        ? null
        : Element.fromJson(json['elementPaging'] as Map<String, dynamic>),
    incomplete: json['incomplete'] as bool,
    elementIncomplete: json['elementIncomplete'] == null
        ? null
        : Element.fromJson(json['elementIncomplete'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_Parameter.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    textFilter: json['textFilter'] as String,
    elementTextFilter: json['elementTextFilter'] == null
        ? null
        : Element.fromJson(json['elementTextFilter'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ExpansionToJson(
        TerminologyCapabilities_Expansion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'hierarchical': instance.hierarchical,
      'elementHierarchical': instance.elementHierarchical?.toJson(),
      'paging': instance.paging,
      'elementPaging': instance.elementPaging?.toJson(),
      'incomplete': instance.incomplete,
      'elementIncomplete': instance.elementIncomplete?.toJson(),
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
      'textFilter': instance.textFilter,
      'elementTextFilter': instance.elementTextFilter?.toJson(),
    };

TerminologyCapabilities_Parameter _$TerminologyCapabilities_ParameterFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Parameter(
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
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ParameterToJson(
        TerminologyCapabilities_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
    };

TerminologyCapabilities_ValidateCode
    _$TerminologyCapabilities_ValidateCodeFromJson(Map<String, dynamic> json) {
  return TerminologyCapabilities_ValidateCode(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    translations: json['translations'] as bool,
    elementTranslations: json['elementTranslations'] == null
        ? null
        : Element.fromJson(json['elementTranslations'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ValidateCodeToJson(
        TerminologyCapabilities_ValidateCode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'translations': instance.translations,
      'elementTranslations': instance.elementTranslations?.toJson(),
    };

TerminologyCapabilities_Translation
    _$TerminologyCapabilities_TranslationFromJson(Map<String, dynamic> json) {
  return TerminologyCapabilities_Translation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    needsMap: json['needsMap'] as bool,
    elementNeedsMap: json['elementNeedsMap'] == null
        ? null
        : Element.fromJson(json['elementNeedsMap'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_TranslationToJson(
        TerminologyCapabilities_Translation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'needsMap': instance.needsMap,
      'elementNeedsMap': instance.elementNeedsMap?.toJson(),
    };

TerminologyCapabilities_Closure _$TerminologyCapabilities_ClosureFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Closure(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    translation: json['translation'] as bool,
    elementTranslation: json['elementTranslation'] == null
        ? null
        : Element.fromJson(json['elementTranslation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ClosureToJson(
        TerminologyCapabilities_Closure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'translation': instance.translation,
      'elementTranslation': instance.elementTranslation?.toJson(),
    };
