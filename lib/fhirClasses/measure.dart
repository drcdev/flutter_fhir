import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 352)
class Measure {

  //  This is a Measure resource
  @HiveField(0)
  final String resourceType= 'Measure';

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

  //  An absolute URI that is used to identify this measure when it is
  // referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this measure is (or will be) published. This URL can be the target
  // of a canonical reference. It SHALL remain the same when the measure is
  // stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  A formal identifier that is used to identify this measure when it is
  // represented in other formats, or referenced in a specification, model,
  // design or an instance.
  @HiveField(13)
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the measure
  // when it is referenced in a specification, model, design or instance.
  // This is an arbitrary value managed by the measure author and is not
  // expected to be globally unique. For example, it might be a timestamp
  // (e.g. yyyymmdd) if a managed version is not available. There is also no
  // expectation that versions can be placed in a lexicographical sequence.
  // To provide a version consistent with the Decision Support Service
  // specification, use the format Major.Minor.Revision (e.g. 1.0.0). For
  // more information on versioning knowledge assets, refer to the Decision
  // Support Service specification. Note that a version is required for
  // non-experimental active artifacts.
  @HiveField(14)
  String version;

  //  Extensions for version
  @HiveField(15)
  Element elementVersion;

  //  A natural language name identifying the measure. This name should be
  // usable as an identifier for the module by machine processing
  // applications such as code generation.
  @HiveField(16)
  String name;

  //  Extensions for name
  @HiveField(17)
  Element elementName;

  //  A short, descriptive, user-friendly title for the measure.
  @HiveField(18)
  String title;

  //  Extensions for title
  @HiveField(19)
  Element elementTitle;

  //  An explanatory or alternate title for the measure giving additional
  // information about its content.
  @HiveField(20)
  String subtitle;

  //  Extensions for subtitle
  @HiveField(21)
  Element elementSubtitle;

  //  The status of this measure. Enables tracking the life-cycle of the
  // content.
  @HiveField(22)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(23)
  Element elementStatus;

  //  A Boolean value to indicate that this measure is authored for testing
  // purposes (or education/evaluation/marketing) and is not intended to be
  // used for genuine usage.
  @HiveField(24)
  bool experimental;

  //  Extensions for experimental
  @HiveField(25)
  Element elementExperimental;

  //  The intended subjects for the measure. If this element is not
  // provided, a Patient subject is assumed, but the subject of the measure
  // can be anything.
  @HiveField(26)
  CodeableConcept subjectCodeableConcept;

  //  The intended subjects for the measure. If this element is not
  // provided, a Patient subject is assumed, but the subject of the measure
  // can be anything.
  @HiveField(27)
  Reference subjectReference;

  //  The date  (and optionally time) when the measure was published. The
  // date must change when the business version changes and it must change
  // if the status code changes. In addition, it should change when the
  // substantive content of the measure changes.
  @HiveField(28)
  DateTime date;

  //  Extensions for date
  @HiveField(29)
  Element elementDate;

  //  The name of the organization or individual that published the measure.
  @HiveField(30)
  String publisher;

  //  Extensions for publisher
  @HiveField(31)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(32)
  List<ContactDetail> contact;

  //  A free text natural language description of the measure from a
  // consumer's perspective.
  @HiveField(33)
  String description;

  //  Extensions for description
  @HiveField(34)
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate measure instances.
  @HiveField(35)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the measure is intended to be
  // used.
  @HiveField(36)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this measure is needed and why it has been designed
  // as it has.
  @HiveField(37)
  String purpose;

  //  Extensions for purpose
  @HiveField(38)
  Element elementPurpose;

  //  A detailed description, from a clinical perspective, of how the
  // measure is used.
  @HiveField(39)
  String usage;

  //  Extensions for usage
  @HiveField(40)
  Element elementUsage;

  //  A copyright statement relating to the measure and/or its contents.
  // Copyright statements are generally legal restrictions on the use and
  // publishing of the measure.
  @HiveField(41)
  String copyright;

  //  Extensions for copyright
  @HiveField(42)
  Element elementCopyright;

  //  The date on which the resource content was approved by the publisher.
  // Approval happens once when the content is officially approved for
  // usage.
  @HiveField(43)
  String approvalDate;

  //  Extensions for approvalDate
  @HiveField(44)
  Element elementApprovalDate;

