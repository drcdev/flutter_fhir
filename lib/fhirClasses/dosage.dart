import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 48)
class Dosage {

	static Future<Dosage> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		int sequence,
		Element elementSequence,
		String text,
		Element elementText,
		List<CodeableConcept> additionalInstruction,
		String patientInstruction,
		Element elementPatientInstruction,
		Timing timing,
		bool asNeededBoolean,
		Element elementAsNeededBoolean,
		CodeableConcept asNeededCodeableConcept,
		CodeableConcept site,
		CodeableConcept route,
		CodeableConcept method,
		List<Dosage_DoseAndRate> doseAndRate,
		Ratio maxDosePerPeriod,
		Quantity maxDosePerAdministration,
		Quantity maxDosePerLifetime}) async {
	Dosage newDosage = new Dosage(
			id: await newId('Dosage'),
			extension: extension,
			modifierExtension: modifierExtension,
			sequence: sequence,
			elementSequence: elementSequence,
			text: text,
			elementText: elementText,
			additionalInstruction: additionalInstruction,
			patientInstruction: patientInstruction,
			elementPatientInstruction: elementPatientInstruction,
			timing: timing,
			asNeededBoolean: asNeededBoolean,
			elementAsNeededBoolean: elementAsNeededBoolean,
			asNeededCodeableConcept: asNeededCodeableConcept,
			site: site,
			route: route,
			method: method,
			doseAndRate: doseAndRate,
			maxDosePerPeriod: maxDosePerPeriod,
			maxDosePerAdministration: maxDosePerAdministration,
			maxDosePerLifetime: maxDosePerLifetime);
	var dosageBox = await Hive.openBox<Dosage>('DosageBox');
	dosageBox.put(newDosage.id, newDosage);
	return newDosage;
}
  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int sequence;
  @HiveField(4)
  Element elementSequence;
  @HiveField(5)
  String text;
  @HiveField(6)
  Element elementText;
  @HiveField(7)
  List<CodeableConcept> additionalInstruction;
  @HiveField(8)
  String patientInstruction;
  @HiveField(9)
  Element elementPatientInstruction;
  @HiveField(10)
  Timing timing;
  @HiveField(11)
  bool asNeededBoolean; //  pattern: ^true|false$
  @HiveField(12)
  Element elementAsNeededBoolean;
  @HiveField(13)
  CodeableConcept asNeededCodeableConcept;
  @HiveField(14)
  CodeableConcept site;
  @HiveField(15)
  CodeableConcept route;
  @HiveField(16)
  CodeableConcept method;
  @HiveField(17)
  List<Dosage_DoseAndRate> doseAndRate;
  @HiveField(18)
  Ratio maxDosePerPeriod;
  @HiveField(19)
  Quantity maxDosePerAdministration;
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

	static Future<Dosage_DoseAndRate> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		Range doseRange,
		Quantity doseQuantity,
		Ratio rateRatio,
		Range rateRange,
		Quantity rateQuantity}) async {
	Dosage_DoseAndRate newDosage_DoseAndRate = new Dosage_DoseAndRate(
			id: await newId('Dosage_DoseAndRate'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			doseRange: doseRange,
			doseQuantity: doseQuantity,
			rateRatio: rateRatio,
			rateRange: rateRange,
			rateQuantity: rateQuantity);
	var dosage_DoseAndRateBox = await Hive.openBox<Dosage_DoseAndRate>('Dosage_DoseAndRateBox');
	dosage_DoseAndRateBox.put(newDosage_DoseAndRate.id, newDosage_DoseAndRate);
	return newDosage_DoseAndRate;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Range doseRange;
  Quantity doseQuantity;
  Ratio rateRatio;
  Range rateRange;
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
  final typeId = 48;

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
