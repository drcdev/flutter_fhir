import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
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
@HiveType(typeId: 73)
class ChargeItemDefinition {

	static Future<ChargeItemDefinition> newInstance({
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
		String title,
		Element elementTitle,
		List<String> derivedFromUri,
		List<Element> elementDerivedFromUri,
		List<String> partOf,
		List<String> replaces,
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
		String copyright,
		Element elementCopyright,
		String approvalDate,
		Element elementApprovalDate,
		String lastReviewDate,
		Element elementLastReviewDate,
		Period effectivePeriod,
		CodeableConcept code,
		List<Reference> instance,
		List<ChargeItemDefinition_Applicability> applicability,
		List<ChargeItemDefinition_PropertyGroup> propertyGroup}) async {
	ChargeItemDefinition newChargeItemDefinition = new ChargeItemDefinition(
			id: await newId('ChargeItemDefinition'),
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
			title: title,
			elementTitle: elementTitle,
			derivedFromUri: derivedFromUri,
			elementDerivedFromUri: elementDerivedFromUri,
			partOf: partOf,
			replaces: replaces,
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
			copyright: copyright,
			elementCopyright: elementCopyright,
			approvalDate: approvalDate,
			elementApprovalDate: elementApprovalDate,
			lastReviewDate: lastReviewDate,
			elementLastReviewDate: elementLastReviewDate,
			effectivePeriod: effectivePeriod,
			code: code,
			instance: instance,
			applicability: applicability,
			propertyGroup: propertyGroup);
	var chargeItemDefinitionBox = await Hive.openBox<ChargeItemDefinition>('ChargeItemDefinitionBox');
	chargeItemDefinitionBox.put(newChargeItemDefinition.id, newChargeItemDefinition);
	return newChargeItemDefinition;
}
  @HiveField(0)
  final String resourceType= 'ChargeItemDefinition';
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
  String title;
  @HiveField(17)
  Element elementTitle;
  @HiveField(18)
  List<String> derivedFromUri;
  @HiveField(19)
  List<Element> elementDerivedFromUri;
  @HiveField(20)
  List<String> partOf;
  @HiveField(21)
  List<String> replaces;
  @HiveField(22)
  String status; // <code> enum: draft/active/retired/unknown;
  @HiveField(23)
  Element elementStatus;
  @HiveField(24)
  bool experimental;
  @HiveField(25)
  Element elementExperimental;
  @HiveField(26)
  DateTime date;
  @HiveField(27)
  Element elementDate;
  @HiveField(28)
  String publisher;
  @HiveField(29)
  Element elementPublisher;
  @HiveField(30)
  List<ContactDetail> contact;
  @HiveField(31)
  String description;
  @HiveField(32)
  Element elementDescription;
  @HiveField(33)
  List<UsageContext> useContext;
  @HiveField(34)
  List<CodeableConcept> jurisdiction;
  @HiveField(35)
  String copyright;
  @HiveField(36)
  Element elementCopyright;
  @HiveField(37)
  String approvalDate;
  @HiveField(38)
  Element elementApprovalDate;
  @HiveField(39)
  String lastReviewDate;
  @HiveField(40)
  Element elementLastReviewDate;
  @HiveField(41)
  Period effectivePeriod;
  @HiveField(42)
  CodeableConcept code;
  @HiveField(43)
  List<Reference> instance;
  @HiveField(44)
  List<ChargeItemDefinition_Applicability> applicability;
  @HiveField(45)
  List<ChargeItemDefinition_PropertyGroup> propertyGroup;

ChargeItemDefinition(
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
    this.title,
    this.elementTitle,
    this.derivedFromUri,
    this.elementDerivedFromUri,
    this.partOf,
    this.replaces,
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
    this.copyright,
    this.elementCopyright,
    this.approvalDate,
    this.elementApprovalDate,
    this.lastReviewDate,
    this.elementLastReviewDate,
    this.effectivePeriod,
    this.code,
    this.instance,
    this.applicability,
    this.propertyGroup
    });

  factory ChargeItemDefinition.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition_Applicability {

	static Future<ChargeItemDefinition_Applicability> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String description,
		Element elementDescription,
		String language,
		Element elementLanguage,
		String expression,
		Element elementExpression}) async {
	ChargeItemDefinition_Applicability newChargeItemDefinition_Applicability = new ChargeItemDefinition_Applicability(
			id: await newId('ChargeItemDefinition_Applicability'),
			extension: extension,
			modifierExtension: modifierExtension,
			description: description,
			elementDescription: elementDescription,
			language: language,
			elementLanguage: elementLanguage,
			expression: expression,
			elementExpression: elementExpression);
	var chargeItemDefinition_ApplicabilityBox = await Hive.openBox<ChargeItemDefinition_Applicability>('ChargeItemDefinition_ApplicabilityBox');
	chargeItemDefinition_ApplicabilityBox.put(newChargeItemDefinition_Applicability.id, newChargeItemDefinition_Applicability);
	return newChargeItemDefinition_Applicability;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  String language;
  Element elementLanguage;
  String expression;
  Element elementExpression;

ChargeItemDefinition_Applicability(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.language,
    this.elementLanguage,
    this.expression,
    this.elementExpression
    });

  factory ChargeItemDefinition_Applicability.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinition_ApplicabilityFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemDefinition_ApplicabilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition_PropertyGroup {

	static Future<ChargeItemDefinition_PropertyGroup> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<ChargeItemDefinition_Applicability> applicability,
		List<ChargeItemDefinition_PriceComponent> priceComponent}) async {
	ChargeItemDefinition_PropertyGroup newChargeItemDefinition_PropertyGroup = new ChargeItemDefinition_PropertyGroup(
			id: await newId('ChargeItemDefinition_PropertyGroup'),
			extension: extension,
			modifierExtension: modifierExtension,
			applicability: applicability,
			priceComponent: priceComponent);
	var chargeItemDefinition_PropertyGroupBox = await Hive.openBox<ChargeItemDefinition_PropertyGroup>('ChargeItemDefinition_PropertyGroupBox');
	chargeItemDefinition_PropertyGroupBox.put(newChargeItemDefinition_PropertyGroup.id, newChargeItemDefinition_PropertyGroup);
	return newChargeItemDefinition_PropertyGroup;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<ChargeItemDefinition_Applicability> applicability;
  List<ChargeItemDefinition_PriceComponent> priceComponent;

ChargeItemDefinition_PropertyGroup(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.applicability,
    this.priceComponent
    });

  factory ChargeItemDefinition_PropertyGroup.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinition_PropertyGroupFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemDefinition_PropertyGroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition_PriceComponent {

	static Future<ChargeItemDefinition_PriceComponent> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String type,
		Element elementType,
		CodeableConcept code,
		double factor,
		Element elementFactor,
		Money amount}) async {
	ChargeItemDefinition_PriceComponent newChargeItemDefinition_PriceComponent = new ChargeItemDefinition_PriceComponent(
			id: await newId('ChargeItemDefinition_PriceComponent'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			elementType: elementType,
			code: code,
			factor: factor,
			elementFactor: elementFactor,
			amount: amount);
	var chargeItemDefinition_PriceComponentBox = await Hive.openBox<ChargeItemDefinition_PriceComponent>('ChargeItemDefinition_PriceComponentBox');
	chargeItemDefinition_PriceComponentBox.put(newChargeItemDefinition_PriceComponent.id, newChargeItemDefinition_PriceComponent);
	return newChargeItemDefinition_PriceComponent;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element elementType;
  CodeableConcept code;
  double factor;
  Element elementFactor;
  Money amount;

ChargeItemDefinition_PriceComponent(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.code,
    this.factor,
    this.elementFactor,
    this.amount
    });

  factory ChargeItemDefinition_PriceComponent.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinition_PriceComponentFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemDefinition_PriceComponentToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChargeItemDefinitionAdapter extends TypeAdapter<ChargeItemDefinition> {
  @override
  final typeId = 73;

  @override
  ChargeItemDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChargeItemDefinition(
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
      title: fields[16] as String,
      elementTitle: fields[17] as Element,
      derivedFromUri: (fields[18] as List)?.cast<String>(),
      elementDerivedFromUri: (fields[19] as List)?.cast<Element>(),
      partOf: (fields[20] as List)?.cast<String>(),
      replaces: (fields[21] as List)?.cast<String>(),
      status: fields[22] as String,
      elementStatus: fields[23] as Element,
      experimental: fields[24] as bool,
      elementExperimental: fields[25] as Element,
      date: fields[26] as DateTime,
      elementDate: fields[27] as Element,
      publisher: fields[28] as String,
      elementPublisher: fields[29] as Element,
      contact: (fields[30] as List)?.cast<ContactDetail>(),
      description: fields[31] as String,
      elementDescription: fields[32] as Element,
      useContext: (fields[33] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[34] as List)?.cast<CodeableConcept>(),
      copyright: fields[35] as String,
      elementCopyright: fields[36] as Element,
      approvalDate: fields[37] as String,
      elementApprovalDate: fields[38] as Element,
      lastReviewDate: fields[39] as String,
      elementLastReviewDate: fields[40] as Element,
      effectivePeriod: fields[41] as Period,
      code: fields[42] as CodeableConcept,
      instance: (fields[43] as List)?.cast<Reference>(),
      applicability:
          (fields[44] as List)?.cast<ChargeItemDefinition_Applicability>(),
      propertyGroup:
          (fields[45] as List)?.cast<ChargeItemDefinition_PropertyGroup>(),
    );
  }

  @override
  void write(BinaryWriter writer, ChargeItemDefinition obj) {
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
      ..write(obj.title)
      ..writeByte(17)
      ..write(obj.elementTitle)
      ..writeByte(18)
      ..write(obj.derivedFromUri)
      ..writeByte(19)
      ..write(obj.elementDerivedFromUri)
      ..writeByte(20)
      ..write(obj.partOf)
      ..writeByte(21)
      ..write(obj.replaces)
      ..writeByte(22)
      ..write(obj.status)
      ..writeByte(23)
      ..write(obj.elementStatus)
      ..writeByte(24)
      ..write(obj.experimental)
      ..writeByte(25)
      ..write(obj.elementExperimental)
      ..writeByte(26)
      ..write(obj.date)
      ..writeByte(27)
      ..write(obj.elementDate)
      ..writeByte(28)
      ..write(obj.publisher)
      ..writeByte(29)
      ..write(obj.elementPublisher)
      ..writeByte(30)
      ..write(obj.contact)
      ..writeByte(31)
      ..write(obj.description)
      ..writeByte(32)
      ..write(obj.elementDescription)
      ..writeByte(33)
      ..write(obj.useContext)
      ..writeByte(34)
      ..write(obj.jurisdiction)
      ..writeByte(35)
      ..write(obj.copyright)
      ..writeByte(36)
      ..write(obj.elementCopyright)
      ..writeByte(37)
      ..write(obj.approvalDate)
      ..writeByte(38)
      ..write(obj.elementApprovalDate)
      ..writeByte(39)
      ..write(obj.lastReviewDate)
      ..writeByte(40)
      ..write(obj.elementLastReviewDate)
      ..writeByte(41)
      ..write(obj.effectivePeriod)
      ..writeByte(42)
      ..write(obj.code)
      ..writeByte(43)
      ..write(obj.instance)
      ..writeByte(44)
      ..write(obj.applicability)
      ..writeByte(45)
      ..write(obj.propertyGroup);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeItemDefinition _$ChargeItemDefinitionFromJson(Map<String, dynamic> json) {
  return ChargeItemDefinition(
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
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    derivedFromUri:
        (json['derivedFromUri'] as List)?.map((e) => e as String)?.toList(),
    elementDerivedFromUri: (json['elementDerivedFromUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: (json['partOf'] as List)?.map((e) => e as String)?.toList(),
    replaces: (json['replaces'] as List)?.map((e) => e as String)?.toList(),
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
    approvalDate: json['approvalDate'] as String,
    elementApprovalDate: json['elementApprovalDate'] == null
        ? null
        : Element.fromJson(json['elementApprovalDate'] as Map<String, dynamic>),
    lastReviewDate: json['lastReviewDate'] as String,
    elementLastReviewDate: json['elementLastReviewDate'] == null
        ? null
        : Element.fromJson(
            json['elementLastReviewDate'] as Map<String, dynamic>),
    effectivePeriod: json['effectivePeriod'] == null
        ? null
        : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    instance: (json['instance'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    applicability: (json['applicability'] as List)
        ?.map((e) => e == null
            ? null
            : ChargeItemDefinition_Applicability.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    propertyGroup: (json['propertyGroup'] as List)
        ?.map((e) => e == null
            ? null
            : ChargeItemDefinition_PropertyGroup.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ChargeItemDefinitionToJson(
        ChargeItemDefinition instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'derivedFromUri': instance.derivedFromUri,
      'elementDerivedFromUri':
          instance.elementDerivedFromUri?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf,
      'replaces': instance.replaces,
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
      'approvalDate': instance.approvalDate,
      'elementApprovalDate': instance.elementApprovalDate?.toJson(),
      'lastReviewDate': instance.lastReviewDate,
      'elementLastReviewDate': instance.elementLastReviewDate?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'code': instance.code?.toJson(),
      'instance': instance.instance?.map((e) => e?.toJson())?.toList(),
      'applicability':
          instance.applicability?.map((e) => e?.toJson())?.toList(),
      'propertyGroup':
          instance.propertyGroup?.map((e) => e?.toJson())?.toList(),
    };

ChargeItemDefinition_Applicability _$ChargeItemDefinition_ApplicabilityFromJson(
    Map<String, dynamic> json) {
  return ChargeItemDefinition_Applicability(
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
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChargeItemDefinition_ApplicabilityToJson(
        ChargeItemDefinition_Applicability instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
    };

ChargeItemDefinition_PropertyGroup _$ChargeItemDefinition_PropertyGroupFromJson(
    Map<String, dynamic> json) {
  return ChargeItemDefinition_PropertyGroup(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    applicability: (json['applicability'] as List)
        ?.map((e) => e == null
            ? null
            : ChargeItemDefinition_Applicability.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    priceComponent: (json['priceComponent'] as List)
        ?.map((e) => e == null
            ? null
            : ChargeItemDefinition_PriceComponent.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ChargeItemDefinition_PropertyGroupToJson(
        ChargeItemDefinition_PropertyGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'applicability':
          instance.applicability?.map((e) => e?.toJson())?.toList(),
      'priceComponent':
          instance.priceComponent?.map((e) => e?.toJson())?.toList(),
    };

ChargeItemDefinition_PriceComponent
    _$ChargeItemDefinition_PriceComponentFromJson(Map<String, dynamic> json) {
  return ChargeItemDefinition_PriceComponent(
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
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    elementFactor: json['elementFactor'] == null
        ? null
        : Element.fromJson(json['elementFactor'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChargeItemDefinition_PriceComponentToJson(
        ChargeItemDefinition_PriceComponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'code': instance.code?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'amount': instance.amount?.toJson(),
    };
