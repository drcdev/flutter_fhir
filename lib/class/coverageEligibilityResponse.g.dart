// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coverageEligibilityResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoverageEligibilityResponse _$CoverageEligibilityResponseFromJson(
    Map<String, dynamic> json) {
  return CoverageEligibilityResponse(
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    json['request'] == null
        ? null
        : Reference.fromJson(json['request'] as Map<String, dynamic>),
    json['insurer'] == null
        ? null
        : Reference.fromJson(json['insurer'] as Map<String, dynamic>),
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
    purpose: (json['purpose'] as List)?.map((e) => e as String)?.toList(),
    element_purpose: (json['element_purpose'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    servicedDate: json['servicedDate'] as String,
    element_servicedDate: json['element_servicedDate'] == null
        ? null
        : Element.fromJson(
            json['element_servicedDate'] as Map<String, dynamic>),
    servicedPeriod: json['servicedPeriod'] == null
        ? null
        : Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    element_created: json['element_created'] == null
        ? null
        : Element.fromJson(json['element_created'] as Map<String, dynamic>),
    requestor: json['requestor'] == null
        ? null
        : Reference.fromJson(json['requestor'] as Map<String, dynamic>),
    outcome: json['outcome'] as String,
    element_outcome: json['element_outcome'] == null
        ? null
        : Element.fromJson(json['element_outcome'] as Map<String, dynamic>),
    disposition: json['disposition'] as String,
    element_disposition: json['element_disposition'] == null
        ? null
        : Element.fromJson(json['element_disposition'] as Map<String, dynamic>),
    insurance: (json['insurance'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityResponse_Insurance.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    preAuthRef: json['preAuthRef'] as String,
    element_preAuthRef: json['element_preAuthRef'] == null
        ? null
        : Element.fromJson(json['element_preAuthRef'] as Map<String, dynamic>),
    form: json['form'] == null
        ? null
        : CodeableConcept.fromJson(json['form'] as Map<String, dynamic>),
    error: (json['error'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityResponse_Error.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoverageEligibilityResponseToJson(
        CoverageEligibilityResponse instance) =>
    <String, dynamic>{
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
      'purpose': instance.purpose,
      'element_purpose':
          instance.element_purpose?.map((e) => e?.toJson())?.toList(),
      'patient': instance.patient?.toJson(),
      'servicedDate': instance.servicedDate,
      'element_servicedDate': instance.element_servicedDate?.toJson(),
      'servicedPeriod': instance.servicedPeriod?.toJson(),
      'created': instance.created?.toIso8601String(),
      'element_created': instance.element_created?.toJson(),
      'requestor': instance.requestor?.toJson(),
      'request': instance.request?.toJson(),
      'outcome': instance.outcome,
      'element_outcome': instance.element_outcome?.toJson(),
      'disposition': instance.disposition,
      'element_disposition': instance.element_disposition?.toJson(),
      'insurer': instance.insurer?.toJson(),
      'insurance': instance.insurance?.map((e) => e?.toJson())?.toList(),
      'preAuthRef': instance.preAuthRef,
      'element_preAuthRef': instance.element_preAuthRef?.toJson(),
      'form': instance.form?.toJson(),
      'error': instance.error?.map((e) => e?.toJson())?.toList(),
    };

CoverageEligibilityResponse_Insurance
    _$CoverageEligibilityResponse_InsuranceFromJson(Map<String, dynamic> json) {
  return CoverageEligibilityResponse_Insurance(
    json['coverage'] == null
        ? null
        : Reference.fromJson(json['coverage'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    inforce: json['inforce'] as bool,
    element_inforce: json['element_inforce'] == null
        ? null
        : Element.fromJson(json['element_inforce'] as Map<String, dynamic>),
    benefitPeriod: json['benefitPeriod'] == null
        ? null
        : Period.fromJson(json['benefitPeriod'] as Map<String, dynamic>),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityResponse_Item.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoverageEligibilityResponse_InsuranceToJson(
        CoverageEligibilityResponse_Insurance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'coverage': instance.coverage?.toJson(),
      'inforce': instance.inforce,
      'element_inforce': instance.element_inforce?.toJson(),
      'benefitPeriod': instance.benefitPeriod?.toJson(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };

CoverageEligibilityResponse_Item _$CoverageEligibilityResponse_ItemFromJson(
    Map<String, dynamic> json) {
  return CoverageEligibilityResponse_Item(
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
    productOrService: json['productOrService'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productOrService'] as Map<String, dynamic>),
    modifier: (json['modifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    provider: json['provider'] == null
        ? null
        : Reference.fromJson(json['provider'] as Map<String, dynamic>),
    excluded: json['excluded'] as bool,
    element_excluded: json['element_excluded'] == null
        ? null
        : Element.fromJson(json['element_excluded'] as Map<String, dynamic>),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    network: json['network'] == null
        ? null
        : CodeableConcept.fromJson(json['network'] as Map<String, dynamic>),
    unit: json['unit'] == null
        ? null
        : CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>),
    term: json['term'] == null
        ? null
        : CodeableConcept.fromJson(json['term'] as Map<String, dynamic>),
    benefit: (json['benefit'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityResponse_Benefit.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    authorizationRequired: json['authorizationRequired'] as bool,
    element_authorizationRequired: json['element_authorizationRequired'] == null
        ? null
        : Element.fromJson(
            json['element_authorizationRequired'] as Map<String, dynamic>),
    authorizationSupporting: (json['authorizationSupporting'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authorizationUrl: json['authorizationUrl'] as String,
    element_authorizationUrl: json['element_authorizationUrl'] == null
        ? null
        : Element.fromJson(
            json['element_authorizationUrl'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CoverageEligibilityResponse_ItemToJson(
        CoverageEligibilityResponse_Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'provider': instance.provider?.toJson(),
      'excluded': instance.excluded,
      'element_excluded': instance.element_excluded?.toJson(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'network': instance.network?.toJson(),
      'unit': instance.unit?.toJson(),
      'term': instance.term?.toJson(),
      'benefit': instance.benefit?.map((e) => e?.toJson())?.toList(),
      'authorizationRequired': instance.authorizationRequired,
      'element_authorizationRequired':
          instance.element_authorizationRequired?.toJson(),
      'authorizationSupporting':
          instance.authorizationSupporting?.map((e) => e?.toJson())?.toList(),
      'authorizationUrl': instance.authorizationUrl,
      'element_authorizationUrl': instance.element_authorizationUrl?.toJson(),
    };

CoverageEligibilityResponse_Benefit
    _$CoverageEligibilityResponse_BenefitFromJson(Map<String, dynamic> json) {
  return CoverageEligibilityResponse_Benefit(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    allowedUnsignedInt: json['allowedUnsignedInt'] as int,
    element_allowedUnsignedInt: json['element_allowedUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['element_allowedUnsignedInt'] as Map<String, dynamic>),
    allowedString: json['allowedString'] as String,
    element_allowedString: json['element_allowedString'] == null
        ? null
        : Element.fromJson(
            json['element_allowedString'] as Map<String, dynamic>),
    allowedMoney: json['allowedMoney'] == null
        ? null
        : Money.fromJson(json['allowedMoney'] as Map<String, dynamic>),
    usedUnsignedInt: json['usedUnsignedInt'] as int,
    element_usedUnsignedInt: json['element_usedUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['element_usedUnsignedInt'] as Map<String, dynamic>),
    usedString: json['usedString'] as String,
    element_usedString: json['element_usedString'] == null
        ? null
        : Element.fromJson(json['element_usedString'] as Map<String, dynamic>),
    usedMoney: json['usedMoney'] == null
        ? null
        : Money.fromJson(json['usedMoney'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CoverageEligibilityResponse_BenefitToJson(
        CoverageEligibilityResponse_Benefit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'allowedUnsignedInt': instance.allowedUnsignedInt,
      'element_allowedUnsignedInt':
          instance.element_allowedUnsignedInt?.toJson(),
      'allowedString': instance.allowedString,
      'element_allowedString': instance.element_allowedString?.toJson(),
      'allowedMoney': instance.allowedMoney?.toJson(),
      'usedUnsignedInt': instance.usedUnsignedInt,
      'element_usedUnsignedInt': instance.element_usedUnsignedInt?.toJson(),
      'usedString': instance.usedString,
      'element_usedString': instance.element_usedString?.toJson(),
      'usedMoney': instance.usedMoney?.toJson(),
    };

CoverageEligibilityResponse_Error _$CoverageEligibilityResponse_ErrorFromJson(
    Map<String, dynamic> json) {
  return CoverageEligibilityResponse_Error(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoverageEligibilityResponse_ErrorToJson(
        CoverageEligibilityResponse_Error instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
    };
