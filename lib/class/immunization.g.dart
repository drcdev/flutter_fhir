// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'immunization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Immunization _$ImmunizationFromJson(Map<String, dynamic> json) {
  return Immunization(
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
    statusReason: json['statusReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReason'] as Map<String, dynamic>),
    vaccineCode: json['vaccineCode'] == null
        ? null
        : CodeableConcept.fromJson(json['vaccineCode'] as Map<String, dynamic>),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    occurrenceDateTime: json['occurrenceDateTime'] as String,
    element_occurrenceDateTime: json['element_occurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_occurrenceDateTime'] as Map<String, dynamic>),
    occurrenceString: json['occurrenceString'] as String,
    element_occurrenceString: json['element_occurrenceString'] == null
        ? null
        : Element.fromJson(
            json['element_occurrenceString'] as Map<String, dynamic>),
    recorded: json['recorded'] == null
        ? null
        : DateTime.parse(json['recorded'] as String),
    element_recorded: json['element_recorded'] == null
        ? null
        : Element.fromJson(json['element_recorded'] as Map<String, dynamic>),
    primarySource: json['primarySource'] as bool,
    element_primarySource: json['element_primarySource'] == null
        ? null
        : Element.fromJson(
            json['element_primarySource'] as Map<String, dynamic>),
    reportOrigin: json['reportOrigin'] == null
        ? null
        : CodeableConcept.fromJson(
            json['reportOrigin'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    manufacturer: json['manufacturer'] == null
        ? null
        : Reference.fromJson(json['manufacturer'] as Map<String, dynamic>),
    lotNumber: json['lotNumber'] as String,
    element_lotNumber: json['element_lotNumber'] == null
        ? null
        : Element.fromJson(json['element_lotNumber'] as Map<String, dynamic>),
    expirationDate: json['expirationDate'] as String,
    element_expirationDate: json['element_expirationDate'] == null
        ? null
        : Element.fromJson(
            json['element_expirationDate'] as Map<String, dynamic>),
    site: json['site'] == null
        ? null
        : CodeableConcept.fromJson(json['site'] as Map<String, dynamic>),
    route: json['route'] == null
        ? null
        : CodeableConcept.fromJson(json['route'] as Map<String, dynamic>),
    doseQuantity: json['doseQuantity'] == null
        ? null
        : Quantity.fromJson(json['doseQuantity'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) => e == null
            ? null
            : Immunization_Performer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isSubpotent: json['isSubpotent'] as bool,
    element_isSubpotent: json['element_isSubpotent'] == null
        ? null
        : Element.fromJson(json['element_isSubpotent'] as Map<String, dynamic>),
    subpotentReason: (json['subpotentReason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    education: (json['education'] as List)
        ?.map((e) => e == null
            ? null
            : Immunization_Education.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    programEligibility: (json['programEligibility'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fundingSource: json['fundingSource'] == null
        ? null
        : CodeableConcept.fromJson(
            json['fundingSource'] as Map<String, dynamic>),
    reaction: (json['reaction'] as List)
        ?.map((e) => e == null
            ? null
            : Immunization_Reaction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    protocolApplied: (json['protocolApplied'] as List)
        ?.map((e) => e == null
            ? null
            : Immunization_ProtocolApplied.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImmunizationToJson(Immunization instance) =>
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
      'statusReason': instance.statusReason?.toJson(),
      'vaccineCode': instance.vaccineCode?.toJson(),
      'patient': instance.patient?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'element_occurrenceDateTime':
          instance.element_occurrenceDateTime?.toJson(),
      'occurrenceString': instance.occurrenceString,
      'element_occurrenceString': instance.element_occurrenceString?.toJson(),
      'recorded': instance.recorded?.toIso8601String(),
      'element_recorded': instance.element_recorded?.toJson(),
      'primarySource': instance.primarySource,
      'element_primarySource': instance.element_primarySource?.toJson(),
      'reportOrigin': instance.reportOrigin?.toJson(),
      'location': instance.location?.toJson(),
      'manufacturer': instance.manufacturer?.toJson(),
      'lotNumber': instance.lotNumber,
      'element_lotNumber': instance.element_lotNumber?.toJson(),
      'expirationDate': instance.expirationDate,
      'element_expirationDate': instance.element_expirationDate?.toJson(),
      'site': instance.site?.toJson(),
      'route': instance.route?.toJson(),
      'doseQuantity': instance.doseQuantity?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'isSubpotent': instance.isSubpotent,
      'element_isSubpotent': instance.element_isSubpotent?.toJson(),
      'subpotentReason':
          instance.subpotentReason?.map((e) => e?.toJson())?.toList(),
      'education': instance.education?.map((e) => e?.toJson())?.toList(),
      'programEligibility':
          instance.programEligibility?.map((e) => e?.toJson())?.toList(),
      'fundingSource': instance.fundingSource?.toJson(),
      'reaction': instance.reaction?.map((e) => e?.toJson())?.toList(),
      'protocolApplied':
          instance.protocolApplied?.map((e) => e?.toJson())?.toList(),
    };

Immunization_Performer _$Immunization_PerformerFromJson(
    Map<String, dynamic> json) {
  return Immunization_Performer(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    function: json['function'] == null
        ? null
        : CodeableConcept.fromJson(json['function'] as Map<String, dynamic>),
    actor: json['actor'] == null
        ? null
        : Reference.fromJson(json['actor'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Immunization_PerformerToJson(
        Immunization_Performer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'function': instance.function?.toJson(),
      'actor': instance.actor?.toJson(),
    };

Immunization_Education _$Immunization_EducationFromJson(
    Map<String, dynamic> json) {
  return Immunization_Education(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    documentType: json['documentType'] as String,
    element_documentType: json['element_documentType'] == null
        ? null
        : Element.fromJson(
            json['element_documentType'] as Map<String, dynamic>),
    reference: json['reference'] as String,
    element_reference: json['element_reference'] == null
        ? null
        : Element.fromJson(json['element_reference'] as Map<String, dynamic>),
    publicationDate: json['publicationDate'] == null
        ? null
        : DateTime.parse(json['publicationDate'] as String),
    element_publicationDate: json['element_publicationDate'] == null
        ? null
        : Element.fromJson(
            json['element_publicationDate'] as Map<String, dynamic>),
    presentationDate: json['presentationDate'] == null
        ? null
        : DateTime.parse(json['presentationDate'] as String),
    element_presentationDate: json['element_presentationDate'] == null
        ? null
        : Element.fromJson(
            json['element_presentationDate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Immunization_EducationToJson(
        Immunization_Education instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'documentType': instance.documentType,
      'element_documentType': instance.element_documentType?.toJson(),
      'reference': instance.reference,
      'element_reference': instance.element_reference?.toJson(),
      'publicationDate': instance.publicationDate?.toIso8601String(),
      'element_publicationDate': instance.element_publicationDate?.toJson(),
      'presentationDate': instance.presentationDate?.toIso8601String(),
      'element_presentationDate': instance.element_presentationDate?.toJson(),
    };

Immunization_Reaction _$Immunization_ReactionFromJson(
    Map<String, dynamic> json) {
  return Immunization_Reaction(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    element_date: json['element_date'] == null
        ? null
        : Element.fromJson(json['element_date'] as Map<String, dynamic>),
    detail: json['detail'] == null
        ? null
        : Reference.fromJson(json['detail'] as Map<String, dynamic>),
    reported: json['reported'] as bool,
    element_reported: json['element_reported'] == null
        ? null
        : Element.fromJson(json['element_reported'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Immunization_ReactionToJson(
        Immunization_Reaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'date': instance.date?.toIso8601String(),
      'element_date': instance.element_date?.toJson(),
      'detail': instance.detail?.toJson(),
      'reported': instance.reported,
      'element_reported': instance.element_reported?.toJson(),
    };

Immunization_ProtocolApplied _$Immunization_ProtocolAppliedFromJson(
    Map<String, dynamic> json) {
  return Immunization_ProtocolApplied(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    series: json['series'] as String,
    element_series: json['element_series'] == null
        ? null
        : Element.fromJson(json['element_series'] as Map<String, dynamic>),
    authority: json['authority'] == null
        ? null
        : Reference.fromJson(json['authority'] as Map<String, dynamic>),
    targetDisease: (json['targetDisease'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    doseNumberPositiveInt: json['doseNumberPositiveInt'] as int,
    element_doseNumberPositiveInt: json['element_doseNumberPositiveInt'] == null
        ? null
        : Element.fromJson(
            json['element_doseNumberPositiveInt'] as Map<String, dynamic>),
    doseNumberString: json['doseNumberString'] as String,
    element_doseNumberString: json['element_doseNumberString'] == null
        ? null
        : Element.fromJson(
            json['element_doseNumberString'] as Map<String, dynamic>),
    seriesDosesPositiveInt: json['seriesDosesPositiveInt'] as int,
    element_seriesDosesPositiveInt:
        json['element_seriesDosesPositiveInt'] == null
            ? null
            : Element.fromJson(
                json['element_seriesDosesPositiveInt'] as Map<String, dynamic>),
    seriesDosesString: json['seriesDosesString'] as String,
    element_seriesDosesString: json['element_seriesDosesString'] == null
        ? null
        : Element.fromJson(
            json['element_seriesDosesString'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Immunization_ProtocolAppliedToJson(
        Immunization_ProtocolApplied instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'series': instance.series,
      'element_series': instance.element_series?.toJson(),
      'authority': instance.authority?.toJson(),
      'targetDisease':
          instance.targetDisease?.map((e) => e?.toJson())?.toList(),
      'doseNumberPositiveInt': instance.doseNumberPositiveInt,
      'element_doseNumberPositiveInt':
          instance.element_doseNumberPositiveInt?.toJson(),
      'doseNumberString': instance.doseNumberString,
      'element_doseNumberString': instance.element_doseNumberString?.toJson(),
      'seriesDosesPositiveInt': instance.seriesDosesPositiveInt,
      'element_seriesDosesPositiveInt':
          instance.element_seriesDosesPositiveInt?.toJson(),
      'seriesDosesString': instance.seriesDosesString,
      'element_seriesDosesString': instance.element_seriesDosesString?.toJson(),
    };