  //  The date on which the resource content was last reviewed. Review
  // happens periodically after approval but does not change the original
  // approval date.
  @HiveField(45)
  String lastReviewDate;

  //  Extensions for lastReviewDate
  @HiveField(46)
  Element elementLastReviewDate;

  //  The period during which the measure content was or is planned to be in
  // active use.
  @HiveField(47)
  Period effectivePeriod;

  //  Descriptive topics related to the content of the measure. Topics
  // provide a high-level categorization grouping types of measures that can
  // be useful for filtering and searching.
  @HiveField(48)
  List<CodeableConcept> topic;

  //  An individiual or organization primarily involved in the creation and
  // maintenance of the content.
  @HiveField(49)
  List<ContactDetail> author;

  //  An individual or organization primarily responsible for internal
  // coherence of the content.
  @HiveField(50)
  List<ContactDetail> editor;

  //  An individual or organization primarily responsible for review of some
  // aspect of the content.
  @HiveField(51)
  List<ContactDetail> reviewer;

  //  An individual or organization responsible for officially endorsing the
  // content for use in some setting.
  @HiveField(52)
  List<ContactDetail> endorser;

  //  Related artifacts such as additional documentation, justification, or
  // bibliographic references.
  @HiveField(53)
  List<RelatedArtifact> relatedArtifact;

  //  A reference to a Library resource containing the formal logic used by
  // the measure.
  @HiveField(54)
  List<String> library;

  //  Notices and disclaimers regarding the use of the measure or related to
  // intellectual property (such as code systems) referenced by the measure.
  @HiveField(55)
  String disclaimer;

  //  Extensions for disclaimer
  @HiveField(56)
  Element elementDisclaimer;

  //  Indicates how the calculation is performed for the measure, including
  // proportion, ratio, continuous-variable, and cohort. The value set is
  // extensible, allowing additional measure scoring types to be
  // represented.
  @HiveField(57)
  CodeableConcept scoring;

  //  If this is a composite measure, the scoring method used to combine the
  // component measures to determine the composite score.
  @HiveField(58)
  CodeableConcept compositeScoring;

  //  Indicates whether the measure is used to examine a process, an outcome
  // over time, a patient-reported outcome, or a structure measure such as
  // utilization.
  @HiveField(59)
  List<CodeableConcept> type;

  //  A description of the risk adjustment factors that may impact the
  // resulting score for the measure and how they may be accounted for when
  // computing and reporting measure results.
  @HiveField(60)
  String riskAdjustment;

  //  Extensions for riskAdjustment
  @HiveField(61)
  Element elementRiskAdjustment;

  //  Describes how to combine the information calculated, based on logic in
  // each of several populations, into one summarized result.
  @HiveField(62)
  String rateAggregation;

  //  Extensions for rateAggregation
  @HiveField(63)
  Element elementRateAggregation;

  //  Provides a succinct statement of the need for the measure. Usually
  // includes statements pertaining to importance criterion: impact, gap in
  // care, and evidence.
  @HiveField(64)
  String rationale;

  //  Extensions for rationale
  @HiveField(65)
  Element elementRationale;

  //  Provides a summary of relevant clinical guidelines or other clinical
  // recommendations supporting the measure.
  @HiveField(66)
  String clinicalRecommendationStatement;

  //  Extensions for clinicalRecommendationStatement
  @HiveField(67)
  Element elementClinicalRecommendationStatement;

  //  Information on whether an increase or decrease in score is the
  // preferred result (e.g., a higher score indicates better quality OR a
  // lower score indicates better quality OR quality is within a range).
  @HiveField(68)
  CodeableConcept improvementNotation;

  //  Provides a description of an individual term used within the measure.
  @HiveField(69)
  List<String> definition;

  //  Extensions for definition
  @HiveField(70)
  List<Element> elementDefinition;

  //  Additional guidance for the measure including how it can be used in a
  // clinical context, and the intent of the measure.
  @HiveField(71)
  String guidance;

  //  Extensions for guidance
  @HiveField(72)
  Element elementGuidance;

  //  A group of population criteria for the measure.
  @HiveField(73)
  List<Measure_Group> group;

