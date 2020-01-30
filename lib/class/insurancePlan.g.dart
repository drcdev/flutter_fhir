// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurancePlan.dart';

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
    element_implicitRules: json['element_implicitRules'] == null
        ? null
        : Element.fromJson(
            json['element_implicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    element_language: json['element_language'] == null
        ? null
        : Element.fromJson(json['element_language'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceList.fromJson(e as Map<String, dynamic>))
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
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    alias: (json['alias'] as List)?.map((e) => e as String)?.toList(),
    element_alias: (json['element_alias'] as List)
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
      'element_implicitRules': instance.element_implicitRules?.toJson(),
      'language': instance.language,
      'element_language': instance.element_language?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'alias': instance.alias,
      'element_alias':
          instance.element_alias?.map((e) => e?.toJson())?.toList(),
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
    element_requirement: json['element_requirement'] == null
        ? null
        : Element.fromJson(json['element_requirement'] as Map<String, dynamic>),
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
      'element_requirement': instance.element_requirement?.toJson(),
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
    element_groupSize: json['element_groupSize'] == null
        ? null
        : Element.fromJson(json['element_groupSize'] as Map<String, dynamic>),
    cost: json['cost'] == null
        ? null
        : Money.fromJson(json['cost'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    element_comment: json['element_comment'] == null
        ? null
        : Element.fromJson(json['element_comment'] as Map<String, dynamic>),
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
      'element_groupSize': instance.element_groupSize?.toJson(),
      'cost': instance.cost?.toJson(),
      'comment': instance.comment,
      'element_comment': instance.element_comment?.toJson(),
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
