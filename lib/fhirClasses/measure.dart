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

part 'measure.g.dart';

@JsonSerializable(explicitToJson: true)
class Measure {

  //  This is a Measure resource
  final String resourceType= 'Measure';

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

  //  An absolute URI that is used to identify this measure when it is
  // referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this measure is (or will be) published. This URL can be the target
  // of a canonical reference. It SHALL remain the same when the measure is
  // stored on different servers.
  String url;

  //  Extensions for url
  Element elementUrl;

  //  A formal identifier that is used to identify this measure when it is
  // represented in other formats, or referenced in a specification, model,
  // design or an instance.
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
  String version;

  //  Extensions for version
  Element elementVersion;

  //  A natural language name identifying the measure. This name should be
  // usable as an identifier for the module by machine processing
  // applications such as code generation.
  String name;

  //  Extensions for name
  Element elementName;

  //  A short, descriptive, user-friendly title for the measure.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  An explanatory or alternate title for the measure giving additional
  // information about its content.
  String subtitle;

  //  Extensions for subtitle
  Element elementSubtitle;

  //  The status of this measure. Enables tracking the life-cycle of the
  // content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element elementStatus;

  //  A Boolean value to indicate that this measure is authored for testing
  // purposes (or education/evaluation/marketing) and is not intended to be
  // used for genuine usage.
  bool experimental;

  //  Extensions for experimental
  Element elementExperimental;

  //  The intended subjects for the measure. If this element is not
  // provided, a Patient subject is assumed, but the subject of the measure
  // can be anything.
  CodeableConcept subjectCodeableConcept;

  //  The intended subjects for the measure. If this element is not
  // provided, a Patient subject is assumed, but the subject of the measure
  // can be anything.
  Reference subjectReference;

  //  The date  (and optionally time) when the measure was published. The
  // date must change when the business version changes and it must change
  // if the status code changes. In addition, it should change when the
  // substantive content of the measure changes.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  The name of the organization or individual that published the measure.
  String publisher;

  //  Extensions for publisher
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  A free text natural language description of the measure from a
  // consumer's perspective.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate measure instances.
  List<UsageContext> useContext;

  //  A legal or geographic region in which the measure is intended to be
  // used.
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this measure is needed and why it has been designed
  // as it has.
  String purpose;

  //  Extensions for purpose
  Element elementPurpose;

  //  A detailed description, from a clinical perspective, of how the
  // measure is used.
  String usage;

  //  Extensions for usage
  Element elementUsage;

  //  A copyright statement relating to the measure and/or its contents.
  // Copyright statements are generally legal restrictions on the use and
  // publishing of the measure.
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

  //  The period during which the measure content was or is planned to be in
  // active use.
  Period effectivePeriod;

  //  Descriptive topics related to the content of the measure. Topics
  // provide a high-level categorization grouping types of measures that can
  // be useful for filtering and searching.
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
  // the measure.
  List<String> library;

  //  Notices and disclaimers regarding the use of the measure or related to
  // intellectual property (such as code systems) referenced by the measure.
  String disclaimer;

  //  Extensions for disclaimer
  Element elementDisclaimer;

  //  Indicates how the calculation is performed for the measure, including
  // proportion, ratio, continuous-variable, and cohort. The value set is
  // extensible, allowing additional measure scoring types to be
  // represented.
  CodeableConcept scoring;

  //  If this is a composite measure, the scoring method used to combine the
  // component measures to determine the composite score.
  CodeableConcept compositeScoring;

  //  Indicates whether the measure is used to examine a process, an outcome
  // over time, a patient-reported outcome, or a structure measure such as
  // utilization.
  List<CodeableConcept> type;

  //  A description of the risk adjustment factors that may impact the
  // resulting score for the measure and how they may be accounted for when
  // computing and reporting measure results.
  String riskAdjustment;

  //  Extensions for riskAdjustment
  Element elementRiskAdjustment;

  //  Describes how to combine the information calculated, based on logic in
  // each of several populations, into one summarized result.
  String rateAggregation;

