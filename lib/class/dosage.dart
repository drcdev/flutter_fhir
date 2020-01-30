import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/timing.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'dosage.g.dart';

@JsonSerializable(explicitToJson: true)
class Dosage {

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

//  Indicates the order in which the dosage instructions should be applied
// or interpreted.
int sequence;

//  Extensions for sequence
Element element_sequence;

//  Free text dosage instructions e.g. SIG.
String text;

//  Extensions for text
Element element_text;

//  Supplemental instructions to the patient on how to take the medication
//  (e.g. "with meals" or"take half to one hour before food") or warnings
// for the patient about the medication (e.g. "may cause drowsiness" or
// "avoid exposure of skin to direct sunlight or sunlamps").
List<CodeableConcept> additionalInstruction;

//  Instructions in terms that are understood by the patient or consumer.
String patientInstruction;

//  Extensions for patientInstruction
Element element_patientInstruction;

//  When medication should be administered.
Timing timing;

//  Indicates whether the Medication is only taken when needed within a
// specific dosing schedule (Boolean option), or it indicates the
// precondition for taking the Medication (CodeableConcept).
bool asNeededBoolean; //  pattern: ^true|false$

//  Extensions for asNeededBoolean
Element element_asNeededBoolean;

//  Indicates whether the Medication is only taken when needed within a
// specific dosing schedule (Boolean option), or it indicates the
// precondition for taking the Medication (CodeableConcept).
CodeableConcept asNeededCodeableConcept;

//  Body site to administer to.
CodeableConcept site;

//  How drug should enter body.
CodeableConcept route;

//  Technique for administering medication.
CodeableConcept method;

//  The amount of medication administered.
List<Dosage_DoseAndRate> doseAndRate;

//  Upper limit on medication per unit of time.
Ratio maxDosePerPeriod;

//  Upper limit on medication per administration.
Quantity maxDosePerAdministration;

//  Upper limit on medication per lifetime of the patient.
Quantity maxDosePerLifetime;

Dosage(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.element_sequence,
    this.text,
    this.element_text,
    this.additionalInstruction,
    this.patientInstruction,
    this.element_patientInstruction,
    this.timing,
    this.asNeededBoolean,
    this.element_asNeededBoolean,
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

