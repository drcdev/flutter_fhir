import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 121)
class InsurancePlan {

	static Future<InsurancePlan> newInstance({
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
		List<Identifier> identifier,
		String status,
		Element elementStatus,
		List<CodeableConcept> type,
		String name,
		Element elementName,
		List<String> alias,
		List<Element> elementAlias,
		Period period,
		Reference ownedBy,
		Reference administeredBy,
		List<Reference> coverageArea,
		List<InsurancePlan_Contact> contact,
		List<Reference> endpoint,
		List<Reference> network,
		List<InsurancePlan_Coverage> coverage,
		List<InsurancePlan_Plan> plan}) async {
	InsurancePlan newInsurancePlan = new InsurancePlan(
			id: await newId('InsurancePlan'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			status: status,
			elementStatus: elementStatus,
			type: type,
			name: name,
			elementName: elementName,
			alias: alias,
			elementAlias: elementAlias,
			period: period,
			ownedBy: ownedBy,
			administeredBy: administeredBy,
			coverageArea: coverageArea,
			contact: contact,
			endpoint: endpoint,
			network: network,
			coverage: coverage,
			plan: plan);
	var insurancePlanBox = await Hive.openBox<InsurancePlan>('InsurancePlanBox');
	insurancePlanBox.put(newInsurancePlan.id, newInsurancePlan);
	return newInsurancePlan;
}
  @HiveField(0)
  final String resourceType= 'InsurancePlan';
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
  List<Identifier> identifier;
  @HiveField(12)
  String status; // <code> enum: draft/active/retired/unknown;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  List<CodeableConcept> type;
  @HiveField(15)
  String name;
  @HiveField(16)
  Element elementName;
  @HiveField(17)
  List<String> alias;
  @HiveField(18)
  List<Element> elementAlias;
  @HiveField(19)
  Period period;
  @HiveField(20)
  Reference ownedBy;
  @HiveField(21)
  Reference administeredBy;
  @HiveField(22)
  List<Reference> coverageArea;
  @HiveField(23)
  List<InsurancePlan_Contact> contact;
  @HiveField(24)
  List<Reference> endpoint;
  @HiveField(25)
  List<Reference> network;
  @HiveField(26)
  List<InsurancePlan_Coverage> coverage;
  @HiveField(27)
  List<InsurancePlan_Plan> plan;

InsurancePlan(
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
    this.identifier,
    this.status,
    this.elementStatus,
    this.type,
    this.name,
    this.elementName,
    this.alias,
    this.elementAlias,
    this.period,
    this.ownedBy,
    this.administeredBy,
    this.coverageArea,
    this.contact,
    this.endpoint,
    this.network,
    this.coverage,
    this.plan
    });

