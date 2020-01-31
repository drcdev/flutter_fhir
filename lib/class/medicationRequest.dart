import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/duration.dart';
import 'package:flutter_fhir/class/dosage.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'medicationRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationRequest {

  //  This is a MedicationRequest resource
  final String resourceType= 'MedicationRequest';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element element_implicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element element_language;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  List<ResourceList> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  List<Extension> modifierExtension;

  //  Identifiers associated with this medication request that are defined
  // by business processes and/or used to refer to it when a direct URL
  // reference to the resource itself is not appropriate. They are business
  // identifiers assigned to this resource by the performer or other systems
  // and remain constant as the resource is updated and propagates from
  // server to server.
  List<Identifier> identifier;

  //  A code specifying the current state of the order.  Generally, this
  // will be active or completed state.
  String status;

  //  Extensions for status
  Element element_status;

  //  Captures the reason for the current state of the MedicationRequest.
  CodeableConcept statusReason;

  //  Whether the request is a proposal, plan, or an original order.
  String intent;

  //  Extensions for intent
  Element element_intent;

  //  Indicates the type of medication request (for example, where the
  // medication is expected to be consumed or administered (i.e. inpatient
  // or outpatient)).
  List<CodeableConcept> category;

  //  Indicates how quickly the Medication Request should be addressed with
  // respect to other requests.
  String priority;

  //  Extensions for priority
  Element element_priority;

  //  If true indicates that the provider is asking for the medication
  // request not to occur.
  bool doNotPerform;

  //  Extensions for doNotPerform
  Element element_doNotPerform;

  //  Indicates if this record was captured as a secondary 'reported' record
  // rather than as an original primary source-of-truth record.  It may also
  // indicate the source of the report.
  bool reportedBoolean; //  pattern: ^true|false$

  //  Extensions for reportedBoolean
  Element element_reportedBoolean;

  //  Indicates if this record was captured as a secondary 'reported' record
  // rather than as an original primary source-of-truth record.  It may also
  // indicate the source of the report.
  Reference reportedReference;

  //  Identifies the medication being requested. This is a link to a
  // resource that represents the medication which may be the details of the
  // medication or simply an attribute carrying a code that identifies the
  // medication from a known list of medications.
  CodeableConcept medicationCodeableConcept;

  //  Identifies the medication being requested. This is a link to a
  // resource that represents the medication which may be the details of the
  // medication or simply an attribute carrying a code that identifies the
  // medication from a known list of medications.
  Reference medicationReference;

  //  A link to a resource representing the person or set of individuals to
  // whom the medication will be given.
  Reference subject;

  //  The Encounter during which this [x] was created or to which the
  // creation of this record is tightly associated.
  Reference encounter;

  //  Include additional information (for example, patient height and
  // weight) that supports the ordering of the medication.
  List<Reference> supportingInformation;

  //  The date (and perhaps time) when the prescription was initially
  // written or authored on.
  DateTime authoredOn;

  //  Extensions for authoredOn
  Element element_authoredOn;

  //  The individual, organization, or device that initiated the request and
  // has responsibility for its activation.
  Reference requester;

  //  The specified desired performer of the medication treatment (e.g. the
  // performer of the medication administration).
  Reference performer;

  //  Indicates the type of performer of the administration of the
  // medication.
  CodeableConcept performerType;

  //  The person who entered the order on behalf of another individual for
  // example in the case of a verbal or a telephone order.
  Reference recorder;

  //  The reason or the indication for ordering or not ordering the
  // medication.
  List<CodeableConcept> reasonCode;

  //  Condition or observation that supports why the medication was ordered.
  List<Reference> reasonReference;

  //  The URL pointing to a protocol, guideline, orderset, or other
  // definition that is adhered to in whole or in part by this
  // MedicationRequest.
  List<String> instantiatesCanonical;

  //  Extensions for instantiatesCanonical
  List<Element> element_instantiatesCanonical;

  //  The URL pointing to an externally maintained protocol, guideline,
  // orderset or other definition that is adhered to in whole or in part by
  // this MedicationRequest.
  List<String> instantiatesUri;

  //  Extensions for instantiatesUri
  List<Element> element_instantiatesUri;

  //  A plan or request that is fulfilled in whole or in part by this
  // medication request.
  List<Reference> basedOn;

  //  A shared identifier common to all requests that were authorized more
  // or less simultaneously by a single author, representing the identifier
  // of the requisition or prescription.
  Identifier groupIdentifier;

  //  The description of the overall patte3rn of the administration of the
  // medication to the patient.
  CodeableConcept courseOfTherapyType;

  //  Insurance plans, coverage extensions, pre-authorizations and/or
  // pre-determinations that may be required for delivering the requested
  // service.
  List<Reference> insurance;

  //  Extra information about the prescription that could not be conveyed by
  // the other attributes.
  List<Annotation> note;

  //  Indicates how the medication is to be used by the patient.
  List<Dosage> dosageInstruction;

  //  Indicates the specific details for the dispense or medication supply
  // part of a medication request (also known as a Medication Prescription
  // or Medication Order).  Note that this information is not always sent
  // with the order.  There may be in some settings (e.g. hospitals)
  // institutional or system support for completing the dispense details in
  // the pharmacy department.
  MedicationRequest_DispenseRequest dispenseRequest;

  //  Indicates whether or not substitution can or should be part of the
  // dispense. In some cases, substitution must happen, in other cases
  // substitution must not happen. This block explains the prescriber's
  // intent. If nothing is specified substitution may be done.
  MedicationRequest_Substitution substitution;

  //  A link to a resource representing an earlier order related order or
  // prescription.
  Reference priorPrescription;

  //  Indicates an actual or potential clinical issue with or between one or
  // more active or proposed clinical actions for a patient; e.g. Drug-drug
  // interaction, duplicate therapy, dosage alert etc.
  List<Reference> detectedIssue;

  //  Links to Provenance records for past versions of this resource or
  // fulfilling request or event resources that identify key state
  // transitions or updates that are likely to be relevant to a user looking
  // at the current version of the resource.
  List<Reference> eventHistory;

MedicationRequest(
  this.subject,
    {this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.element_status,
    this.statusReason,
    this.intent,
    this.element_intent,
    this.category,
    this.priority,
    this.element_priority,
    this.doNotPerform,
    this.element_doNotPerform,
    this.reportedBoolean,
    this.element_reportedBoolean,
    this.reportedReference,
    this.medicationCodeableConcept,
    this.medicationReference,
    this.encounter,
    this.supportingInformation,
    this.authoredOn,
    this.element_authoredOn,
    this.requester,
    this.performer,
    this.performerType,
    this.recorder,
    this.reasonCode,
    this.reasonReference,
    this.instantiatesCanonical,
    this.element_instantiatesCanonical,
    this.instantiatesUri,
    this.element_instantiatesUri,
    this.basedOn,
    this.groupIdentifier,
    this.courseOfTherapyType,
    this.insurance,
    this.note,
    this.dosageInstruction,
    this.dispenseRequest,
    this.substitution,
    this.priorPrescription,
    this.detectedIssue,
    this.eventHistory
    });

  factory MedicationRequest.fromJson(Map<String, dynamic> json) => _$MedicationRequestFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationRequest_DispenseRequest {

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

  //  Indicates the quantity or duration for the first dispense of the
  // medication.
  MedicationRequest_InitialFill initialFill;

  //  The minimum period of time that must occur between dispenses of the
  // medication.
  Duration dispenseInterval;

  //  This indicates the validity period of a prescription (stale dating the
  // Prescription).
  Period validityPeriod;

  //  An integer indicating the number of times, in addition to the original
  // dispense, (aka refills or repeats) that the patient can receive the
  // prescribed medication. Usage Notes: This integer does not include the
  // original order dispense. This means that if an order indicates dispense
  // 30 tablets plus "3 repeats", then the order can be dispensed a total of
  // 4 times and the patient can receive a total of 120 tablets.  A
  // prescriber may explicitly say that zero refills are permitted after the
  // initial dispense.
  int numberOfRepeatsAllowed;

  //  Extensions for numberOfRepeatsAllowed
  Element element_numberOfRepeatsAllowed;

  //  The amount that is to be dispensed for one fill.
  Quantity quantity;

  //  Identifies the period time over which the supplied product is expected
  // to be used, or the length of time the dispense is expected to last.
  Duration expectedSupplyDuration;

  //  Indicates the intended dispensing Organization specified by the
  // prescriber.
  Reference performer;

MedicationRequest_DispenseRequest(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.initialFill,
    this.dispenseInterval,
    this.validityPeriod,
    this.numberOfRepeatsAllowed,
    this.element_numberOfRepeatsAllowed,
    this.quantity,
    this.expectedSupplyDuration,
    this.performer
    });

  factory MedicationRequest_DispenseRequest.fromJson(Map<String, dynamic> json) => _$MedicationRequest_DispenseRequestFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationRequest_DispenseRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationRequest_InitialFill {

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

  //  The amount or quantity to provide as part of the first dispense.
  Quantity quantity;

  //  The length of time that the first dispense is expected to last.
  Duration duration;

MedicationRequest_InitialFill(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.quantity,
    this.duration
    });

  factory MedicationRequest_InitialFill.fromJson(Map<String, dynamic> json) => _$MedicationRequest_InitialFillFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationRequest_InitialFillToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationRequest_Substitution {

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

  //  True if the prescriber allows a different drug to be dispensed from
  // what was prescribed.
  bool allowedBoolean; //  pattern: ^true|false$

  //  Extensions for allowedBoolean
  Element element_allowedBoolean;

  //  True if the prescriber allows a different drug to be dispensed from
  // what was prescribed.
  CodeableConcept allowedCodeableConcept;

  //  Indicates the reason for the substitution, or why substitution must or
  // must not be performed.
  CodeableConcept reason;

MedicationRequest_Substitution(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.allowedBoolean,
    this.element_allowedBoolean,
    this.allowedCodeableConcept,
    this.reason
    });

  factory MedicationRequest_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationRequest_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationRequest_SubstitutionToJson(this);
}

