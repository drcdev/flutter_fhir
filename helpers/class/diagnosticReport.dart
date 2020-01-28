import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'diagnosticReport.g.dart';

@JsonSerializable(explicitToJson: true)
class DiagnosticReport {


// This is a DiagnosticReport resource
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

// Identifiers assigned to this report by the performer or other systems.
List<Identifier> identifier;

// Details concerning a service requested.
List<Reference> basedOn;

// The status of the diagnostic report.
String status; // <code> enum: registered/partial/preliminary/final/amended/corrected/appended/cancelled/entered-in-error/unknown;

// Extensions for status
Element _status;

// A code that classifies the clinical discipline, department or diagnostic service
//  that created the report (e.g. cardiology, biochemistry, hematology, MRI). This
//  is used for searching, sorting and display purposes.
List<CodeableConcept> category;

// A code or name that describes this diagnostic report.
CodeableConcept code;

// The subject of the report. Usually, but not always, this is a patient. However,
//  diagnostic services also perform analyses on specimens collected from a variety
//  of other sources.
Reference subject;

// The healthcare event  (e.g. a patient and healthcare provider interaction) which
//  this DiagnosticReport is about.
Reference encounter;

// The time or time-period the observed values are related to. When the subject of
//  the report is a patient, this is usually either the time of the procedure or of
//  specimen collection(s), but very often the source of the date/time is not
//  known, only the date/time itself.
String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

// Extensions for effectiveDateTime
Element _effectiveDateTime;

// The time or time-period the observed values are related to. When the subject of
//  the report is a patient, this is usually either the time of the procedure or of
//  specimen collection(s), but very often the source of the date/time is not
//  known, only the date/time itself.
Period effectivePeriod;

// The date and time that this version of the report was made available to
//  providers, typically after the report was reviewed and verified.
DateTime issued;

// Extensions for issued
Element _issued;

// The diagnostic service that is responsible for issuing the report.
List<Reference> performer;

// The practitioner or organization that is responsible for the report's
//  conclusions and interpretations.
List<Reference> resultsInterpreter;

// Details about the specimens on which this diagnostic report is based.
List<Reference> specimen;

// [Observations](observation.html)  that are part of this diagnostic report.
List<Reference> result;

// One or more links to full details of any imaging performed during the diagnostic
//  investigation. Typically, this is imaging performed by DICOM enabled
//  modalities, but this is not required. A fully enabled PACS viewer can use this
//  information to provide views of the source images.
List<Reference> imagingStudy;

// A list of key images associated with this report. The images are generally
//  created during the diagnostic process, and may be directly of the patient, or
//  of treated specimens (i.e. slides of interest).
List<DiagnosticReport_Media> media;

// Concise and clinically contextualized summary conclusion
//  (interpretation/impression) of the diagnostic report.
String conclusion;

// Extensions for conclusion
Element _conclusion;

// One or more codes that represent the summary conclusion
//  (interpretation/impression) of the diagnostic report.
List<CodeableConcept> conclusionCode;

// Rich text representation of the entire result as issued by the diagnostic
//  service. Multiple formats are allowed but they SHALL be semantically equivalent.
List<Attachment> presentedForm;

DiagnosticReport(
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
    this.status,
    this._status,
    this.category,
    this.code,
    this.subject,
    this.encounter,
    this.effectiveDateTime,
    this._effectiveDateTime,
    this.effectivePeriod,
    this.issued,
    this._issued,
    this.performer,
    this.resultsInterpreter,
    this.specimen,
    this.result,
    this.imagingStudy,
    this.media,
    this.conclusion,
    this._conclusion,
    this.conclusionCode,
    this.presentedForm
    });

  factory DiagnosticReport.fromJson(Map<String, dynamic> json) => _$DiagnosticReportFromJson(json);
  Map<String, dynamic> toJson() => _$DiagnosticReportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DiagnosticReport_Media {


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

// A comment about the image. Typically, this is used to provide an explanation for
//  why the image is included, or to draw the viewer's attention to important
//  features.
String comment;

// Extensions for comment
Element _comment;

// Reference to the image source.
Reference link;

DiagnosticReport_Media(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.comment,
    this._comment,
    this.link
    });

  factory DiagnosticReport_Media.fromJson(Map<String, dynamic> json) => _$DiagnosticReport_MediaFromJson(json);
  Map<String, dynamic> toJson() => _$DiagnosticReport_MediaToJson(this);
}

