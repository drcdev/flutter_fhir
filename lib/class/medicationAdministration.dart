import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/resource.dart';

part 'medicationAdministration.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationAdministration {
  String resourceType;

  // Logical id of this artifact
  String id;

  // Metadata about the resource
  Meta meta;

  // A set of rules under which this content was created
  String implicitRules;

  // Language of the resource content
  String language;

  // Text summary of the resource, for human interpretation
  Narrative text;

  // Contained, inline Resources
  List<Resource> contained;

  // External identifier
  List<Identifier> identifier;

  // Instantiates protocol or definition
  List<String> instantiates;

  // Part of referenced event
  List<Reference> partOf;

  // R!  in-progress | not-done | on-hold | completed | entered-in-error | stopped | unknown
  String status;

  // Reason administration not performed
  List<CodeableConcept> statusReason;

  // Type of medication usage
  CodeableConcept category;

  // medication[x]: What was administered. One of these 2:
  CodeableConcept medicationCodeableConcept;
    // Reference(Medication)
  Reference medicationReference;

  // R!  Who received medication
  // Reference(Patient|Group)
  Reference subject;

  // Encounter or Episode of Care administered as part of
  // Reference(Encounter|EpisodeOfCare)
  Reference context;

  // Additional information to support administration
  // Reference(Any)
  List<Reference> supportingInformation;

  // effective[x]: Start and end time of administration. One of these 2:
  DateTime effectiveDateTime;
  Period effectivePeriod;

  // Who performed the medication administration and what they did
  List<_Performer> performer;

  // Reason administration performed
  List<CodeableConcept> reasonCode;

  // Condition or observation that supports why the medication was administered
  // Reference(Condition|Observation|DiagnosticReport)
  List<Reference> reasonReference;

  // Request administration performed against
  // Reference(MedicationRequest)
  Reference request;

  // Device used to administer
  // Reference(Device)
  List<Reference> device;

  // Information about the administration
  List<Annotation> note;

  // Details of how medication was taken
  Dosage dosage;

  // A list of events of interest in the lifecycle
  // Reference(Provenance)
  List<Reference> eventHistory;

  MedicationAdministration(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.text,
        this.contained,
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
class _Performer {

  // Type of performance
  CodeableConcept function;

  // R!  Who performed the medication administration
  // Reference(Practitioner|PractitionerRole|Patient|RelatedPerson|Device
  Reference actor;

  _Performer({this.function, this.actor});

  factory _Performer.fromJson(Map<String, dynamic> json) => _$_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Dosage {

  // Free text dosage instructions e.g. SIG
  String text;

  // Body site administered to
  CodeableConcept site;

  // Path of substance into body
  CodeableConcept route;

  // How drug was administered
  CodeableConcept method;

  // Amount of medication per dose
  Quantity dose;

  // rate[x]: Dose quantity per unit of time. One of these 2:
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