import 'package:hive/hive.dart';
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

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 522)
class RiskEvidenceSynthesis {

  //  This is a RiskEvidenceSynthesis resource
  @HiveField(0)
  final String resourceType= 'RiskEvidenceSynthesis';

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

  //  An absolute URI that is used to identify this risk evidence synthesis
  // when it is referenced in a specification, model, design or an instance;
  // also called its canonical identifier. This SHOULD be globally unique
  // and SHOULD be a literal address at which at which an authoritative
  // instance of this risk evidence synthesis is (or will be) published.
  // This URL can be the target of a canonical reference. It SHALL remain
  // the same when the risk evidence synthesis is stored on different
  // servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  A formal identifier that is used to identify this risk evidence
  // synthesis when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
  @HiveField(13)
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the risk
  // evidence synthesis when it is referenced in a specification, model,
  // design or instance. This is an arbitrary value managed by the risk
  // evidence synthesis author and is not expected to be globally unique.
  // For example, it might be a timestamp (e.g. yyyymmdd) if a managed
  // version is not available. There is also no expectation that versions
  // can be placed in a lexicographical sequence.
  @HiveField(14)
  String version;

  //  Extensions for version
  @HiveField(15)
  Element elementVersion;

  //  A natural language name identifying the risk evidence synthesis. This
  // name should be usable as an identifier for the module by machine
  // processing applications such as code generation.
  @HiveField(16)
  String name;

  //  Extensions for name
  @HiveField(17)
  Element elementName;

  //  A short, descriptive, user-friendly title for the risk evidence
  // synthesis.
  @HiveField(18)
  String title;

  //  Extensions for title
  @HiveField(19)
  Element elementTitle;

  //  The status of this risk evidence synthesis. Enables tracking the
  // life-cycle of the content.
  @HiveField(20)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(21)
  Element elementStatus;

  //  The date  (and optionally time) when the risk evidence synthesis was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the risk evidence synthesis
  // changes.
  @HiveField(22)
  DateTime date;

  //  Extensions for date
  @HiveField(23)
  Element elementDate;

  //  The name of the organization or individual that published the risk
  // evidence synthesis.
  @HiveField(24)
  String publisher;

  //  Extensions for publisher
  @HiveField(25)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(26)
  List<ContactDetail> contact;

  //  A free text natural language description of the risk evidence
  // synthesis from a consumer's perspective.
  @HiveField(27)
  String description;

  //  Extensions for description
  @HiveField(28)
  Element elementDescription;

  //  A human-readable string to clarify or explain concepts about the
  // resource.
  @HiveField(29)
  List<Annotation> note;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate risk evidence synthesis instances.
  @HiveField(30)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the risk evidence synthesis is
  // intended to be used.
  @HiveField(31)
  List<CodeableConcept> jurisdiction;

  //  A copyright statement relating to the risk evidence synthesis and/or
  // its contents. Copyright statements are generally legal restrictions on
  // the use and publishing of the risk evidence synthesis.
  @HiveField(32)
  String copyright;

  //  Extensions for copyright
  @HiveField(33)
  Element elementCopyright;

  //  The date on which the resource content was approved by the publisher.
  // Approval happens once when the content is officially approved for
  // usage.
  @HiveField(34)
  String approvalDate;

  //  Extensions for approvalDate
  @HiveField(35)
  Element elementApprovalDate;

  //  The date on which the resource content was last reviewed. Review
  // happens periodically after approval but does not change the original
  // approval date.
  @HiveField(36)
  String lastReviewDate;

  //  Extensions for lastReviewDate
  @HiveField(37)
  Element elementLastReviewDate;

  //  The period during which the risk evidence synthesis content was or is
  // planned to be in active use.
  @HiveField(38)
  Period effectivePeriod;

  //  Descriptive topics related to the content of the
  // RiskEvidenceSynthesis. Topics provide a high-level categorization
  // grouping types of EffectEvidenceSynthesiss that can be useful for
  // filtering and searching.
  @HiveField(39)
  List<CodeableConcept> topic;

