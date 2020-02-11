import 'package:hive/hive.dart';
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
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 72)
class ChargeItem {

  //  This is a ChargeItem resource
  @HiveField(0)
  final String resourceType= 'ChargeItem';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  Identifiers assigned to this event performer or other systems.
  @HiveField(11)
  List<Identifier> identifier;

  //  References the (external) source of pricing information, rules of
  // application for the code this ChargeItem uses.
  @HiveField(12)
  List<String> definitionUri;

  //  Extensions for definitionUri
  @HiveField(13)
  List<Element> elementDefinitionUri;

  //  References the source of pricing information, rules of application for
  // the code this ChargeItem uses.
  @HiveField(14)
  List<String> definitionCanonical;

  //  The current state of the ChargeItem.
  @HiveField(15)
  String status; // <code> enum: planned/billable/not-billable/aborted/billed/entered-in-error/unknown;

  //  Extensions for status
  @HiveField(16)
  Element elementStatus;

  //  ChargeItems can be grouped to larger ChargeItems covering the whole
  // set.
  @HiveField(17)
  List<Reference> partOf;

  //  A code that identifies the charge, like a billing code.
  @HiveField(18)
  CodeableConcept code;

  //  The individual or set of individuals the action is being or was
  // performed on.
  @HiveField(19)
  Reference subject;

  //  The encounter or episode of care that establishes the context for this
  // event.
  @HiveField(20)
  Reference context;

  //  Date/time(s) or duration when the charged service was applied.
  @HiveField(21)
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for occurrenceDateTime
  @HiveField(22)
  Element elementOccurrenceDateTime;

  //  Date/time(s) or duration when the charged service was applied.
  @HiveField(23)
  Period occurrencePeriod;

  //  Date/time(s) or duration when the charged service was applied.
  @HiveField(24)
  Timing occurrenceTiming;

  //  Indicates who or what performed or participated in the charged
  // service.
  @HiveField(25)
  List<ChargeItem_Performer> performer;

  //  The organization requesting the service.
  @HiveField(26)
  Reference performingOrganization;

  //  The organization performing the service.
  @HiveField(27)
  Reference requestingOrganization;

  //  The financial cost center permits the tracking of charge attribution.
  @HiveField(28)
  Reference costCenter;

  //  Quantity of which the charge item has been serviced.
  @HiveField(29)
  Quantity quantity;

  //  The anatomical location where the related service has been applied.
  @HiveField(30)
  List<CodeableConcept> bodysite;

  //  Factor overriding the factor determined by the rules associated with
  // the code.
  @HiveField(31)
  double factorOverride;

  //  Extensions for factorOverride
  @HiveField(32)
  Element elementFactorOverride;

  //  Total price of the charge overriding the list price associated with
  // the code.
  @HiveField(33)
  Money priceOverride;

  //  If the list price or the rule-based factor associated with the code is
  // overridden, this attribute can capture a text to indicate the  reason
  // for this action.
  @HiveField(34)
  String overrideReason;

  //  Extensions for overrideReason
  @HiveField(35)
  Element elementOverrideReason;

  //  The device, practitioner, etc. who entered the charge item.
  @HiveField(36)
  Reference enterer;

  //  Date the charge item was entered.
  @HiveField(37)
  DateTime enteredDate;

  //  Extensions for enteredDate
  @HiveField(38)
  Element elementEnteredDate;

  //  Describes why the event occurred in coded or textual form.
  @HiveField(39)
  List<CodeableConcept> reason;

  //  Indicated the rendered service that caused this charge.
  @HiveField(40)
  List<Reference> service;

  //  Identifies the device, food, drug or other product being charged
  // either by type code or reference to an instance.
  @HiveField(41)
  Reference productReference;

  //  Identifies the device, food, drug or other product being charged
  // either by type code or reference to an instance.
  @HiveField(42)
  CodeableConcept productCodeableConcept;

  //  Account into which this ChargeItems belongs.
  @HiveField(43)
  List<Reference> account;

  //  Comments made about the event by the performer, subject or other
  // participants.
  @HiveField(44)
  List<Annotation> note;

  //  Further information supporting this charge.
  @HiveField(45)
  List<Reference> supportingInformation;

ChargeItem(
  this.code,
    this.subject,
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Describes the type of performance or participation(e.g. primary
  // surgeon, anesthesiologiest, etc.).
  CodeableConcept function;

  //  The device, practitioner, etc. who performed or participated in the
  // service.
  Reference actor;

ChargeItem_Performer(
  this.actor,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.function
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
      fields[18] as CodeableConcept,
      fields[19] as Reference,
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
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
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
