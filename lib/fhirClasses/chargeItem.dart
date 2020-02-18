import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class ChargeItem {
  static Future<ChargeItem> newInstance({
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
    List<String> definitionUri,
    List<Element> elementDefinitionUri,
    List<String> definitionCanonical,
    String status,
    Element elementStatus,
    List<Reference> partOf,
    CodeableConcept code,
    Reference subject,
    Reference context,
    String occurrenceDateTime,
    Element elementOccurrenceDateTime,
    Period occurrencePeriod,
    Timing occurrenceTiming,
    List<ChargeItem_Performer> performer,
    Reference performingOrganization,
    Reference requestingOrganization,
    Reference costCenter,
    Quantity quantity,
    List<CodeableConcept> bodysite,
    double factorOverride,
    Element elementFactorOverride,
    Money priceOverride,
    String overrideReason,
    Element elementOverrideReason,
    Reference enterer,
    DateTime enteredDate,
    Element elementEnteredDate,
    List<CodeableConcept> reason,
    List<Reference> service,
    Reference productReference,
    CodeableConcept productCodeableConcept,
    List<Reference> account,
    List<Annotation> note,
    List<Reference> supportingInformation,
  }) async {
    var fhirDb = new DatabaseHelper();
    ChargeItem newChargeItem = new ChargeItem(
      resourceType: 'ChargeItem',
      id: id ?? await fhirDb.newResourceId('ChargeItem'),
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
      definitionUri: definitionUri,
      elementDefinitionUri: elementDefinitionUri,
      definitionCanonical: definitionCanonical,
      status: status,
      elementStatus: elementStatus,
      partOf: partOf,
      code: code,
      subject: subject,
      context: context,
      occurrenceDateTime: occurrenceDateTime,
      elementOccurrenceDateTime: elementOccurrenceDateTime,
      occurrencePeriod: occurrencePeriod,
      occurrenceTiming: occurrenceTiming,
      performer: performer,
      performingOrganization: performingOrganization,
      requestingOrganization: requestingOrganization,
      costCenter: costCenter,
      quantity: quantity,
      bodysite: bodysite,
      factorOverride: factorOverride,
      elementFactorOverride: elementFactorOverride,
      priceOverride: priceOverride,
      overrideReason: overrideReason,
      elementOverrideReason: elementOverrideReason,
      enterer: enterer,
      enteredDate: enteredDate,
      elementEnteredDate: elementEnteredDate,
      reason: reason,
      service: service,
      productReference: productReference,
      productCodeableConcept: productCodeableConcept,
      account: account,
      note: note,
      supportingInformation: supportingInformation,
    );
    newChargeItem.meta.createdAt = DateTime.now();
    newChargeItem.meta.lastUpdated = newChargeItem.meta.createdAt;
    int saved = await fhirDb.saveResource(newChargeItem);
    return newChargeItem;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saveed = await fhirDb.saveResource(this);
  }

  String resourceType = 'ChargeItem';
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
  List<String> definitionUri;
  List<Element> elementDefinitionUri;
  List<String> definitionCanonical;
  String status;
  Element elementStatus;
  List<Reference> partOf;
  CodeableConcept code;
  Reference subject;
  Reference context;
  String occurrenceDateTime;
  Element elementOccurrenceDateTime;
  Period occurrencePeriod;
  Timing occurrenceTiming;
  List<ChargeItem_Performer> performer;
  Reference performingOrganization;
  Reference requestingOrganization;
  Reference costCenter;
  Quantity quantity;
  List<CodeableConcept> bodysite;
  double factorOverride;
  Element elementFactorOverride;
  Money priceOverride;
  String overrideReason;
  Element elementOverrideReason;
  Reference enterer;
  DateTime enteredDate;
  Element elementEnteredDate;
  List<CodeableConcept> reason;
  List<Reference> service;
  Reference productReference;
  CodeableConcept productCodeableConcept;
  List<Reference> account;
  List<Annotation> note;
  List<Reference> supportingInformation;

  ChargeItem({
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
    this.definitionUri,
    this.elementDefinitionUri,
    this.definitionCanonical,
    this.status,
    this.elementStatus,
    this.partOf,
    @required this.code,
    @required this.subject,
    this.context,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.performer,
    this.performingOrganization,
    this.requestingOrganization,
    this.costCenter,
    this.quantity,
    this.bodysite,
    this.factorOverride,
    this.elementFactorOverride,
    this.priceOverride,
    this.overrideReason,
    this.elementOverrideReason,
    this.enterer,
    this.enteredDate,
    this.elementEnteredDate,
    this.reason,
    this.service,
    this.productReference,
    this.productCodeableConcept,
    this.account,
    this.note,
    this.supportingInformation,
  });

  factory ChargeItem.fromJson(Map<String, dynamic> json) =>
      _$ChargeItemFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChargeItem_Performer {
  static Future<ChargeItem_Performer> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept function,
    Reference actor,
  }) async {
    var fhirDb = new DatabaseHelper();
    ChargeItem_Performer newChargeItem_Performer = new ChargeItem_Performer(
      id: id ?? await fhirDb.newResourceId('ChargeItem_Performer'),
      extension: extension,
      modifierExtension: modifierExtension,
      function: function,
      actor: actor,
    );
    return newChargeItem_Performer;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept function;
  Reference actor;

  ChargeItem_Performer({
    this.id,
    this.extension,
    this.modifierExtension,
    this.function,
    @required this.actor,
  });

  factory ChargeItem_Performer.fromJson(Map<String, dynamic> json) =>
      _$ChargeItem_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItem_PerformerToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeItem _$ChargeItemFromJson(Map<String, dynamic> json) {
  return ChargeItem(
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
    definitionUri:
        (json['definitionUri'] as List)?.map((e) => e as String)?.toList(),
    elementDefinitionUri: (json['elementDefinitionUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    definitionCanonical: (json['definitionCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    context: json['context'] == null
        ? null
        : Reference.fromJson(json['context'] as Map<String, dynamic>),
    occurrenceDateTime: json['occurrenceDateTime'] as String,
    elementOccurrenceDateTime: json['elementOccurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOccurrenceDateTime'] as Map<String, dynamic>),
    occurrencePeriod: json['occurrencePeriod'] == null
        ? null
        : Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>),
    occurrenceTiming: json['occurrenceTiming'] == null
        ? null
        : Timing.fromJson(json['occurrenceTiming'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) => e == null
            ? null
            : ChargeItem_Performer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    performingOrganization: json['performingOrganization'] == null
        ? null
        : Reference.fromJson(
            json['performingOrganization'] as Map<String, dynamic>),
    requestingOrganization: json['requestingOrganization'] == null
        ? null
        : Reference.fromJson(
            json['requestingOrganization'] as Map<String, dynamic>),
    costCenter: json['costCenter'] == null
        ? null
        : Reference.fromJson(json['costCenter'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    bodysite: (json['bodysite'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    factorOverride: (json['factorOverride'] as num)?.toDouble(),
    elementFactorOverride: json['elementFactorOverride'] == null
        ? null
        : Element.fromJson(
            json['elementFactorOverride'] as Map<String, dynamic>),
    priceOverride: json['priceOverride'] == null
        ? null
        : Money.fromJson(json['priceOverride'] as Map<String, dynamic>),
    overrideReason: json['overrideReason'] as String,
    elementOverrideReason: json['elementOverrideReason'] == null
        ? null
        : Element.fromJson(
            json['elementOverrideReason'] as Map<String, dynamic>),
    enterer: json['enterer'] == null
        ? null
        : Reference.fromJson(json['enterer'] as Map<String, dynamic>),
    enteredDate: json['enteredDate'] == null
        ? null
        : DateTime.parse(json['enteredDate'] as String),
    elementEnteredDate: json['elementEnteredDate'] == null
        ? null
        : Element.fromJson(json['elementEnteredDate'] as Map<String, dynamic>),
    reason: (json['reason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    service: (json['service'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    productReference: json['productReference'] == null
        ? null
        : Reference.fromJson(json['productReference'] as Map<String, dynamic>),
    productCodeableConcept: json['productCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productCodeableConcept'] as Map<String, dynamic>),
    account: (json['account'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInformation: (json['supportingInformation'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ChargeItemToJson(ChargeItem instance) =>
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
      'definitionUri': instance.definitionUri,
      'elementDefinitionUri':
          instance.elementDefinitionUri?.map((e) => e?.toJson())?.toList(),
      'definitionCanonical': instance.definitionCanonical,
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'partOf': instance.partOf?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'subject': instance.subject?.toJson(),
      'context': instance.context?.toJson(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'elementOccurrenceDateTime': instance.elementOccurrenceDateTime?.toJson(),
      'occurrencePeriod': instance.occurrencePeriod?.toJson(),
      'occurrenceTiming': instance.occurrenceTiming?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'performingOrganization': instance.performingOrganization?.toJson(),
      'requestingOrganization': instance.requestingOrganization?.toJson(),
      'costCenter': instance.costCenter?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'bodysite': instance.bodysite?.map((e) => e?.toJson())?.toList(),
      'factorOverride': instance.factorOverride,
      'elementFactorOverride': instance.elementFactorOverride?.toJson(),
      'priceOverride': instance.priceOverride?.toJson(),
      'overrideReason': instance.overrideReason,
      'elementOverrideReason': instance.elementOverrideReason?.toJson(),
      'enterer': instance.enterer?.toJson(),
      'enteredDate': instance.enteredDate?.toIso8601String(),
      'elementEnteredDate': instance.elementEnteredDate?.toJson(),
      'reason': instance.reason?.map((e) => e?.toJson())?.toList(),
      'service': instance.service?.map((e) => e?.toJson())?.toList(),
      'productReference': instance.productReference?.toJson(),
      'productCodeableConcept': instance.productCodeableConcept?.toJson(),
      'account': instance.account?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'supportingInformation':
          instance.supportingInformation?.map((e) => e?.toJson())?.toList(),
    };

ChargeItem_Performer _$ChargeItem_PerformerFromJson(Map<String, dynamic> json) {
  return ChargeItem_Performer(
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

Map<String, dynamic> _$ChargeItem_PerformerToJson(
        ChargeItem_Performer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'function': instance.function?.toJson(),
      'actor': instance.actor?.toJson(),
    };
