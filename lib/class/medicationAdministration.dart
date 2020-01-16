import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'medicationAdministration.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationAdministration {
  String resourceType;
  List<Identifier> identifier;
  List<String> instantiates;
  List<Reference> partOf;
  String status;
  List<CodeableConcept> statusReason;
  CodeableConcept category;
  CodeableConcept medicationCodeableConcept;
  Reference medicationReference;
  Reference subject;
  Reference context;
  List<Reference> supportingInformation;
  DateTime effectiveDateTime;
  Period effectivePeriod;
  List<_Performer> performer;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  Reference request;
  List<Reference> device;
  List<Annotation> note;
  Dosage dosage;
  List<Reference> eventHistory;

  MedicationAdministration(
      {this.resourceType,
        this.identifier,
        this.instantiates,
        this.partOf,
        this.status,
        this.statusReason,
        this.category,
        this.medicationCodeableConcept,
        this.medicationReference,
        this.subject,
        this.context,
        this.supportingInformation,
        this.effectiveDateTime,
        this.effectivePeriod,
        this.performer,
        this.reasonCode,
        this.reasonReference,
        this.request,
        this.device,
        this.note,
        this.dosage,
        this.eventHistory});

  factory MedicationAdministration.fromJson(Map<String, dynamic> json) => _$MedicationAdministrationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationAdministrationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Dosage {
  String text;
  CodeableConcept site;
  CodeableConcept route;
  CodeableConcept method;
  Quantity dose;
  Ratio rateRatio;
  Quantity rateQuantity;

  Dosage(
      {this.text,
        this.site,
        this.route,
        this.method,
        this.dose,
        this.rateRatio,
        this.rateQuantity});

  factory Dosage.fromJson(Map<String, dynamic> json) => _$DosageFromJson(json);
  Map<String, dynamic> toJson() => _$DosageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class _Performer {
  CodeableConcept function;
  Reference actor;

  _Performer({this.function, this.actor});

  factory _Performer.fromJson(Map<String, dynamic> json) => _$_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$_PerformerToJson(this);
}