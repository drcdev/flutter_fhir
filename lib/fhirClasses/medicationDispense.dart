import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

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
@HiveType(typeId: 132)
class MedicationDispense {

	static Future<MedicationDispense> newInstance({
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
		List<Reference> partOf,
		String status,
		Element elementStatus,
		CodeableConcept statusReasonCodeableConcept,
		Reference statusReasonReference,
		CodeableConcept category,
		CodeableConcept medicationCodeableConcept,
		Reference medicationReference,
		Reference subject,
		Reference context,
		List<Reference> supportingInformation,
		List<MedicationDispense_Performer> performer,
		Reference location,
		List<Reference> authorizingPrescription,
		CodeableConcept type,
		Quantity quantity,
		Quantity daysSupply,
		DateTime whenPrepared,
		Element elementWhenPrepared,
		DateTime whenHandedOver,
		Element elementWhenHandedOver,
		Reference destination,
		List<Reference> receiver,
		List<Annotation> note,
		List<Dosage> dosageInstruction,
		MedicationDispense_Substitution substitution,
		List<Reference> detectedIssue,
		List<Reference> eventHistory}) async {
	 return MedicationDispense(
			id: await newEntry('MedicationDispense'),
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
			partOf: partOf,
			status: status,
			elementStatus: elementStatus,
			statusReasonCodeableConcept: statusReasonCodeableConcept,
			statusReasonReference: statusReasonReference,
			category: category,
			medicationCodeableConcept: medicationCodeableConcept,
			medicationReference: medicationReference,
			subject: subject,
			context: context,
			supportingInformation: supportingInformation,
			performer: performer,
			location: location,
			authorizingPrescription: authorizingPrescription,
			type: type,
			quantity: quantity,
			daysSupply: daysSupply,
			whenPrepared: whenPrepared,
			elementWhenPrepared: elementWhenPrepared,
			whenHandedOver: whenHandedOver,
			elementWhenHandedOver: elementWhenHandedOver,
			destination: destination,
			receiver: receiver,
			note: note,
			dosageInstruction: dosageInstruction,
			substitution: substitution,
			detectedIssue: detectedIssue,
			eventHistory: eventHistory);
	}

  @HiveField(0)
  final String resourceType= 'MedicationDispense';
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
  List<Reference> partOf;
  @HiveField(13)
  String status;
  @HiveField(14)
  Element elementStatus;
  @HiveField(15)
  CodeableConcept statusReasonCodeableConcept;
  @HiveField(16)
  Reference statusReasonReference;
  @HiveField(17)
  CodeableConcept category;
  @HiveField(18)
  CodeableConcept medicationCodeableConcept;
  @HiveField(19)
  Reference medicationReference;
  @HiveField(20)
  Reference subject;
  @HiveField(21)
  Reference context;
  @HiveField(22)
  List<Reference> supportingInformation;
  @HiveField(23)
  List<MedicationDispense_Performer> performer;
  @HiveField(24)
  Reference location;
  @HiveField(25)
  List<Reference> authorizingPrescription;
  @HiveField(26)
  CodeableConcept type;
  @HiveField(27)
  Quantity quantity;
  @HiveField(28)
  Quantity daysSupply;
  @HiveField(29)
  DateTime whenPrepared;
  @HiveField(30)
  Element elementWhenPrepared;
  @HiveField(31)
  DateTime whenHandedOver;
  @HiveField(32)
  Element elementWhenHandedOver;
  @HiveField(33)
  Reference destination;
  @HiveField(34)
  List<Reference> receiver;
  @HiveField(35)
  List<Annotation> note;
  @HiveField(36)
  List<Dosage> dosageInstruction;
  @HiveField(37)
  MedicationDispense_Substitution substitution;
  @HiveField(38)
  List<Reference> detectedIssue;
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

	static Future<MedicationDispense_Performer> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept function,
		Reference actor}) async {
	 return MedicationDispense_Performer(
			id: await newEntry('MedicationDispense_Performer'),
			extension: extension,
			modifierExtension: modifierExtension,
			function: function,
			actor: actor);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept function;
  Reference actor;

MedicationDispense_Performer(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.function,
    @required this.actor
    });

  factory MedicationDispense_Performer.fromJson(Map<String, dynamic> json) => _$MedicationDispense_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationDispense_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationDispense_Substitution {

	static Future<MedicationDispense_Substitution> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		bool wasSubstituted,
		Element elementWasSubstituted,
		CodeableConcept type,
		List<CodeableConcept> reason,
		List<Reference> responsibleParty}) async {
	 return MedicationDispense_Substitution(
			id: await newEntry('MedicationDispense_Substitution'),
			extension: extension,
			modifierExtension: modifierExtension,
			wasSubstituted: wasSubstituted,
			elementWasSubstituted: elementWasSubstituted,
			type: type,
			reason: reason,
			responsibleParty: responsibleParty);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool wasSubstituted;
  Element elementWasSubstituted;
  CodeableConcept type;
  List<CodeableConcept> reason;
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
  final typeId = 132;

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