  //  An individiual or organization primarily involved in the creation and
  // maintenance of the content.
  @HiveField(40)
  List<ContactDetail> author;

  //  An individual or organization primarily responsible for internal
  // coherence of the content.
  @HiveField(41)
  List<ContactDetail> editor;

  //  An individual or organization primarily responsible for review of some
  // aspect of the content.
  @HiveField(42)
  List<ContactDetail> reviewer;

  //  An individual or organization responsible for officially endorsing the
  // content for use in some setting.
  @HiveField(43)
  List<ContactDetail> endorser;

  //  Related artifacts such as additional documentation, justification, or
  // bibliographic references.
  @HiveField(44)
  List<RelatedArtifact> relatedArtifact;

  //  Type of synthesis eg meta-analysis.
  @HiveField(45)
  CodeableConcept synthesisType;

  //  Type of study eg randomized trial.
  @HiveField(46)
  CodeableConcept studyType;

  //  A reference to a EvidenceVariable resource that defines the population
  // for the research.
  @HiveField(47)
  Reference population;

  //  A reference to a EvidenceVariable resource that defines the exposure
  // for the research.
  @HiveField(48)
  Reference exposure;

  //  A reference to a EvidenceVariable resomece that defines the outcome
  // for the research.
  @HiveField(49)
  Reference outcome;

  //  A description of the size of the sample involved in the synthesis.
  @HiveField(50)
  RiskEvidenceSynthesis_SampleSize sampleSize;

  //  The estimated risk of the outcome.
  @HiveField(51)
  RiskEvidenceSynthesis_RiskEstimate riskEstimate;

  //  A description of the certainty of the risk estimate.
  @HiveField(52)
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
@HiveType(typeId: 523)
class RiskEvidenceSynthesis_SampleSize {

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

  //  Human-readable summary of sample size.
  @HiveField(3)
  String description;

  //  Extensions for description
  @HiveField(4)
  Element elementDescription;

  //  Number of studies included in this evidence synthesis.
  @HiveField(5)
  int numberOfStudies;

  //  Extensions for numberOfStudies
  @HiveField(6)
  Element elementNumberOfStudies;

  //  Number of participants included in this evidence synthesis.
  @HiveField(7)
  int numberOfParticipants;

  //  Extensions for numberOfParticipants
  @HiveField(8)
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
@HiveType(typeId: 524)
class RiskEvidenceSynthesis_RiskEstimate {

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

  //  Human-readable summary of risk estimate.
  @HiveField(3)
  String description;

  //  Extensions for description
  @HiveField(4)
  Element elementDescription;

  //  Examples include proportion and mean.
  @HiveField(5)
  CodeableConcept type;

  //  The point estimate of the risk estimate.
  @HiveField(6)
  double value;

  //  Extensions for value
  @HiveField(7)
  Element elementValue;

  //  Specifies the UCUM unit for the outcome.
  @HiveField(8)
  CodeableConcept unitOfMeasure;

  //  The sample size for the group that was measured for this risk
  // estimate.
  @HiveField(9)
  int denominatorCount;

  //  Extensions for denominatorCount
  @HiveField(10)
  Element elementDenominatorCount;

  //  The number of group members with the outcome of interest.
  @HiveField(11)
  int numeratorCount;

  //  Extensions for numeratorCount
  @HiveField(12)
  Element elementNumeratorCount;

  //  A description of the precision of the estimate for the effect.
  @HiveField(13)
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
@HiveType(typeId: 525)
class RiskEvidenceSynthesis_PrecisionEstimate {

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

  //  Examples include confidence interval and interquartile range.
  @HiveField(3)
  CodeableConcept type;

  //  Use 95 for a 95% confidence interval.
  @HiveField(4)
  double level;

  //  Extensions for level
  @HiveField(5)
  Element elementLevel;