  //  The supplemental data criteria for the measure report, specified as
  // either the name of a valid CQL expression within a referenced library,
  // or a valid FHIR Resource Path.
  @HiveField(74)
  List<Measure_SupplementalData> supplementalData;

Measure(
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
    this.disclaimer,
    this.elementDisclaimer,
    this.scoring,
    this.compositeScoring,
    this.type,
    this.riskAdjustment,
    this.elementRiskAdjustment,
    this.rateAggregation,
    this.elementRateAggregation,
    this.rationale,
    this.elementRationale,
    this.clinicalRecommendationStatement,
    this.elementClinicalRecommendationStatement,
    this.improvementNotation,
    this.definition,
    this.elementDefinition,
    this.guidance,
    this.elementGuidance,
    this.group,
    this.supplementalData
    });

  factory Measure.fromJson(Map<String, dynamic> json) => _$MeasureFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 353)
class Measure_Group {

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

  //  Indicates a meaning for the group. This can be as simple as a unique
  // identifier, or it can establish meaning in a broader context by drawing
  // from a terminology, allowing groups to be correlated across measures.
  @HiveField(3)
  CodeableConcept code;

  //  The human readable description of this population group.
  @HiveField(4)
  String description;

  //  Extensions for description
  @HiveField(5)
  Element elementDescription;

  //  A population criteria for the measure.
  @HiveField(6)
  List<Measure_Population> population;

  //  The stratifier criteria for the measure report, specified as either
  // the name of a valid CQL expression defined within a referenced library
  // or a valid FHIR Resource Path.
  @HiveField(7)
  List<Measure_Stratifier> stratifier;

Measure_Group(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.description,
    this.elementDescription,
    this.population,
    this.stratifier
    });

  factory Measure_Group.fromJson(Map<String, dynamic> json) => _$Measure_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 354)
class Measure_Population {

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

  //  The type of population criteria.
  @HiveField(3)
  CodeableConcept code;

  //  The human readable description of this population criteria.
  @HiveField(4)
  String description;

  //  Extensions for description
  @HiveField(5)
  Element elementDescription;

  //  An expression that specifies the criteria for the population,
  // typically the name of an expression in a library.
  @HiveField(6)
  Expression criteria;

Measure_Population(
  this.criteria,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.description,
    this.elementDescription
    });

  factory Measure_Population.fromJson(Map<String, dynamic> json) => _$Measure_PopulationFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_PopulationToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 355)
class Measure_Stratifier {

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

  //  Indicates a meaning for the stratifier. This can be as simple as a
  // unique identifier, or it can establish meaning in a broader context by
  // drawing from a terminology, allowing stratifiers to be correlated
  // across measures.
  @HiveField(3)
  CodeableConcept code;

  //  The human readable description of this stratifier criteria.
  @HiveField(4)
  String description;

  //  Extensions for description
  @HiveField(5)
  Element elementDescription;

  //  An expression that specifies the criteria for the stratifier. This is
  // typically the name of an expression defined within a referenced
  // library, but it may also be a path to a stratifier element.
  @HiveField(6)
  Expression criteria;

  //  A component of the stratifier criteria for the measure report,
  // specified as either the name of a valid CQL expression defined within a
  // referenced library or a valid FHIR Resource Path.
  @HiveField(7)
  List<Measure_Component> component;

Measure_Stratifier(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.description,
    this.elementDescription,
    this.criteria,
    this.component
    });

  factory Measure_Stratifier.fromJson(Map<String, dynamic> json) => _$Measure_StratifierFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_StratifierToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 356)
class Measure_Component {

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

  //  Indicates a meaning for the stratifier component. This can be as
  // simple as a unique identifier, or it can establish meaning in a broader
  // context by drawing from a terminology, allowing stratifiers to be
  // correlated across measures.
  @HiveField(3)
  CodeableConcept code;

  //  The human readable description of this stratifier criteria component.
  @HiveField(4)
  String description;

  //  Extensions for description
  @HiveField(5)
  Element elementDescription;

  //  An expression that specifies the criteria for this component of the
  // stratifier. This is typically the name of an expression defined within
  // a referenced library, but it may also be a path to a stratifier
  // element.
  @HiveField(6)
  Expression criteria;

Measure_Component(
  this.criteria,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.description,
    this.elementDescription
    });

  factory Measure_Component.fromJson(Map<String, dynamic> json) => _$Measure_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_ComponentToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 357)
class Measure_SupplementalData {

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

