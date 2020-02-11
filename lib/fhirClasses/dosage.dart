import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 36)
class Dosage {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Indicates the order in which the dosage instructions should be applied
  // or interpreted.
  @HiveField(3)
  int sequence;

  //  Extensions for sequence
  @HiveField(4)
  Element elementSequence;

  //  Free text dosage instructions e.g. SIG.
  @HiveField(5)
  String text;

  //  Extensions for text
  @HiveField(6)
  Element elementText;

  //  Supplemental instructions to the patient on how to take the medication
  //  (e.g. "with meals" or"take half to one hour before food") or warnings
  // for the patient about the medication (e.g. "may cause drowsiness" or
  // "avoid exposure of skin to direct sunlight or sunlamps").
  @HiveField(7)
  List<CodeableConcept> additionalInstruction;

  //  Instructions in terms that are understood by the patient or consumer.
  @HiveField(8)
  String patientInstruction;

  //  Extensions for patientInstruction
  @HiveField(9)
  Element elementPatientInstruction;

  //  When medication should be administered.
  @HiveField(10)
  Timing timing;

  //  Indicates whether the Medication is only taken when needed within a
  // specific dosing schedule (Boolean option), or it indicates the
  // precondition for taking the Medication (CodeableConcept).
  @HiveField(11)
  bool asNeededBoolean; //  pattern: ^true|false$

  //  Extensions for asNeededBoolean
  @HiveField(12)
  Element elementAsNeededBoolean;

  //  Indicates whether the Medication is only taken when needed within a
  // specific dosing schedule (Boolean option), or it indicates the
  // precondition for taking the Medication (CodeableConcept).
  @HiveField(13)
  CodeableConcept asNeededCodeableConcept;

  //  Body site to administer to.
  @HiveField(14)
  CodeableConcept site;

  //  How drug should enter body.
  @HiveField(15)
  CodeableConcept route;

  //  Technique for administering medication.
  @HiveField(16)
  CodeableConcept method;

  //  The amount of medication administered.
  @HiveField(17)
  List<Dosage_DoseAndRate> doseAndRate;

  //  Upper limit on medication per unit of time.
  @HiveField(18)
  Ratio maxDosePerPeriod;

  //  Upper limit on medication per administration.
  @HiveField(19)
  Quantity maxDosePerAdministration;

