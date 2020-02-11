import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 392)
class MedicationRequest {

  //  This is a MedicationRequest resource
  @HiveField(0)
  final String resourceType= 'MedicationRequest';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
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
  @HiveField(10)
  List<Extension> modifierExtension;

  //  Identifiers associated with this medication request that are defined
  // by business processes and/or used to refer to it when a direct URL
  // reference to the resource itself is not appropriate. They are business
  // identifiers assigned to this resource by the performer or other systems
  // and remain constant as the resource is updated and propagates from
  // server to server.
  @HiveField(11)
  List<Identifier> identifier;

  //  A code specifying the current state of the order.  Generally, this
  // will be active or completed state.
  @HiveField(12)
  String status;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  Captures the reason for the current state of the MedicationRequest.
  @HiveField(14)
  CodeableConcept statusReason;

  //  Whether the request is a proposal, plan, or an original order.
  @HiveField(15)
  String intent;

  //  Extensions for intent
  @HiveField(16)
  Element elementIntent;

  //  Indicates the type of medication request (for example, where the
  // medication is expected to be consumed or administered (i.e. inpatient
  // or outpatient)).
  @HiveField(17)
  List<CodeableConcept> category;

  //  Indicates how quickly the Medication Request should be addressed with
  // respect to other requests.
  @HiveField(18)
  String priority;

  //  Extensions for priority
  @HiveField(19)
  Element elementPriority;

  //  If true indicates that the provider is asking for the medication
  // request not to occur.
  @HiveField(20)
  bool doNotPerform;

  //  Extensions for doNotPerform
  @HiveField(21)
  Element elementDoNotPerform;

  //  Indicates if this record was captured as a secondary 'reported' record
  // rather than as an original primary source-of-truth record.  It may also
  // indicate the source of the report.
  @HiveField(22)
  bool reportedBoolean; //  pattern: ^true|false$

  //  Extensions for reportedBoolean
  @HiveField(23)
  Element elementReportedBoolean;

  //  Indicates if this record was captured as a secondary 'reported' record
  // rather than as an original primary source-of-truth record.  It may also
  // indicate the source of the report.
  @HiveField(24)
  Reference reportedReference;

  //  Identifies the medication being requested. This is a link to a
  // resource that represents the medication which may be the details of the
  // medication or simply an attribute carrying a code that identifies the
  // medication from a known list of medications.
  @HiveField(25)
  CodeableConcept medicationCodeableConcept;

  //  Identifies the medication being requested. This is a link to a
  // resource that represents the medication which may be the details of the
  // medication or simply an attribute carrying a code that identifies the
  // medication from a known list of medications.
  @HiveField(26)
  Reference medicationReference;

  //  A link to a resource representing the person or set of individuals to
  // whom the medication will be given.
  @HiveField(27)
  Reference subject;

  //  The Encounter during which this [x] was created or to which the
  // creation of this record is tightly associated.
  @HiveField(28)
  Reference encounter;

  //  Include additional information (for example, patient height and
  // weight) that supports the ordering of the medication.
  @HiveField(29)
  List<Reference> supportingInformation;

  //  The date (and perhaps time) when the prescription was initially
  // written or authored on.
  @HiveField(30)
  DateTime authoredOn;

  //  Extensions for authoredOn
  @HiveField(31)
  Element elementAuthoredOn;

  //  The individual, organization, or device that initiated the request and
  // has responsibility for its activation.
  @HiveField(32)
  Reference requester;

  //  The specified desired performer of the medication treatment (e.g. the
  // performer of the medication administration).
  @HiveField(33)
  Reference performer;

  //  Indicates the type of performer of the administration of the
  // medication.
  @HiveField(34)
  CodeableConcept performerType;

  //  The person who entered the order on behalf of another individual for
  // example in the case of a verbal or a telephone order.
  @HiveField(35)
  Reference recorder;

  //  The reason or the indication for ordering or not ordering the
  // medication.
  @HiveField(36)
  List<CodeableConcept> reasonCode;

  //  Condition or observation that supports why the medication was ordered.
  @HiveField(37)
  List<Reference> reasonReference;

  //  The URL pointing to a protocol, guideline, orderset, or other
  // definition that is adhered to in whole or in part by this
  // MedicationRequest.
  @HiveField(38)
  List<String> instantiatesCanonical;

  //  Extensions for instantiatesCanonical
  @HiveField(39)
  List<Element> elementInstantiatesCanonical;