  //  Indicates a meaning for the supplemental data. This can be as simple
  // as a unique identifier, or it can establish meaning in a broader
  // context by drawing from a terminology, allowing supplemental data to be
  // correlated across measures.
  @HiveField(3)
  CodeableConcept code;

  //  An indicator of the intended usage for the supplemental data element.
  // Supplemental data indicates the data is additional information
  // requested to augment the measure information. Risk adjustment factor
  // indicates the data is additional information used to calculate risk
  // adjustment factors when applying a risk model to the measure
  // calculation.
  @HiveField(4)
  List<CodeableConcept> usage;

  //  The human readable description of this supplemental data.
  @HiveField(5)
  String description;

  //  Extensions for description
  @HiveField(6)
  Element elementDescription;

  //  The criteria for the supplemental data. This is typically the name of
  // a valid expression defined within a referenced library, but it may also
  // be a path to a specific data element. The criteria defines the data to
  // be returned for this element.
  @HiveField(7)
  Expression criteria;

Measure_SupplementalData(
  this.criteria,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.usage,
    this.description,
    this.elementDescription
    });

  factory Measure_SupplementalData.fromJson(Map<String, dynamic> json) => _$Measure_SupplementalDataFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_SupplementalDataToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MeasureAdapter extends TypeAdapter<Measure> {
  @override
  final typeId = 352;

  @override
  Measure read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Measure(
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
      subtitle: fields[20] as String,
      elementSubtitle: fields[21] as Element,
      status: fields[22] as String,
      elementStatus: fields[23] as Element,
      experimental: fields[24] as bool,
      elementExperimental: fields[25] as Element,
      subjectCodeableConcept: fields[26] as CodeableConcept,
      subjectReference: fields[27] as Reference,
      date: fields[28] as DateTime,
      elementDate: fields[29] as Element,
      publisher: fields[30] as String,
      elementPublisher: fields[31] as Element,
      contact: (fields[32] as List)?.cast<ContactDetail>(),
      description: fields[33] as String,
      elementDescription: fields[34] as Element,
      useContext: (fields[35] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[36] as List)?.cast<CodeableConcept>(),
      purpose: fields[37] as String,
      elementPurpose: fields[38] as Element,
      usage: fields[39] as String,
      elementUsage: fields[40] as Element,
      copyright: fields[41] as String,
      elementCopyright: fields[42] as Element,
      approvalDate: fields[43] as String,
      elementApprovalDate: fields[44] as Element,
      lastReviewDate: fields[45] as String,
      elementLastReviewDate: fields[46] as Element,
      effectivePeriod: fields[47] as Period,
      topic: (fields[48] as List)?.cast<CodeableConcept>(),
      author: (fields[49] as List)?.cast<ContactDetail>(),
      editor: (fields[50] as List)?.cast<ContactDetail>(),
      reviewer: (fields[51] as List)?.cast<ContactDetail>(),
      endorser: (fields[52] as List)?.cast<ContactDetail>(),
      relatedArtifact: (fields[53] as List)?.cast<RelatedArtifact>(),
      library: (fields[54] as List)?.cast<String>(),
      disclaimer: fields[55] as String,
      elementDisclaimer: fields[56] as Element,
      scoring: fields[57] as CodeableConcept,
      compositeScoring: fields[58] as CodeableConcept,
      type: (fields[59] as List)?.cast<CodeableConcept>(),
      riskAdjustment: fields[60] as String,
      elementRiskAdjustment: fields[61] as Element,
      rateAggregation: fields[62] as String,
      elementRateAggregation: fields[63] as Element,
      rationale: fields[64] as String,
      elementRationale: fields[65] as Element,
      clinicalRecommendationStatement: fields[66] as String,
      elementClinicalRecommendationStatement: fields[67] as Element,
      improvementNotation: fields[68] as CodeableConcept,
      definition: (fields[69] as List)?.cast<String>(),
      elementDefinition: (fields[70] as List)?.cast<Element>(),
      guidance: fields[71] as String,
      elementGuidance: fields[72] as Element,
      group: (fields[73] as List)?.cast<Measure_Group>(),
      supplementalData: (fields[74] as List)?.cast<Measure_SupplementalData>(),
    );
  }

  @override
  void write(BinaryWriter writer, Measure obj) {
    writer
      ..writeByte(75)
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
      ..write(obj.subtitle)
      ..writeByte(21)
      ..write(obj.elementSubtitle)
      ..writeByte(22)
      ..write(obj.status)
      ..writeByte(23)
      ..write(obj.elementStatus)
      ..writeByte(24)
      ..write(obj.experimental)
      ..writeByte(25)
      ..write(obj.elementExperimental)
      ..writeByte(26)
      ..write(obj.subjectCodeableConcept)
      ..writeByte(27)
      ..write(obj.subjectReference)
      ..writeByte(28)
      ..write(obj.date)
      ..writeByte(29)
      ..write(obj.elementDate)
      ..writeByte(30)
      ..write(obj.publisher)
      ..writeByte(31)
      ..write(obj.elementPublisher)
      ..writeByte(32)
      ..write(obj.contact)
      ..writeByte(33)
      ..write(obj.description)
      ..writeByte(34)
      ..write(obj.elementDescription)
      ..writeByte(35)
      ..write(obj.useContext)
      ..writeByte(36)
      ..write(obj.jurisdiction)
      ..writeByte(37)
      ..write(obj.purpose)
      ..writeByte(38)
      ..write(obj.elementPurpose)
      ..writeByte(39)
      ..write(obj.usage)
      ..writeByte(40)
      ..write(obj.elementUsage)
      ..writeByte(41)
      ..write(obj.copyright)
      ..writeByte(42)
      ..write(obj.elementCopyright)
      ..writeByte(43)
      ..write(obj.approvalDate)
      ..writeByte(44)
      ..write(obj.elementApprovalDate)
      ..writeByte(45)
      ..write(obj.lastReviewDate)
      ..writeByte(46)
      ..write(obj.elementLastReviewDate)
      ..writeByte(47)
      ..write(obj.effectivePeriod)
      ..writeByte(48)
      ..write(obj.topic)
      ..writeByte(49)
      ..write(obj.author)
      ..writeByte(50)
      ..write(obj.editor)
      ..writeByte(51)
      ..write(obj.reviewer)
      ..writeByte(52)
      ..write(obj.endorser)
      ..writeByte(53)
      ..write(obj.relatedArtifact)
      ..writeByte(54)
      ..write(obj.library)
      ..writeByte(55)
      ..write(obj.disclaimer)
      ..writeByte(56)
      ..write(obj.elementDisclaimer)
      ..writeByte(57)
      ..write(obj.scoring)
      ..writeByte(58)
      ..write(obj.compositeScoring)
      ..writeByte(59)
      ..write(obj.type)
      ..writeByte(60)
      ..write(obj.riskAdjustment)
      ..writeByte(61)
      ..write(obj.elementRiskAdjustment)
      ..writeByte(62)
      ..write(obj.rateAggregation)
      ..writeByte(63)
      ..write(obj.elementRateAggregation)
      ..writeByte(64)
      ..write(obj.rationale)
      ..writeByte(65)
      ..write(obj.elementRationale)
      ..writeByte(66)
      ..write(obj.clinicalRecommendationStatement)
      ..writeByte(67)
      ..write(obj.elementClinicalRecommendationStatement)
      ..writeByte(68)
      ..write(obj.improvementNotation)
      ..writeByte(69)
      ..write(obj.definition)
      ..writeByte(70)
      ..write(obj.elementDefinition)
      ..writeByte(71)
      ..write(obj.guidance)
      ..writeByte(72)
      ..write(obj.elementGuidance)
      ..writeByte(73)
      ..write(obj.group)
      ..writeByte(74)
      ..write(obj.supplementalData);
  }
}