  //  Upper limit on medication per lifetime of the patient.
  @HiveField(20)
  Quantity maxDosePerLifetime;

Dosage(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.text,
    this.elementText,
    this.additionalInstruction,
    this.patientInstruction,
    this.elementPatientInstruction,
    this.timing,
    this.asNeededBoolean,
    this.elementAsNeededBoolean,
    this.asNeededCodeableConcept,
    this.site,
    this.route,
    this.method,
    this.doseAndRate,
    this.maxDosePerPeriod,
    this.maxDosePerAdministration,
    this.maxDosePerLifetime
    });

  factory Dosage.fromJson(Map<String, dynamic> json) => _$DosageFromJson(json);
  Map<String, dynamic> toJson() => _$DosageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Dosage_DoseAndRate {

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

  //  The kind of dose or rate specified, for example, ordered or
  // calculated.
  CodeableConcept type;

  //  Amount of medication per dose.
  Range doseRange;

  //  Amount of medication per dose.
  Quantity doseQuantity;

  //  Amount of medication per unit of time.
  Ratio rateRatio;

  //  Amount of medication per unit of time.
  Range rateRange;

  //  Amount of medication per unit of time.
  Quantity rateQuantity;

Dosage_DoseAndRate(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.doseRange,
    this.doseQuantity,
    this.rateRatio,
    this.rateRange,
    this.rateQuantity
    });

  factory Dosage_DoseAndRate.fromJson(Map<String, dynamic> json) => _$Dosage_DoseAndRateFromJson(json);
  Map<String, dynamic> toJson() => _$Dosage_DoseAndRateToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DosageAdapter extends TypeAdapter<Dosage> {
  @override
  final typeId = 36;

  @override
  Dosage read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Dosage(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      text: fields[5] as String,
      elementText: fields[6] as Element,
      additionalInstruction: (fields[7] as List)?.cast<CodeableConcept>(),
      patientInstruction: fields[8] as String,
      elementPatientInstruction: fields[9] as Element,
      timing: fields[10] as Timing,
      asNeededBoolean: fields[11] as bool,
      elementAsNeededBoolean: fields[12] as Element,
      asNeededCodeableConcept: fields[13] as CodeableConcept,
      site: fields[14] as CodeableConcept,
      route: fields[15] as CodeableConcept,
      method: fields[16] as CodeableConcept,
      doseAndRate: (fields[17] as List)?.cast<Dosage_DoseAndRate>(),
      maxDosePerPeriod: fields[18] as Ratio,
      maxDosePerAdministration: fields[19] as Quantity,
      maxDosePerLifetime: fields[20] as Quantity,
    );
  }

  @override
  void write(BinaryWriter writer, Dosage obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.sequence)
      ..writeByte(4)
      ..write(obj.elementSequence)
      ..writeByte(5)
      ..write(obj.text)
      ..writeByte(6)
      ..write(obj.elementText)
      ..writeByte(7)
      ..write(obj.additionalInstruction)
      ..writeByte(8)
      ..write(obj.patientInstruction)
      ..writeByte(9)
      ..write(obj.elementPatientInstruction)
      ..writeByte(10)
      ..write(obj.timing)
      ..writeByte(11)
      ..write(obj.asNeededBoolean)
      ..writeByte(12)
      ..write(obj.elementAsNeededBoolean)
      ..writeByte(13)
      ..write(obj.asNeededCodeableConcept)
      ..writeByte(14)
      ..write(obj.site)
      ..writeByte(15)
      ..write(obj.route)
      ..writeByte(16)
      ..write(obj.method)
      ..writeByte(17)
      ..write(obj.doseAndRate)
      ..writeByte(18)
      ..write(obj.maxDosePerPeriod)
      ..writeByte(19)
      ..write(obj.maxDosePerAdministration)
      ..writeByte(20)
      ..write(obj.maxDosePerLifetime);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dosage _$DosageFromJson(Map<String, dynamic> json) {
  return Dosage(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sequence: json['sequence'] as int,
    elementSequence: json['elementSequence'] == null
        ? null
        : Element.fromJson(json['elementSequence'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    additionalInstruction: (json['additionalInstruction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    patientInstruction: json['patientInstruction'] as String,
    elementPatientInstruction: json['elementPatientInstruction'] == null
        ? null
        : Element.fromJson(
            json['elementPatientInstruction'] as Map<String, dynamic>),
    timing: json['timing'] == null
        ? null
        : Timing.fromJson(json['timing'] as Map<String, dynamic>),
    asNeededBoolean: json['asNeededBoolean'] as bool,
    elementAsNeededBoolean: json['elementAsNeededBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementAsNeededBoolean'] as Map<String, dynamic>),
    asNeededCodeableConcept: json['asNeededCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['asNeededCodeableConcept'] as Map<String, dynamic>),
    site: json['site'] == null
        ? null
        : CodeableConcept.fromJson(json['site'] as Map<String, dynamic>),
    route: json['route'] == null
        ? null
        : CodeableConcept.fromJson(json['route'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    doseAndRate: (json['doseAndRate'] as List)
        ?.map((e) => e == null
            ? null
            : Dosage_DoseAndRate.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    maxDosePerPeriod: json['maxDosePerPeriod'] == null
        ? null
        : Ratio.fromJson(json['maxDosePerPeriod'] as Map<String, dynamic>),
    maxDosePerAdministration: json['maxDosePerAdministration'] == null
        ? null
        : Quantity.fromJson(
            json['maxDosePerAdministration'] as Map<String, dynamic>),
    maxDosePerLifetime: json['maxDosePerLifetime'] == null
        ? null
        : Quantity.fromJson(json['maxDosePerLifetime'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DosageToJson(Dosage instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'additionalInstruction':
          instance.additionalInstruction?.map((e) => e?.toJson())?.toList(),
      'patientInstruction': instance.patientInstruction,
      'elementPatientInstruction': instance.elementPatientInstruction?.toJson(),
      'timing': instance.timing?.toJson(),
      'asNeededBoolean': instance.asNeededBoolean,
      'elementAsNeededBoolean': instance.elementAsNeededBoolean?.toJson(),
      'asNeededCodeableConcept': instance.asNeededCodeableConcept?.toJson(),
      'site': instance.site?.toJson(),
      'route': instance.route?.toJson(),
      'method': instance.method?.toJson(),
      'doseAndRate': instance.doseAndRate?.map((e) => e?.toJson())?.toList(),
      'maxDosePerPeriod': instance.maxDosePerPeriod?.toJson(),
      'maxDosePerAdministration': instance.maxDosePerAdministration?.toJson(),
      'maxDosePerLifetime': instance.maxDosePerLifetime?.toJson(),
    };

Dosage_DoseAndRate _$Dosage_DoseAndRateFromJson(Map<String, dynamic> json) {
  return Dosage_DoseAndRate(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    doseRange: json['doseRange'] == null
        ? null
        : Range.fromJson(json['doseRange'] as Map<String, dynamic>),
    doseQuantity: json['doseQuantity'] == null
        ? null
        : Quantity.fromJson(json['doseQuantity'] as Map<String, dynamic>),
    rateRatio: json['rateRatio'] == null
        ? null
        : Ratio.fromJson(json['rateRatio'] as Map<String, dynamic>),
    rateRange: json['rateRange'] == null
        ? null
        : Range.fromJson(json['rateRange'] as Map<String, dynamic>),
    rateQuantity: json['rateQuantity'] == null
        ? null
        : Quantity.fromJson(json['rateQuantity'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Dosage_DoseAndRateToJson(Dosage_DoseAndRate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'doseRange': instance.doseRange?.toJson(),
      'doseQuantity': instance.doseQuantity?.toJson(),
      'rateRatio': instance.rateRatio?.toJson(),
      'rateRange': instance.rateRange?.toJson(),
      'rateQuantity': instance.rateQuantity?.toJson(),
    };
