// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicinalProductAuthorization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductAuthorization _$MedicinalProductAuthorizationFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductAuthorization(
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
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    country: (json['country'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    statusDate: json['statusDate'] == null
        ? null
        : DateTime.parse(json['statusDate'] as String),
    elementStatusDate: json['elementStatusDate'] == null
        ? null
        : Element.fromJson(json['elementStatusDate'] as Map<String, dynamic>),
    restoreDate: json['restoreDate'] == null
        ? null
        : DateTime.parse(json['restoreDate'] as String),
    elementRestoreDate: json['elementRestoreDate'] == null
        ? null
        : Element.fromJson(json['elementRestoreDate'] as Map<String, dynamic>),
    validityPeriod: json['validityPeriod'] == null
        ? null
        : Period.fromJson(json['validityPeriod'] as Map<String, dynamic>),
    dataExclusivityPeriod: json['dataExclusivityPeriod'] == null
        ? null
        : Period.fromJson(
            json['dataExclusivityPeriod'] as Map<String, dynamic>),
    dateOfFirstAuthorization: json['dateOfFirstAuthorization'] == null
        ? null
        : DateTime.parse(json['dateOfFirstAuthorization'] as String),
    elementDateOfFirstAuthorization: json['elementDateOfFirstAuthorization'] ==
            null
        ? null
        : Element.fromJson(
            json['elementDateOfFirstAuthorization'] as Map<String, dynamic>),
    internationalBirthDate: json['internationalBirthDate'] == null
        ? null
        : DateTime.parse(json['internationalBirthDate'] as String),
    elementInternationalBirthDate: json['elementInternationalBirthDate'] == null
        ? null
        : Element.fromJson(
            json['elementInternationalBirthDate'] as Map<String, dynamic>),
    legalBasis: json['legalBasis'] == null
        ? null
        : CodeableConcept.fromJson(json['legalBasis'] as Map<String, dynamic>),
    jurisdictionalAuthorization: (json['jurisdictionalAuthorization'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductAuthorization_JurisdictionalAuthorization
                .fromJson(e as Map<String, dynamic>))
        ?.toList(),
    holder: json['holder'] == null
        ? null
        : Reference.fromJson(json['holder'] as Map<String, dynamic>),
    regulator: json['regulator'] == null
        ? null
        : Reference.fromJson(json['regulator'] as Map<String, dynamic>),
    procedure: json['procedure'] == null
        ? null
        : MedicinalProductAuthorization_Procedure.fromJson(
            json['procedure'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductAuthorizationToJson(
        MedicinalProductAuthorization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.toJson(),
      'country': instance.country?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'status': instance.status?.toJson(),
      'statusDate': instance.statusDate?.toIso8601String(),
      'elementStatusDate': instance.elementStatusDate?.toJson(),
      'restoreDate': instance.restoreDate?.toIso8601String(),
      'elementRestoreDate': instance.elementRestoreDate?.toJson(),
      'validityPeriod': instance.validityPeriod?.toJson(),
      'dataExclusivityPeriod': instance.dataExclusivityPeriod?.toJson(),
      'dateOfFirstAuthorization':
          instance.dateOfFirstAuthorization?.toIso8601String(),
      'elementDateOfFirstAuthorization':
          instance.elementDateOfFirstAuthorization?.toJson(),
      'internationalBirthDate':
          instance.internationalBirthDate?.toIso8601String(),
      'elementInternationalBirthDate':
          instance.elementInternationalBirthDate?.toJson(),
      'legalBasis': instance.legalBasis?.toJson(),
      'jurisdictionalAuthorization': instance.jurisdictionalAuthorization
          ?.map((e) => e?.toJson())
          ?.toList(),
      'holder': instance.holder?.toJson(),
      'regulator': instance.regulator?.toJson(),
      'procedure': instance.procedure?.toJson(),
    };

MedicinalProductAuthorization_JurisdictionalAuthorization
    _$MedicinalProductAuthorization_JurisdictionalAuthorizationFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductAuthorization_JurisdictionalAuthorization(
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
    country: json['country'] == null
        ? null
        : CodeableConcept.fromJson(json['country'] as Map<String, dynamic>),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    legalStatusOfSupply: json['legalStatusOfSupply'] == null
        ? null
        : CodeableConcept.fromJson(
            json['legalStatusOfSupply'] as Map<String, dynamic>),
    validityPeriod: json['validityPeriod'] == null
        ? null
        : Period.fromJson(json['validityPeriod'] as Map<String, dynamic>),
  );
}

Map<String,
    dynamic> _$MedicinalProductAuthorization_JurisdictionalAuthorizationToJson(
        MedicinalProductAuthorization_JurisdictionalAuthorization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'country': instance.country?.toJson(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'legalStatusOfSupply': instance.legalStatusOfSupply?.toJson(),
      'validityPeriod': instance.validityPeriod?.toJson(),
    };

MedicinalProductAuthorization_Procedure
    _$MedicinalProductAuthorization_ProcedureFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductAuthorization_Procedure(
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    datePeriod: json['datePeriod'] == null
        ? null
        : Period.fromJson(json['datePeriod'] as Map<String, dynamic>),
    dateDateTime: json['dateDateTime'] as String,
    elementDateDateTime: json['elementDateDateTime'] == null
        ? null
        : Element.fromJson(json['elementDateDateTime'] as Map<String, dynamic>),
    application: (json['application'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductAuthorization_Procedure.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductAuthorization_ProcedureToJson(
        MedicinalProductAuthorization_Procedure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'type': instance.type?.toJson(),
      'datePeriod': instance.datePeriod?.toJson(),
      'dateDateTime': instance.dateDateTime,
      'elementDateDateTime': instance.elementDateDateTime?.toJson(),
      'application': instance.application?.map((e) => e?.toJson())?.toList(),
    };