class Measure_GroupAdapter extends TypeAdapter<Measure_Group> {
  @override
  final typeId = 353;

  @override
  Measure_Group read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Measure_Group(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      description: fields[4] as String,
      elementDescription: fields[5] as Element,
      population: (fields[6] as List)?.cast<Measure_Population>(),
      stratifier: (fields[7] as List)?.cast<Measure_Stratifier>(),
    );
  }

  @override
  void write(BinaryWriter writer, Measure_Group obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.elementDescription)
      ..writeByte(6)
      ..write(obj.population)
      ..writeByte(7)
      ..write(obj.stratifier);
  }
}

class Measure_PopulationAdapter extends TypeAdapter<Measure_Population> {
  @override
  final typeId = 354;

  @override
  Measure_Population read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Measure_Population(
      fields[6] as Expression,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      description: fields[4] as String,
      elementDescription: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Measure_Population obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.elementDescription)
      ..writeByte(6)
      ..write(obj.criteria);
  }
}

class Measure_StratifierAdapter extends TypeAdapter<Measure_Stratifier> {
  @override
  final typeId = 355;

  @override
  Measure_Stratifier read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Measure_Stratifier(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      description: fields[4] as String,
      elementDescription: fields[5] as Element,
      criteria: fields[6] as Expression,
      component: (fields[7] as List)?.cast<Measure_Component>(),
    );
  }

  @override
  void write(BinaryWriter writer, Measure_Stratifier obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.elementDescription)
      ..writeByte(6)
      ..write(obj.criteria)
      ..writeByte(7)
      ..write(obj.component);
  }
}

