import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/resource.dart';
import 'package:flutter_fhir/class/timing.dart';

part 'serviceRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class ServiceRequest {
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

  // Identifiers assigned to this order
  List<Identifier> identifier;

  // Instantiates FHIR protocol or definition
  // canonical(ActivityDefinition|PlanDefinition)
  List<String> instantiatesCanonical;

  // Instantiates external protocol or definition
  List<String> instantiatesUri;

  // What request fulfills
  // Reference(CarePlan|ServiceRequest|MedicationRequest)
  List<Reference> basedOn;

  // What request replaces
  // Reference(ServiceRequest)
  List<Reference> replaces;

  // Composite Request ID
  Identifier requisition;

  // R!  draft | active | on-hold | revoked | completed | entered-in-error | unknown
  String status;

  // R!  proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option
  String intent;

  // Classification of service
  List<CodeableConcept> category;

  // routine | urgent | asap | stat
  String priority;

  // True if service/procedure should not be performed
  bool doNotPerform;

  // R!  draft | active | on-hold | revoked | completed | entered-in-error | unknown
  CodeableConcept code;

  // C? Additional order information
  List<CodeableConcept> orderDetail;

  // quantity[x]: Service amount. One of these 3:
  Quantity quantityQuantity;
  Ratio quantityRatio;
  Range quantityRange;

  // R!  Individual or Entity the service is ordered for
  // Reference(Patient|Group|Location|Device)
  Reference subject;

  // Encounter in which the request was created
  // Reference(Encounter)
  Reference encounter;

  // occurrence[x]: When service should occur. One of these 3:
  DateTime occurrenceDateTime;
  Period occurrencePeriod;
  Timing occurrenceTiming;

  // asNeeded[x]: Preconditions for service. One of these 2:
  bool asNeededBoolean;
  CodeableConcept asNeededCodeableConcept;

  // Date request signed
  DateTime authoredOn;

  // Who/what is requesting service
  // Reference(Practitioner|PractitionerRole|Organization|
  //   Patient|RelatedPerson|Device)
  Reference requester;

  // Performer role
  CodeableConcept performerType;

  // Performer role
  // Reference(Practitioner|PractitionerRole|Organization|
  //   CareTeam|HealthcareService|Patient|Device|RelatedPerson)
  List<Reference> performer;

  // Requested location
  List<CodeableConcept> locationCode;

  // Requested location
  // Reference(Location)
  List<Reference> locationReference;

  // Explanation/Justification for procedure or service
  List<CodeableConcept> reasonCode;

  // Explanation/Justification for service or service
  // Reference(Condition|Observation|DiagnosticReport|DocumentReference)
  List<Reference> reasonReference;

  // Associated insurance coverage
  // Reference(Coverage|ClaimResponse)
  List<Reference> insurance;

  // Additional clinical information
  // Reference(Any)
  List<Reference> supportingInfo;

  // Procedure Samples
  // Reference(Specimen)
  List<Reference> specimen;

  // Location on Body
  List<CodeableConcept> bodySite;

  // Comments
  List<Annotation> note;

  // Patient or consumer-oriented instructions
  String patientInstruction;

  // Request provenance
  // Reference(Provenance)
  List<Reference> relevantHistory;

  ServiceRequest(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.text,
        this.contained,
        this.identifier,
        this.instantiatesCanonical,
        this.instantiatesUri,
        this.basedOn,
        this.replaces,
        this.requisition,
        this.status,
        this.intent,
        this.category,
        this.priority,
        this.doNotPerform,
        this.code,
        this.orderDetail,
        this.quantityQuantity,
        this.quantityRatio,
        this.quantityRange,
        this.subject,
        this.encounter,
        this.occurrenceDateTime,
        this.occurrencePeriod,
        this.occurrenceTiming,
        this.asNeededBoolean,
        this.asNeededCodeableConcept,
        this.authoredOn,
        this.requester,
        this.performerType,
        this.performer,
        this.locationCode,
        this.locationReference,
        this.reasonCode,
        this.reasonReference,
        this.insurance,
        this.supportingInfo,
        this.specimen,
        this.bodySite,
        this.note,
        this.patientInstruction,
        this.relevantHistory});

  factory ServiceRequest.fromJson(Map<String, dynamic> json) => _$ServiceRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceRequestToJson(this);
}