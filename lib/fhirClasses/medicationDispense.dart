import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 372)
class MedicationDispense {

  //  This is a MedicationDispense resource
  @HiveField(0)
  final String resourceType= 'MedicationDispense';

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

  //  Identifiers associated with this Medication Dispense that are defined
  // by business processes and/or used to refer to it when a direct URL
  // reference to the resource itself is not appropriate. They are business
  // identifiers assigned to this resource by the performer or other systems
  // and remain constant as the resource is updated and propagates from
  // server to server.
  @HiveField(11)
  List<Identifier> identifier;

  //  The procedure that trigger the dispense.
  @HiveField(12)
  List<Reference> partOf;

  //  A code specifying the state of the set of dispense events.
  @HiveField(13)
  String status;

  //  Extensions for status
  @HiveField(14)
  Element elementStatus;

  //  Indicates the reason why a dispense was not performed.
  @HiveField(15)
  CodeableConcept statusReasonCodeableConcept;

  //  Indicates the reason why a dispense was not performed.
  @HiveField(16)
  Reference statusReasonReference;

  //  Indicates the type of medication dispense (for example, where the
  // medication is expected to be consumed or administered (i.e. inpatient
  // or outpatient)).
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

  //  A link to a resource representing the person or the group to whom the
  // medication will be given.
  @HiveField(20)
  Reference subject;

  //  The encounter or episode of care that establishes the context for this
  // event.
  @HiveField(21)
  Reference context;

  //  Additional information that supports the medication being dispensed.
  @HiveField(22)
  List<Reference> supportingInformation;

  //  Indicates who or what performed the event.
  @HiveField(23)
  List<MedicationDispense_Performer> performer;

  //  The principal physical location where the dispense was performed.
  @HiveField(24)
  Reference location;

  //  Indicates the medication order that is being dispensed against.
  @HiveField(25)
  List<Reference> authorizingPrescription;

  //  Indicates the type of dispensing event that is performed. For example,
  // Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples,
  // etc.
  @HiveField(26)
  CodeableConcept type;

  //  The amount of medication that has been dispensed. Includes unit of
  // measure.
  @HiveField(27)
  Quantity quantity;

  //  The amount of medication expressed as a timing amount.
  @HiveField(28)
  Quantity daysSupply;

  //  The time when the dispensed product was packaged and reviewed.
  @HiveField(29)
  DateTime whenPrepared;

  //  Extensions for whenPrepared
  @HiveField(30)
  Element elementWhenPrepared;

  //  The time the dispensed product was provided to the patient or their
  // representative.
  @HiveField(31)
  DateTime whenHandedOver;

  //  Extensions for whenHandedOver
  @HiveField(32)
  Element elementWhenHandedOver;

  //  Identification of the facility/location where the medication was
  // shipped to, as part of the dispense event.
  @HiveField(33)
  Reference destination;

  //  Identifies the person who picked up the medication.  This will usually
  // be a patient or their caregiver, but some cases exist where it can be a
  // healthcare professional.
  @HiveField(34)
  List<Reference> receiver;

  //  Extra information about the dispense that could not be conveyed in the
  // other attributes.
  @HiveField(35)
  List<Annotation> note;

  //  Indicates how the medication is to be used by the patient.
  @HiveField(36)
  List<Dosage> dosageInstruction;

  //  Indicates whether or not substitution was made as part of the
  // dispense.  In some cases, substitution will be expected but does not
  // happen, in other cases substitution is not expected but does happen. 
  // This block explains what substitution did or did not happen and why. 
  // If nothing is specified, substitution was not done.
  @HiveField(37)
  MedicationDispense_Substitution substitution;

  //  Indicates an actual or potential clinical issue with or between one or
  // more active or proposed clinical actions for a patient; e.g. drug-drug
  // interaction, duplicate therapy, dosage alert etc.
  @HiveField(38)
  List<Reference> detectedIssue;