class Measure_ComponentAdapter extends TypeAdapter<Measure_Component> {
  @override
  final typeId = 356;

  @override
  Measure_Component read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Measure_Component(
      fields[6] as Expression,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      description: fields[4] as String,
      elementDescription: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Measure_Component obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.elementDescription)
      ..writeByte(6)
      ..write(obj.criteria);
  }
}

class Measure_SupplementalDataAdapter
    extends TypeAdapter<Measure_SupplementalData> {
  @override
  final typeId = 357;

  @override
  Measure_SupplementalData read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Measure_SupplementalData(
      fields[7] as Expression,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      usage: (fields[4] as List)?.cast<CodeableConcept>(),
      description: fields[5] as String,
      elementDescription: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Measure_SupplementalData obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.usage)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.elementDescription)
      ..writeByte(7)
      ..write(obj.criteria);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Measure _$MeasureFromJson(Map<String, dynamic> json) {
  return Measure(
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
    subtitle: json['subtitle'] as String,
    elementSubtitle: json['elementSubtitle'] == null
        ? null
        : Element.fromJson(json['elementSubtitle'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    elementExperimental: json['elementExperimental'] == null
        ? null
        : Element.fromJson(json['elementExperimental'] as Map<String, dynamic>),
    subjectCodeableConcept: json['subjectCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['subjectCodeableConcept'] as Map<String, dynamic>),
    subjectReference: json['subjectReference'] == null
        ? null
        : Reference.fromJson(json['subjectReference'] as Map<String, dynamic>),
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
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    usage: json['usage'] as String,
    elementUsage: json['elementUsage'] == null
        ? null
        : Element.fromJson(json['elementUsage'] as Map<String, dynamic>),
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
    library: (json['library'] as List)?.map((e) => e as String)?.toList(),
    disclaimer: json['disclaimer'] as String,
    elementDisclaimer: json['elementDisclaimer'] == null
        ? null
        : Element.fromJson(json['elementDisclaimer'] as Map<String, dynamic>),
    scoring: json['scoring'] == null
        ? null
        : CodeableConcept.fromJson(json['scoring'] as Map<String, dynamic>),
    compositeScoring: json['compositeScoring'] == null
        ? null
        : CodeableConcept.fromJson(
            json['compositeScoring'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    riskAdjustment: json['riskAdjustment'] as String,
    elementRiskAdjustment: json['elementRiskAdjustment'] == null
        ? null
        : Element.fromJson(
            json['elementRiskAdjustment'] as Map<String, dynamic>),
    rateAggregation: json['rateAggregation'] as String,
    elementRateAggregation: json['elementRateAggregation'] == null
        ? null
        : Element.fromJson(
            json['elementRateAggregation'] as Map<String, dynamic>),
    rationale: json['rationale'] as String,
    elementRationale: json['elementRationale'] == null
        ? null
        : Element.fromJson(json['elementRationale'] as Map<String, dynamic>),
    clinicalRecommendationStatement:
        json['clinicalRecommendationStatement'] as String,
    elementClinicalRecommendationStatement:
        json['elementClinicalRecommendationStatement'] == null
            ? null
            : Element.fromJson(json['elementClinicalRecommendationStatement']
                as Map<String, dynamic>),
    improvementNotation: json['improvementNotation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['improvementNotation'] as Map<String, dynamic>),
    definition: (json['definition'] as List)?.map((e) => e as String)?.toList(),
    elementDefinition: (json['elementDefinition'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    guidance: json['guidance'] as String,
    elementGuidance: json['elementGuidance'] == null
        ? null
        : Element.fromJson(json['elementGuidance'] as Map<String, dynamic>),
    group: (json['group'] as List)
        ?.map((e) => e == null
            ? null
            : Measure_Group.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supplementalData: (json['supplementalData'] as List)
        ?.map((e) => e == null
            ? null
            : Measure_SupplementalData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MeasureToJson(Measure instance) => <String, dynamic>{
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
      'subtitle': instance.subtitle,
      'elementSubtitle': instance.elementSubtitle?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'experimental': instance.experimental,
      'elementExperimental': instance.elementExperimental?.toJson(),
      'subjectCodeableConcept': instance.subjectCodeableConcept?.toJson(),
      'subjectReference': instance.subjectReference?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'purpose': instance.purpose,
      'elementPurpose': instance.elementPurpose?.toJson(),
      'usage': instance.usage,
      'elementUsage': instance.elementUsage?.toJson(),
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
      'library': instance.library,
      'disclaimer': instance.disclaimer,
      'elementDisclaimer': instance.elementDisclaimer?.toJson(),
      'scoring': instance.scoring?.toJson(),
      'compositeScoring': instance.compositeScoring?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'riskAdjustment': instance.riskAdjustment,
      'elementRiskAdjustment': instance.elementRiskAdjustment?.toJson(),
      'rateAggregation': instance.rateAggregation,
      'elementRateAggregation': instance.elementRateAggregation?.toJson(),
      'rationale': instance.rationale,
      'elementRationale': instance.elementRationale?.toJson(),
      'clinicalRecommendationStatement':
          instance.clinicalRecommendationStatement,
      'elementClinicalRecommendationStatement':
          instance.elementClinicalRecommendationStatement?.toJson(),
      'improvementNotation': instance.improvementNotation?.toJson(),
      'definition': instance.definition,
      'elementDefinition':
          instance.elementDefinition?.map((e) => e?.toJson())?.toList(),
      'guidance': instance.guidance,
      'elementGuidance': instance.elementGuidance?.toJson(),
      'group': instance.group?.map((e) => e?.toJson())?.toList(),
      'supplementalData':
          instance.supplementalData?.map((e) => e?.toJson())?.toList(),
    };

Measure_Group _$Measure_GroupFromJson(Map<String, dynamic> json) {
  return Measure_Group(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    population: (json['population'] as List)
        ?.map((e) => e == null
            ? null
            : Measure_Population.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    stratifier: (json['stratifier'] as List)
        ?.map((e) => e == null
            ? null
            : Measure_Stratifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Measure_GroupToJson(Measure_Group instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'population': instance.population?.map((e) => e?.toJson())?.toList(),
      'stratifier': instance.stratifier?.map((e) => e?.toJson())?.toList(),
    };

Measure_Population _$Measure_PopulationFromJson(Map<String, dynamic> json) {
  return Measure_Population(
    json['criteria'] == null
        ? null
        : Expression.fromJson(json['criteria'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Measure_PopulationToJson(Measure_Population instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'criteria': instance.criteria?.toJson(),
    };

Measure_Stratifier _$Measure_StratifierFromJson(Map<String, dynamic> json) {
  return Measure_Stratifier(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    criteria: json['criteria'] == null
        ? null
        : Expression.fromJson(json['criteria'] as Map<String, dynamic>),
    component: (json['component'] as List)
        ?.map((e) => e == null
            ? null
            : Measure_Component.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Measure_StratifierToJson(Measure_Stratifier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'criteria': instance.criteria?.toJson(),
      'component': instance.component?.map((e) => e?.toJson())?.toList(),
    };

Measure_Component _$Measure_ComponentFromJson(Map<String, dynamic> json) {
  return Measure_Component(
    json['criteria'] == null
        ? null
        : Expression.fromJson(json['criteria'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Measure_ComponentToJson(Measure_Component instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'criteria': instance.criteria?.toJson(),
    };

Measure_SupplementalData _$Measure_SupplementalDataFromJson(
    Map<String, dynamic> json) {
  return Measure_SupplementalData(
    json['criteria'] == null
        ? null
        : Expression.fromJson(json['criteria'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    usage: (json['usage'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Measure_SupplementalDataToJson(
        Measure_SupplementalData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'usage': instance.usage?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'criteria': instance.criteria?.toJson(),
    };
