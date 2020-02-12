import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 72)
class ChargeItem {

	static Future<ChargeItem> newInstance({
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
		List<Reference> supportingInformation}) async {
	ChargeItem newChargeItem = new ChargeItem(
			id: await newId('ChargeItem'),
			meta: meta,
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
			supportingInformation: supportingInformation);
	var chargeItemBox = await Hive.openBox<ChargeItem>('ChargeItemBox');
	chargeItemBox.add(newChargeItem);
	return newChargeItem;
}
  @HiveField(0)
  final String resourceType= 'ChargeItem';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Identifier> identifier;
  @HiveField(12)
  List<String> definitionUri;
  @HiveField(13)
  List<Element> elementDefinitionUri;
  @HiveField(14)
  List<String> definitionCanonical;
  @HiveField(15)
  String status; // <code> enum: planned/billable/not-billable/aborted/billed/entered-in-error/unknown;
  @HiveField(16)
  Element elementStatus;
  @HiveField(17)
  List<Reference> partOf;
  @HiveField(18)
  CodeableConcept code;
  @HiveField(19)
  Reference subject;
  @HiveField(20)
  Reference context;
  @HiveField(21)
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  @HiveField(22)
  Element elementOccurrenceDateTime;
  @HiveField(23)
  Period occurrencePeriod;
  @HiveField(24)
  Timing occurrenceTiming;
  @HiveField(25)
  List<ChargeItem_Performer> performer;
  @HiveField(26)
  Reference performingOrganization;
  @HiveField(27)
  Reference requestingOrganization;
  @HiveField(28)
  Reference costCenter;
  @HiveField(29)
  Quantity quantity;
  @HiveField(30)
  List<CodeableConcept> bodysite;
  @HiveField(31)
  double factorOverride;
  @HiveField(32)
  Element elementFactorOverride;
  @HiveField(33)
  Money priceOverride;
  @HiveField(34)
  String overrideReason;
  @HiveField(35)
  Element elementOverrideReason;
  @HiveField(36)
  Reference enterer;
  @HiveField(37)
  DateTime enteredDate;
  @HiveField(38)
  Element elementEnteredDate;
  @HiveField(39)
  List<CodeableConcept> reason;
  @HiveField(40)
  List<Reference> service;
  @HiveField(41)
  Reference productReference;
  @HiveField(42)
  CodeableConcept productCodeableConcept;
  @HiveField(43)
  List<Reference> account;
  @HiveField(44)
  List<Annotation> note;
  @HiveField(45)
  List<Reference> supportingInformation;

ChargeItem(
  {this.id,
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
    this.supportingInformation
    });

