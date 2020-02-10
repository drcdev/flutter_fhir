import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

part 'riskEvidenceSynthesis.g.dart';

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis {

  //  This is a RiskEvidenceSynthesis resource
  final String resourceType= 'RiskEvidenceSynthesis';

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

  //  An absolute URI that is used to identify this risk evidence synthesis
  // when it is referenced in a specification, model, design or an instance;
  // also called its canonical identifier. This SHOULD be globally unique
  // and SHOULD be a literal address at which at which an authoritative
  // instance of this risk evidence synthesis is (or will be) published.
  // This URL can be the target of a canonical reference. It SHALL remain
  // the same when the risk evidence synthesis is stored on different
  // servers.
  String url;

  //  Extensions for url
  Element elementUrl;

  //  A formal identifier that is used to identify this risk evidence
  // synthesis when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the risk
  // evidence synthesis when it is referenced in a specification, model,
  // design or instance. This is an arbitrary value managed by the risk
  // evidence synthesis author and is not expected to be globally unique.
  // For example, it might be a timestamp (e.g. yyyymmdd) if a managed
  // version is not available. There is also no expectation that versions
  // can be placed in a lexicographical sequence.
  String version;

  //  Extensions for version
  Element elementVersion;

  //  A natural language name identifying the risk evidence synthesis. This
  // name should be usable as an identifier for the module by machine
  // processing applications such as code generation.
  String name;

  //  Extensions for name
  Element elementName;

  //  A short, descriptive, user-friendly title for the risk evidence
  // synthesis.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  The status of this risk evidence synthesis. Enables tracking the
  // life-cycle of the content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element elementStatus;

  //  The date  (and optionally time) when the risk evidence synthesis was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the risk evidence synthesis
  // changes.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  The name of the organization or individual that published the risk
  // evidence synthesis.
  String publisher;

  //  Extensions for publisher
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  A free text natural language description of the risk evidence
  // synthesis from a consumer's perspective.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  A human-readable string to clarify or explain concepts about the
  // resource.
  List<Annotation> note;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate risk evidence synthesis instances.
  List<UsageContext> useContext;

  //  A legal or geographic region in which the risk evidence synthesis is
  // intended to be used.
  List<CodeableConcept> jurisdiction;

  //  A copyright statement relating to the risk evidence synthesis and/or
  // its contents. Copyright statements are generally legal restrictions on
  // the use and publishing of the risk evidence synthesis.
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

  //  The period during which the risk evidence synthesis content was or is
  // planned to be in active use.
  Period effectivePeriod;

  //  Descriptive topics related to the content of the
  // RiskEvidenceSynthesis. Topics provide a high-level categorization
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

  //  A reference to a EvidenceVariable resomece that defines the outcome
  // for the research.
  Reference outcome;

  //  A description of the size of the sample involved in the synthesis.
  RiskEvidenceSynthesis_SampleSize sampleSize;

  //  The estimated risk of the outcome.
  RiskEvidenceSynthesis_RiskEstimate riskEstimate;

  //  A description of the certainty of the risk estimate.
  List<RiskEvidenceSynthesis_Certainty> certainty;

RiskEvidenceSynthesis(
  this.population,
    this.outcome,
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
    this.status,
    this.elementStatus,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.note,
    this.useContext,
    this.jurisdiction,
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
    this.synthesisType,
    this.studyType,
    this.exposure,
    this.sampleSize,
    this.riskEstimate,
    this.certainty
    });

  factory RiskEvidenceSynthesis.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesisFromJson(json);
  Map<String, dynamic> toJson() => _$RiskEvidenceSynthesisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_SampleSize {

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
  Element elementDescription;

  //  Number of studies included in this evidence synthesis.
  int numberOfStudies;

  //  Extensions for numberOfStudies
  Element elementNumberOfStudies;

  //  Number of participants included in this evidence synthesis.
  int numberOfParticipants;

  //  Extensions for numberOfParticipants
  Element elementNumberOfParticipants;

RiskEvidenceSynthesis_SampleSize(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.numberOfStudies,
    this.elementNumberOfStudies,
    this.numberOfParticipants,
    this.elementNumberOfParticipants
    });

  factory RiskEvidenceSynthesis_SampleSize.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_SampleSizeFromJson(json);
  Map<String, dynamic> toJson() => _$RiskEvidenceSynthesis_SampleSizeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_RiskEstimate {

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

  //  Human-readable summary of risk estimate.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  Examples include proportion and mean.
  CodeableConcept type;

  //  The point estimate of the risk estimate.
  double value;

  //  Extensions for value
  Element elementValue;

  //  Specifies the UCUM unit for the outcome.
  CodeableConcept unitOfMeasure;

  //  The sample size for the group that was measured for this risk
  // estimate.
  int denominatorCount;

  //  Extensions for denominatorCount
  Element elementDenominatorCount;

  //  The number of group members with the outcome of interest.
  int numeratorCount;

  //  Extensions for numeratorCount
  Element elementNumeratorCount;

  //  A description of the precision of the estimate for the effect.
  List<RiskEvidenceSynthesis_PrecisionEstimate> precisionEstimate;

RiskEvidenceSynthesis_RiskEstimate(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.type,
    this.value,
    this.elementValue,
    this.unitOfMeasure,
    this.denominatorCount,
    this.elementDenominatorCount,
    this.numeratorCount,
    this.elementNumeratorCount,
    this.precisionEstimate
    });

  factory RiskEvidenceSynthesis_RiskEstimate.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_RiskEstimateFromJson(json);
  Map<String, dynamic> toJson() => _$RiskEvidenceSynthesis_RiskEstimateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_PrecisionEstimate {

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
  Element elementLevel;

  //  Lower bound of confidence interval.
  double from;

  //  Extensions for from
  Element elementFrom;

  //  Upper bound of confidence interval.
  double to;

  //  Extensions for to
  Element elementTo;

RiskEvidenceSynthesis_PrecisionEstimate(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.level,
    this.elementLevel,
    this.from,
    this.elementFrom,
    this.to,
    this.elementTo
    });

  factory RiskEvidenceSynthesis_PrecisionEstimate.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_PrecisionEstimateFromJson(json);
  Map<String, dynamic> toJson() => _$RiskEvidenceSynthesis_PrecisionEstimateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_Certainty {

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
  List<RiskEvidenceSynthesis_CertaintySubcomponent> certaintySubcomponent;

RiskEvidenceSynthesis_Certainty(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.rating,
    this.note,
    this.certaintySubcomponent
    });

  factory RiskEvidenceSynthesis_Certainty.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_CertaintyFromJson(json);
  Map<String, dynamic> toJson() => _$RiskEvidenceSynthesis_CertaintyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_CertaintySubcomponent {

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

RiskEvidenceSynthesis_CertaintySubcomponent(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.rating,
    this.note
    });

  factory RiskEvidenceSynthesis_CertaintySubcomponent.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_CertaintySubcomponentFromJson(json);
  Map<String, dynamic> toJson() => _$RiskEvidenceSynthesis_CertaintySubcomponentToJson(this);
}