  //  Lower bound of confidence interval.
  @HiveField(6)
  double from;

  //  Extensions for from
  @HiveField(7)
  Element elementFrom;

  //  Upper bound of confidence interval.
  @HiveField(8)
  double to;

  //  Extensions for to
  @HiveField(9)
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
@HiveType(typeId: 526)
class RiskEvidenceSynthesis_Certainty {

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

  //  A rating of the certainty of the effect estimate.
  @HiveField(3)
  List<CodeableConcept> rating;

  //  A human-readable string to clarify or explain concepts about the
  // resource.
  @HiveField(4)
  List<Annotation> note;

  //  A description of a component of the overall certainty.
  @HiveField(5)
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
@HiveType(typeId: 527)
class RiskEvidenceSynthesis_CertaintySubcomponent {

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

  //  Type of subcomponent of certainty rating.
  @HiveField(3)
  CodeableConcept type;

  //  A rating of a subcomponent of rating certainty.
  @HiveField(4)
  List<CodeableConcept> rating;

  //  A human-readable string to clarify or explain concepts about the
  // resource.
  @HiveField(5)
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


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RiskEvidenceSynthesisAdapter extends TypeAdapter<RiskEvidenceSynthesis> {
  @override
  final typeId = 522;

  @override
  RiskEvidenceSynthesis read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RiskEvidenceSynthesis(
      fields[47] as Reference,
      fields[49] as Reference,
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
      url: fields[11] as String,
      elementUrl: fields[12] as Element,
      identifier: (fields[13] as List)?.cast<Identifier>(),
      version: fields[14] as String,
      elementVersion: fields[15] as Element,
      name: fields[16] as String,
      elementName: fields[17] as Element,
      title: fields[18] as String,
      elementTitle: fields[19] as Element,
      status: fields[20] as String,
      elementStatus: fields[21] as Element,
      date: fields[22] as DateTime,
      elementDate: fields[23] as Element,
      publisher: fields[24] as String,
      elementPublisher: fields[25] as Element,
      contact: (fields[26] as List)?.cast<ContactDetail>(),
      description: fields[27] as String,
      elementDescription: fields[28] as Element,
      note: (fields[29] as List)?.cast<Annotation>(),
      useContext: (fields[30] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[31] as List)?.cast<CodeableConcept>(),
      copyright: fields[32] as String,
      elementCopyright: fields[33] as Element,
      approvalDate: fields[34] as String,
      elementApprovalDate: fields[35] as Element,
      lastReviewDate: fields[36] as String,
      elementLastReviewDate: fields[37] as Element,
      effectivePeriod: fields[38] as Period,
      topic: (fields[39] as List)?.cast<CodeableConcept>(),
      author: (fields[40] as List)?.cast<ContactDetail>(),
      editor: (fields[41] as List)?.cast<ContactDetail>(),
      reviewer: (fields[42] as List)?.cast<ContactDetail>(),
      endorser: (fields[43] as List)?.cast<ContactDetail>(),
      relatedArtifact: (fields[44] as List)?.cast<RelatedArtifact>(),
      synthesisType: fields[45] as CodeableConcept,
      studyType: fields[46] as CodeableConcept,
      exposure: fields[48] as Reference,
      sampleSize: fields[50] as RiskEvidenceSynthesis_SampleSize,
      riskEstimate: fields[51] as RiskEvidenceSynthesis_RiskEstimate,
      certainty: (fields[52] as List)?.cast<RiskEvidenceSynthesis_Certainty>(),
    );
  }

