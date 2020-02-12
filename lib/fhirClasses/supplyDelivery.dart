import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

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
class SupplyDelivery {

	static Future<SupplyDelivery> newInstance({
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
		List<Reference> basedOn,
		List<Reference> partOf,
		String status,
		Element elementStatus,
		Reference patient,
		CodeableConcept type,
		SupplyDelivery_SuppliedItem suppliedItem,
		String occurrenceDateTime,
		Element elementOccurrenceDateTime,
		Period occurrencePeriod,
		Timing occurrenceTiming,
		Reference supplier,
		Reference destination,
		List<Reference> receiver}) async {
	SupplyDelivery newSupplyDelivery = new SupplyDelivery(
			id: await newId('SupplyDelivery'),
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
			basedOn: basedOn,
			partOf: partOf,
			status: status,
			elementStatus: elementStatus,
			patient: patient,
			type: type,
			suppliedItem: suppliedItem,
			occurrenceDateTime: occurrenceDateTime,
			elementOccurrenceDateTime: elementOccurrenceDateTime,
			occurrencePeriod: occurrencePeriod,
			occurrenceTiming: occurrenceTiming,
			supplier: supplier,
			destination: destination,
			receiver: receiver);
	var supplyDeliveryBox = await Hive.openBox<SupplyDelivery>('SupplyDeliveryBox');
	supplyDeliveryBox.put(newSupplyDelivery.id, newSupplyDelivery);
	return newSupplyDelivery;
}
  final String resourceType= 'SupplyDelivery';
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
  List<Reference> basedOn;
  List<Reference> partOf;
  String status; // <code> enum: in-progress/completed/abandoned/entered-in-error;
  Element elementStatus;
  Reference patient;
  CodeableConcept type;
  SupplyDelivery_SuppliedItem suppliedItem;
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementOccurrenceDateTime;
  Period occurrencePeriod;
  Timing occurrenceTiming;
  Reference supplier;
  Reference destination;
  List<Reference> receiver;

SupplyDelivery(
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
    this.basedOn,
    this.partOf,
    this.status,
    this.elementStatus,
    this.patient,
    this.type,
    this.suppliedItem,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.supplier,
    this.destination,
    this.receiver
    });

  factory SupplyDelivery.fromJson(Map<String, dynamic> json) => _$SupplyDeliveryFromJson(json);
  Map<String, dynamic> toJson() => _$SupplyDeliveryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SupplyDelivery_SuppliedItem {

	static Future<SupplyDelivery_SuppliedItem> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Quantity quantity,
		CodeableConcept itemCodeableConcept,
		Reference itemReference}) async {
	SupplyDelivery_SuppliedItem newSupplyDelivery_SuppliedItem = new SupplyDelivery_SuppliedItem(
			id: await newId('SupplyDelivery_SuppliedItem'),
			extension: extension,
			modifierExtension: modifierExtension,
			quantity: quantity,
			itemCodeableConcept: itemCodeableConcept,
			itemReference: itemReference);
	var supplyDelivery_SuppliedItemBox = await Hive.openBox<SupplyDelivery_SuppliedItem>('SupplyDelivery_SuppliedItemBox');
	supplyDelivery_SuppliedItemBox.put(newSupplyDelivery_SuppliedItem.id, newSupplyDelivery_SuppliedItem);
	return newSupplyDelivery_SuppliedItem;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Quantity quantity;
  CodeableConcept itemCodeableConcept;
  Reference itemReference;

SupplyDelivery_SuppliedItem(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.quantity,
    this.itemCodeableConcept,
    this.itemReference
    });

  factory SupplyDelivery_SuppliedItem.fromJson(Map<String, dynamic> json) => _$SupplyDelivery_SuppliedItemFromJson(json);
  Map<String, dynamic> toJson() => _$SupplyDelivery_SuppliedItemToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupplyDelivery _$SupplyDeliveryFromJson(Map<String, dynamic> json) {
  return SupplyDelivery(
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
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    suppliedItem: json['suppliedItem'] == null
        ? null
        : SupplyDelivery_SuppliedItem.fromJson(
            json['suppliedItem'] as Map<String, dynamic>),
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
    supplier: json['supplier'] == null
        ? null
        : Reference.fromJson(json['supplier'] as Map<String, dynamic>),
    destination: json['destination'] == null
        ? null
        : Reference.fromJson(json['destination'] as Map<String, dynamic>),
    receiver: (json['receiver'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SupplyDeliveryToJson(SupplyDelivery instance) =>
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
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'patient': instance.patient?.toJson(),
      'type': instance.type?.toJson(),
      'suppliedItem': instance.suppliedItem?.toJson(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'elementOccurrenceDateTime': instance.elementOccurrenceDateTime?.toJson(),
      'occurrencePeriod': instance.occurrencePeriod?.toJson(),
      'occurrenceTiming': instance.occurrenceTiming?.toJson(),
      'supplier': instance.supplier?.toJson(),
      'destination': instance.destination?.toJson(),
      'receiver': instance.receiver?.map((e) => e?.toJson())?.toList(),
    };

SupplyDelivery_SuppliedItem _$SupplyDelivery_SuppliedItemFromJson(
    Map<String, dynamic> json) {
  return SupplyDelivery_SuppliedItem(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    itemCodeableConcept: json['itemCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['itemCodeableConcept'] as Map<String, dynamic>),
    itemReference: json['itemReference'] == null
        ? null
        : Reference.fromJson(json['itemReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SupplyDelivery_SuppliedItemToJson(
        SupplyDelivery_SuppliedItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'itemCodeableConcept': instance.itemCodeableConcept?.toJson(),
      'itemReference': instance.itemReference?.toJson(),
    };