  //  A summary of the events of interest that have occurred, such as when
  // the dispense was verified.
  @HiveField(39)
  List<Reference> eventHistory;

MedicationDispense(
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
    this.partOf,
    this.status,
    this.elementStatus,
    this.statusReasonCodeableConcept,
    this.statusReasonReference,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    this.subject,
    this.context,
    this.supportingInformation,
    this.performer,
    this.location,
    this.authorizingPrescription,
    this.type,
    this.quantity,
    this.daysSupply,
    this.whenPrepared,
    this.elementWhenPrepared,
    this.whenHandedOver,
    this.elementWhenHandedOver,
    this.destination,
    this.receiver,
    this.note,
    this.dosageInstruction,
    this.substitution,
    this.detectedIssue,
    this.eventHistory
    });

  factory MedicationDispense.fromJson(Map<String, dynamic> json) => _$MedicationDispenseFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationDispenseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationDispense_Performer {

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

  //  Distinguishes the type of performer in the dispense.  For example,
  // date enterer, packager, final checker.
  CodeableConcept function;

  //  The device, practitioner, etc. who performed the action.  It should be
  // assumed that the actor is the dispenser of the medication.
  Reference actor;

MedicationDispense_Performer(
  this.actor,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.function
    });

  factory MedicationDispense_Performer.fromJson(Map<String, dynamic> json) => _$MedicationDispense_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationDispense_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationDispense_Substitution {

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

  //  True if the dispenser dispensed a different drug or product from what
  // was prescribed.
  bool wasSubstituted;

  //  Extensions for wasSubstituted
  Element elementWasSubstituted;

  //  A code signifying whether a different drug was dispensed from what was
  // prescribed.
  CodeableConcept type;

  //  Indicates the reason for the substitution (or lack of substitution)
  // from what was prescribed.
  List<CodeableConcept> reason;

  //  The person or organization that has primary responsibility for the
  // substitution.
  List<Reference> responsibleParty;

MedicationDispense_Substitution(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.wasSubstituted,
    this.elementWasSubstituted,
    this.type,
    this.reason,
    this.responsibleParty
    });

  factory MedicationDispense_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationDispense_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationDispense_SubstitutionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicationDispenseAdapter extends TypeAdapter<MedicationDispense> {
  @override
  final typeId = 372;

  @override
  MedicationDispense read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationDispense(
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
      partOf: (fields[12] as List)?.cast<Reference>(),
      status: fields[13] as String,
      elementStatus: fields[14] as Element,
      statusReasonCodeableConcept: fields[15] as CodeableConcept,
      statusReasonReference: fields[16] as Reference,
      category: fields[17] as CodeableConcept,
      medicationCodeableConcept: fields[18] as CodeableConcept,
      medicationReference: fields[19] as Reference,
      subject: fields[20] as Reference,
      context: fields[21] as Reference,
      supportingInformation: (fields[22] as List)?.cast<Reference>(),
      performer: (fields[23] as List)?.cast<MedicationDispense_Performer>(),
      location: fields[24] as Reference,
      authorizingPrescription: (fields[25] as List)?.cast<Reference>(),
      type: fields[26] as CodeableConcept,
      quantity: fields[27] as Quantity,
      daysSupply: fields[28] as Quantity,
      whenPrepared: fields[29] as DateTime,
      elementWhenPrepared: fields[30] as Element,
      whenHandedOver: fields[31] as DateTime,
      elementWhenHandedOver: fields[32] as Element,
      destination: fields[33] as Reference,
      receiver: (fields[34] as List)?.cast<Reference>(),
      note: (fields[35] as List)?.cast<Annotation>(),
      dosageInstruction: (fields[36] as List)?.cast<Dosage>(),
      substitution: fields[37] as MedicationDispense_Substitution,
      detectedIssue: (fields[38] as List)?.cast<Reference>(),
      eventHistory: (fields[39] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicationDispense obj) {
    writer
      ..writeByte(40)
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
      ..write(obj.partOf)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.elementStatus)
      ..writeByte(15)
      ..write(obj.statusReasonCodeableConcept)
      ..writeByte(16)
      ..write(obj.statusReasonReference)
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
      ..write(obj.supportingInformation)
      ..writeByte(23)
      ..write(obj.performer)
      ..writeByte(24)
      ..write(obj.location)
      ..writeByte(25)
      ..write(obj.authorizingPrescription)
      ..writeByte(26)
      ..write(obj.type)
      ..writeByte(27)
      ..write(obj.quantity)
      ..writeByte(28)
      ..write(obj.daysSupply)
      ..writeByte(29)
      ..write(obj.whenPrepared)
      ..writeByte(30)
      ..write(obj.elementWhenPrepared)
      ..writeByte(31)
      ..write(obj.whenHandedOver)
      ..writeByte(32)
      ..write(obj.elementWhenHandedOver)
      ..writeByte(33)
      ..write(obj.destination)
      ..writeByte(34)
      ..write(obj.receiver)
      ..writeByte(35)
      ..write(obj.note)
      ..writeByte(36)
      ..write(obj.dosageInstruction)
      ..writeByte(37)
      ..write(obj.substitution)
      ..writeByte(38)
      ..write(obj.detectedIssue)
      ..writeByte(39)
      ..write(obj.eventHistory);
  }
}

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
      'contained': instance.contained,
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