  @override
  void write(BinaryWriter writer, RiskEvidenceSynthesis obj) {
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
      ..write(obj.url)
      ..writeByte(12)
      ..write(obj.elementUrl)
      ..writeByte(13)
      ..write(obj.identifier)
      ..writeByte(14)
      ..write(obj.version)
      ..writeByte(15)
      ..write(obj.elementVersion)
      ..writeByte(16)
      ..write(obj.name)
      ..writeByte(17)
      ..write(obj.elementName)
      ..writeByte(18)
      ..write(obj.title)
      ..writeByte(19)
      ..write(obj.elementTitle)
      ..writeByte(20)
      ..write(obj.status)
      ..writeByte(21)
      ..write(obj.elementStatus)
      ..writeByte(22)
      ..write(obj.date)
      ..writeByte(23)
      ..write(obj.elementDate)
      ..writeByte(24)
      ..write(obj.publisher)
      ..writeByte(25)
      ..write(obj.elementPublisher)
      ..writeByte(26)
      ..write(obj.contact)
      ..writeByte(27)
      ..write(obj.description)
      ..writeByte(28)
      ..write(obj.elementDescription)
      ..writeByte(29)
      ..write(obj.note)
      ..writeByte(30)
      ..write(obj.useContext)
      ..writeByte(31)
      ..write(obj.jurisdiction)
      ..writeByte(32)
      ..write(obj.copyright)
      ..writeByte(33)
      ..write(obj.elementCopyright)
      ..writeByte(34)
      ..write(obj.approvalDate)
      ..writeByte(35)
      ..write(obj.elementApprovalDate)
      ..writeByte(36)
      ..write(obj.lastReviewDate)
      ..writeByte(37)
      ..write(obj.elementLastReviewDate)
      ..writeByte(38)
      ..write(obj.effectivePeriod)
      ..writeByte(39)
      ..write(obj.topic)
      ..writeByte(40)
      ..write(obj.author)
      ..writeByte(41)
      ..write(obj.editor)
      ..writeByte(42)
      ..write(obj.reviewer)
      ..writeByte(43)
      ..write(obj.endorser)
      ..writeByte(44)
      ..write(obj.relatedArtifact)
      ..writeByte(45)
      ..write(obj.synthesisType)
      ..writeByte(46)
      ..write(obj.studyType)
      ..writeByte(47)
      ..write(obj.population)
      ..writeByte(48)
      ..write(obj.exposure)
      ..writeByte(49)
      ..write(obj.outcome)
      ..writeByte(50)
      ..write(obj.sampleSize)
      ..writeByte(51)
      ..write(obj.riskEstimate)
      ..writeByte(52)
      ..write(obj.certainty);
  }
}

class RiskEvidenceSynthesis_SampleSizeAdapter
    extends TypeAdapter<RiskEvidenceSynthesis_SampleSize> {
  @override
  final typeId = 523;

  @override
  RiskEvidenceSynthesis_SampleSize read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RiskEvidenceSynthesis_SampleSize(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      description: fields[3] as String,
      elementDescription: fields[4] as Element,
      numberOfStudies: fields[5] as int,
      elementNumberOfStudies: fields[6] as Element,
      numberOfParticipants: fields[7] as int,
      elementNumberOfParticipants: fields[8] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, RiskEvidenceSynthesis_SampleSize obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.elementDescription)
      ..writeByte(5)
      ..write(obj.numberOfStudies)
      ..writeByte(6)
      ..write(obj.elementNumberOfStudies)
      ..writeByte(7)
      ..write(obj.numberOfParticipants)
      ..writeByte(8)
      ..write(obj.elementNumberOfParticipants);
  }
}

class RiskEvidenceSynthesis_RiskEstimateAdapter
    extends TypeAdapter<RiskEvidenceSynthesis_RiskEstimate> {
  @override
  final typeId = 524;

  @override
  RiskEvidenceSynthesis_RiskEstimate read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RiskEvidenceSynthesis_RiskEstimate(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      description: fields[3] as String,
      elementDescription: fields[4] as Element,
      type: fields[5] as CodeableConcept,
      value: fields[6] as double,
      elementValue: fields[7] as Element,
      unitOfMeasure: fields[8] as CodeableConcept,
      denominatorCount: fields[9] as int,
      elementDenominatorCount: fields[10] as Element,
      numeratorCount: fields[11] as int,
      elementNumeratorCount: fields[12] as Element,
      precisionEstimate:
          (fields[13] as List)?.cast<RiskEvidenceSynthesis_PrecisionEstimate>(),
    );
  }

