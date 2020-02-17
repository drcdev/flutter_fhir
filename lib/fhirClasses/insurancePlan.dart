import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
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
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class InsurancePlan {
  static Future<InsurancePlan> newInstance({
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
    List<InsurancePlan_Plan> plan,
  }) async {
    var fhirDb = new DatabaseHelper();
    InsurancePlan newInsurancePlan = new InsurancePlan(
      resourceType: resourceType,
      id: id ?? await fhirDb.newResourceId('InsurancePlan'),
      meta: meta ?? await Meta.newInstance(),
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
      plan: plan,
    );
    newInsurancePlan.meta.createdAt = DateTime.now();
    newInsurancePlan.meta.lastUpdated = newInsurancePlan.meta.createdAt;
    int saved = await fhirDb.saveResource(newInsurancePlan);
    return newInsurancePlan;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saveed = await fhirDb.saveResource(this);
  }

  String resourceType;
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
  List<Identifier> identifier;
  String status;
  Element elementStatus;
  List<CodeableConcept> type;
  String name;
  Element elementName;
  List<String> alias;
  List<Element> elementAlias;
  Period period;
  Reference ownedBy;
  Reference administeredBy;
  List<Reference> coverageArea;
  List<InsurancePlan_Contact> contact;
  List<Reference> endpoint;
  List<Reference> network;
  List<InsurancePlan_Coverage> coverage;
  List<InsurancePlan_Plan> plan;

  InsurancePlan({
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
    this.plan,
  });

  factory InsurancePlan.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanFromJson(json);
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
    Address address,
  }) async {
    var fhirDb = new DatabaseHelper();
    InsurancePlan_Contact newInsurancePlan_Contact = new InsurancePlan_Contact(
      id: id ?? await fhirDb.newResourceId('InsurancePlan_Contact'),
      extension: extension,
      modifierExtension: modifierExtension,
      purpose: purpose,
      name: name,
      telecom: telecom,
      address: address,
    );
    return newInsurancePlan_Contact;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept purpose;
  HumanName name;
  List<ContactPoint> telecom;
  Address address;

  InsurancePlan_Contact({
    this.id,
    this.extension,
    this.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
  });

  factory InsurancePlan_Contact.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlan_ContactFromJson(json);
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
    List<InsurancePlan_Benefit> benefit,
  }) async {
    var fhirDb = new DatabaseHelper();
    InsurancePlan_Coverage newInsurancePlan_Coverage =
        new InsurancePlan_Coverage(
      id: id ?? await fhirDb.newResourceId('InsurancePlan_Coverage'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      network: network,
      benefit: benefit,
    );
    return newInsurancePlan_Coverage;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<Reference> network;
  List<InsurancePlan_Benefit> benefit;

  InsurancePlan_Coverage({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.network,
    @required this.benefit,
  });

  factory InsurancePlan_Coverage.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlan_CoverageFromJson(json);
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
    List<InsurancePlan_Limit> limit,
  }) async {
    var fhirDb = new DatabaseHelper();
    InsurancePlan_Benefit newInsurancePlan_Benefit = new InsurancePlan_Benefit(
      id: id ?? await fhirDb.newResourceId('InsurancePlan_Benefit'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      requirement: requirement,
      elementRequirement: elementRequirement,
      limit: limit,
    );
    return newInsurancePlan_Benefit;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String requirement;
  Element elementRequirement;
  List<InsurancePlan_Limit> limit;

  InsurancePlan_Benefit({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.requirement,
    this.elementRequirement,
    this.limit,
  });

  factory InsurancePlan_Benefit.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlan_BenefitFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_BenefitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Limit {
  static Future<InsurancePlan_Limit> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Quantity value,
    CodeableConcept code,
  }) async {
    var fhirDb = new DatabaseHelper();
    InsurancePlan_Limit newInsurancePlan_Limit = new InsurancePlan_Limit(
      id: id ?? await fhirDb.newResourceId('InsurancePlan_Limit'),
      extension: extension,
      modifierExtension: modifierExtension,
      value: value,
      code: code,
    );
    return newInsurancePlan_Limit;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Quantity value;
  CodeableConcept code;

  InsurancePlan_Limit({
    this.id,
    this.extension,
    this.modifierExtension,
    this.value,
    this.code,
  });

  factory InsurancePlan_Limit.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlan_LimitFromJson(json);
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
    List<InsurancePlan_SpecificCost> specificCost,
  }) async {
    var fhirDb = new DatabaseHelper();
    InsurancePlan_Plan newInsurancePlan_Plan = new InsurancePlan_Plan(
      id: id ?? await fhirDb.newResourceId('InsurancePlan_Plan'),
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      type: type,
      coverageArea: coverageArea,
      network: network,
      generalCost: generalCost,
      specificCost: specificCost,
    );
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

  InsurancePlan_Plan({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.coverageArea,
    this.network,
    this.generalCost,
    this.specificCost,
  });

  factory InsurancePlan_Plan.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlan_PlanFromJson(json);
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
    Element elementComment,
  }) async {
    var fhirDb = new DatabaseHelper();
    InsurancePlan_GeneralCost newInsurancePlan_GeneralCost =
        new InsurancePlan_GeneralCost(
      id: id ?? await fhirDb.newResourceId('InsurancePlan_GeneralCost'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      groupSize: groupSize,
      elementGroupSize: elementGroupSize,
      cost: cost,
      comment: comment,
      elementComment: elementComment,
    );
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

  InsurancePlan_GeneralCost({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.groupSize,
    this.elementGroupSize,
    this.cost,
    this.comment,
    this.elementComment,
  });

  factory InsurancePlan_GeneralCost.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlan_GeneralCostFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_GeneralCostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_SpecificCost {
  static Future<InsurancePlan_SpecificCost> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept category,
    List<InsurancePlan_Benefit1> benefit,
  }) async {
    var fhirDb = new DatabaseHelper();
    InsurancePlan_SpecificCost newInsurancePlan_SpecificCost =
        new InsurancePlan_SpecificCost(
      id: id ?? await fhirDb.newResourceId('InsurancePlan_SpecificCost'),
      extension: extension,
      modifierExtension: modifierExtension,
      category: category,
      benefit: benefit,
    );
    return newInsurancePlan_SpecificCost;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  List<InsurancePlan_Benefit1> benefit;

  InsurancePlan_SpecificCost({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.category,
    this.benefit,
  });

  factory InsurancePlan_SpecificCost.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlan_SpecificCostFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_SpecificCostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Benefit1 {
  static Future<InsurancePlan_Benefit1> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    List<InsurancePlan_Cost> cost,
  }) async {
    var fhirDb = new DatabaseHelper();
    InsurancePlan_Benefit1 newInsurancePlan_Benefit1 =
        new InsurancePlan_Benefit1(
      id: id ?? await fhirDb.newResourceId('InsurancePlan_Benefit1'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      cost: cost,
    );
    return newInsurancePlan_Benefit1;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<InsurancePlan_Cost> cost;

  InsurancePlan_Benefit1({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.cost,
  });

  factory InsurancePlan_Benefit1.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlan_Benefit1FromJson(json);
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
    Quantity value,
  }) async {
    var fhirDb = new DatabaseHelper();
    InsurancePlan_Cost newInsurancePlan_Cost = new InsurancePlan_Cost(
      id: id ?? await fhirDb.newResourceId('InsurancePlan_Cost'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      applicability: applicability,
      qualifiers: qualifiers,
      value: value,
    );
    return newInsurancePlan_Cost;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  CodeableConcept applicability;
  List<CodeableConcept> qualifiers;
  Quantity value;

  InsurancePlan_Cost({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.applicability,
    this.qualifiers,
    this.value,
  });

  factory InsurancePlan_Cost.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlan_CostFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_CostToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsurancePlan _$InsurancePlanFromJson(Map<String, dynamic> json) {
  return InsurancePlan(
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
