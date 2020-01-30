import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/timing.dart';
import 'package:flutter_fhir/class/duration.dart';
import 'package:flutter_fhir/class/triggerDefinition.dart';
import 'package:flutter_fhir/class/dataRequirement.dart';
import 'package:flutter_fhir/class/expression.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/relatedArtifact.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/usageContext.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/contactDetail.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'evidenceVariable.g.dart';

@JsonSerializable(explicitToJson: true)
class EvidenceVariable {

//  This is a EvidenceVariable resource
String resourceType;

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

//  An absolute URI that is used to identify this evidence variable when
// it is referenced in a specification, model, design or an instance; also
// called its canonical identifier. This SHOULD be globally unique and
// SHOULD be a literal address at which at which an authoritative instance
// of this evidence variable is (or will be) published. This URL can be
// the target of a canonical reference. It SHALL remain the same when the
// evidence variable is stored on different servers.
String url;

//  Extensions for url
Element element_url;

//  A formal identifier that is used to identify this evidence variable
// when it is represented in other formats, or referenced in a
// specification, model, design or an instance.
List<Identifier> identifier;

//  The identifier that is used to identify this version of the evidence
// variable when it is referenced in a specification, model, design or
// instance. This is an arbitrary value managed by the evidence variable
// author and is not expected to be globally unique. For example, it might
// be a timestamp (e.g. yyyymmdd) if a managed version is not available.
// There is also no expectation that versions can be placed in a
// lexicographical sequence. To provide a version consistent with the
// Decision Support Service specification, use the format
// Major.Minor.Revision (e.g. 1.0.0). For more information on versioning
// knowledge assets, refer to the Decision Support Service specification.
// Note that a version is required for non-experimental active artifacts.
String version;

//  Extensions for version
Element element_version;

//  A natural language name identifying the evidence variable. This name
// should be usable as an identifier for the module by machine processing
// applications such as code generation.
String name;

//  Extensions for name
Element element_name;

//  A short, descriptive, user-friendly title for the evidence variable.
String title;

//  Extensions for title
Element element_title;

//  The short title provides an alternate title for use in informal
// descriptive contexts where the full, formal title is not necessary.
String shortTitle;

//  Extensions for shortTitle
Element element_shortTitle;

//  An explanatory or alternate title for the EvidenceVariable giving
// additional information about its content.
String subtitle;

//  Extensions for subtitle
Element element_subtitle;

//  The status of this evidence variable. Enables tracking the life-cycle
// of the content.
String status; // <code> enum: draft/active/retired/unknown;

//  Extensions for status
Element element_status;

//  The date  (and optionally time) when the evidence variable was
// published. The date must change when the business version changes and
// it must change if the status code changes. In addition, it should
// change when the substantive content of the evidence variable changes.
DateTime date;

//  Extensions for date
Element element_date;

//  The name of the organization or individual that published the evidence
// variable.
String publisher;

//  Extensions for publisher
Element element_publisher;

//  Contact details to assist a user in finding and communicating with the
// publisher.
List<ContactDetail> contact;

//  A free text natural language description of the evidence variable from
// a consumer's perspective.
String description;

//  Extensions for description
Element element_description;

//  A human-readable string to clarify or explain concepts about the
// resource.
List<Annotation> note;

//  The content was developed with a focus and intent of supporting the
// contexts that are listed. These contexts may be general categories
// (gender, age, ...) or may be references to specific programs (insurance
// plans, studies, ...) and may be used to assist with indexing and
// searching for appropriate evidence variable instances.
List<UsageContext> useContext;

//  A legal or geographic region in which the evidence variable is
// intended to be used.
List<CodeableConcept> jurisdiction;

//  A copyright statement relating to the evidence variable and/or its
// contents. Copyright statements are generally legal restrictions on the
// use and publishing of the evidence variable.
String copyright;

//  Extensions for copyright
Element element_copyright;

//  The date on which the resource content was approved by the publisher.
// Approval happens once when the content is officially approved for
// usage.
String approvalDate;

//  Extensions for approvalDate
Element element_approvalDate;

//  The date on which the resource content was last reviewed. Review
// happens periodically after approval but does not change the original
// approval date.
String lastReviewDate;

//  Extensions for lastReviewDate
Element element_lastReviewDate;

//  The period during which the evidence variable content was or is
// planned to be in active use.
Period effectivePeriod;

//  Descriptive topics related to the content of the EvidenceVariable.
// Topics provide a high-level categorization grouping types of
// EvidenceVariables that can be useful for filtering and searching.
List<CodeableConcept> topic;

//  An individiual or organization primarily involved in the creation and
// maintenance of the content.
List<ContactDetail> author;

//  An individual or organization primarily responsible for internal
// coherence of the content.
List<ContactDetail> editor;

//  An individual or organization primarily responsible for review of some
// aspect of the content.
List<ContactDetail> reviewer;

//  An individual or organization responsible for officially endorsing the
// content for use in some setting.
List<ContactDetail> endorser;

//  Related artifacts such as additional documentation, justification, or
// bibliographic references.
List<RelatedArtifact> relatedArtifact;

//  The type of evidence element, a population, an exposure, or an
// outcome.
String type; // <code> enum: dichotomous/continuous/descriptive;

//  Extensions for type
Element element_type;

//  A characteristic that defines the members of the evidence element.
// Multiple characteristics are applied with "and" semantics.
List<EvidenceVariable_Characteristic> characteristic;

EvidenceVariable(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.url,
    this.element_url,
    this.identifier,
    this.version,
    this.element_version,
    this.name,
    this.element_name,
    this.title,
    this.element_title,
    this.shortTitle,
    this.element_shortTitle,
    this.subtitle,
    this.element_subtitle,
    this.status,
    this.element_status,
    this.date,
    this.element_date,
    this.publisher,
    this.element_publisher,
    this.contact,
    this.description,
    this.element_description,
    this.note,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.element_copyright,
    this.approvalDate,
    this.element_approvalDate,
    this.lastReviewDate,
    this.element_lastReviewDate,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.type,
    this.element_type,
    this.characteristic
    });

  factory EvidenceVariable.fromJson(Map<String, dynamic> json) => _$EvidenceVariableFromJson(json);
  Map<String, dynamic> toJson() => _$EvidenceVariableToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EvidenceVariable_Characteristic {

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

//  A short, natural language description of the characteristic that could
// be used to communicate the criteria to an end-user.
String description;

//  Extensions for description
Element element_description;

//  Define members of the evidence element using Codes (such as condition,
// medication, or observation), Expressions ( using an expression language
// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
// diagnosis onset in the last year).
Reference definitionReference;

//  Define members of the evidence element using Codes (such as condition,
// medication, or observation), Expressions ( using an expression language
// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
// diagnosis onset in the last year).
String definitionCanonical; //  pattern: ^\S*$

//  Extensions for definitionCanonical
Element element_definitionCanonical;

//  Define members of the evidence element using Codes (such as condition,
// medication, or observation), Expressions ( using an expression language
// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
// diagnosis onset in the last year).
CodeableConcept definitionCodeableConcept;

//  Define members of the evidence element using Codes (such as condition,
// medication, or observation), Expressions ( using an expression language
// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
// diagnosis onset in the last year).
Expression definitionExpression;

//  Define members of the evidence element using Codes (such as condition,
// medication, or observation), Expressions ( using an expression language
// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
// diagnosis onset in the last year).
DataRequirement definitionDataRequirement;

//  Define members of the evidence element using Codes (such as condition,
// medication, or observation), Expressions ( using an expression language
// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
// diagnosis onset in the last year).
TriggerDefinition definitionTriggerDefinition;

//  Use UsageContext to define the members of the population, such as Age
// Ranges, Genders, Settings.
List<UsageContext> usageContext;

//  When true, members with this characteristic are excluded from the
// element.
bool exclude;

//  Extensions for exclude
Element element_exclude;

//  Indicates what effective period the study covers.
String participantEffectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

//  Extensions for participantEffectiveDateTime
Element element_participantEffectiveDateTime;

//  Indicates what effective period the study covers.
Period participantEffectivePeriod;

//  Indicates what effective period the study covers.
Duration participantEffectiveDuration;

//  Indicates what effective period the study covers.
Timing participantEffectiveTiming;

//  Indicates duration from the participant's study entry.
Duration timeFromStart;

//  Indicates how elements are aggregated within the study effective
// period.
String groupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;

//  Extensions for groupMeasure
Element element_groupMeasure;

EvidenceVariable_Characteristic(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.element_description,
    this.definitionReference,
    this.definitionCanonical,
    this.element_definitionCanonical,
    this.definitionCodeableConcept,
    this.definitionExpression,
    this.definitionDataRequirement,
    this.definitionTriggerDefinition,
    this.usageContext,
    this.exclude,
    this.element_exclude,
    this.participantEffectiveDateTime,
    this.element_participantEffectiveDateTime,
    this.participantEffectivePeriod,
    this.participantEffectiveDuration,
    this.participantEffectiveTiming,
    this.timeFromStart,
    this.groupMeasure,
    this.element_groupMeasure
    });

  factory EvidenceVariable_Characteristic.fromJson(Map<String, dynamic> json) => _$EvidenceVariable_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$EvidenceVariable_CharacteristicToJson(this);
}