  @override
  void write(BinaryWriter writer, RiskEvidenceSynthesis_RiskEstimate obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.elementDescription)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.value)
      ..writeByte(7)
      ..write(obj.elementValue)
      ..writeByte(8)
      ..write(obj.unitOfMeasure)
      ..writeByte(9)
      ..write(obj.denominatorCount)
      ..writeByte(10)
      ..write(obj.elementDenominatorCount)
      ..writeByte(11)
      ..write(obj.numeratorCount)
      ..writeByte(12)
      ..write(obj.elementNumeratorCount)
      ..writeByte(13)
      ..write(obj.precisionEstimate);
  }
}

class RiskEvidenceSynthesis_PrecisionEstimateAdapter
    extends TypeAdapter<RiskEvidenceSynthesis_PrecisionEstimate> {
  @override
  final typeId = 525;

  @override
  RiskEvidenceSynthesis_PrecisionEstimate read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RiskEvidenceSynthesis_PrecisionEstimate(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      level: fields[4] as double,
      elementLevel: fields[5] as Element,
      from: fields[6] as double,
      elementFrom: fields[7] as Element,
      to: fields[8] as double,
      elementTo: fields[9] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, RiskEvidenceSynthesis_PrecisionEstimate obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.level)
      ..writeByte(5)
      ..write(obj.elementLevel)
      ..writeByte(6)
      ..write(obj.from)
      ..writeByte(7)
      ..write(obj.elementFrom)
      ..writeByte(8)
      ..write(obj.to)
      ..writeByte(9)
      ..write(obj.elementTo);
  }
}

class RiskEvidenceSynthesis_CertaintyAdapter
    extends TypeAdapter<RiskEvidenceSynthesis_Certainty> {
  @override
  final typeId = 526;

  @override
  RiskEvidenceSynthesis_Certainty read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RiskEvidenceSynthesis_Certainty(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      rating: (fields[3] as List)?.cast<CodeableConcept>(),
      note: (fields[4] as List)?.cast<Annotation>(),
      certaintySubcomponent: (fields[5] as List)
          ?.cast<RiskEvidenceSynthesis_CertaintySubcomponent>(),
    );
  }

  @override
  void write(BinaryWriter writer, RiskEvidenceSynthesis_Certainty obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.rating)
      ..writeByte(4)
      ..write(obj.note)
      ..writeByte(5)
      ..write(obj.certaintySubcomponent);
  }
}

