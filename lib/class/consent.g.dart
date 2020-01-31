// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Consent _$ConsentFromJson(Map<String, dynamic> json) {
  return Consent(
    json['scope'] == null
        ? null
        : CodeableConcept.fromJson(json['scope'] as Map<String, dynamic>),
    (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    dateTime: json['dateTime'] == null
        ? null
        : DateTime.parse(json['dateTime'] as String),
    element_dateTime: json['element_dateTime'] == null
        ? null
        : Element.fromJson(json['element_dateTime'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    organization: (json['organization'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sourceAttachment: json['sourceAttachment'] == null
        ? null
        : Attachment.fromJson(json['sourceAttachment'] as Map<String, dynamic>),
    sourceReference: json['sourceReference'] == null
        ? null
        : Reference.fromJson(json['sourceReference'] as Map<String, dynamic>),
    policy: (json['policy'] as List)
        ?.map((e) => e == null
            ? null
            : Consent_Policy.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    policyRule: json['policyRule'] == null
        ? null
        : CodeableConcept.fromJson(json['policyRule'] as Map<String, dynamic>),
    verification: (json['verification'] as List)
        ?.map((e) => e == null
            ? null
            : Consent_Verification.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    provision: json['provision'] == null
        ? null
        : Consent_Provision.fromJson(json['provision'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ConsentToJson(Consent instance) => <String, dynamic>{
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
      'scope': instance.scope?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'patient': instance.patient?.toJson(),
      'dateTime': instance.dateTime?.toIso8601String(),
      'element_dateTime': instance.element_dateTime?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'organization': instance.organization?.map((e) => e?.toJson())?.toList(),
      'sourceAttachment': instance.sourceAttachment?.toJson(),
      'sourceReference': instance.sourceReference?.toJson(),
      'policy': instance.policy?.map((e) => e?.toJson())?.toList(),
      'policyRule': instance.policyRule?.toJson(),
      'verification': instance.verification?.map((e) => e?.toJson())?.toList(),
      'provision': instance.provision?.toJson(),
    };

Consent_Policy _$Consent_PolicyFromJson(Map<String, dynamic> json) {
  return Consent_Policy(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authority: json['authority'] as String,
    element_authority: json['element_authority'] == null
        ? null
        : Element.fromJson(json['element_authority'] as Map<String, dynamic>),
    uri: json['uri'] as String,
    element_uri: json['element_uri'] == null
        ? null
        : Element.fromJson(json['element_uri'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Consent_PolicyToJson(Consent_Policy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'authority': instance.authority,
      'element_authority': instance.element_authority?.toJson(),
      'uri': instance.uri,
      'element_uri': instance.element_uri?.toJson(),
    };

Consent_Verification _$Consent_VerificationFromJson(Map<String, dynamic> json) {
  return Consent_Verification(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    verified: json['verified'] as bool,
    element_verified: json['element_verified'] == null
        ? null
        : Element.fromJson(json['element_verified'] as Map<String, dynamic>),
    verifiedWith: json['verifiedWith'] == null
        ? null
        : Reference.fromJson(json['verifiedWith'] as Map<String, dynamic>),
    verificationDate: json['verificationDate'] == null
        ? null
        : DateTime.parse(json['verificationDate'] as String),
    element_verificationDate: json['element_verificationDate'] == null
        ? null
        : Element.fromJson(
            json['element_verificationDate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Consent_VerificationToJson(
        Consent_Verification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'verified': instance.verified,
      'element_verified': instance.element_verified?.toJson(),
      'verifiedWith': instance.verifiedWith?.toJson(),
      'verificationDate': instance.verificationDate?.toIso8601String(),
      'element_verificationDate': instance.element_verificationDate?.toJson(),
    };

Consent_Provision _$Consent_ProvisionFromJson(Map<String, dynamic> json) {
  return Consent_Provision(
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
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    actor: (json['actor'] as List)
        ?.map((e) => e == null
            ? null
            : Consent_Actor.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    securityLabel: (json['securityLabel'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    purpose: (json['purpose'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    classs: (json['classs'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dataPeriod: json['dataPeriod'] == null
        ? null
        : Period.fromJson(json['dataPeriod'] as Map<String, dynamic>),
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : Consent_Data.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    provision: (json['provision'] as List)
        ?.map((e) => e == null
            ? null
            : Consent_Provision.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Consent_ProvisionToJson(Consent_Provision instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'period': instance.period?.toJson(),
      'actor': instance.actor?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
      'securityLabel':
          instance.securityLabel?.map((e) => e?.toJson())?.toList(),
      'purpose': instance.purpose?.map((e) => e?.toJson())?.toList(),
      'classs': instance.classs?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'dataPeriod': instance.dataPeriod?.toJson(),
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
      'provision': instance.provision?.map((e) => e?.toJson())?.toList(),
    };

Consent_Actor _$Consent_ActorFromJson(Map<String, dynamic> json) {
  return Consent_Actor(
    json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
    json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
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

Map<String, dynamic> _$Consent_ActorToJson(Consent_Actor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'role': instance.role?.toJson(),
      'reference': instance.reference?.toJson(),
    };

Consent_Data _$Consent_DataFromJson(Map<String, dynamic> json) {
  return Consent_Data(
    json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    meaning: json['meaning'] as String,
    element_meaning: json['element_meaning'] == null
        ? null
        : Element.fromJson(json['element_meaning'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Consent_DataToJson(Consent_Data instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'meaning': instance.meaning,
      'element_meaning': instance.element_meaning?.toJson(),
      'reference': instance.reference?.toJson(),
    };
