import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class Coverage {
  static Future<Coverage> newInstance({
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
    CodeableConcept type,
    Reference policyHolder,
    Reference subscriber,
    String subscriberId,
    Element elementSubscriberId,
    Reference beneficiary,
    String dependent,
    Element elementDependent,
    CodeableConcept relationship,
    Period period,
    List<Reference> payor,
    List<Coverage_Class> classs,
    int order,
    Element elementOrder,
    String network,
    Element elementNetwork,
    List<Coverage_CostToBeneficiary> costToBeneficiary,
    bool subrogation,
    Element elementSubrogation,
    List<Reference> contract,
  }) async {
    var fhirDb = new DatabaseHelper();
    Coverage newCoverage = new Coverage(
      resourceType: 'Coverage',
      id: id ?? await fhirDb.newResourceId('Coverage'),
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
      policyHolder: policyHolder,
      subscriber: subscriber,
      subscriberId: subscriberId,
      elementSubscriberId: elementSubscriberId,
      beneficiary: beneficiary,
      dependent: dependent,
      elementDependent: elementDependent,
      relationship: relationship,
      period: period,
      payor: payor,
      classs: classs,
      order: order,
      elementOrder: elementOrder,
      network: network,
      elementNetwork: elementNetwork,
      costToBeneficiary: costToBeneficiary,
      subrogation: subrogation,
      elementSubrogation: elementSubrogation,
      contract: contract,
    );
    newCoverage.meta.createdAt = DateTime.now();
    newCoverage.meta.lastUpdated = newCoverage.meta.createdAt;
    int saved = await fhirDb.saveResource(newCoverage);
    return newCoverage;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saveed = await fhirDb.saveResource(this);
  }

  String resourceType = 'Coverage';
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
  CodeableConcept type;
  Reference policyHolder;
  Reference subscriber;
  String subscriberId;
  Element elementSubscriberId;
  Reference beneficiary;
  String dependent;
  Element elementDependent;
  CodeableConcept relationship;
  Period period;
  List<Reference> payor;
  List<Coverage_Class> classs;
  int order;
  Element elementOrder;
  String network;
  Element elementNetwork;
  List<Coverage_CostToBeneficiary> costToBeneficiary;
  bool subrogation;
  Element elementSubrogation;
  List<Reference> contract;

  Coverage({
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
    this.policyHolder,
    this.subscriber,
    this.subscriberId,
    this.elementSubscriberId,
    @required this.beneficiary,
    this.dependent,
    this.elementDependent,
    this.relationship,
    this.period,
    @required this.payor,
    this.classs,
    this.order,
    this.elementOrder,
    this.network,
    this.elementNetwork,
    this.costToBeneficiary,
    this.subrogation,
    this.elementSubrogation,
    this.contract,
  });

  factory Coverage.fromJson(Map<String, dynamic> json) =>
      _$CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Coverage_Class {
  static Future<Coverage_Class> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    String value,
    Element elementValue,
    String name,
    Element elementName,
  }) async {
    var fhirDb = new DatabaseHelper();
    Coverage_Class newCoverage_Class = new Coverage_Class(
      id: id ?? await fhirDb.newResourceId('Coverage_Class'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      value: value,
      elementValue: elementValue,
      name: name,
      elementName: elementName,
    );
    return newCoverage_Class;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String value;
  Element elementValue;
  String name;
  Element elementName;

  Coverage_Class({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.value,
    this.elementValue,
    this.name,
    this.elementName,
  });

  factory Coverage_Class.fromJson(Map<String, dynamic> json) =>
      _$Coverage_ClassFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_ClassToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Coverage_CostToBeneficiary {
  static Future<Coverage_CostToBeneficiary> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    Quantity valueQuantity,
    Money valueMoney,
    List<Coverage_Exception> exception,
  }) async {
    var fhirDb = new DatabaseHelper();
    Coverage_CostToBeneficiary newCoverage_CostToBeneficiary =
        new Coverage_CostToBeneficiary(
      id: id ?? await fhirDb.newResourceId('Coverage_CostToBeneficiary'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      valueQuantity: valueQuantity,
      valueMoney: valueMoney,
      exception: exception,
    );
    return newCoverage_CostToBeneficiary;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Quantity valueQuantity;
  Money valueMoney;
  List<Coverage_Exception> exception;

  Coverage_CostToBeneficiary({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.valueQuantity,
    this.valueMoney,
    this.exception,
  });

  factory Coverage_CostToBeneficiary.fromJson(Map<String, dynamic> json) =>
      _$Coverage_CostToBeneficiaryFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_CostToBeneficiaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Coverage_Exception {
  static Future<Coverage_Exception> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    Period period,
  }) async {
    var fhirDb = new DatabaseHelper();
    Coverage_Exception newCoverage_Exception = new Coverage_Exception(
      id: id ?? await fhirDb.newResourceId('Coverage_Exception'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      period: period,
    );
    return newCoverage_Exception;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Period period;

  Coverage_Exception({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.period,
  });

  factory Coverage_Exception.fromJson(Map<String, dynamic> json) =>
      _$Coverage_ExceptionFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_ExceptionToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coverage _$CoverageFromJson(Map<String, dynamic> json) {
  return Coverage(
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
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    policyHolder: json['policyHolder'] == null
        ? null
        : Reference.fromJson(json['policyHolder'] as Map<String, dynamic>),
    subscriber: json['subscriber'] == null
        ? null
        : Reference.fromJson(json['subscriber'] as Map<String, dynamic>),
    subscriberId: json['subscriberId'] as String,
    elementSubscriberId: json['elementSubscriberId'] == null
        ? null
        : Element.fromJson(json['elementSubscriberId'] as Map<String, dynamic>),
    beneficiary: json['beneficiary'] == null
        ? null
        : Reference.fromJson(json['beneficiary'] as Map<String, dynamic>),
    dependent: json['dependent'] as String,
    elementDependent: json['elementDependent'] == null
        ? null
        : Element.fromJson(json['elementDependent'] as Map<String, dynamic>),
    relationship: json['relationship'] == null
        ? null
        : CodeableConcept.fromJson(
            json['relationship'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    payor: (json['payor'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    classs: (json['classs'] as List)
        ?.map((e) => e == null
            ? null
            : Coverage_Class.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    order: json['order'] as int,
    elementOrder: json['elementOrder'] == null
        ? null
        : Element.fromJson(json['elementOrder'] as Map<String, dynamic>),
    network: json['network'] as String,
    elementNetwork: json['elementNetwork'] == null
        ? null
        : Element.fromJson(json['elementNetwork'] as Map<String, dynamic>),
    costToBeneficiary: (json['costToBeneficiary'] as List)
        ?.map((e) => e == null
            ? null
            : Coverage_CostToBeneficiary.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subrogation: json['subrogation'] as bool,
    elementSubrogation: json['elementSubrogation'] == null
        ? null
        : Element.fromJson(json['elementSubrogation'] as Map<String, dynamic>),
    contract: (json['contract'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoverageToJson(Coverage instance) => <String, dynamic>{
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
      'type': instance.type?.toJson(),
      'policyHolder': instance.policyHolder?.toJson(),
      'subscriber': instance.subscriber?.toJson(),
      'subscriberId': instance.subscriberId,
      'elementSubscriberId': instance.elementSubscriberId?.toJson(),
      'beneficiary': instance.beneficiary?.toJson(),
      'dependent': instance.dependent,
      'elementDependent': instance.elementDependent?.toJson(),
      'relationship': instance.relationship?.toJson(),
      'period': instance.period?.toJson(),
      'payor': instance.payor?.map((e) => e?.toJson())?.toList(),
      'classs': instance.classs?.map((e) => e?.toJson())?.toList(),
      'order': instance.order,
      'elementOrder': instance.elementOrder?.toJson(),
      'network': instance.network,
      'elementNetwork': instance.elementNetwork?.toJson(),
      'costToBeneficiary':
          instance.costToBeneficiary?.map((e) => e?.toJson())?.toList(),
      'subrogation': instance.subrogation,
      'elementSubrogation': instance.elementSubrogation?.toJson(),
      'contract': instance.contract?.map((e) => e?.toJson())?.toList(),
    };

Coverage_Class _$Coverage_ClassFromJson(Map<String, dynamic> json) {
  return Coverage_Class(
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
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Coverage_ClassToJson(Coverage_Class instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
    };

Coverage_CostToBeneficiary _$Coverage_CostToBeneficiaryFromJson(
    Map<String, dynamic> json) {
  return Coverage_CostToBeneficiary(
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
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueMoney: json['valueMoney'] == null
        ? null
        : Money.fromJson(json['valueMoney'] as Map<String, dynamic>),
    exception: (json['exception'] as List)
        ?.map((e) => e == null
            ? null
            : Coverage_Exception.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Coverage_CostToBeneficiaryToJson(
        Coverage_CostToBeneficiary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueMoney': instance.valueMoney?.toJson(),
      'exception': instance.exception?.map((e) => e?.toJson())?.toList(),
    };

Coverage_Exception _$Coverage_ExceptionFromJson(Map<String, dynamic> json) {
  return Coverage_Exception(
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
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Coverage_ExceptionToJson(Coverage_Exception instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'period': instance.period?.toJson(),
    };
