import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 533)
class Specimen {

  //  This is a Specimen resource
  @HiveField(0)
  final String resourceType= 'Specimen';

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

  //  Id for specimen.
  @HiveField(11)
  List<Identifier> identifier;

  //  The identifier assigned by the lab when accessioning specimen(s). This
  // is not necessarily the same as the specimen identifier, depending on
  // local lab procedures.
  @HiveField(12)
  Identifier accessionIdentifier;

  //  The availability of the specimen.
  @HiveField(13)
  String status; // <code> enum: available/unavailable/unsatisfactory/entered-in-error;

  //  Extensions for status
  @HiveField(14)
  Element elementStatus;

  //  The kind of material that forms the specimen.
  @HiveField(15)
  CodeableConcept type;

  //  Where the specimen came from. This may be from patient(s), from a
  // location (e.g., the source of an environmental sample), or a sampling
  // of a substance or a device.
  @HiveField(16)
  Reference subject;

  //  Time when specimen was received for processing or testing.
  @HiveField(17)
  DateTime receivedTime;

  //  Extensions for receivedTime
  @HiveField(18)
  Element elementReceivedTime;

  //  Reference to the parent (source) specimen which is used when the
  // specimen was either derived from or a component of another specimen.
  @HiveField(19)
  List<Reference> parent;

  //  Details concerning a service request that required a specimen to be
  // collected.
  @HiveField(20)
  List<Reference> request;

  //  Details concerning the specimen collection.
  @HiveField(21)
  Specimen_Collection collection;

  //  Details concerning processing and processing steps for the specimen.
  @HiveField(22)
  List<Specimen_Processing> processing;

  //  The container holding the specimen.  The recursive nature of
  // containers; i.e. blood in tube in tray in rack is not addressed here.
  @HiveField(23)
  List<Specimen_Container> container;

  //  A mode or state of being that describes the nature of the specimen.
  @HiveField(24)
  List<CodeableConcept> condition;

  //  To communicate any details or issues about the specimen or during the
  // specimen collection. (for example: broken vial, sent with patient,
  // frozen).
  @HiveField(25)
  List<Annotation> note;

Specimen(
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

  //  Person who collected the specimen.
  Reference collector;

  //  Time when specimen was collected from subject - the physiologically
  // relevant time.
  String collectedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for collectedDateTime
  Element elementCollectedDateTime;

  //  Time when specimen was collected from subject - the physiologically
  // relevant time.
  Period collectedPeriod;

  //  The span of time over which the collection of a specimen occurred.
  Duration duration;

  //  The quantity of specimen collected; for instance the volume of a blood
  // sample, or the physical measurement of an anatomic pathology sample.
  Quantity quantity;

  //  A coded value specifying the technique that is used to perform the
  // procedure.
  CodeableConcept method;

  //  Anatomical location from which the specimen was collected (if subject
  // is a patient). This is the target site.  This element is not used for
  // environmental specimens.
  CodeableConcept bodySite;

  //  Abstinence or reduction from some or all food, drink, or both, for a
  // period of time prior to sample collection.
  CodeableConcept fastingStatusCodeableConcept;

  //  Abstinence or reduction from some or all food, drink, or both, for a
  // period of time prior to sample collection.
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

  //  Textual description of procedure.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  A coded value specifying the procedure used to process the specimen.
  CodeableConcept procedure;

  //  Material used in the processing step.
  List<Reference> additive;

  //  A record of the time or period when the specimen processing occurred. 
  // For example the time of sample fixation or the period of time the
  // sample was in formalin.
  String timeDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for timeDateTime
  Element elementTimeDateTime;

  //  A record of the time or period when the specimen processing occurred. 
  // For example the time of sample fixation or the period of time the
  // sample was in formalin.
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

  //  Id for container. There may be multiple; a manufacturer's bar code,
  // lab assigned identifier, etc. The container ID may differ from the
  // specimen id in some circumstances.
  List<Identifier> identifier;

  //  Textual description of the container.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  The type of container associated with the specimen (e.g. slide,
  // aliquot, etc.).
  CodeableConcept type;

  //  The capacity (volume or other measure) the container may contain.
  Quantity capacity;

  //  The quantity of specimen in the container; may be volume, dimensions,
  // or other appropriate measurements, depending on the specimen type.
  Quantity specimenQuantity;

  //  Introduced substance to preserve, maintain or enhance the specimen.
  // Examples: Formalin, Citrate, EDTA.
  CodeableConcept additiveCodeableConcept;

  //  Introduced substance to preserve, maintain or enhance the specimen.
  // Examples: Formalin, Citrate, EDTA.
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
// TypeAdapterGenerator
// **************************************************************************

class SpecimenAdapter extends TypeAdapter<Specimen> {
  @override
  final typeId = 533;

  @override
  Specimen read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Specimen(
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
      accessionIdentifier: fields[12] as Identifier,
      status: fields[13] as String,
      elementStatus: fields[14] as Element,
      type: fields[15] as CodeableConcept,
      subject: fields[16] as Reference,
      receivedTime: fields[17] as DateTime,
      elementReceivedTime: fields[18] as Element,
      parent: (fields[19] as List)?.cast<Reference>(),
      request: (fields[20] as List)?.cast<Reference>(),
      collection: fields[21] as Specimen_Collection,
      processing: (fields[22] as List)?.cast<Specimen_Processing>(),
      container: (fields[23] as List)?.cast<Specimen_Container>(),
      condition: (fields[24] as List)?.cast<CodeableConcept>(),
      note: (fields[25] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, Specimen obj) {
    writer
      ..writeByte(26)
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
      ..write(obj.accessionIdentifier)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.elementStatus)
      ..writeByte(15)
      ..write(obj.type)
      ..writeByte(16)
      ..write(obj.subject)
      ..writeByte(17)
      ..write(obj.receivedTime)
      ..writeByte(18)
      ..write(obj.elementReceivedTime)
      ..writeByte(19)
      ..write(obj.parent)
      ..writeByte(20)
      ..write(obj.request)
      ..writeByte(21)
      ..write(obj.collection)
      ..writeByte(22)
      ..write(obj.processing)
      ..writeByte(23)
      ..write(obj.container)
      ..writeByte(24)
      ..write(obj.condition)
      ..writeByte(25)
      ..write(obj.note);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Specimen _$SpecimenFromJson(Map<String, dynamic> json) {
  return Specimen(
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
