// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verificationResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerificationResult _$VerificationResultFromJson(Map<String, dynamic> json) {
  return VerificationResult(
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
    target: (json['target'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    targetLocation:
        (json['targetLocation'] as List)?.map((e) => e as String)?.toList(),
    element_targetLocation: (json['element_targetLocation'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    need: json['need'] == null
        ? null
        : CodeableConcept.fromJson(json['need'] as Map<String, dynamic>),
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    statusDate: json['statusDate'] == null
        ? null
        : DateTime.parse(json['statusDate'] as String),
    element_statusDate: json['element_statusDate'] == null
        ? null
        : Element.fromJson(json['element_statusDate'] as Map<String, dynamic>),
    validationType: json['validationType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['validationType'] as Map<String, dynamic>),
    validationProcess: (json['validationProcess'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    frequency: json['frequency'] == null
        ? null
        : Timing.fromJson(json['frequency'] as Map<String, dynamic>),
    lastPerformed: json['lastPerformed'] == null
        ? null
        : DateTime.parse(json['lastPerformed'] as String),
    element_lastPerformed: json['element_lastPerformed'] == null
        ? null
        : Element.fromJson(
            json['element_lastPerformed'] as Map<String, dynamic>),
    nextScheduled: json['nextScheduled'] as String,
    element_nextScheduled: json['element_nextScheduled'] == null
        ? null
        : Element.fromJson(
            json['element_nextScheduled'] as Map<String, dynamic>),
    failureAction: json['failureAction'] == null
        ? null
        : CodeableConcept.fromJson(
            json['failureAction'] as Map<String, dynamic>),
    primarySource: (json['primarySource'] as List)
        ?.map((e) => e == null
            ? null
            : VerificationResult_PrimarySource.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    attestation: json['attestation'] == null
        ? null
        : VerificationResult_Attestation.fromJson(
            json['attestation'] as Map<String, dynamic>),
    validator: (json['validator'] as List)
        ?.map((e) => e == null
            ? null
            : VerificationResult_Validator.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$VerificationResultToJson(VerificationResult instance) =>
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
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
      'targetLocation': instance.targetLocation,
      'element_targetLocation':
          instance.element_targetLocation?.map((e) => e?.toJson())?.toList(),
      'need': instance.need?.toJson(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'statusDate': instance.statusDate?.toIso8601String(),
      'element_statusDate': instance.element_statusDate?.toJson(),
      'validationType': instance.validationType?.toJson(),
      'validationProcess':
          instance.validationProcess?.map((e) => e?.toJson())?.toList(),
      'frequency': instance.frequency?.toJson(),
      'lastPerformed': instance.lastPerformed?.toIso8601String(),
      'element_lastPerformed': instance.element_lastPerformed?.toJson(),
      'nextScheduled': instance.nextScheduled,
      'element_nextScheduled': instance.element_nextScheduled?.toJson(),
      'failureAction': instance.failureAction?.toJson(),
      'primarySource':
          instance.primarySource?.map((e) => e?.toJson())?.toList(),
      'attestation': instance.attestation?.toJson(),
      'validator': instance.validator?.map((e) => e?.toJson())?.toList(),
    };

VerificationResult_PrimarySource _$VerificationResult_PrimarySourceFromJson(
    Map<String, dynamic> json) {
  return VerificationResult_PrimarySource(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    who: json['who'] == null
        ? null
        : Reference.fromJson(json['who'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    communicationMethod: (json['communicationMethod'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    validationStatus: json['validationStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['validationStatus'] as Map<String, dynamic>),
    validationDate: json['validationDate'] == null
        ? null
        : DateTime.parse(json['validationDate'] as String),
    element_validationDate: json['element_validationDate'] == null
        ? null
        : Element.fromJson(
            json['element_validationDate'] as Map<String, dynamic>),
    canPushUpdates: json['canPushUpdates'] == null
        ? null
        : CodeableConcept.fromJson(
            json['canPushUpdates'] as Map<String, dynamic>),
    pushTypeAvailable: (json['pushTypeAvailable'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$VerificationResult_PrimarySourceToJson(
        VerificationResult_PrimarySource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'who': instance.who?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'communicationMethod':
          instance.communicationMethod?.map((e) => e?.toJson())?.toList(),
      'validationStatus': instance.validationStatus?.toJson(),
      'validationDate': instance.validationDate?.toIso8601String(),
      'element_validationDate': instance.element_validationDate?.toJson(),
      'canPushUpdates': instance.canPushUpdates?.toJson(),
      'pushTypeAvailable':
          instance.pushTypeAvailable?.map((e) => e?.toJson())?.toList(),
    };

VerificationResult_Attestation _$VerificationResult_AttestationFromJson(
    Map<String, dynamic> json) {
  return VerificationResult_Attestation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    who: json['who'] == null
        ? null
        : Reference.fromJson(json['who'] as Map<String, dynamic>),
    onBehalfOf: json['onBehalfOf'] == null
        ? null
        : Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>),
    communicationMethod: json['communicationMethod'] == null
        ? null
        : CodeableConcept.fromJson(
            json['communicationMethod'] as Map<String, dynamic>),
    date: json['date'] as String,
    element_date: json['element_date'] == null
        ? null
        : Element.fromJson(json['element_date'] as Map<String, dynamic>),
    sourceIdentityCertificate: json['sourceIdentityCertificate'] as String,
    element_sourceIdentityCertificate:
        json['element_sourceIdentityCertificate'] == null
            ? null
            : Element.fromJson(json['element_sourceIdentityCertificate']
                as Map<String, dynamic>),
    proxyIdentityCertificate: json['proxyIdentityCertificate'] as String,
    element_proxyIdentityCertificate:
        json['element_proxyIdentityCertificate'] == null
            ? null
            : Element.fromJson(json['element_proxyIdentityCertificate']
                as Map<String, dynamic>),
    proxySignature: json['proxySignature'] == null
        ? null
        : Signature.fromJson(json['proxySignature'] as Map<String, dynamic>),
    sourceSignature: json['sourceSignature'] == null
        ? null
        : Signature.fromJson(json['sourceSignature'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VerificationResult_AttestationToJson(
        VerificationResult_Attestation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'who': instance.who?.toJson(),
      'onBehalfOf': instance.onBehalfOf?.toJson(),
      'communicationMethod': instance.communicationMethod?.toJson(),
      'date': instance.date,
      'element_date': instance.element_date?.toJson(),
      'sourceIdentityCertificate': instance.sourceIdentityCertificate,
      'element_sourceIdentityCertificate':
          instance.element_sourceIdentityCertificate?.toJson(),
      'proxyIdentityCertificate': instance.proxyIdentityCertificate,
      'element_proxyIdentityCertificate':
          instance.element_proxyIdentityCertificate?.toJson(),
      'proxySignature': instance.proxySignature?.toJson(),
      'sourceSignature': instance.sourceSignature?.toJson(),
    };

VerificationResult_Validator _$VerificationResult_ValidatorFromJson(
    Map<String, dynamic> json) {
  return VerificationResult_Validator(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    organization: json['organization'] == null
        ? null
        : Reference.fromJson(json['organization'] as Map<String, dynamic>),
    identityCertificate: json['identityCertificate'] as String,
    element_identityCertificate: json['element_identityCertificate'] == null
        ? null
        : Element.fromJson(
            json['element_identityCertificate'] as Map<String, dynamic>),
    attestationSignature: json['attestationSignature'] == null
        ? null
        : Signature.fromJson(
            json['attestationSignature'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VerificationResult_ValidatorToJson(
        VerificationResult_Validator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'organization': instance.organization?.toJson(),
      'identityCertificate': instance.identityCertificate,
      'element_identityCertificate':
          instance.element_identityCertificate?.toJson(),
      'attestationSignature': instance.attestationSignature?.toJson(),
    };
