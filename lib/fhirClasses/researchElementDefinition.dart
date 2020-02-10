import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

part 'researchElementDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ResearchElementDefinition {

  //  This is a ResearchElementDefinition resource
  final String resourceType= 'ResearchElementDefinition';

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
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

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
  List<dynamic> contained;

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

  //  An absolute URI that is used to identify this research element
  // definition when it is referenced in a specification, model, design or
  // an instance; also called its canonical identifier. This SHOULD be
  // globally unique and SHOULD be a literal address at which at which an
  // authoritative instance of this research element definition is (or will
  // be) published. This URL can be the target of a canonical reference. It
  // SHALL remain the same when the research element definition is stored on
  // different servers.
  String url;

  //  Extensions for url
  Element elementUrl;

  //  A formal identifier that is used to identify this research element
  // definition when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the research
  // element definition when it is referenced in a specification, model,
  // design or instance. This is an arbitrary value managed by the research
  // element definition author and is not expected to be globally unique.
  // For example, it might be a timestamp (e.g. yyyymmdd) if a managed
  // version is not available. There is also no expectation that versions
  // can be placed in a lexicographical sequence. To provide a version
  // consistent with the Decision Support Service specification, use the
  // format Major.Minor.Revision (e.g. 1.0.0). For more information on
  // versioning knowledge assets, refer to the Decision Support Service
  // specification. Note that a version is required for non-experimental
  // active artifacts.
  String version;

  //  Extensions for version
  Element elementVersion;

  //  A natural language name identifying the research element definition.
  // This name should be usable as an identifier for the module by machine
  // processing applications such as code generation.
  String name;

  //  Extensions for name
  Element elementName;

  //  A short, descriptive, user-friendly title for the research element
  // definition.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  The short title provides an alternate title for use in informal
  // descriptive contexts where the full, formal title is not necessary.
  String shortTitle;

  //  Extensions for shortTitle
  Element elementShortTitle;

  //  An explanatory or alternate title for the ResearchElementDefinition
  // giving additional information about its content.
  String subtitle;

  //  Extensions for subtitle
  Element elementSubtitle;

  //  The status of this research element definition. Enables tracking the
  // life-cycle of the content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element elementStatus;

  //  A Boolean value to indicate that this research element definition is
  // authored for testing purposes (or education/evaluation/marketing) and
  // is not intended to be used for genuine usage.
  bool experimental;

  //  Extensions for experimental
  Element elementExperimental;

  //  The intended subjects for the ResearchElementDefinition. If this
  // element is not provided, a Patient subject is assumed, but the subject
  // of the ResearchElementDefinition can be anything.
  CodeableConcept subjectCodeableConcept;

  //  The intended subjects for the ResearchElementDefinition. If this
  // element is not provided, a Patient subject is assumed, but the subject
  // of the ResearchElementDefinition can be anything.
  Reference subjectReference;

  //  The date  (and optionally time) when the research element definition
  // was published. The date must change when the business version changes
  // and it must change if the status code changes. In addition, it should
  // change when the substantive content of the research element definition
  // changes.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  The name of the organization or individual that published the research
  // element definition.
  String publisher;

  //  Extensions for publisher
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  A free text natural language description of the research element
  // definition from a consumer's perspective.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  A human-readable string to clarify or explain concepts about the
  // resource.
  List<String> comment;

  //  Extensions for comment
  List<Element> elementComment;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate research element definition instances.
  List<UsageContext> useContext;

  //  A legal or geographic region in which the research element definition
  // is intended to be used.
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this research element definition is needed and why
  // it has been designed as it has.
  String purpose;

  //  Extensions for purpose
  Element elementPurpose;

  //  A detailed description, from a clinical perspective, of how the
  // ResearchElementDefinition is used.
  String usage;

  //  Extensions for usage
  Element elementUsage;

  //  A copyright statement relating to the research element definition
  // and/or its contents. Copyright statements are generally legal
  // restrictions on the use and publishing of the research element
  // definition.
  String copyright;

  //  Extensions for copyright
  Element elementCopyright;

  //  The date on which the resource content was approved by the publisher.
  // Approval happens once when the content is officially approved for
  // usage.
  String approvalDate;

  //  Extensions for approvalDate
  Element elementApprovalDate;

  //  The date on which the resource content was last reviewed. Review
  // happens periodically after approval but does not change the original
  // approval date.
  String lastReviewDate;

  //  Extensions for lastReviewDate
  Element elementLastReviewDate;

  //  The period during which the research element definition content was or
  // is planned to be in active use.
  Period effectivePeriod;

  //  Descriptive topics related to the content of the
  // ResearchElementDefinition. Topics provide a high-level categorization
  // grouping types of ResearchElementDefinitions that can be useful for
  // filtering and searching.
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

  //  A reference to a Library resource containing the formal logic used by
  // the ResearchElementDefinition.
  List<String> library;

  //  The type of research element, a population, an exposure, or an
  // outcome.
  String type; // <code> enum: population/exposure/outcome;

  //  Extensions for type
  Element elementType;

  //  The type of the outcome (e.g. Dichotomous, Continuous, or
  // Descriptive).
  String variableType; // <code> enum: dichotomous/continuous/descriptive;

  //  Extensions for variableType
  Element elementVariableType;

  //  A characteristic that defines the members of the research element.
  // Multiple characteristics are applied with "and" semantics.
  List<ResearchElementDefinition_Characteristic> characteristic;

