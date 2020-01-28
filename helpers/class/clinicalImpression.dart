import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'clinicalImpression.g.dart';

@JsonSerializable(explicitToJson: true)
class ClinicalImpression {


// This is a ClinicalImpression resource
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

// Business identifiers assigned to this clinical impression by the performer or
//  other systems which remain constant as the resource is updated and propagates
//  from server to server.
List<Identifier> identifier;

// Identifies the workflow status of the assessment.
String status;

// Extensions for status
Element _status;

// Captures the reason for the current state of the ClinicalImpression.
CodeableConcept statusReason;

// Categorizes the type of clinical assessment performed.
CodeableConcept code;

// A summary of the context and/or cause of the assessment - why / where it was
//  performed, and what patient events/status prompted it.
String description;

// Extensions for description
Element _description;

// The patient or group of individuals assessed as part of this record.
Reference subject;

// The Encounter during which this ClinicalImpression was created or to which the
//  creation of this record is tightly associated.
Reference encounter;

// The point in time or period over which the subject was assessed.
String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

// Extensions for effectiveDateTime
Element _effectiveDateTime;

// The point in time or period over which the subject was assessed.
Period effectivePeriod;

// Indicates when the documentation of the assessment was complete.
DateTime date;

// Extensions for date
Element _date;

// The clinician performing the assessment.
Reference assessor;

// A reference to the last assessment that was conducted on this patient.
//  Assessments are often/usually ongoing in nature; a care provider (practitioner
//  or team) will make new assessments on an ongoing basis as new data arises or
//  the patient's conditions changes.
Reference previous;

// A list of the relevant problems/conditions for a patient.
List<Reference> problem;

// One or more sets of investigations (signs, symptoms, etc.). The actual grouping
//  of investigations varies greatly depending on the type and context of the
//  assessment. These investigations may include data generated during the
//  assessment process, or data previously generated and recorded that is pertinent
//  to the outcomes.
List<ClinicalImpression_Investigation> investigation;

// Reference to a specific published clinical protocol that was followed during
//  this assessment, and/or that provides evidence in support of the diagnosis.
List<String> protocol;

// Extensions for protocol
List<Element> _protocol;

// A text summary of the investigations and the diagnosis.
String summary;

// Extensions for summary
Element _summary;

// Specific findings or diagnoses that were considered likely or relevant to
//  ongoing treatment.
List<ClinicalImpression_Finding> finding;

// Estimate of likely outcome.
List<CodeableConcept> prognosisCodeableConcept;

// RiskAssessment expressing likely outcome.
List<Reference> prognosisReference;

// Information supporting the clinical impression.
List<Reference> supportingInfo;

// Commentary about the impression, typically recorded after the impression itself
//  was made, though supplemental notes by the original author could also appear.
List<Annotation> note;

ClinicalImpression(
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
    this.status,
    this._status,
    this.statusReason,
    this.code,
    this.description,
    this._description,
    this.subject,
    this.encounter,
    this.effectiveDateTime,
    this._effectiveDateTime,
    this.effectivePeriod,
    this.date,
    this._date,
    this.assessor,
    this.previous,
    this.problem,
    this.investigation,
    this.protocol,
    this._protocol,
    this.summary,
    this._summary,
    this.finding,
    this.prognosisCodeableConcept,
    this.prognosisReference,
    this.supportingInfo,
    this.note
    });

  factory ClinicalImpression.fromJson(Map<String, dynamic> json) => _$ClinicalImpressionFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicalImpressionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClinicalImpression_Investigation {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// A name/code for the group ("set") of investigations. Typically, this will be
//  something like "signs", "symptoms", "clinical", "diagnostic", but the list is
//  not constrained, and others such groups such as
//  (exposure|family|travel|nutritional) history may be used.
CodeableConcept code;

// A record of a specific investigation that was undertaken.
List<Reference> item;

ClinicalImpression_Investigation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.item
    });

  factory ClinicalImpression_Investigation.fromJson(Map<String, dynamic> json) => _$ClinicalImpression_InvestigationFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicalImpression_InvestigationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClinicalImpression_Finding {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Specific text or code for finding or diagnosis, which may include ruled-out or
//  resolved conditions.
CodeableConcept itemCodeableConcept;

// Specific reference for finding or diagnosis, which may include ruled-out or
//  resolved conditions.
Reference itemReference;

// Which investigations support finding or diagnosis.
String basis;

// Extensions for basis
Element _basis;

ClinicalImpression_Finding(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.basis,
    this._basis
    });

  factory ClinicalImpression_Finding.fromJson(Map<String, dynamic> json) => _$ClinicalImpression_FindingFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicalImpression_FindingToJson(this);
}

