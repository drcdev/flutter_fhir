import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
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
@HiveType(typeId: 131)
class MedicationAdministration {

	static Future<MedicationAdministration> newInstance({
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
		List<String> instantiates,
		List<Element> elementInstantiates,
		List<Reference> partOf,
		String status,
		Element elementStatus,
		List<CodeableConcept> statusReason,
		CodeableConcept category,
		CodeableConcept medicationCodeableConcept,
		Reference medicationReference,
		Reference subject,
		Reference context,
		List<Reference> supportingInformation,
		String effectiveDateTime,
		Element elementEffectiveDateTime,
		Period effectivePeriod,
		List<MedicationAdministration_Performer> performer,
		List<CodeableConcept> reasonCode,
		List<Reference> reasonReference,
		Reference request,
		List<Reference> device,
		List<Annotation> note,
		MedicationAdministration_Dosage dosage,
		List<Reference> eventHistory}) async {
	MedicationAdministration newMedicationAdministration = new MedicationAdministration(
			id: await newId('MedicationAdministration'),
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
			instantiates: instantiates,
			elementInstantiates: elementInstantiates,
			partOf: partOf,
			status: status,
			elementStatus: elementStatus,
			statusReason: statusReason,
			category: category,
			medicationCodeableConcept: medicationCodeableConcept,
			medicationReference: medicationReference,
			subject: subject,
			context: context,
			supportingInformation: supportingInformation,
			effectiveDateTime: effectiveDateTime,
			elementEffectiveDateTime: elementEffectiveDateTime,
			effectivePeriod: effectivePeriod,
			performer: performer,
			reasonCode: reasonCode,
			reasonReference: reasonReference,
			request: request,
			device: device,
			note: note,
			dosage: dosage,
			eventHistory: eventHistory);
	var medicationAdministrationBox = await Hive.openBox<MedicationAdministration>('MedicationAdministrationBox');
	medicationAdministrationBox.add(newMedicationAdministration);
	return newMedicationAdministration;
}
  @HiveField(0)
  final String resourceType= 'MedicationAdministration';
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
  List<String> instantiates;
  @HiveField(13)
  List<Element> elementInstantiates;
  @HiveField(14)
  List<Reference> partOf;
  @HiveField(15)
  String status;
  @HiveField(16)
  Element elementStatus;
  @HiveField(17)
  List<CodeableConcept> statusReason;
  @HiveField(18)
  CodeableConcept category;
  @HiveField(19)
  CodeableConcept medicationCodeableConcept;
  @HiveField(20)
  Reference medicationReference;
  @HiveField(21)
  Reference subject;
  @HiveField(22)
  Reference context;
  @HiveField(23)
  List<Reference> supportingInformation;
  @HiveField(24)
  String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  @HiveField(25)
  Element elementEffectiveDateTime;
  @HiveField(26)
  Period effectivePeriod;
  @HiveField(27)
  List<MedicationAdministration_Performer> performer;
  @HiveField(28)
  List<CodeableConcept> reasonCode;
  @HiveField(29)
  List<Reference> reasonReference;
  @HiveField(30)
  Reference request;
  @HiveField(31)
  List<Reference> device;
  @HiveField(32)
  List<Annotation> note;
  @HiveField(33)
  MedicationAdministration_Dosage dosage;
  @HiveField(34)
  List<Reference> eventHistory;

MedicationAdministration(
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
    this.instantiates,
    this.elementInstantiates,
    this.partOf,
    this.status,
    this.elementStatus,
    this.statusReason,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    @required this.subject,
    this.context,
    this.supportingInformation,
    this.effectiveDateTime,
    this.elementEffectiveDateTime,
    this.effectivePeriod,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.request,
    this.device,
    this.note,
    this.dosage,
    this.eventHistory
    });

  factory MedicationAdministration.fromJson(Map<String, dynamic> json) => _$MedicationAdministrationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationAdministrationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationAdministration_Performer {

	static Future<MedicationAdministration_Performer> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept function,
		Reference actor}) async {
	MedicationAdministration_Performer newMedicationAdministration_Performer = new MedicationAdministration_Performer(
			id: await newId('MedicationAdministration_Performer'),
			extension: extension,
			modifierExtension: modifierExtension,
			function: function,
			actor: actor);
	var medicationAdministration_PerformerBox = await Hive.openBox<MedicationAdministration_Performer>('MedicationAdministration_PerformerBox');
	medicationAdministration_PerformerBox.add(newMedicationAdministration_Performer);
	return newMedicationAdministration_Performer;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept function;
  Reference actor;

MedicationAdministration_Performer(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.function,
    @required this.actor
    });

  factory MedicationAdministration_Performer.fromJson(Map<String, dynamic> json) => _$MedicationAdministration_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationAdministration_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationAdministration_Dosage {

	static Future<MedicationAdministration_Dosage> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String text,
		Element elementText,
		CodeableConcept site,
		CodeableConcept route,
		CodeableConcept method,
		Quantity dose,
		Ratio rateRatio,
		Quantity rateQuantity}) async {
	MedicationAdministration_Dosage newMedicationAdministration_Dosage = new MedicationAdministration_Dosage(
			id: await newId('MedicationAdministration_Dosage'),
			extension: extension,
			modifierExtension: modifierExtension,
			text: text,
			elementText: elementText,
			site: site,
			route: route,
			method: method,
			dose: dose,
			rateRatio: rateRatio,
			rateQuantity: rateQuantity);
	var medicationAdministration_DosageBox = await Hive.openBox<MedicationAdministration_Dosage>('MedicationAdministration_DosageBox');
	medicationAdministration_DosageBox.add(newMedicationAdministration_Dosage);
	return newMedicationAdministration_Dosage;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String text;
  Element elementText;
  CodeableConcept site;
  CodeableConcept route;
  CodeableConcept method;
  Quantity dose;
  Ratio rateRatio;
  Quantity rateQuantity;

MedicationAdministration_Dosage(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.text,
    this.elementText,
    this.site,
    this.route,
    this.method,
    this.dose,
    this.rateRatio,
    this.rateQuantity
    });

  factory MedicationAdministration_Dosage.fromJson(Map<String, dynamic> json) => _$MedicationAdministration_DosageFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationAdministration_DosageToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicationAdministrationAdapter
    extends TypeAdapter<MedicationAdministration> {
  @override
  final typeId = 131;

  @override
  MedicationAdministration read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationAdministration(
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
      instantiates: (fields[12] as List)?.cast<String>(),
      elementInstantiates: (fields[13] as List)?.cast<Element>(),
      partOf: (fields[14] as List)?.cast<Reference>(),
      status: fields[15] as String,
      elementStatus: fields[16] as Element,
      statusReason: (fields[17] as List)?.cast<CodeableConcept>(),
      category: fields[18] as CodeableConcept,
      medicationCodeableConcept: fields[19] as CodeableConcept,
      medicationReference: fields[20] as Reference,
      subject: fields[21] as Reference,
      context: fields[22] as Reference,
      supportingInformation: (fields[23] as List)?.cast<Reference>(),
      effectiveDateTime: fields[24] as String,
      elementEffectiveDateTime: fields[25] as Element,
      effectivePeriod: fields[26] as Period,
      performer:
          (fields[27] as List)?.cast<MedicationAdministration_Performer>(),
      reasonCode: (fields[28] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[29] as List)?.cast<Reference>(),
      request: fields[30] as Reference,
      device: (fields[31] as List)?.cast<Reference>(),
      note: (fields[32] as List)?.cast<Annotation>(),
      dosage: fields[33] as MedicationAdministration_Dosage,
      eventHistory: (fields[34] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicationAdministration obj) {
    writer
      ..writeByte(35)
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
      ..write(obj.instantiates)
      ..writeByte(13)
      ..write(obj.elementInstantiates)
      ..writeByte(14)
      ..write(obj.partOf)
      ..writeByte(15)
      ..write(obj.status)
      ..writeByte(16)
      ..write(obj.elementStatus)
      ..writeByte(17)
      ..write(obj.statusReason)
      ..writeByte(18)
      ..write(obj.category)
      ..writeByte(19)
      ..write(obj.medicationCodeableConcept)
      ..writeByte(20)
      ..write(obj.medicationReference)
      ..writeByte(21)
      ..write(obj.subject)
      ..writeByte(22)
      ..write(obj.context)
      ..writeByte(23)
      ..write(obj.supportingInformation)
      ..writeByte(24)
      ..write(obj.effectiveDateTime)
      ..writeByte(25)
      ..write(obj.elementEffectiveDateTime)
      ..writeByte(26)
      ..write(obj.effectivePeriod)
      ..writeByte(27)
      ..write(obj.performer)
      ..writeByte(28)
      ..write(obj.reasonCode)
      ..writeByte(29)
      ..write(obj.reasonReference)
      ..writeByte(30)
      ..write(obj.request)
      ..writeByte(31)
      ..write(obj.device)
      ..writeByte(32)
      ..write(obj.note)
      ..writeByte(33)
      ..write(obj.dosage)
      ..writeByte(34)
      ..write(obj.eventHistory);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationAdministration _$MedicationAdministrationFromJson(
    Map<String, dynamic> json) {
  return MedicationAdministration(
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
    instantiates:
        (json['instantiates'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiates: (json['elementInstantiates'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
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
    effectiveDateTime: json['effectiveDateTime'] as String,
    elementEffectiveDateTime: json['elementEffectiveDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementEffectiveDateTime'] as Map<String, dynamic>),
    effectivePeriod: json['effectivePeriod'] == null
        ? null
        : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationAdministration_Performer.fromJson(
                e as Map<String, dynamic>))
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
    request: json['request'] == null
        ? null
        : Reference.fromJson(json['request'] as Map<String, dynamic>),
    device: (json['device'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dosage: json['dosage'] == null
        ? null
        : MedicationAdministration_Dosage.fromJson(
            json['dosage'] as Map<String, dynamic>),
    eventHistory: (json['eventHistory'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationAdministrationToJson(
        MedicationAdministration instance) =>
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
      'instantiates': instance.instantiates,
      'elementInstantiates':
          instance.elementInstantiates?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusReason': instance.statusReason?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'medicationCodeableConcept': instance.medicationCodeableConcept?.toJson(),
      'medicationReference': instance.medicationReference?.toJson(),
      'subject': instance.subject?.toJson(),
      'context': instance.context?.toJson(),
      'supportingInformation':
          instance.supportingInformation?.map((e) => e?.toJson())?.toList(),
      'effectiveDateTime': instance.effectiveDateTime,
      'elementEffectiveDateTime': instance.elementEffectiveDateTime?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'request': instance.request?.toJson(),
      'device': instance.device?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'dosage': instance.dosage?.toJson(),
      'eventHistory': instance.eventHistory?.map((e) => e?.toJson())?.toList(),
    };

MedicationAdministration_Performer _$MedicationAdministration_PerformerFromJson(
    Map<String, dynamic> json) {
  return MedicationAdministration_Performer(
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

Map<String, dynamic> _$MedicationAdministration_PerformerToJson(
        MedicationAdministration_Performer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'function': instance.function?.toJson(),
      'actor': instance.actor?.toJson(),
    };

MedicationAdministration_Dosage _$MedicationAdministration_DosageFromJson(
    Map<String, dynamic> json) {
  return MedicationAdministration_Dosage(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    site: json['site'] == null
        ? null
        : CodeableConcept.fromJson(json['site'] as Map<String, dynamic>),
    route: json['route'] == null
        ? null
        : CodeableConcept.fromJson(json['route'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    dose: json['dose'] == null
        ? null
        : Quantity.fromJson(json['dose'] as Map<String, dynamic>),
    rateRatio: json['rateRatio'] == null
        ? null
        : Ratio.fromJson(json['rateRatio'] as Map<String, dynamic>),
    rateQuantity: json['rateQuantity'] == null
        ? null
        : Quantity.fromJson(json['rateQuantity'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationAdministration_DosageToJson(
        MedicationAdministration_Dosage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'site': instance.site?.toJson(),
      'route': instance.route?.toJson(),
      'method': instance.method?.toJson(),
      'dose': instance.dose?.toJson(),
      'rateRatio': instance.rateRatio?.toJson(),
      'rateQuantity': instance.rateQuantity?.toJson(),
    };