  factory InsurancePlan.fromJson(Map<String, dynamic> json) => _$InsurancePlanFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlanToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Contact {

	static Future<InsurancePlan_Contact> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept purpose,
		HumanName name,
		List<ContactPoint> telecom,
		Address address}) async {
	InsurancePlan_Contact newInsurancePlan_Contact = new InsurancePlan_Contact(
			id: await newId('InsurancePlan_Contact'),
			extension: extension,
			modifierExtension: modifierExtension,
			purpose: purpose,
			name: name,
			telecom: telecom,
			address: address);
	var insurancePlan_ContactBox = await Hive.openBox<InsurancePlan_Contact>('InsurancePlan_ContactBox');
	insurancePlan_ContactBox.put(newInsurancePlan_Contact.id, newInsurancePlan_Contact);
	return newInsurancePlan_Contact;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept purpose;
  HumanName name;
  List<ContactPoint> telecom;
  Address address;

InsurancePlan_Contact(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address
    });

  factory InsurancePlan_Contact.fromJson(Map<String, dynamic> json) => _$InsurancePlan_ContactFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_ContactToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Coverage {

	static Future<InsurancePlan_Coverage> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		List<Reference> network,
		List<InsurancePlan_Benefit> benefit}) async {
	InsurancePlan_Coverage newInsurancePlan_Coverage = new InsurancePlan_Coverage(
			id: await newId('InsurancePlan_Coverage'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			network: network,
			benefit: benefit);
	var insurancePlan_CoverageBox = await Hive.openBox<InsurancePlan_Coverage>('InsurancePlan_CoverageBox');
	insurancePlan_CoverageBox.put(newInsurancePlan_Coverage.id, newInsurancePlan_Coverage);
	return newInsurancePlan_Coverage;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<Reference> network;
  List<InsurancePlan_Benefit> benefit;

InsurancePlan_Coverage(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.network,
    @required this.benefit
    });

  factory InsurancePlan_Coverage.fromJson(Map<String, dynamic> json) => _$InsurancePlan_CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_CoverageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Benefit {

	static Future<InsurancePlan_Benefit> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		String requirement,
		Element elementRequirement,
		List<InsurancePlan_Limit> limit}) async {
	InsurancePlan_Benefit newInsurancePlan_Benefit = new InsurancePlan_Benefit(
			id: await newId('InsurancePlan_Benefit'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			requirement: requirement,
			elementRequirement: elementRequirement,
			limit: limit);
	var insurancePlan_BenefitBox = await Hive.openBox<InsurancePlan_Benefit>('InsurancePlan_BenefitBox');
	insurancePlan_BenefitBox.put(newInsurancePlan_Benefit.id, newInsurancePlan_Benefit);
	return newInsurancePlan_Benefit;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String requirement;
  Element elementRequirement;
  List<InsurancePlan_Limit> limit;

InsurancePlan_Benefit(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.requirement,
    this.elementRequirement,
    this.limit
    });

  factory InsurancePlan_Benefit.fromJson(Map<String, dynamic> json) => _$InsurancePlan_BenefitFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_BenefitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Limit {

	static Future<InsurancePlan_Limit> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Quantity value,
		CodeableConcept code}) async {
	InsurancePlan_Limit newInsurancePlan_Limit = new InsurancePlan_Limit(
			id: await newId('InsurancePlan_Limit'),
			extension: extension,
			modifierExtension: modifierExtension,
			value: value,
			code: code);
	var insurancePlan_LimitBox = await Hive.openBox<InsurancePlan_Limit>('InsurancePlan_LimitBox');
	insurancePlan_LimitBox.put(newInsurancePlan_Limit.id, newInsurancePlan_Limit);
	return newInsurancePlan_Limit;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Quantity value;
  CodeableConcept code;

InsurancePlan_Limit(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.value,
    this.code
    });

  factory InsurancePlan_Limit.fromJson(Map<String, dynamic> json) => _$InsurancePlan_LimitFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_LimitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Plan {

	static Future<InsurancePlan_Plan> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<Identifier> identifier,
		CodeableConcept type,
		List<Reference> coverageArea,
		List<Reference> network,
		List<InsurancePlan_GeneralCost> generalCost,
		List<InsurancePlan_SpecificCost> specificCost}) async {
	InsurancePlan_Plan newInsurancePlan_Plan = new InsurancePlan_Plan(
			id: await newId('InsurancePlan_Plan'),
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			type: type,
			coverageArea: coverageArea,
			network: network,
			generalCost: generalCost,
			specificCost: specificCost);
	var insurancePlan_PlanBox = await Hive.openBox<InsurancePlan_Plan>('InsurancePlan_PlanBox');
	insurancePlan_PlanBox.put(newInsurancePlan_Plan.id, newInsurancePlan_Plan);
	return newInsurancePlan_Plan;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  CodeableConcept type;
  List<Reference> coverageArea;
  List<Reference> network;
  List<InsurancePlan_GeneralCost> generalCost;
  List<InsurancePlan_SpecificCost> specificCost;

InsurancePlan_Plan(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.coverageArea,
    this.network,
    this.generalCost,
    this.specificCost
    });

  factory InsurancePlan_Plan.fromJson(Map<String, dynamic> json) => _$InsurancePlan_PlanFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_PlanToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_GeneralCost {

	static Future<InsurancePlan_GeneralCost> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		int groupSize,
		Element elementGroupSize,
		Money cost,
		String comment,
		Element elementComment}) async {
	InsurancePlan_GeneralCost newInsurancePlan_GeneralCost = new InsurancePlan_GeneralCost(
			id: await newId('InsurancePlan_GeneralCost'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			groupSize: groupSize,
			elementGroupSize: elementGroupSize,
			cost: cost,
			comment: comment,
			elementComment: elementComment);
	var insurancePlan_GeneralCostBox = await Hive.openBox<InsurancePlan_GeneralCost>('InsurancePlan_GeneralCostBox');
	insurancePlan_GeneralCostBox.put(newInsurancePlan_GeneralCost.id, newInsurancePlan_GeneralCost);
	return newInsurancePlan_GeneralCost;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  int groupSize;
  Element elementGroupSize;
  Money cost;
  String comment;
  Element elementComment;

InsurancePlan_GeneralCost(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.groupSize,
    this.elementGroupSize,
    this.cost,
    this.comment,
    this.elementComment
    });

  factory InsurancePlan_GeneralCost.fromJson(Map<String, dynamic> json) => _$InsurancePlan_GeneralCostFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_GeneralCostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_SpecificCost {

	static Future<InsurancePlan_SpecificCost> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept category,
		List<InsurancePlan_Benefit1> benefit}) async {
	InsurancePlan_SpecificCost newInsurancePlan_SpecificCost = new InsurancePlan_SpecificCost(
			id: await newId('InsurancePlan_SpecificCost'),
			extension: extension,
			modifierExtension: modifierExtension,
			category: category,
			benefit: benefit);
	var insurancePlan_SpecificCostBox = await Hive.openBox<InsurancePlan_SpecificCost>('InsurancePlan_SpecificCostBox');
	insurancePlan_SpecificCostBox.put(newInsurancePlan_SpecificCost.id, newInsurancePlan_SpecificCost);
	return newInsurancePlan_SpecificCost;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  List<InsurancePlan_Benefit1> benefit;

InsurancePlan_SpecificCost(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.category,
    this.benefit
    });

  factory InsurancePlan_SpecificCost.fromJson(Map<String, dynamic> json) => _$InsurancePlan_SpecificCostFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_SpecificCostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Benefit1 {

	static Future<InsurancePlan_Benefit1> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		List<InsurancePlan_Cost> cost}) async {
	InsurancePlan_Benefit1 newInsurancePlan_Benefit1 = new InsurancePlan_Benefit1(
			id: await newId('InsurancePlan_Benefit1'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			cost: cost);
	var insurancePlan_Benefit1Box = await Hive.openBox<InsurancePlan_Benefit1>('InsurancePlan_Benefit1Box');
	insurancePlan_Benefit1Box.put(newInsurancePlan_Benefit1.id, newInsurancePlan_Benefit1);
	return newInsurancePlan_Benefit1;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<InsurancePlan_Cost> cost;

InsurancePlan_Benefit1(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.cost
    });

  factory InsurancePlan_Benefit1.fromJson(Map<String, dynamic> json) => _$InsurancePlan_Benefit1FromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_Benefit1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Cost {

	static Future<InsurancePlan_Cost> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		CodeableConcept applicability,
		List<CodeableConcept> qualifiers,
		Quantity value}) async {
	InsurancePlan_Cost newInsurancePlan_Cost = new InsurancePlan_Cost(
			id: await newId('InsurancePlan_Cost'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			applicability: applicability,
			qualifiers: qualifiers,
			value: value);
	var insurancePlan_CostBox = await Hive.openBox<InsurancePlan_Cost>('InsurancePlan_CostBox');
	insurancePlan_CostBox.put(newInsurancePlan_Cost.id, newInsurancePlan_Cost);
	return newInsurancePlan_Cost;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  CodeableConcept applicability;
  List<CodeableConcept> qualifiers;
  Quantity value;

InsurancePlan_Cost(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.applicability,
    this.qualifiers,
    this.value
    });

  factory InsurancePlan_Cost.fromJson(Map<String, dynamic> json) => _$InsurancePlan_CostFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_CostToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InsurancePlanAdapter extends TypeAdapter<InsurancePlan> {
  @override
  final typeId = 121;

  @override
  InsurancePlan read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InsurancePlan(
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
      identifier: (fields[11] as List)?.cast<Identifier>(),
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      type: (fields[14] as List)?.cast<CodeableConcept>(),
      name: fields[15] as String,
      elementName: fields[16] as Element,
      alias: (fields[17] as List)?.cast<String>(),
      elementAlias: (fields[18] as List)?.cast<Element>(),
      period: fields[19] as Period,
      ownedBy: fields[20] as Reference,
      administeredBy: fields[21] as Reference,
      coverageArea: (fields[22] as List)?.cast<Reference>(),
      contact: (fields[23] as List)?.cast<InsurancePlan_Contact>(),
      endpoint: (fields[24] as List)?.cast<Reference>(),
      network: (fields[25] as List)?.cast<Reference>(),
      coverage: (fields[26] as List)?.cast<InsurancePlan_Coverage>(),
      plan: (fields[27] as List)?.cast<InsurancePlan_Plan>(),
    );
  }

  @override
  void write(BinaryWriter writer, InsurancePlan obj) {
    writer
      ..writeByte(28)
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
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.name)
      ..writeByte(16)
      ..write(obj.elementName)
      ..writeByte(17)
      ..write(obj.alias)
      ..writeByte(18)
      ..write(obj.elementAlias)
      ..writeByte(19)
      ..write(obj.period)
      ..writeByte(20)
      ..write(obj.ownedBy)
      ..writeByte(21)
      ..write(obj.administeredBy)
      ..writeByte(22)
      ..write(obj.coverageArea)
      ..writeByte(23)
      ..write(obj.contact)
      ..writeByte(24)
      ..write(obj.endpoint)
      ..writeByte(25)
      ..write(obj.network)
      ..writeByte(26)
      ..write(obj.coverage)
      ..writeByte(27)
      ..write(obj.plan);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsurancePlan _$InsurancePlanFromJson(Map<String, dynamic> json) {
  return InsurancePlan(
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    alias: (json['alias'] as List)?.map((e) => e as String)?.toList(),
    elementAlias: (json['elementAlias'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    ownedBy: json['ownedBy'] == null
        ? null
        : Reference.fromJson(json['ownedBy'] as Map<String, dynamic>),
    administeredBy: json['administeredBy'] == null
        ? null
        : Reference.fromJson(json['administeredBy'] as Map<String, dynamic>),
    coverageArea: (json['coverageArea'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : InsurancePlan_Contact.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    endpoint: (json['endpoint'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    network: (json['network'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    coverage: (json['coverage'] as List)
        ?.map((e) => e == null
            ? null
            : InsurancePlan_Coverage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    plan: (json['plan'] as List)
        ?.map((e) => e == null
            ? null
            : InsurancePlan_Plan.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$InsurancePlanToJson(InsurancePlan instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'alias': instance.alias,
      'elementAlias': instance.elementAlias?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'ownedBy': instance.ownedBy?.toJson(),
      'administeredBy': instance.administeredBy?.toJson(),
      'coverageArea': instance.coverageArea?.map((e) => e?.toJson())?.toList(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'endpoint': instance.endpoint?.map((e) => e?.toJson())?.toList(),
      'network': instance.network?.map((e) => e?.toJson())?.toList(),
      'coverage': instance.coverage?.map((e) => e?.toJson())?.toList(),
      'plan': instance.plan?.map((e) => e?.toJson())?.toList(),
    };

InsurancePlan_Contact _$InsurancePlan_ContactFromJson(
    Map<String, dynamic> json) {
  return InsurancePlan_Contact(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    purpose: json['purpose'] == null
        ? null
        : CodeableConcept.fromJson(json['purpose'] as Map<String, dynamic>),
    name: json['name'] == null
        ? null
        : HumanName.fromJson(json['name'] as Map<String, dynamic>),
    telecom: (json['telecom'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InsurancePlan_ContactToJson(
        InsurancePlan_Contact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'purpose': instance.purpose?.toJson(),
      'name': instance.name?.toJson(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
      'address': instance.address?.toJson(),
    };

InsurancePlan_Coverage _$InsurancePlan_CoverageFromJson(
    Map<String, dynamic> json) {
  return InsurancePlan_Coverage(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    network: (json['network'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    benefit: (json['benefit'] as List)
        ?.map((e) => e == null
            ? null
            : InsurancePlan_Benefit.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$InsurancePlan_CoverageToJson(
        InsurancePlan_Coverage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'network': instance.network?.map((e) => e?.toJson())?.toList(),
      'benefit': instance.benefit?.map((e) => e?.toJson())?.toList(),
    };

InsurancePlan_Benefit _$InsurancePlan_BenefitFromJson(
    Map<String, dynamic> json) {
  return InsurancePlan_Benefit(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    requirement: json['requirement'] as String,
    elementRequirement: json['elementRequirement'] == null
        ? null
        : Element.fromJson(json['elementRequirement'] as Map<String, dynamic>),
    limit: (json['limit'] as List)
        ?.map((e) => e == null
            ? null
            : InsurancePlan_Limit.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$InsurancePlan_BenefitToJson(
        InsurancePlan_Benefit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'requirement': instance.requirement,
      'elementRequirement': instance.elementRequirement?.toJson(),
      'limit': instance.limit?.map((e) => e?.toJson())?.toList(),
    };

InsurancePlan_Limit _$InsurancePlan_LimitFromJson(Map<String, dynamic> json) {
  return InsurancePlan_Limit(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: json['value'] == null
        ? null
        : Quantity.fromJson(json['value'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InsurancePlan_LimitToJson(
        InsurancePlan_Limit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'value': instance.value?.toJson(),
      'code': instance.code?.toJson(),
    };

InsurancePlan_Plan _$InsurancePlan_PlanFromJson(Map<String, dynamic> json) {
  return InsurancePlan_Plan(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    coverageArea: (json['coverageArea'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    network: (json['network'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    generalCost: (json['generalCost'] as List)
        ?.map((e) => e == null
            ? null
            : InsurancePlan_GeneralCost.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specificCost: (json['specificCost'] as List)
        ?.map((e) => e == null
            ? null
            : InsurancePlan_SpecificCost.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$InsurancePlan_PlanToJson(InsurancePlan_Plan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'coverageArea': instance.coverageArea?.map((e) => e?.toJson())?.toList(),
      'network': instance.network?.map((e) => e?.toJson())?.toList(),
      'generalCost': instance.generalCost?.map((e) => e?.toJson())?.toList(),
      'specificCost': instance.specificCost?.map((e) => e?.toJson())?.toList(),
    };

InsurancePlan_GeneralCost _$InsurancePlan_GeneralCostFromJson(
    Map<String, dynamic> json) {
  return InsurancePlan_GeneralCost(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    groupSize: json['groupSize'] as int,
    elementGroupSize: json['elementGroupSize'] == null
        ? null
        : Element.fromJson(json['elementGroupSize'] as Map<String, dynamic>),
    cost: json['cost'] == null
        ? null
        : Money.fromJson(json['cost'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InsurancePlan_GeneralCostToJson(
        InsurancePlan_GeneralCost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'groupSize': instance.groupSize,
      'elementGroupSize': instance.elementGroupSize?.toJson(),
      'cost': instance.cost?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
    };

InsurancePlan_SpecificCost _$InsurancePlan_SpecificCostFromJson(
    Map<String, dynamic> json) {
  return InsurancePlan_SpecificCost(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    benefit: (json['benefit'] as List)
        ?.map((e) => e == null
            ? null
            : InsurancePlan_Benefit1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$InsurancePlan_SpecificCostToJson(
        InsurancePlan_SpecificCost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'benefit': instance.benefit?.map((e) => e?.toJson())?.toList(),
    };

InsurancePlan_Benefit1 _$InsurancePlan_Benefit1FromJson(
    Map<String, dynamic> json) {
  return InsurancePlan_Benefit1(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    cost: (json['cost'] as List)
        ?.map((e) => e == null
            ? null
            : InsurancePlan_Cost.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$InsurancePlan_Benefit1ToJson(
        InsurancePlan_Benefit1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'cost': instance.cost?.map((e) => e?.toJson())?.toList(),
    };

InsurancePlan_Cost _$InsurancePlan_CostFromJson(Map<String, dynamic> json) {
  return InsurancePlan_Cost(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    applicability: json['applicability'] == null
        ? null
        : CodeableConcept.fromJson(
            json['applicability'] as Map<String, dynamic>),
    qualifiers: (json['qualifiers'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: json['value'] == null
        ? null
        : Quantity.fromJson(json['value'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InsurancePlan_CostToJson(InsurancePlan_Cost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'applicability': instance.applicability?.toJson(),
      'qualifiers': instance.qualifiers?.map((e) => e?.toJson())?.toList(),
      'value': instance.value?.toJson(),
    };