  //  The URL pointing to an externally maintained protocol, guideline,
  // orderset or other definition that is adhered to in whole or in part by
  // this MedicationRequest.
  @HiveField(40)
  List<String> instantiatesUri;

  //  Extensions for instantiatesUri
  @HiveField(41)
  List<Element> elementInstantiatesUri;

  //  A plan or request that is fulfilled in whole or in part by this
  // medication request.
  @HiveField(42)
  List<Reference> basedOn;

  //  A shared identifier common to all requests that were authorized more
  // or less simultaneously by a single author, representing the identifier
  // of the requisition or prescription.
  @HiveField(43)
  Identifier groupIdentifier;

  //  The description of the overall patte3rn of the administration of the
  // medication to the patient.
  @HiveField(44)
  CodeableConcept courseOfTherapyType;

  //  Insurance plans, coverage extensions, pre-authorizations and/or
  // pre-determinations that may be required for delivering the requested
  // service.
  @HiveField(45)
  List<Reference> insurance;

  //  Extra information about the prescription that could not be conveyed by
  // the other attributes.
  @HiveField(46)
  List<Annotation> note;

  //  Indicates how the medication is to be used by the patient.
  @HiveField(47)
  List<Dosage> dosageInstruction;

  //  Indicates the specific details for the dispense or medication supply
  // part of a medication request (also known as a Medication Prescription
  // or Medication Order).  Note that this information is not always sent
  // with the order.  There may be in some settings (e.g. hospitals)
  // institutional or system support for completing the dispense details in
  // the pharmacy department.
  @HiveField(48)
  MedicationRequest_DispenseRequest dispenseRequest;

  //  Indicates whether or not substitution can or should be part of the
  // dispense. In some cases, substitution must happen, in other cases
  // substitution must not happen. This block explains the prescriber's
  // intent. If nothing is specified substitution may be done.
  @HiveField(49)
  MedicationRequest_Substitution substitution;

  //  A link to a resource representing an earlier order related order or
  // prescription.
  @HiveField(50)
  Reference priorPrescription;

  //  Indicates an actual or potential clinical issue with or between one or
  // more active or proposed clinical actions for a patient; e.g. Drug-drug
  // interaction, duplicate therapy, dosage alert etc.
  @HiveField(51)
  List<Reference> detectedIssue;

  //  Links to Provenance records for past versions of this resource or
  // fulfilling request or event resources that identify key state
  // transitions or updates that are likely to be relevant to a user looking
  // at the current version of the resource.
  @HiveField(52)
  List<Reference> eventHistory;

MedicationRequest(
  this.subject,
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
    this.status,
    this.elementStatus,
    this.statusReason,
    this.intent,
    this.elementIntent,
    this.category,
    this.priority,
    this.elementPriority,
    this.doNotPerform,
    this.elementDoNotPerform,
    this.reportedBoolean,
    this.elementReportedBoolean,
    this.reportedReference,
    this.medicationCodeableConcept,
    this.medicationReference,
    this.encounter,
    this.supportingInformation,
    this.authoredOn,
    this.elementAuthoredOn,
    this.requester,
    this.performer,
    this.performerType,
    this.recorder,
    this.reasonCode,
    this.reasonReference,
    this.instantiatesCanonical,
    this.elementInstantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
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
@HiveType(typeId: 393)
class MedicationRequest_DispenseRequest {

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

  //  Indicates the quantity or duration for the first dispense of the
  // medication.
  @HiveField(3)
  MedicationRequest_InitialFill initialFill;

  //  The minimum period of time that must occur between dispenses of the
  // medication.
  @HiveField(4)
  Duration dispenseInterval;

  //  This indicates the validity period of a prescription (stale dating the
  // Prescription).
  @HiveField(5)
  Period validityPeriod;

  //  An integer indicating the number of times, in addition to the original
  // dispense, (aka refills or repeats) that the patient can receive the
  // prescribed medication. Usage Notes: This integer does not include the
  // original order dispense. This means that if an order indicates dispense
  // 30 tablets plus "3 repeats", then the order can be dispensed a total of
  // 4 times and the patient can receive a total of 120 tablets.  A
  // prescriber may explicitly say that zero refills are permitted after the
  // initial dispense.
  @HiveField(6)
  int numberOfRepeatsAllowed;

  //  Extensions for numberOfRepeatsAllowed
  @HiveField(7)
  Element elementNumberOfRepeatsAllowed;

  //  The amount that is to be dispensed for one fill.
  @HiveField(8)
  Quantity quantity;

  //  Identifies the period time over which the supplied product is expected
  // to be used, or the length of time the dispense is expected to last.
  @HiveField(9)
  Duration expectedSupplyDuration;

  //  Indicates the intended dispensing Organization specified by the
  // prescriber.
  @HiveField(10)
  Reference performer;

MedicationRequest_DispenseRequest(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.initialFill,
    this.dispenseInterval,
    this.validityPeriod,
    this.numberOfRepeatsAllowed,
    this.elementNumberOfRepeatsAllowed,
    this.quantity,
    this.expectedSupplyDuration,
    this.performer
    });

  factory MedicationRequest_DispenseRequest.fromJson(Map<String, dynamic> json) => _$MedicationRequest_DispenseRequestFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationRequest_DispenseRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 394)
class MedicationRequest_InitialFill {

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

