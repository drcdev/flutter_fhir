import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/relatedArtifact.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/usageContext.dart';
import 'package:flutter_fhir/class/contactDetail.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'researchDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ResearchDefinition {

  //  This is a ResearchDefinition resource
  final String resourceType= 'ResearchDefinition';

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

  //  An absolute URI that is used to identify this research definition when
  // it is referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this research definition is (or will be) published. This URL can be
  // the target of a canonical reference. It SHALL remain the same when the
  // research definition is stored on different servers.
  String url;

  //  Extensions for url
  Element elementUrl;

  //  A formal identifier that is used to identify this research definition
  // when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the research
  // definition when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the research definition
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
  Element elementVersion;

  //  A natural language name identifying the research definition. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  String name;

  //  Extensions for name
  Element elementName;

  //  A short, descriptive, user-friendly title for the research definition.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  The short title provides an alternate title for use in informal
  // descriptive contexts where the full, formal title is not necessary.
  String shortTitle;

  //  Extensions for shortTitle
  Element elementShortTitle;

  //  An explanatory or alternate title for the ResearchDefinition giving
  // additional information about its content.
  String subtitle;

  //  Extensions for subtitle
  Element elementSubtitle;

  //  The status of this research definition. Enables tracking the
  // life-cycle of the content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element elementStatus;

  //  A Boolean value to indicate that this research definition is authored
  // for testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  bool experimental;

  //  Extensions for experimental
  Element elementExperimental;

  //  The intended subjects for the ResearchDefinition. If this element is
  // not provided, a Patient subject is assumed, but the subject of the
  // ResearchDefinition can be anything.
  CodeableConcept subjectCodeableConcept;

  //  The intended subjects for the ResearchDefinition. If this element is
  // not provided, a Patient subject is assumed, but the subject of the
  // ResearchDefinition can be anything.
  Reference subjectReference;

  //  The date  (and optionally time) when the research definition was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the research definition changes.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  The name of the organization or individual that published the research
  // definition.
  String publisher;

  //  Extensions for publisher
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  A free text natural language description of the research definition
  // from a consumer's perspective.
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
  // searching for appropriate research definition instances.
  List<UsageContext> useContext;

  //  A legal or geographic region in which the research definition is
  // intended to be used.
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this research definition is needed and why it has
  // been designed as it has.
  String purpose;

  //  Extensions for purpose
  Element elementPurpose;

  //  A detailed description, from a clinical perspective, of how the
  // ResearchDefinition is used.
  String usage;

  //  Extensions for usage
  Element elementUsage;

  //  A copyright statement relating to the research definition and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the research definition.
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

  //  The period during which the research definition content was or is
  // planned to be in active use.
  Period effectivePeriod;

  //  Descriptive topics related to the content of the ResearchDefinition.
  // Topics provide a high-level categorization grouping types of
  // ResearchDefinitions that can be useful for filtering and searching.
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
  // the ResearchDefinition.
  List<String> library;

  //  A reference to a ResearchElementDefinition resource that defines the
  // population for the research.
  Reference population;

  //  A reference to a ResearchElementDefinition resource that defines the
  // exposure for the research.
  Reference exposure;

  //  A reference to a ResearchElementDefinition resource that defines the
  // exposureAlternative for the research.
  Reference exposureAlternative;

  //  A reference to a ResearchElementDefinition resomece that defines the
  // outcome for the research.
  Reference outcome;

ResearchDefinition(
  this.population,
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
    this.exposure,
    this.exposureAlternative,
    this.outcome
    });

  factory ResearchDefinition.fromJson(Map<String, dynamic> json) => _$ResearchDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchDefinitionToJson(this);
}

