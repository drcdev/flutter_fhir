// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicationDispense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationDispense _$MedicationDispenseFromJson(Map<String, dynamic> json) {
  return MedicationDispense(
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
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusReasonCodeableConcept: json['statusReasonCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReasonCodeableConcept'] as Map<String, dynamic>),
    statusReasonReference: json['statusReasonReference'] == null
        ? null
        : Reference.fromJson(
            json['statusReasonReference'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    medicationCodeableConcept: json['medicationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['medicationCodeableConcept'] as Map<String, dynamic>),
    medicationReference: json['medicationReference'] == null
        ? null
        : Reference.fromJson(
            json['medicationReference'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    context: json['context'] == null
        ? null
        : Reference.fromJson(json['context'] as Map<String, dynamic>),
    supportingInformation: (json['supportingInformation'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    performer: (json['performer'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationDispense_Performer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    authorizingPrescription: (json['authorizingPrescription'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    daysSupply: json['daysSupply'] == null
        ? null
        : Quantity.fromJson(json['daysSupply'] as Map<String, dynamic>),
    whenPrepared: json['whenPrepared'] == null
        ? null
        : DateTime.parse(json['whenPrepared'] as String),
    elementWhenPrepared: json['elementWhenPrepared'] == null
        ? null
        : Element.fromJson(json['elementWhenPrepared'] as Map<String, dynamic>),
    whenHandedOver: json['whenHandedOver'] == null
        ? null
        : DateTime.parse(json['whenHandedOver'] as String),
    elementWhenHandedOver: json['elementWhenHandedOver'] == null
        ? null
        : Element.fromJson(
            json['elementWhenHandedOver'] as Map<String, dynamic>),
    destination: json['destination'] == null
        ? null
        : Reference.fromJson(json['destination'] as Map<String, dynamic>),
    receiver: (json['receiver'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dosageInstruction: (json['dosageInstruction'] as List)
        ?.map((e) =>
            e == null ? null : Dosage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    substitution: json['substitution'] == null
        ? null
        : MedicationDispense_Substitution.fromJson(
            json['substitution'] as Map<String, dynamic>),
    detectedIssue: (json['detectedIssue'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    eventHistory: (json['eventHistory'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationDispenseToJson(MedicationDispense instance) =>
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
      'partOf': instance.partOf?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusReasonCodeableConcept':
          instance.statusReasonCodeableConcept?.toJson(),
      'statusReasonReference': instance.statusReasonReference?.toJson(),
      'category': instance.category?.toJson(),
      'medicationCodeableConcept': instance.medicationCodeableConcept?.toJson(),
      'medicationReference': instance.medicationReference?.toJson(),
      'subject': instance.subject?.toJson(),
      'context': instance.context?.toJson(),
      'supportingInformation':
          instance.supportingInformation?.map((e) => e?.toJson())?.toList(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.toJson(),
      'authorizingPrescription':
          instance.authorizingPrescription?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'daysSupply': instance.daysSupply?.toJson(),
      'whenPrepared': instance.whenPrepared?.toIso8601String(),
      'elementWhenPrepared': instance.elementWhenPrepared?.toJson(),
      'whenHandedOver': instance.whenHandedOver?.toIso8601String(),
      'elementWhenHandedOver': instance.elementWhenHandedOver?.toJson(),
      'destination': instance.destination?.toJson(),
      'receiver': instance.receiver?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'dosageInstruction':
          instance.dosageInstruction?.map((e) => e?.toJson())?.toList(),
      'substitution': instance.substitution?.toJson(),
      'detectedIssue':
          instance.detectedIssue?.map((e) => e?.toJson())?.toList(),
      'eventHistory': instance.eventHistory?.map((e) => e?.toJson())?.toList(),
    };

MedicationDispense_Performer _$MedicationDispense_PerformerFromJson(
    Map<String, dynamic> json) {
  return MedicationDispense_Performer(
    json['actor'] == null
        ? null
        : Reference.fromJson(json['actor'] as Map<String, dynamic>),
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
  );
}

Map<String, dynamic> _$MedicationDispense_PerformerToJson(
        MedicationDispense_Performer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'function': instance.function?.toJson(),
      'actor': instance.actor?.toJson(),
    };

MedicationDispense_Substitution _$MedicationDispense_SubstitutionFromJson(
    Map<String, dynamic> json) {
  return MedicationDispense_Substitution(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    wasSubstituted: json['wasSubstituted'] as bool,
    elementWasSubstituted: json['elementWasSubstituted'] == null
        ? null
        : Element.fromJson(
            json['elementWasSubstituted'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    reason: (json['reason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    responsibleParty: (json['responsibleParty'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationDispense_SubstitutionToJson(
        MedicationDispense_Substitution instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'wasSubstituted': instance.wasSubstituted,
      'elementWasSubstituted': instance.elementWasSubstituted?.toJson(),
      'type': instance.type?.toJson(),
      'reason': instance.reason?.map((e) => e?.toJson())?.toList(),
      'responsibleParty':
          instance.responsibleParty?.map((e) => e?.toJson())?.toList(),
    };