  factory ChargeItem.fromJson(Map<String, dynamic> json) => _$ChargeItemFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChargeItem_Performer {

	static Future<ChargeItem_Performer> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept function,
		Reference actor}) async {
	ChargeItem_Performer newChargeItem_Performer = new ChargeItem_Performer(
			id: await newId('ChargeItem_Performer'),
			extension: extension,
			modifierExtension: modifierExtension,
			function: function,
			actor: actor);
	var chargeItem_PerformerBox = await Hive.openBox<ChargeItem_Performer>('ChargeItem_PerformerBox');
	chargeItem_PerformerBox.add(newChargeItem_Performer);
	return newChargeItem_Performer;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept function;
  Reference actor;

ChargeItem_Performer(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.function,
    @required this.actor
    });

  factory ChargeItem_Performer.fromJson(Map<String, dynamic> json) => _$ChargeItem_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItem_PerformerToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChargeItemAdapter extends TypeAdapter<ChargeItem> {
  @override
  final typeId = 72;

  @override
  ChargeItem read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChargeItem(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      definitionUri: (fields[12] as List)?.cast<String>(),
      elementDefinitionUri: (fields[13] as List)?.cast<Element>(),
      definitionCanonical: (fields[14] as List)?.cast<String>(),
      status: fields[15] as String,
      elementStatus: fields[16] as Element,
      partOf: (fields[17] as List)?.cast<Reference>(),
      code: fields[18] as CodeableConcept,
      subject: fields[19] as Reference,
      context: fields[20] as Reference,
      occurrenceDateTime: fields[21] as String,
      elementOccurrenceDateTime: fields[22] as Element,
      occurrencePeriod: fields[23] as Period,
      occurrenceTiming: fields[24] as Timing,
      performer: (fields[25] as List)?.cast<ChargeItem_Performer>(),
      performingOrganization: fields[26] as Reference,
      requestingOrganization: fields[27] as Reference,
      costCenter: fields[28] as Reference,
      quantity: fields[29] as Quantity,
      bodysite: (fields[30] as List)?.cast<CodeableConcept>(),
      factorOverride: fields[31] as double,
      elementFactorOverride: fields[32] as Element,
      priceOverride: fields[33] as Money,
      overrideReason: fields[34] as String,
      elementOverrideReason: fields[35] as Element,
      enterer: fields[36] as Reference,
      enteredDate: fields[37] as DateTime,
      elementEnteredDate: fields[38] as Element,
      reason: (fields[39] as List)?.cast<CodeableConcept>(),
      service: (fields[40] as List)?.cast<Reference>(),
      productReference: fields[41] as Reference,
      productCodeableConcept: fields[42] as CodeableConcept,
      account: (fields[43] as List)?.cast<Reference>(),
      note: (fields[44] as List)?.cast<Annotation>(),
      supportingInformation: (fields[45] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, ChargeItem obj) {
    writer
      ..writeByte(46)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.definitionUri)
      ..writeByte(13)
      ..write(obj.elementDefinitionUri)
      ..writeByte(14)
      ..write(obj.definitionCanonical)
      ..writeByte(15)
      ..write(obj.status)
      ..writeByte(16)
      ..write(obj.elementStatus)
      ..writeByte(17)
      ..write(obj.partOf)
      ..writeByte(18)
      ..write(obj.code)
      ..writeByte(19)
      ..write(obj.subject)
      ..writeByte(20)
      ..write(obj.context)
      ..writeByte(21)
      ..write(obj.occurrenceDateTime)
      ..writeByte(22)
      ..write(obj.elementOccurrenceDateTime)
      ..writeByte(23)
      ..write(obj.occurrencePeriod)
      ..writeByte(24)
      ..write(obj.occurrenceTiming)
      ..writeByte(25)
      ..write(obj.performer)
      ..writeByte(26)
      ..write(obj.performingOrganization)
      ..writeByte(27)
      ..write(obj.requestingOrganization)
      ..writeByte(28)
      ..write(obj.costCenter)
      ..writeByte(29)
      ..write(obj.quantity)
      ..writeByte(30)
      ..write(obj.bodysite)
      ..writeByte(31)
      ..write(obj.factorOverride)
      ..writeByte(32)
      ..write(obj.elementFactorOverride)
      ..writeByte(33)
      ..write(obj.priceOverride)
      ..writeByte(34)
      ..write(obj.overrideReason)
      ..writeByte(35)
      ..write(obj.elementOverrideReason)
      ..writeByte(36)
      ..write(obj.enterer)
      ..writeByte(37)
      ..write(obj.enteredDate)
      ..writeByte(38)
      ..write(obj.elementEnteredDate)
      ..writeByte(39)
      ..write(obj.reason)
      ..writeByte(40)
      ..write(obj.service)
      ..writeByte(41)
      ..write(obj.productReference)
      ..writeByte(42)
      ..write(obj.productCodeableConcept)
      ..writeByte(43)
      ..write(obj.account)
      ..writeByte(44)
      ..write(obj.note)
      ..writeByte(45)
      ..write(obj.supportingInformation);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeItem _$ChargeItemFromJson(Map<String, dynamic> json) {
  return ChargeItem(
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