  //  The amount or quantity to provide as part of the first dispense.
  @HiveField(3)
  Quantity quantity;

  //  The length of time that the first dispense is expected to last.
  @HiveField(4)
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
@HiveType(typeId: 395)
class MedicationRequest_Substitution {

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

  //  True if the prescriber allows a different drug to be dispensed from
  // what was prescribed.
  @HiveField(3)
  bool allowedBoolean; //  pattern: ^true|false$

  //  Extensions for allowedBoolean
  @HiveField(4)
  Element elementAllowedBoolean;

  //  True if the prescriber allows a different drug to be dispensed from
  // what was prescribed.
  @HiveField(5)
  CodeableConcept allowedCodeableConcept;

  //  Indicates the reason for the substitution, or why substitution must or
  // must not be performed.
  @HiveField(6)
  CodeableConcept reason;

MedicationRequest_Substitution(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.allowedBoolean,
    this.elementAllowedBoolean,
    this.allowedCodeableConcept,
    this.reason
    });

  factory MedicationRequest_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationRequest_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationRequest_SubstitutionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicationRequestAdapter extends TypeAdapter<MedicationRequest> {
  @override
  final typeId = 392;

  @override
  MedicationRequest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationRequest(
      fields[27] as Reference,
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
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      statusReason: fields[14] as CodeableConcept,
      intent: fields[15] as String,
      elementIntent: fields[16] as Element,
      category: (fields[17] as List)?.cast<CodeableConcept>(),
      priority: fields[18] as String,
      elementPriority: fields[19] as Element,
      doNotPerform: fields[20] as bool,
      elementDoNotPerform: fields[21] as Element,
      reportedBoolean: fields[22] as bool,
      elementReportedBoolean: fields[23] as Element,
      reportedReference: fields[24] as Reference,
      medicationCodeableConcept: fields[25] as CodeableConcept,
      medicationReference: fields[26] as Reference,
      encounter: fields[28] as Reference,
      supportingInformation: (fields[29] as List)?.cast<Reference>(),
      authoredOn: fields[30] as DateTime,
      elementAuthoredOn: fields[31] as Element,
      requester: fields[32] as Reference,
      performer: fields[33] as Reference,
      performerType: fields[34] as CodeableConcept,
      recorder: fields[35] as Reference,
      reasonCode: (fields[36] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[37] as List)?.cast<Reference>(),
      instantiatesCanonical: (fields[38] as List)?.cast<String>(),
      elementInstantiatesCanonical: (fields[39] as List)?.cast<Element>(),
      instantiatesUri: (fields[40] as List)?.cast<String>(),
      elementInstantiatesUri: (fields[41] as List)?.cast<Element>(),
      basedOn: (fields[42] as List)?.cast<Reference>(),
      groupIdentifier: fields[43] as Identifier,
      courseOfTherapyType: fields[44] as CodeableConcept,
      insurance: (fields[45] as List)?.cast<Reference>(),
      note: (fields[46] as List)?.cast<Annotation>(),
      dosageInstruction: (fields[47] as List)?.cast<Dosage>(),
      dispenseRequest: fields[48] as MedicationRequest_DispenseRequest,
      substitution: fields[49] as MedicationRequest_Substitution,
      priorPrescription: fields[50] as Reference,
      detectedIssue: (fields[51] as List)?.cast<Reference>(),
      eventHistory: (fields[52] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicationRequest obj) {
    writer
      ..writeByte(53)
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
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.statusReason)
      ..writeByte(15)
      ..write(obj.intent)
      ..writeByte(16)
      ..write(obj.elementIntent)
      ..writeByte(17)
      ..write(obj.category)
      ..writeByte(18)
      ..write(obj.priority)
      ..writeByte(19)
      ..write(obj.elementPriority)
      ..writeByte(20)
      ..write(obj.doNotPerform)
      ..writeByte(21)
      ..write(obj.elementDoNotPerform)
      ..writeByte(22)
      ..write(obj.reportedBoolean)
      ..writeByte(23)
      ..write(obj.elementReportedBoolean)
      ..writeByte(24)
      ..write(obj.reportedReference)
      ..writeByte(25)
      ..write(obj.medicationCodeableConcept)
      ..writeByte(26)
      ..write(obj.medicationReference)
      ..writeByte(27)
      ..write(obj.subject)
      ..writeByte(28)
      ..write(obj.encounter)
      ..writeByte(29)
      ..write(obj.supportingInformation)
      ..writeByte(30)
      ..write(obj.authoredOn)
      ..writeByte(31)
      ..write(obj.elementAuthoredOn)
      ..writeByte(32)
      ..write(obj.requester)
      ..writeByte(33)
      ..write(obj.performer)
      ..writeByte(34)
      ..write(obj.performerType)
      ..writeByte(35)
      ..write(obj.recorder)
      ..writeByte(36)
      ..write(obj.reasonCode)
      ..writeByte(37)
      ..write(obj.reasonReference)
      ..writeByte(38)
      ..write(obj.instantiatesCanonical)
      ..writeByte(39)
      ..write(obj.elementInstantiatesCanonical)
      ..writeByte(40)
      ..write(obj.instantiatesUri)
      ..writeByte(41)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(42)
      ..write(obj.basedOn)
      ..writeByte(43)
      ..write(obj.groupIdentifier)
      ..writeByte(44)
      ..write(obj.courseOfTherapyType)
      ..writeByte(45)
      ..write(obj.insurance)
      ..writeByte(46)
      ..write(obj.note)
      ..writeByte(47)
      ..write(obj.dosageInstruction)
      ..writeByte(48)
      ..write(obj.dispenseRequest)
      ..writeByte(49)
      ..write(obj.substitution)
      ..writeByte(50)
      ..write(obj.priorPrescription)
      ..writeByte(51)
      ..write(obj.detectedIssue)
      ..writeByte(52)
      ..write(obj.eventHistory);
  }
}

class MedicationRequest_DispenseRequestAdapter
    extends TypeAdapter<MedicationRequest_DispenseRequest> {
  @override
  final typeId = 393;

  @override
  MedicationRequest_DispenseRequest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationRequest_DispenseRequest(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      initialFill: fields[3] as MedicationRequest_InitialFill,
      dispenseInterval: fields[4] as Duration,
      validityPeriod: fields[5] as Period,
      numberOfRepeatsAllowed: fields[6] as int,
      elementNumberOfRepeatsAllowed: fields[7] as Element,
      quantity: fields[8] as Quantity,
      expectedSupplyDuration: fields[9] as Duration,
      performer: fields[10] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationRequest_DispenseRequest obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.initialFill)
      ..writeByte(4)
      ..write(obj.dispenseInterval)
      ..writeByte(5)
      ..write(obj.validityPeriod)
      ..writeByte(6)
      ..write(obj.numberOfRepeatsAllowed)
      ..writeByte(7)
      ..write(obj.elementNumberOfRepeatsAllowed)
      ..writeByte(8)
      ..write(obj.quantity)
      ..writeByte(9)
      ..write(obj.expectedSupplyDuration)
      ..writeByte(10)
      ..write(obj.performer);
  }
}

class MedicationRequest_InitialFillAdapter
    extends TypeAdapter<MedicationRequest_InitialFill> {
  @override
  final typeId = 394;

  @override
  MedicationRequest_InitialFill read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationRequest_InitialFill(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      quantity: fields[3] as Quantity,
      duration: fields[4] as Duration,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationRequest_InitialFill obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.quantity)
      ..writeByte(4)
      ..write(obj.duration);
  }
}

