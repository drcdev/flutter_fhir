import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

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
    Quantity maxDosePerLifetime,
  }) async {
    var fhirDb = new DatabaseHelper();
    Dosage newDosage = new Dosage(
      id: id,
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
      maxDosePerLifetime: maxDosePerLifetime,
    );
    return newDosage;
  }

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
  bool asNeededBoolean;
  Element elementAsNeededBoolean;
  CodeableConcept asNeededCodeableConcept;
  CodeableConcept site;
  CodeableConcept route;
  CodeableConcept method;
  List<Dosage_DoseAndRate> doseAndRate;
  Ratio maxDosePerPeriod;
  Quantity maxDosePerAdministration;
  Quantity maxDosePerLifetime;

  Dosage({
    this.id,
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
    this.maxDosePerLifetime,
  });

  factory Dosage.fromJson(Map<String, dynamic> json) => _$DosageFromJson(json);
  Map<String, dynamic> toJson() => _$DosageToJson(this);
}

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
    Quantity rateQuantity,
  }) async {
    var fhirDb = new DatabaseHelper();
    Dosage_DoseAndRate newDosage_DoseAndRate = new Dosage_DoseAndRate(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      doseRange: doseRange,
      doseQuantity: doseQuantity,
      rateRatio: rateRatio,
      rateRange: rateRange,
      rateQuantity: rateQuantity,
    );
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

  Dosage_DoseAndRate({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.doseRange,
    this.doseQuantity,
    this.rateRatio,
    this.rateRange,
    this.rateQuantity,
  });

  factory Dosage_DoseAndRate.fromJson(Map<String, dynamic> json) =>
      _$Dosage_DoseAndRateFromJson(json);
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

Map<String, dynamic> _$DosageToJson(Dosage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('sequence', instance.sequence);
  writeNotNull('elementSequence', instance.elementSequence?.toJson());
  writeNotNull('text', instance.text);
  writeNotNull('elementText', instance.elementText?.toJson());
  writeNotNull('additionalInstruction',
      instance.additionalInstruction?.map((e) => e?.toJson())?.toList());
  writeNotNull('patientInstruction', instance.patientInstruction);
  writeNotNull('elementPatientInstruction',
      instance.elementPatientInstruction?.toJson());
  writeNotNull('timing', instance.timing?.toJson());
  writeNotNull('asNeededBoolean', instance.asNeededBoolean);
  writeNotNull(
      'elementAsNeededBoolean', instance.elementAsNeededBoolean?.toJson());
  writeNotNull(
      'asNeededCodeableConcept', instance.asNeededCodeableConcept?.toJson());
  writeNotNull('site', instance.site?.toJson());
  writeNotNull('route', instance.route?.toJson());
  writeNotNull('method', instance.method?.toJson());
  writeNotNull(
      'doseAndRate', instance.doseAndRate?.map((e) => e?.toJson())?.toList());
  writeNotNull('maxDosePerPeriod', instance.maxDosePerPeriod?.toJson());
  writeNotNull(
      'maxDosePerAdministration', instance.maxDosePerAdministration?.toJson());
  writeNotNull('maxDosePerLifetime', instance.maxDosePerLifetime?.toJson());
  return val;
}

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

Map<String, dynamic> _$Dosage_DoseAndRateToJson(Dosage_DoseAndRate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('doseRange', instance.doseRange?.toJson());
  writeNotNull('doseQuantity', instance.doseQuantity?.toJson());
  writeNotNull('rateRatio', instance.rateRatio?.toJson());
  writeNotNull('rateRange', instance.rateRange?.toJson());
  writeNotNull('rateQuantity', instance.rateQuantity?.toJson());
  return val;
}
