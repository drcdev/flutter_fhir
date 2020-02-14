import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class Specimen {


	static Future<Specimen> newInstance({
		String  resourceType,
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
		Identifier accessionIdentifier,
		String status,
		Element elementStatus,
		CodeableConcept type,
		Reference subject,
		DateTime receivedTime,
		Element elementReceivedTime,
		List<Reference> parent,
		List<Reference> request,
		Specimen_Collection collection,
		List<Specimen_Processing> processing,
		List<Specimen_Container> container,
		List<CodeableConcept> condition,
		List<Annotation> note}) async {
	var fhirDb = new DatabaseHelper();
	Specimen newSpecimen = new Specimen(
			resourceType: resourceType,
			id: await fhirDb.newResourceId('Specimen'),
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
			accessionIdentifier: accessionIdentifier,
			status: status,
			elementStatus: elementStatus,
			type: type,
			subject: subject,
			receivedTime: receivedTime,
			elementReceivedTime: elementReceivedTime,
			parent: parent,
			request: request,
			collection: collection,
			processing: processing,
			container: container,
			condition: condition,
			note: note,
);
	int saved = await fhirDb.saveResource(newSpecimen);
	return newSpecimen;
}

save () async {
	var fhirDb = new DatabaseHelper();
	int saved = await fhirDb.save(this);
}
  String resourceType= 'Specimen';
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
  Identifier accessionIdentifier;
  String status; // <code> enum: available/unavailable/unsatisfactory/entered-in-error;
  Element elementStatus;
  CodeableConcept type;
  Reference subject;
  DateTime receivedTime;
  Element elementReceivedTime;
  List<Reference> parent;
  List<Reference> request;
  Specimen_Collection collection;
  List<Specimen_Processing> processing;
  List<Specimen_Container> container;
  List<CodeableConcept> condition;
  List<Annotation> note;

Specimen(
  {@required this.resourceType,
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
    this.accessionIdentifier,
    this.status,
    this.elementStatus,
    this.type,
    this.subject,
    this.receivedTime,
    this.elementReceivedTime,
    this.parent,
    this.request,
    this.collection,
    this.processing,
    this.container,
    this.condition,
    this.note
    });

  factory Specimen.fromJson(Map<String, dynamic> json) => _$SpecimenFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Specimen_Collection {


	static Future<Specimen_Collection> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference collector,
		String collectedDateTime,
		Element elementCollectedDateTime,
		Period collectedPeriod,
		Duration duration,
		Quantity quantity,
		CodeableConcept method,
		CodeableConcept bodySite,
		CodeableConcept fastingStatusCodeableConcept,
		Duration fastingStatusDuration}) async {
	var fhirDb = new DatabaseHelper();
	Specimen_Collection newSpecimen_Collection = new Specimen_Collection(
			id: await fhirDb.newResourceId('Specimen_Collection'),
			extension: extension,
			modifierExtension: modifierExtension,
			collector: collector,
			collectedDateTime: collectedDateTime,
			elementCollectedDateTime: elementCollectedDateTime,
			collectedPeriod: collectedPeriod,
			duration: duration,
			quantity: quantity,
			method: method,
			bodySite: bodySite,
			fastingStatusCodeableConcept: fastingStatusCodeableConcept,
			fastingStatusDuration: fastingStatusDuration,
);
	return newSpecimen_Collection;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference collector;
  String collectedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementCollectedDateTime;
  Period collectedPeriod;
  Duration duration;
  Quantity quantity;
  CodeableConcept method;
  CodeableConcept bodySite;
  CodeableConcept fastingStatusCodeableConcept;
  Duration fastingStatusDuration;

Specimen_Collection(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.collector,
    this.collectedDateTime,
    this.elementCollectedDateTime,
    this.collectedPeriod,
    this.duration,
    this.quantity,
    this.method,
    this.bodySite,
    this.fastingStatusCodeableConcept,
    this.fastingStatusDuration
    });

  factory Specimen_Collection.fromJson(Map<String, dynamic> json) => _$Specimen_CollectionFromJson(json);
  Map<String, dynamic> toJson() => _$Specimen_CollectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Specimen_Processing {


	static Future<Specimen_Processing> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String description,
		Element elementDescription,
		CodeableConcept procedure,
		List<Reference> additive,
		String timeDateTime,
		Element elementTimeDateTime,
		Period timePeriod}) async {
	var fhirDb = new DatabaseHelper();
	Specimen_Processing newSpecimen_Processing = new Specimen_Processing(
			id: await fhirDb.newResourceId('Specimen_Processing'),
			extension: extension,
			modifierExtension: modifierExtension,
			description: description,
			elementDescription: elementDescription,
			procedure: procedure,
			additive: additive,
			timeDateTime: timeDateTime,
			elementTimeDateTime: elementTimeDateTime,
			timePeriod: timePeriod,
);
	return newSpecimen_Processing;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  CodeableConcept procedure;
  List<Reference> additive;
  String timeDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementTimeDateTime;
  Period timePeriod;

Specimen_Processing(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.procedure,
    this.additive,
    this.timeDateTime,
    this.elementTimeDateTime,
    this.timePeriod
    });

  factory Specimen_Processing.fromJson(Map<String, dynamic> json) => _$Specimen_ProcessingFromJson(json);
  Map<String, dynamic> toJson() => _$Specimen_ProcessingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Specimen_Container {


	static Future<Specimen_Container> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<Identifier> identifier,
		String description,
		Element elementDescription,
		CodeableConcept type,
		Quantity capacity,
		Quantity specimenQuantity,
		CodeableConcept additiveCodeableConcept,
		Reference additiveReference}) async {
	var fhirDb = new DatabaseHelper();
	Specimen_Container newSpecimen_Container = new Specimen_Container(
			id: await fhirDb.newResourceId('Specimen_Container'),
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			description: description,
			elementDescription: elementDescription,
			type: type,
			capacity: capacity,
			specimenQuantity: specimenQuantity,
			additiveCodeableConcept: additiveCodeableConcept,
			additiveReference: additiveReference,
);
	return newSpecimen_Container;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  String description;
  Element elementDescription;
  CodeableConcept type;
  Quantity capacity;
  Quantity specimenQuantity;
  CodeableConcept additiveCodeableConcept;
  Reference additiveReference;

Specimen_Container(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.description,
    this.elementDescription,
    this.type,
    this.capacity,
    this.specimenQuantity,
    this.additiveCodeableConcept,
    this.additiveReference
    });

  factory Specimen_Container.fromJson(Map<String, dynamic> json) => _$Specimen_ContainerFromJson(json);
  Map<String, dynamic> toJson() => _$Specimen_ContainerToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Specimen _$SpecimenFromJson(Map<String, dynamic> json) {
  return Specimen(
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
    accessionIdentifier: json['accessionIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['accessionIdentifier'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    receivedTime: json['receivedTime'] == null
        ? null
        : DateTime.parse(json['receivedTime'] as String),
    elementReceivedTime: json['elementReceivedTime'] == null
        ? null
        : Element.fromJson(json['elementReceivedTime'] as Map<String, dynamic>),
    parent: (json['parent'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    request: (json['request'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    collection: json['collection'] == null
        ? null
        : Specimen_Collection.fromJson(
            json['collection'] as Map<String, dynamic>),
    processing: (json['processing'] as List)
        ?.map((e) => e == null
            ? null
            : Specimen_Processing.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    container: (json['container'] as List)
        ?.map((e) => e == null
            ? null
            : Specimen_Container.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: (json['condition'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SpecimenToJson(Specimen instance) => <String, dynamic>{
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
      'accessionIdentifier': instance.accessionIdentifier?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'type': instance.type?.toJson(),
      'subject': instance.subject?.toJson(),
      'receivedTime': instance.receivedTime?.toIso8601String(),
      'elementReceivedTime': instance.elementReceivedTime?.toJson(),
      'parent': instance.parent?.map((e) => e?.toJson())?.toList(),
      'request': instance.request?.map((e) => e?.toJson())?.toList(),
      'collection': instance.collection?.toJson(),
      'processing': instance.processing?.map((e) => e?.toJson())?.toList(),
      'container': instance.container?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };

Specimen_Collection _$Specimen_CollectionFromJson(Map<String, dynamic> json) {
  return Specimen_Collection(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    collector: json['collector'] == null
        ? null
        : Reference.fromJson(json['collector'] as Map<String, dynamic>),
    collectedDateTime: json['collectedDateTime'] as String,
    elementCollectedDateTime: json['elementCollectedDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementCollectedDateTime'] as Map<String, dynamic>),
    collectedPeriod: json['collectedPeriod'] == null
        ? null
        : Period.fromJson(json['collectedPeriod'] as Map<String, dynamic>),
    duration: json['duration'] == null
        ? null
        : Duration.fromJson(json['duration'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    bodySite: json['bodySite'] == null
        ? null
        : CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>),
    fastingStatusCodeableConcept: json['fastingStatusCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['fastingStatusCodeableConcept'] as Map<String, dynamic>),
    fastingStatusDuration: json['fastingStatusDuration'] == null
        ? null
        : Duration.fromJson(
            json['fastingStatusDuration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Specimen_CollectionToJson(
        Specimen_Collection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'collector': instance.collector?.toJson(),
      'collectedDateTime': instance.collectedDateTime,
      'elementCollectedDateTime': instance.elementCollectedDateTime?.toJson(),
      'collectedPeriod': instance.collectedPeriod?.toJson(),
      'duration': instance.duration?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'method': instance.method?.toJson(),
      'bodySite': instance.bodySite?.toJson(),
      'fastingStatusCodeableConcept':
          instance.fastingStatusCodeableConcept?.toJson(),
      'fastingStatusDuration': instance.fastingStatusDuration?.toJson(),
    };

Specimen_Processing _$Specimen_ProcessingFromJson(Map<String, dynamic> json) {
  return Specimen_Processing(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    procedure: json['procedure'] == null
        ? null
        : CodeableConcept.fromJson(json['procedure'] as Map<String, dynamic>),
    additive: (json['additive'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    timeDateTime: json['timeDateTime'] as String,
    elementTimeDateTime: json['elementTimeDateTime'] == null
        ? null
        : Element.fromJson(json['elementTimeDateTime'] as Map<String, dynamic>),
    timePeriod: json['timePeriod'] == null
        ? null
        : Period.fromJson(json['timePeriod'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Specimen_ProcessingToJson(
        Specimen_Processing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'procedure': instance.procedure?.toJson(),
      'additive': instance.additive?.map((e) => e?.toJson())?.toList(),
      'timeDateTime': instance.timeDateTime,
      'elementTimeDateTime': instance.elementTimeDateTime?.toJson(),
      'timePeriod': instance.timePeriod?.toJson(),
    };

Specimen_Container _$Specimen_ContainerFromJson(Map<String, dynamic> json) {
  return Specimen_Container(
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
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    capacity: json['capacity'] == null
        ? null
        : Quantity.fromJson(json['capacity'] as Map<String, dynamic>),
    specimenQuantity: json['specimenQuantity'] == null
        ? null
        : Quantity.fromJson(json['specimenQuantity'] as Map<String, dynamic>),
    additiveCodeableConcept: json['additiveCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['additiveCodeableConcept'] as Map<String, dynamic>),
    additiveReference: json['additiveReference'] == null
        ? null
        : Reference.fromJson(json['additiveReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Specimen_ContainerToJson(Specimen_Container instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'type': instance.type?.toJson(),
      'capacity': instance.capacity?.toJson(),
      'specimenQuantity': instance.specimenQuantity?.toJson(),
      'additiveCodeableConcept': instance.additiveCodeableConcept?.toJson(),
      'additiveReference': instance.additiveReference?.toJson(),
    };