  //  Extensions for rateAggregation
  Element elementRateAggregation;

  //  Provides a succinct statement of the need for the measure. Usually
  // includes statements pertaining to importance criterion: impact, gap in
  // care, and evidence.
  String rationale;

  //  Extensions for rationale
  Element elementRationale;

  //  Provides a summary of relevant clinical guidelines or other clinical
  // recommendations supporting the measure.
  String clinicalRecommendationStatement;

  //  Extensions for clinicalRecommendationStatement
  Element elementClinicalRecommendationStatement;

  //  Information on whether an increase or decrease in score is the
  // preferred result (e.g., a higher score indicates better quality OR a
  // lower score indicates better quality OR quality is within a range).
  CodeableConcept improvementNotation;

  //  Provides a description of an individual term used within the measure.
  List<String> definition;

  //  Extensions for definition
  List<Element> elementDefinition;

  //  Additional guidance for the measure including how it can be used in a
  // clinical context, and the intent of the measure.
  String guidance;

  //  Extensions for guidance
  Element elementGuidance;

  //  A group of population criteria for the measure.
  List<Measure_Group> group;

  //  The supplemental data criteria for the measure report, specified as
  // either the name of a valid CQL expression within a referenced library,
  // or a valid FHIR Resource Path.
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
class Measure_Group {

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

  //  Indicates a meaning for the group. This can be as simple as a unique
  // identifier, or it can establish meaning in a broader context by drawing
  // from a terminology, allowing groups to be correlated across measures.
  CodeableConcept code;

  //  The human readable description of this population group.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  A population criteria for the measure.
  List<Measure_Population> population;

  //  The stratifier criteria for the measure report, specified as either
  // the name of a valid CQL expression defined within a referenced library
  // or a valid FHIR Resource Path.
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
class Measure_Population {

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

  //  The type of population criteria.
  CodeableConcept code;

  //  The human readable description of this population criteria.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  An expression that specifies the criteria for the population,
  // typically the name of an expression in a library.
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
class Measure_Stratifier {

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

  //  Indicates a meaning for the stratifier. This can be as simple as a
  // unique identifier, or it can establish meaning in a broader context by
  // drawing from a terminology, allowing stratifiers to be correlated
  // across measures.
  CodeableConcept code;

  //  The human readable description of this stratifier criteria.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  An expression that specifies the criteria for the stratifier. This is
  // typically the name of an expression defined within a referenced
  // library, but it may also be a path to a stratifier element.
  Expression criteria;

  //  A component of the stratifier criteria for the measure report,
  // specified as either the name of a valid CQL expression defined within a
  // referenced library or a valid FHIR Resource Path.
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
class Measure_Component {

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

  //  Indicates a meaning for the stratifier component. This can be as
  // simple as a unique identifier, or it can establish meaning in a broader
  // context by drawing from a terminology, allowing stratifiers to be
  // correlated across measures.
  CodeableConcept code;

  //  The human readable description of this stratifier criteria component.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  An expression that specifies the criteria for this component of the
  // stratifier. This is typically the name of an expression defined within
  // a referenced library, but it may also be a path to a stratifier
  // element.
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
class Measure_SupplementalData {

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

  //  Indicates a meaning for the supplemental data. This can be as simple
  // as a unique identifier, or it can establish meaning in a broader
  // context by drawing from a terminology, allowing supplemental data to be
  // correlated across measures.
  CodeableConcept code;

  //  An indicator of the intended usage for the supplemental data element.
  // Supplemental data indicates the data is additional information
  // requested to augment the measure information. Risk adjustment factor
  // indicates the data is additional information used to calculate risk
  // adjustment factors when applying a risk model to the measure
  // calculation.
  List<CodeableConcept> usage;

  //  The human readable description of this supplemental data.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  The criteria for the supplemental data. This is typically the name of
  // a valid expression defined within a referenced library, but it may also
  // be a path to a specific data element. The criteria defines the data to
  // be returned for this element.
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

