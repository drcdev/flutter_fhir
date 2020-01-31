import 'package:json_annotation/json_annotation.dart';

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

part 'effectEvidenceSynthesis.g.dart';

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis {

  //  This is a EffectEvidenceSynthesis resource
  final String resourceType= 'EffectEvidenceSynthesis';

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

  //  An absolute URI that is used to identify this effect evidence
  // synthesis when it is referenced in a specification, model, design or an
  // instance; also called its canonical identifier. This SHOULD be globally
  // unique and SHOULD be a literal address at which at which an
  // authoritative instance of this effect evidence synthesis is (or will
  // be) published. This URL can be the target of a canonical reference. It
  // SHALL remain the same when the effect evidence synthesis is stored on
  // different servers.
  String url;

  //  Extensions for url
  Element element_url;

  //  A formal identifier that is used to identify this effect evidence
  // synthesis when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the effect
  // evidence synthesis when it is referenced in a specification, model,
  // design or instance. This is an arbitrary value managed by the effect
  // evidence synthesis author and is not expected to be globally unique.
  // For example, it might be a timestamp (e.g. yyyymmdd) if a managed
  // version is not available. There is also no expectation that versions
  // can be placed in a lexicographical sequence.
  String version;

  //  Extensions for version
  Element element_version;

  //  A natural language name identifying the effect evidence synthesis.
  // This name should be usable as an identifier for the module by machine
  // processing applications such as code generation.
  String name;

  //  Extensions for name
  Element element_name;

  //  A short, descriptive, user-friendly title for the effect evidence
  // synthesis.
  String title;

  //  Extensions for title
  Element element_title;

  //  The status of this effect evidence synthesis. Enables tracking the
  // life-cycle of the content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element element_status;

  //  The date  (and optionally time) when the effect evidence synthesis was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the effect evidence synthesis
  // changes.
  DateTime date;

  //  Extensions for date
  Element element_date;

  //  The name of the organization or individual that published the effect
  // evidence synthesis.
  String publisher;

  //  Extensions for publisher
  Element element_publisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  A free text natural language description of the effect evidence
  // synthesis from a consumer's perspective.
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
  // searching for appropriate effect evidence synthesis instances.
  List<UsageContext> useContext;

  //  A legal or geographic region in which the effect evidence synthesis is
  // intended to be used.
  List<CodeableConcept> jurisdiction;

  //  A copyright statement relating to the effect evidence synthesis and/or
  // its contents. Copyright statements are generally legal restrictions on
  // the use and publishing of the effect evidence synthesis.
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

  //  The period during which the effect evidence synthesis content was or
  // is planned to be in active use.
  Period effectivePeriod;

  //  Descriptive topics related to the content of the
  // EffectEvidenceSynthesis. Topics provide a high-level categorization
  // grouping types of EffectEvidenceSynthesiss that can be useful for
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

  //  Type of synthesis eg meta-analysis.
  CodeableConcept synthesisType;

  //  Type of study eg randomized trial.
  CodeableConcept studyType;

  //  A reference to a EvidenceVariable resource that defines the population
  // for the research.
  Reference population;

  //  A reference to a EvidenceVariable resource that defines the exposure
  // for the research.
  Reference exposure;

  //  A reference to a EvidenceVariable resource that defines the comparison
  // exposure for the research.
  Reference exposureAlternative;

  //  A reference to a EvidenceVariable resomece that defines the outcome
  // for the research.
  Reference outcome;

  //  A description of the size of the sample involved in the synthesis.
  EffectEvidenceSynthesis_SampleSize sampleSize;

  //  A description of the results for each exposure considered in the
  // effect estimate.
  List<EffectEvidenceSynthesis_ResultsByExposure> resultsByExposure;

  //  The estimated effect of the exposure variant.
  List<EffectEvidenceSynthesis_EffectEstimate> effectEstimate;

  //  A description of the certainty of the effect estimate.
  List<EffectEvidenceSynthesis_Certainty> certainty;

EffectEvidenceSynthesis(
  this.population,
    this.exposure,
    this.exposureAlternative,
    this.outcome,
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
    this.url,
    this.element_url,
    this.identifier,
    this.version,
    this.element_version,
    this.name,
    this.element_name,
    this.title,
    this.element_title,
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
    this.synthesisType,
    this.studyType,
    this.sampleSize,
    this.resultsByExposure,
    this.effectEstimate,
    this.certainty
    });

  factory EffectEvidenceSynthesis.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesisFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_SampleSize {

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

  //  Human-readable summary of sample size.
  String description;

  //  Extensions for description
  Element element_description;

  //  Number of studies included in this evidence synthesis.
  int numberOfStudies;

  //  Extensions for numberOfStudies
  Element element_numberOfStudies;

  //  Number of participants included in this evidence synthesis.
  int numberOfParticipants;

  //  Extensions for numberOfParticipants
  Element element_numberOfParticipants;

EffectEvidenceSynthesis_SampleSize(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.element_description,
    this.numberOfStudies,
    this.element_numberOfStudies,
    this.numberOfParticipants,
    this.element_numberOfParticipants
    });

  factory EffectEvidenceSynthesis_SampleSize.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_SampleSizeFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_SampleSizeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_ResultsByExposure {

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

  //  Human-readable summary of results by exposure state.
  String description;

  //  Extensions for description
  Element element_description;

  //  Whether these results are for the exposure state or alternative
  // exposure state.
  String exposureState; // <code> enum: exposure/exposure-alternative;

  //  Extensions for exposureState
  Element element_exposureState;

  //  Used to define variant exposure states such as low-risk state.
  CodeableConcept variantState;

  //  Reference to a RiskEvidenceSynthesis resource.
  Reference riskEvidenceSynthesis;

EffectEvidenceSynthesis_ResultsByExposure(
  this.riskEvidenceSynthesis,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.element_description,
    this.exposureState,
    this.element_exposureState,
    this.variantState
    });

  factory EffectEvidenceSynthesis_ResultsByExposure.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_ResultsByExposureFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_ResultsByExposureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_EffectEstimate {

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

  //  Human-readable summary of effect estimate.
  String description;

  //  Extensions for description
  Element element_description;

  //  Examples include relative risk and mean difference.
  CodeableConcept type;

  //  Used to define variant exposure states such as low-risk state.
  CodeableConcept variantState;

  //  The point estimate of the effect estimate.
  double value;

  //  Extensions for value
  Element element_value;

  //  Specifies the UCUM unit for the outcome.
  CodeableConcept unitOfMeasure;

  //  A description of the precision of the estimate for the effect.
  List<EffectEvidenceSynthesis_PrecisionEstimate> precisionEstimate;

EffectEvidenceSynthesis_EffectEstimate(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.element_description,
    this.type,
    this.variantState,
    this.value,
    this.element_value,
    this.unitOfMeasure,
    this.precisionEstimate
    });

  factory EffectEvidenceSynthesis_EffectEstimate.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_EffectEstimateFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_EffectEstimateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_PrecisionEstimate {

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

  //  Examples include confidence interval and interquartile range.
  CodeableConcept type;

  //  Use 95 for a 95% confidence interval.
  double level;

  //  Extensions for level
  Element element_level;

  //  Lower bound of confidence interval.
  double from;

  //  Extensions for from
  Element element_from;

  //  Upper bound of confidence interval.
  double to;

  //  Extensions for to
  Element element_to;

EffectEvidenceSynthesis_PrecisionEstimate(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.level,
    this.element_level,
    this.from,
    this.element_from,
    this.to,
    this.element_to
    });

  factory EffectEvidenceSynthesis_PrecisionEstimate.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_PrecisionEstimateFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_PrecisionEstimateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_Certainty {

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

  //  A rating of the certainty of the effect estimate.
  List<CodeableConcept> rating;

  //  A human-readable string to clarify or explain concepts about the
  // resource.
  List<Annotation> note;

  //  A description of a component of the overall certainty.
  List<EffectEvidenceSynthesis_CertaintySubcomponent> certaintySubcomponent;

EffectEvidenceSynthesis_Certainty(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.rating,
    this.note,
    this.certaintySubcomponent
    });

  factory EffectEvidenceSynthesis_Certainty.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_CertaintyFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_CertaintyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_CertaintySubcomponent {

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

  //  Type of subcomponent of certainty rating.
  CodeableConcept type;

  //  A rating of a subcomponent of rating certainty.
  List<CodeableConcept> rating;

  //  A human-readable string to clarify or explain concepts about the
  // resource.
  List<Annotation> note;

EffectEvidenceSynthesis_CertaintySubcomponent(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.rating,
    this.note
    });

  factory EffectEvidenceSynthesis_CertaintySubcomponent.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_CertaintySubcomponentFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_CertaintySubcomponentToJson(this);
}