class RiskEvidenceSynthesis_CertaintySubcomponentAdapter
    extends TypeAdapter<RiskEvidenceSynthesis_CertaintySubcomponent> {
  @override
  final typeId = 527;

  @override
  RiskEvidenceSynthesis_CertaintySubcomponent read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RiskEvidenceSynthesis_CertaintySubcomponent(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      rating: (fields[4] as List)?.cast<CodeableConcept>(),
      note: (fields[5] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, RiskEvidenceSynthesis_CertaintySubcomponent obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.rating)
      ..writeByte(5)
      ..write(obj.note);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RiskEvidenceSynthesis _$RiskEvidenceSynthesisFromJson(
    Map<String, dynamic> json) {
  return RiskEvidenceSynthesis(
    json['population'] == null
        ? null
        : Reference.fromJson(json['population'] as Map<String, dynamic>),
    json['outcome'] == null
        ? null
        : Reference.fromJson(json['outcome'] as Map<String, dynamic>),
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
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    publisher: json['publisher'] as String,
    elementPublisher: json['elementPublisher'] == null
        ? null
        : Element.fromJson(json['elementPublisher'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    approvalDate: json['approvalDate'] as String,
    elementApprovalDate: json['elementApprovalDate'] == null
        ? null
        : Element.fromJson(json['elementApprovalDate'] as Map<String, dynamic>),
    lastReviewDate: json['lastReviewDate'] as String,
    elementLastReviewDate: json['elementLastReviewDate'] == null
        ? null
        : Element.fromJson(
            json['elementLastReviewDate'] as Map<String, dynamic>),
    effectivePeriod: json['effectivePeriod'] == null
        ? null
        : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
    topic: (json['topic'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    author: (json['author'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    editor: (json['editor'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reviewer: (json['reviewer'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    endorser: (json['endorser'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relatedArtifact: (json['relatedArtifact'] as List)
        ?.map((e) => e == null
            ? null
            : RelatedArtifact.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    synthesisType: json['synthesisType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['synthesisType'] as Map<String, dynamic>),
    studyType: json['studyType'] == null
        ? null
        : CodeableConcept.fromJson(json['studyType'] as Map<String, dynamic>),
    exposure: json['exposure'] == null
        ? null
        : Reference.fromJson(json['exposure'] as Map<String, dynamic>),
    sampleSize: json['sampleSize'] == null
        ? null
        : RiskEvidenceSynthesis_SampleSize.fromJson(
            json['sampleSize'] as Map<String, dynamic>),
    riskEstimate: json['riskEstimate'] == null
        ? null
        : RiskEvidenceSynthesis_RiskEstimate.fromJson(
            json['riskEstimate'] as Map<String, dynamic>),
    certainty: (json['certainty'] as List)
        ?.map((e) => e == null
            ? null
            : RiskEvidenceSynthesis_Certainty.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RiskEvidenceSynthesisToJson(
        RiskEvidenceSynthesis instance) =>
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
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'approvalDate': instance.approvalDate,
      'elementApprovalDate': instance.elementApprovalDate?.toJson(),
      'lastReviewDate': instance.lastReviewDate,
      'elementLastReviewDate': instance.elementLastReviewDate?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'topic': instance.topic?.map((e) => e?.toJson())?.toList(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'editor': instance.editor?.map((e) => e?.toJson())?.toList(),
      'reviewer': instance.reviewer?.map((e) => e?.toJson())?.toList(),
      'endorser': instance.endorser?.map((e) => e?.toJson())?.toList(),
      'relatedArtifact':
          instance.relatedArtifact?.map((e) => e?.toJson())?.toList(),
      'synthesisType': instance.synthesisType?.toJson(),
      'studyType': instance.studyType?.toJson(),
      'population': instance.population?.toJson(),
      'exposure': instance.exposure?.toJson(),
      'outcome': instance.outcome?.toJson(),
      'sampleSize': instance.sampleSize?.toJson(),
      'riskEstimate': instance.riskEstimate?.toJson(),
      'certainty': instance.certainty?.map((e) => e?.toJson())?.toList(),
    };

RiskEvidenceSynthesis_SampleSize _$RiskEvidenceSynthesis_SampleSizeFromJson(
    Map<String, dynamic> json) {
  return RiskEvidenceSynthesis_SampleSize(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    numberOfStudies: json['numberOfStudies'] as int,
    elementNumberOfStudies: json['elementNumberOfStudies'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfStudies'] as Map<String, dynamic>),
    numberOfParticipants: json['numberOfParticipants'] as int,
    elementNumberOfParticipants: json['elementNumberOfParticipants'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfParticipants'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RiskEvidenceSynthesis_SampleSizeToJson(
        RiskEvidenceSynthesis_SampleSize instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'numberOfStudies': instance.numberOfStudies,
      'elementNumberOfStudies': instance.elementNumberOfStudies?.toJson(),
      'numberOfParticipants': instance.numberOfParticipants,
      'elementNumberOfParticipants':
          instance.elementNumberOfParticipants?.toJson(),
    };

RiskEvidenceSynthesis_RiskEstimate _$RiskEvidenceSynthesis_RiskEstimateFromJson(
    Map<String, dynamic> json) {
  return RiskEvidenceSynthesis_RiskEstimate(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    value: (json['value'] as num)?.toDouble(),
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    unitOfMeasure: json['unitOfMeasure'] == null
        ? null
        : CodeableConcept.fromJson(
            json['unitOfMeasure'] as Map<String, dynamic>),
    denominatorCount: json['denominatorCount'] as int,
    elementDenominatorCount: json['elementDenominatorCount'] == null
        ? null
        : Element.fromJson(
            json['elementDenominatorCount'] as Map<String, dynamic>),
    numeratorCount: json['numeratorCount'] as int,
    elementNumeratorCount: json['elementNumeratorCount'] == null
        ? null
        : Element.fromJson(
            json['elementNumeratorCount'] as Map<String, dynamic>),
    precisionEstimate: (json['precisionEstimate'] as List)
        ?.map((e) => e == null
            ? null
            : RiskEvidenceSynthesis_PrecisionEstimate.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RiskEvidenceSynthesis_RiskEstimateToJson(
        RiskEvidenceSynthesis_RiskEstimate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'type': instance.type?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
      'unitOfMeasure': instance.unitOfMeasure?.toJson(),
      'denominatorCount': instance.denominatorCount,
      'elementDenominatorCount': instance.elementDenominatorCount?.toJson(),
      'numeratorCount': instance.numeratorCount,
      'elementNumeratorCount': instance.elementNumeratorCount?.toJson(),
      'precisionEstimate':
          instance.precisionEstimate?.map((e) => e?.toJson())?.toList(),
    };

RiskEvidenceSynthesis_PrecisionEstimate
    _$RiskEvidenceSynthesis_PrecisionEstimateFromJson(
        Map<String, dynamic> json) {
  return RiskEvidenceSynthesis_PrecisionEstimate(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    level: (json['level'] as num)?.toDouble(),
    elementLevel: json['elementLevel'] == null
        ? null
        : Element.fromJson(json['elementLevel'] as Map<String, dynamic>),
    from: (json['from'] as num)?.toDouble(),
    elementFrom: json['elementFrom'] == null
        ? null
        : Element.fromJson(json['elementFrom'] as Map<String, dynamic>),
    to: (json['to'] as num)?.toDouble(),
    elementTo: json['elementTo'] == null
        ? null
        : Element.fromJson(json['elementTo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RiskEvidenceSynthesis_PrecisionEstimateToJson(
        RiskEvidenceSynthesis_PrecisionEstimate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'level': instance.level,
      'elementLevel': instance.elementLevel?.toJson(),
      'from': instance.from,
      'elementFrom': instance.elementFrom?.toJson(),
      'to': instance.to,
      'elementTo': instance.elementTo?.toJson(),
    };

RiskEvidenceSynthesis_Certainty _$RiskEvidenceSynthesis_CertaintyFromJson(
    Map<String, dynamic> json) {
  return RiskEvidenceSynthesis_Certainty(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rating: (json['rating'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    certaintySubcomponent: (json['certaintySubcomponent'] as List)
        ?.map((e) => e == null
            ? null
            : RiskEvidenceSynthesis_CertaintySubcomponent.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RiskEvidenceSynthesis_CertaintyToJson(
        RiskEvidenceSynthesis_Certainty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'rating': instance.rating?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'certaintySubcomponent':
          instance.certaintySubcomponent?.map((e) => e?.toJson())?.toList(),
    };

RiskEvidenceSynthesis_CertaintySubcomponent
    _$RiskEvidenceSynthesis_CertaintySubcomponentFromJson(
        Map<String, dynamic> json) {
  return RiskEvidenceSynthesis_CertaintySubcomponent(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    rating: (json['rating'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RiskEvidenceSynthesis_CertaintySubcomponentToJson(
        RiskEvidenceSynthesis_CertaintySubcomponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'rating': instance.rating?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };
