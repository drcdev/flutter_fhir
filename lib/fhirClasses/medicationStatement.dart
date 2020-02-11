import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
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
@HiveType(typeId: 396)
class MedicationStatement {

  //  This is a MedicationStatement resource
  @HiveField(0)
  final String resourceType= 'MedicationStatement';

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

  //  Identifiers associated with this Medication Statement that are defined
  // by business processes and/or used to refer to it when a direct URL
  // reference to the resource itself is not appropriate. They are business
  // identifiers assigned to this resource by the performer or other systems
  // and remain constant as the resource is updated and propagates from
  // server to server.
  @HiveField(11)
  List<Identifier> identifier;

  //  A plan, proposal or order that is fulfilled in whole or in part by
  // this event.
  @HiveField(12)
  List<Reference> basedOn;

  //  A larger event of which this particular event is a component or step.
  @HiveField(13)
  List<Reference> partOf;

  //  A code representing the patient or other source's judgment about the
  // state of the medication used that this statement is about.  Generally,
  // this will be active or completed.
  @HiveField(14)
  String status;

  //  Extensions for status
  @HiveField(15)
  Element elementStatus;

  //  Captures the reason for the current state of the MedicationStatement.
  @HiveField(16)
  List<CodeableConcept> statusReason;

  //  Indicates where the medication is expected to be consumed or
  // administered.
  @HiveField(17)
  CodeableConcept category;

  //  Identifies the medication being administered. This is either a link to
  // a resource representing the details of the medication or a simple
  // attribute carrying a code that identifies the medication from a known
  // list of medications.
  @HiveField(18)
  CodeableConcept medicationCodeableConcept;

  //  Identifies the medication being administered. This is either a link to
  // a resource representing the details of the medication or a simple
  // attribute carrying a code that identifies the medication from a known
  // list of medications.
  @HiveField(19)
  Reference medicationReference;

  //  The person, animal or group who is/was taking the medication.
  @HiveField(20)
  Reference subject;

  //  The encounter or episode of care that establishes the context for this
  // MedicationStatement.
  @HiveField(21)
  Reference context;

  //  The interval of time during which it is being asserted that the
  // patient is/was/will be taking the medication (or was not taking, when
  // the MedicationStatement.taken element is No).
  @HiveField(22)
  String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for effectiveDateTime
  @HiveField(23)
  Element elementEffectiveDateTime;

  //  The interval of time during which it is being asserted that the
  // patient is/was/will be taking the medication (or was not taking, when
  // the MedicationStatement.taken element is No).
  @HiveField(24)
  Period effectivePeriod;

  //  The date when the medication statement was asserted by the information
  // source.
  @HiveField(25)
  DateTime dateAsserted;

  //  Extensions for dateAsserted
  @HiveField(26)
  Element elementDateAsserted;

  //  The person or organization that provided the information about the
  // taking of this medication. Note: Use derivedFrom when a
  // MedicationStatement is derived from other resources, e.g. Claim or
  // MedicationRequest.
  @HiveField(27)
  Reference informationSource;

  //  Allows linking the MedicationStatement to the underlying
  // MedicationRequest, or to other information that supports or is used to
  // derive the MedicationStatement.
  @HiveField(28)
  List<Reference> derivedFrom;

  //  A reason for why the medication is being/was taken.
  @HiveField(29)
  List<CodeableConcept> reasonCode;

  //  Condition or observation that supports why the medication is being/was
  // taken.
  @HiveField(30)
  List<Reference> reasonReference;

  //  Provides extra information about the medication statement that is not
  // conveyed by the other attributes.
  @HiveField(31)
  List<Annotation> note;

  //  Indicates how the medication is/was or should be taken by the patient.
  @HiveField(32)
  List<Dosage> dosage;

MedicationStatement(
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
    this.basedOn,
    this.partOf,
    this.status,
    this.elementStatus,
    this.statusReason,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    this.context,
    this.effectiveDateTime,
    this.elementEffectiveDateTime,
    this.effectivePeriod,
    this.dateAsserted,
    this.elementDateAsserted,
    this.informationSource,
    this.derivedFrom,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.dosage
    });

  factory MedicationStatement.fromJson(Map<String, dynamic> json) => _$MedicationStatementFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationStatementToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicationStatementAdapter extends TypeAdapter<MedicationStatement> {
  @override
  final typeId = 396;

  @override
  MedicationStatement read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationStatement(
      fields[20] as Reference,
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
      basedOn: (fields[12] as List)?.cast<Reference>(),
      partOf: (fields[13] as List)?.cast<Reference>(),
      status: fields[14] as String,
      elementStatus: fields[15] as Element,
      statusReason: (fields[16] as List)?.cast<CodeableConcept>(),
      category: fields[17] as CodeableConcept,
      medicationCodeableConcept: fields[18] as CodeableConcept,
      medicationReference: fields[19] as Reference,
      context: fields[21] as Reference,
      effectiveDateTime: fields[22] as String,
      elementEffectiveDateTime: fields[23] as Element,
      effectivePeriod: fields[24] as Period,
      dateAsserted: fields[25] as DateTime,
      elementDateAsserted: fields[26] as Element,
      informationSource: fields[27] as Reference,
      derivedFrom: (fields[28] as List)?.cast<Reference>(),
      reasonCode: (fields[29] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[30] as List)?.cast<Reference>(),
      note: (fields[31] as List)?.cast<Annotation>(),
      dosage: (fields[32] as List)?.cast<Dosage>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicationStatement obj) {
    writer
      ..writeByte(33)
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
      ..write(obj.basedOn)
      ..writeByte(13)
      ..write(obj.partOf)
      ..writeByte(14)
      ..write(obj.status)
      ..writeByte(15)
      ..write(obj.elementStatus)
      ..writeByte(16)
      ..write(obj.statusReason)
      ..writeByte(17)
      ..write(obj.category)
      ..writeByte(18)
      ..write(obj.medicationCodeableConcept)
      ..writeByte(19)
      ..write(obj.medicationReference)
      ..writeByte(20)
      ..write(obj.subject)
      ..writeByte(21)
      ..write(obj.context)
      ..writeByte(22)
      ..write(obj.effectiveDateTime)
      ..writeByte(23)
      ..write(obj.elementEffectiveDateTime)
      ..writeByte(24)
      ..write(obj.effectivePeriod)
      ..writeByte(25)
      ..write(obj.dateAsserted)
      ..writeByte(26)
      ..write(obj.elementDateAsserted)
      ..writeByte(27)
      ..write(obj.informationSource)
      ..writeByte(28)
      ..write(obj.derivedFrom)
      ..writeByte(29)
      ..write(obj.reasonCode)
      ..writeByte(30)
      ..write(obj.reasonReference)
      ..writeByte(31)
      ..write(obj.note)
      ..writeByte(32)
      ..write(obj.dosage);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationStatement _$MedicationStatementFromJson(Map<String, dynamic> json) {
  return MedicationStatement(
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
    statusReason: (json['statusReason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    context: json['context'] == null
        ? null
        : Reference.fromJson(json['context'] as Map<String, dynamic>),
    effectiveDateTime: json['effectiveDateTime'] as String,
    elementEffectiveDateTime: json['elementEffectiveDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementEffectiveDateTime'] as Map<String, dynamic>),
    effectivePeriod: json['effectivePeriod'] == null
        ? null
        : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
    dateAsserted: json['dateAsserted'] == null
        ? null
        : DateTime.parse(json['dateAsserted'] as String),
    elementDateAsserted: json['elementDateAsserted'] == null
        ? null
        : Element.fromJson(json['elementDateAsserted'] as Map<String, dynamic>),
    informationSource: json['informationSource'] == null
        ? null
        : Reference.fromJson(json['informationSource'] as Map<String, dynamic>),
    derivedFrom: (json['derivedFrom'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
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
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dosage: (json['dosage'] as List)
        ?.map((e) =>
            e == null ? null : Dosage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationStatementToJson(
        MedicationStatement instance) =>
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
      'statusReason': instance.statusReason?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'medicationCodeableConcept': instance.medicationCodeableConcept?.toJson(),
      'medicationReference': instance.medicationReference?.toJson(),
      'subject': instance.subject?.toJson(),
      'context': instance.context?.toJson(),
      'effectiveDateTime': instance.effectiveDateTime,
      'elementEffectiveDateTime': instance.elementEffectiveDateTime?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'dateAsserted': instance.dateAsserted?.toIso8601String(),
      'elementDateAsserted': instance.elementDateAsserted?.toJson(),
      'informationSource': instance.informationSource?.toJson(),
      'derivedFrom': instance.derivedFrom?.map((e) => e?.toJson())?.toList(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'dosage': instance.dosage?.map((e) => e?.toJson())?.toList(),
    };