class MedicationRequest_SubstitutionAdapter
    extends TypeAdapter<MedicationRequest_Substitution> {
  @override
  final typeId = 395;

  @override
  MedicationRequest_Substitution read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationRequest_Substitution(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      allowedBoolean: fields[3] as bool,
      elementAllowedBoolean: fields[4] as Element,
      allowedCodeableConcept: fields[5] as CodeableConcept,
      reason: fields[6] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationRequest_Substitution obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.allowedBoolean)
      ..writeByte(4)
      ..write(obj.elementAllowedBoolean)
      ..writeByte(5)
      ..write(obj.allowedCodeableConcept)
      ..writeByte(6)
      ..write(obj.reason);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationRequest _$MedicationRequestFromJson(Map<String, dynamic> json) {
  return MedicationRequest(
    json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusReason: json['statusReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReason'] as Map<String, dynamic>),
    intent: json['intent'] as String,
    elementIntent: json['elementIntent'] == null
        ? null
        : Element.fromJson(json['elementIntent'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    priority: json['priority'] as String,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
    doNotPerform: json['doNotPerform'] as bool,
    elementDoNotPerform: json['elementDoNotPerform'] == null
        ? null
        : Element.fromJson(json['elementDoNotPerform'] as Map<String, dynamic>),
    reportedBoolean: json['reportedBoolean'] as bool,
    elementReportedBoolean: json['elementReportedBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementReportedBoolean'] as Map<String, dynamic>),
    reportedReference: json['reportedReference'] == null
        ? null
        : Reference.fromJson(json['reportedReference'] as Map<String, dynamic>),
    medicationCodeableConcept: json['medicationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['medicationCodeableConcept'] as Map<String, dynamic>),
    medicationReference: json['medicationReference'] == null
        ? null
        : Reference.fromJson(
            json['medicationReference'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    supportingInformation: (json['supportingInformation'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authoredOn: json['authoredOn'] == null
        ? null
        : DateTime.parse(json['authoredOn'] as String),
    elementAuthoredOn: json['elementAuthoredOn'] == null
        ? null
        : Element.fromJson(json['elementAuthoredOn'] as Map<String, dynamic>),
    requester: json['requester'] == null
        ? null
        : Reference.fromJson(json['requester'] as Map<String, dynamic>),
    performer: json['performer'] == null
        ? null
        : Reference.fromJson(json['performer'] as Map<String, dynamic>),
    performerType: json['performerType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['performerType'] as Map<String, dynamic>),
    recorder: json['recorder'] == null
        ? null
        : Reference.fromJson(json['recorder'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    elementInstantiatesCanonical: (json['elementInstantiatesCanonical'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instantiatesUri:
        (json['instantiatesUri'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiatesUri: (json['elementInstantiatesUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    groupIdentifier: json['groupIdentifier'] == null
        ? null
        : Identifier.fromJson(json['groupIdentifier'] as Map<String, dynamic>),
    courseOfTherapyType: json['courseOfTherapyType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['courseOfTherapyType'] as Map<String, dynamic>),
    insurance: (json['insurance'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dosageInstruction: (json['dosageInstruction'] as List)
        ?.map((e) =>
            e == null ? null : Dosage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dispenseRequest: json['dispenseRequest'] == null
        ? null
        : MedicationRequest_DispenseRequest.fromJson(
            json['dispenseRequest'] as Map<String, dynamic>),
    substitution: json['substitution'] == null
        ? null
        : MedicationRequest_Substitution.fromJson(
            json['substitution'] as Map<String, dynamic>),
    priorPrescription: json['priorPrescription'] == null
        ? null
        : Reference.fromJson(json['priorPrescription'] as Map<String, dynamic>),
    detectedIssue: (json['detectedIssue'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    eventHistory: (json['eventHistory'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationRequestToJson(MedicationRequest instance) =>
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
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusReason': instance.statusReason?.toJson(),
      'intent': instance.intent,
      'elementIntent': instance.elementIntent?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'priority': instance.priority,
      'elementPriority': instance.elementPriority?.toJson(),
      'doNotPerform': instance.doNotPerform,
      'elementDoNotPerform': instance.elementDoNotPerform?.toJson(),
      'reportedBoolean': instance.reportedBoolean,
      'elementReportedBoolean': instance.elementReportedBoolean?.toJson(),
      'reportedReference': instance.reportedReference?.toJson(),
      'medicationCodeableConcept': instance.medicationCodeableConcept?.toJson(),
      'medicationReference': instance.medicationReference?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'supportingInformation':
          instance.supportingInformation?.map((e) => e?.toJson())?.toList(),
      'authoredOn': instance.authoredOn?.toIso8601String(),
      'elementAuthoredOn': instance.elementAuthoredOn?.toJson(),
      'requester': instance.requester?.toJson(),
      'performer': instance.performer?.toJson(),
      'performerType': instance.performerType?.toJson(),
      'recorder': instance.recorder?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'instantiatesCanonical': instance.instantiatesCanonical,
      'elementInstantiatesCanonical': instance.elementInstantiatesCanonical
          ?.map((e) => e?.toJson())
          ?.toList(),
      'instantiatesUri': instance.instantiatesUri,
      'elementInstantiatesUri':
          instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'groupIdentifier': instance.groupIdentifier?.toJson(),
      'courseOfTherapyType': instance.courseOfTherapyType?.toJson(),
      'insurance': instance.insurance?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'dosageInstruction':
          instance.dosageInstruction?.map((e) => e?.toJson())?.toList(),
      'dispenseRequest': instance.dispenseRequest?.toJson(),
      'substitution': instance.substitution?.toJson(),
      'priorPrescription': instance.priorPrescription?.toJson(),
      'detectedIssue':
          instance.detectedIssue?.map((e) => e?.toJson())?.toList(),
      'eventHistory': instance.eventHistory?.map((e) => e?.toJson())?.toList(),
    };

MedicationRequest_DispenseRequest _$MedicationRequest_DispenseRequestFromJson(
    Map<String, dynamic> json) {
  return MedicationRequest_DispenseRequest(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    initialFill: json['initialFill'] == null
        ? null
        : MedicationRequest_InitialFill.fromJson(
            json['initialFill'] as Map<String, dynamic>),
    dispenseInterval: json['dispenseInterval'] == null
        ? null
        : Duration.fromJson(json['dispenseInterval'] as Map<String, dynamic>),
    validityPeriod: json['validityPeriod'] == null
        ? null
        : Period.fromJson(json['validityPeriod'] as Map<String, dynamic>),
    numberOfRepeatsAllowed: json['numberOfRepeatsAllowed'] as int,
    elementNumberOfRepeatsAllowed: json['elementNumberOfRepeatsAllowed'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfRepeatsAllowed'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    expectedSupplyDuration: json['expectedSupplyDuration'] == null
        ? null
        : Duration.fromJson(
            json['expectedSupplyDuration'] as Map<String, dynamic>),
    performer: json['performer'] == null
        ? null
        : Reference.fromJson(json['performer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationRequest_DispenseRequestToJson(
        MedicationRequest_DispenseRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'initialFill': instance.initialFill?.toJson(),
      'dispenseInterval': instance.dispenseInterval?.toJson(),
      'validityPeriod': instance.validityPeriod?.toJson(),
      'numberOfRepeatsAllowed': instance.numberOfRepeatsAllowed,
      'elementNumberOfRepeatsAllowed':
          instance.elementNumberOfRepeatsAllowed?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'expectedSupplyDuration': instance.expectedSupplyDuration?.toJson(),
      'performer': instance.performer?.toJson(),
    };

MedicationRequest_InitialFill _$MedicationRequest_InitialFillFromJson(
    Map<String, dynamic> json) {
  return MedicationRequest_InitialFill(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    duration: json['duration'] == null
        ? null
        : Duration.fromJson(json['duration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationRequest_InitialFillToJson(
        MedicationRequest_InitialFill instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'duration': instance.duration?.toJson(),
    };

MedicationRequest_Substitution _$MedicationRequest_SubstitutionFromJson(
    Map<String, dynamic> json) {
  return MedicationRequest_Substitution(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    allowedBoolean: json['allowedBoolean'] as bool,
    elementAllowedBoolean: json['elementAllowedBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementAllowedBoolean'] as Map<String, dynamic>),
    allowedCodeableConcept: json['allowedCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['allowedCodeableConcept'] as Map<String, dynamic>),
    reason: json['reason'] == null
        ? null
        : CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationRequest_SubstitutionToJson(
        MedicationRequest_Substitution instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'allowedBoolean': instance.allowedBoolean,
      'elementAllowedBoolean': instance.elementAllowedBoolean?.toJson(),
      'allowedCodeableConcept': instance.allowedCodeableConcept?.toJson(),
      'reason': instance.reason?.toJson(),
    };