ResearchElementDefinition(
  this.characteristic,
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
    this.url,
    this.elementUrl,
    this.identifier,
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
    this.shortTitle,
    this.elementShortTitle,
    this.subtitle,
    this.elementSubtitle,
    this.status,
    this.elementStatus,
    this.experimental,
    this.elementExperimental,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.comment,
    this.elementComment,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.elementPurpose,
    this.usage,
    this.elementUsage,
    this.copyright,
    this.elementCopyright,
    this.approvalDate,
    this.elementApprovalDate,
    this.lastReviewDate,
    this.elementLastReviewDate,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library,
    this.type,
    this.elementType,
    this.variableType,
    this.elementVariableType
    });

  factory ResearchElementDefinition.fromJson(Map<String, dynamic> json) => _$ResearchElementDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchElementDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResearchElementDefinition_Characteristic {

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

  //  Define members of the research element using Codes (such as condition,
  // medication, or observation), Expressions ( using an expression language
  // such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  // diagnosis onset in the last year).
  CodeableConcept definitionCodeableConcept;

  //  Define members of the research element using Codes (such as condition,
  // medication, or observation), Expressions ( using an expression language
  // such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  // diagnosis onset in the last year).
  String definitionCanonical; //  pattern: ^\S*$

  //  Extensions for definitionCanonical
  Element elementDefinitionCanonical;

  //  Define members of the research element using Codes (such as condition,
  // medication, or observation), Expressions ( using an expression language
  // such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  // diagnosis onset in the last year).
  Expression definitionExpression;

  //  Define members of the research element using Codes (such as condition,
  // medication, or observation), Expressions ( using an expression language
  // such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  // diagnosis onset in the last year).
  DataRequirement definitionDataRequirement;

  //  Use UsageContext to define the members of the population, such as Age
  // Ranges, Genders, Settings.
  List<UsageContext> usageContext;

  //  When true, members with this characteristic are excluded from the
  // element.
  bool exclude;

  //  Extensions for exclude
  Element elementExclude;

  //  Specifies the UCUM unit for the outcome.
  CodeableConcept unitOfMeasure;

  //  A narrative description of the time period the study covers.
  String studyEffectiveDescription;

  //  Extensions for studyEffectiveDescription
  Element elementStudyEffectiveDescription;

  //  Indicates what effective period the study covers.
  String studyEffectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for studyEffectiveDateTime
  Element elementStudyEffectiveDateTime;

  //  Indicates what effective period the study covers.
  Period studyEffectivePeriod;

  //  Indicates what effective period the study covers.
  Duration studyEffectiveDuration;

  //  Indicates what effective period the study covers.
  Timing studyEffectiveTiming;

  //  Indicates duration from the study initiation.
  Duration studyEffectiveTimeFromStart;

  //  Indicates how elements are aggregated within the study effective
  // period.
  String studyEffectiveGroupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;

  //  Extensions for studyEffectiveGroupMeasure
  Element elementStudyEffectiveGroupMeasure;

  //  A narrative description of the time period the study covers.
  String participantEffectiveDescription;

  //  Extensions for participantEffectiveDescription
  Element elementParticipantEffectiveDescription;

  //  Indicates what effective period the study covers.
  String participantEffectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for participantEffectiveDateTime
  Element elementParticipantEffectiveDateTime;

  //  Indicates what effective period the study covers.
  Period participantEffectivePeriod;

  //  Indicates what effective period the study covers.
  Duration participantEffectiveDuration;

  //  Indicates what effective period the study covers.
  Timing participantEffectiveTiming;

  //  Indicates duration from the participant's study entry.
  Duration participantEffectiveTimeFromStart;

  //  Indicates how elements are aggregated within the study effective
  // period.
  String participantEffectiveGroupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;

  //  Extensions for participantEffectiveGroupMeasure
  Element elementParticipantEffectiveGroupMeasure;

ResearchElementDefinition_Characteristic(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.definitionCodeableConcept,
    this.definitionCanonical,
    this.elementDefinitionCanonical,
    this.definitionExpression,
    this.definitionDataRequirement,
    this.usageContext,
    this.exclude,
    this.elementExclude,
    this.unitOfMeasure,
    this.studyEffectiveDescription,
    this.elementStudyEffectiveDescription,
    this.studyEffectiveDateTime,
    this.elementStudyEffectiveDateTime,
    this.studyEffectivePeriod,
    this.studyEffectiveDuration,
    this.studyEffectiveTiming,
    this.studyEffectiveTimeFromStart,
    this.studyEffectiveGroupMeasure,
    this.elementStudyEffectiveGroupMeasure,
    this.participantEffectiveDescription,
    this.elementParticipantEffectiveDescription,
    this.participantEffectiveDateTime,
    this.elementParticipantEffectiveDateTime,
    this.participantEffectivePeriod,
    this.participantEffectiveDuration,
    this.participantEffectiveTiming,
    this.participantEffectiveTimeFromStart,
    this.participantEffectiveGroupMeasure,
    this.elementParticipantEffectiveGroupMeasure
    });

  factory ResearchElementDefinition_Characteristic.fromJson(Map<String, dynamic> json) => _$ResearchElementDefinition_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchElementDefinition_CharacteristicToJson(this);
}
