import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/dosage.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'medicationStatement.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationStatement {


// This is a MedicationStatement resource
String resourceType;

// The logical id of the resource, as used in the URL for the resource. Once
//  assigned, this value never changes.
String id;

// The metadata about the resource. This is content that is maintained by the
//  infrastructure. Changes to the content might not always be associated with
//  version changes to the resource.
Meta meta;

// A reference to a set of rules that were followed when the resource was
//  constructed, and which must be understood when processing the content. Often,
//  this is a reference to an implementation guide that defines the special rules
//  along with other profiles etc.
String implicitRules;

// Extensions for implicitRules
Element _implicitRules;

// The base language in which the resource is written.
String language;

// Extensions for language
Element _language;

// A human-readable narrative that contains a summary of the resource and can be
//  used to represent the content of the resource to a human. The narrative need
//  not encode all the structured data, but is required to contain sufficient
//  detail to make it "clinically safe" for a human to just read the narrative.
//  Resource definitions may define what content should be represented in the
//  narrative to ensure clinical safety.
Narrative text;

// These resources do not have an independent existence apart from the resource
//  that contains them - they cannot be identified independently, and nor can they
//  have their own independent transaction scope.
List<ResourceList> contained;

// May be used to represent additional information that is not part of the basic
//  definition of the resource. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the resource and that modifies the understanding of the element
//  that contains it and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer is allowed to define an extension, there is a set of requirements
//  that SHALL be met as part of the definition of the extension. Applications
//  processing a resource are required to check for modifier extensions.
// Modifier
//  extensions SHALL NOT change the meaning of any elements on Resource or
//  DomainResource (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Identifiers associated with this Medication Statement that are defined by
//  business processes and/or used to refer to it when a direct URL reference to
//  the resource itself is not appropriate. They are business identifiers assigned
//  to this resource by the performer or other systems and remain constant as the
//  resource is updated and propagates from server to server.
List<Identifier> identifier;

// A plan, proposal or order that is fulfilled in whole or in part by this event.
List<Reference> basedOn;

// A larger event of which this particular event is a component or step.
List<Reference> partOf;

// A code representing the patient or other source's judgment about the state of
//  the medication used that this statement is about.  Generally, this will be
//  active or completed.
String status;

// Extensions for status
Element _status;

// Captures the reason for the current state of the MedicationStatement.
List<CodeableConcept> statusReason;

// Indicates where the medication is expected to be consumed or administered.
CodeableConcept category;

// Identifies the medication being administered. This is either a link to a
//  resource representing the details of the medication or a simple attribute
//  carrying a code that identifies the medication from a known list of medications.
CodeableConcept medicationCodeableConcept;

// Identifies the medication being administered. This is either a link to a
//  resource representing the details of the medication or a simple attribute
//  carrying a code that identifies the medication from a known list of medications.
Reference medicationReference;

// The person, animal or group who is/was taking the medication.
Reference subject;

// The encounter or episode of care that establishes the context for this
//  MedicationStatement.
Reference context;

// The interval of time during which it is being asserted that the patient
//  is/was/will be taking the medication (or was not taking, when the
//  MedicationStatement.taken element is No).
String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

// Extensions for effectiveDateTime
Element _effectiveDateTime;

// The interval of time during which it is being asserted that the patient
//  is/was/will be taking the medication (or was not taking, when the
//  MedicationStatement.taken element is No).
Period effectivePeriod;

// The date when the medication statement was asserted by the information source.
DateTime dateAsserted;

// Extensions for dateAsserted
Element _dateAsserted;

// The person or organization that provided the information about the taking of
//  this medication. Note: Use derivedFrom when a MedicationStatement is derived
//  from other resources, e.g. Claim or MedicationRequest.
Reference informationSource;

// Allows linking the MedicationStatement to the underlying MedicationRequest, or
//  to other information that supports or is used to derive the MedicationStatement.
List<Reference> derivedFrom;

// A reason for why the medication is being/was taken.
List<CodeableConcept> reasonCode;

// Condition or observation that supports why the medication is being/was taken.
List<Reference> reasonReference;

// Provides extra information about the medication statement that is not conveyed
//  by the other attributes.
List<Annotation> note;

// Indicates how the medication is/was or should be taken by the patient.
List<Dosage> dosage;

MedicationStatement(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this._implicitRules,
    this.language,
    this._language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    this.status,
    this._status,
    this.statusReason,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    this.subject,
    this.context,
    this.effectiveDateTime,
    this._effectiveDateTime,
    this.effectivePeriod,
    this.dateAsserted,
    this._dateAsserted,
    this.informationSource,
    this.derivedFrom,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.dosage
    });

  factory MedicationStatement.fromJson(Map<String, dynamic> json) => _$MedicationStatementFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationStatementToJson(this);
}

