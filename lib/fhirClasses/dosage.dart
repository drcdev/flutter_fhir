import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class Dosage {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element elementSequence;
  String text;
  Element elementText;
  List<CodeableConcept> additionalInstruction;
  String patientInstruction;
  Element elementPatientInstruction;
  Timing timing;
  bool asNeededBoolean; //  pattern: ^true|false$
  Element elementAsNeededBoolean;
  CodeableConcept asNeededCodeableConcept;
  CodeableConcept site;
  CodeableConcept route;
  CodeableConcept method;
  List<Dosage_DoseAndRate> doseAndRate;
  Ratio maxDosePerPeriod;
  Quantity maxDosePerAdministration;
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
