import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/expression.dart';
import 'package:flutter_fhir/class/dosage.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/duration.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/age.dart';
import 'package:flutter_fhir/class/timing.dart';
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

part 'activityDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ActivityDefinition {

  //  This is a ActivityDefinition resource
  final String resourceType= 'ActivityDefinition';

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

  //  An absolute URI that is used to identify this activity definition when
  // it is referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this activity definition is (or will be) published. This URL can be
  // the target of a canonical reference. It SHALL remain the same when the
  // activity definition is stored on different servers.
  String url;

  //  Extensions for url
  Element element_url;

  //  A formal identifier that is used to identify this activity definition
  // when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the activity
  // definition when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the activity definition
  // author and is not expected to be globally unique. For example, it might
  // be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  // There is also no expectation that versions can be placed in a
  // lexicographical sequence. To provide a version consistent with the
  // Decision Support Service specification, use the format
  // Major.Minor.Revision (e.g. 1.0.0). For more information on versioning
  // knowledge assets, refer to the Decision Support Service specification.
  // Note that a version is required for non-experimental active assets.
  String version;

  //  Extensions for version
  Element element_version;

  //  A natural language name identifying the activity definition. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  String name;

  //  Extensions for name
  Element element_name;

  //  A short, descriptive, user-friendly title for the activity definition.
  String title;

  //  Extensions for title
  Element element_title;

  //  An explanatory or alternate title for the activity definition giving
  // additional information about its content.
  String subtitle;

  //  Extensions for subtitle
  Element element_subtitle;

  //  The status of this activity definition. Enables tracking the
  // life-cycle of the content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element element_status;

  //  A Boolean value to indicate that this activity definition is authored
  // for testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  bool experimental;

  //  Extensions for experimental
  Element element_experimental;

  //  A code or group definition that describes the intended subject of the
  // activity being defined.
  CodeableConcept subjectCodeableConcept;

  //  A code or group definition that describes the intended subject of the
  // activity being defined.
  Reference subjectReference;

  //  The date  (and optionally time) when the activity definition was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the activity definition changes.
  DateTime date;

  //  Extensions for date
  Element element_date;

  //  The name of the organization or individual that published the activity
  // definition.
  String publisher;

  //  Extensions for publisher
  Element element_publisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  A free text natural language description of the activity definition
  // from a consumer's perspective.
  String description;

  //  Extensions for description
  Element element_description;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate activity definition instances.
  List<UsageContext> useContext;

  //  A legal or geographic region in which the activity definition is
  // intended to be used.
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this activity definition is needed and why it has
  // been designed as it has.
  String purpose;

  //  Extensions for purpose
  Element element_purpose;

  //  A detailed description of how the activity definition is used from a
  // clinical perspective.
  String usage;

  //  Extensions for usage
  Element element_usage;

  //  A copyright statement relating to the activity definition and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the activity definition.
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

  //  The period during which the activity definition content was or is
  // planned to be in active use.
  Period effectivePeriod;

  //  Descriptive topics related to the content of the activity. Topics
  // provide a high-level categorization of the activity that can be useful
  // for filtering and searching.
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

  //  A reference to a Library resource containing any formal logic used by
  // the activity definition.
  List<String> library;

  //  A description of the kind of resource the activity definition is
  // representing. For example, a MedicationRequest, a ServiceRequest, or a
  // CommunicationRequest. Typically, but not always, this is a Request
  // resource.
  String kind;

  //  Extensions for kind
  Element element_kind;

  //  A profile to which the target of the activity definition is expected
  // to conform.
  String profile;

  //  Detailed description of the type of activity; e.g. What lab test, what
  // procedure, what kind of encounter.
  CodeableConcept code;

  //  Indicates the level of authority/intentionality associated with the
  // activity and where the request should fit into the workflow chain.
  String intent;

  //  Extensions for intent
  Element element_intent;

  //  Indicates how quickly the activity  should be addressed with respect
  // to other requests.
  String priority;

  //  Extensions for priority
  Element element_priority;

  //  Set this to true if the definition is to indicate that a particular
  // activity should NOT be performed. If true, this element should be
  // interpreted to reinforce a negative coding. For example NPO as a code
  // with a doNotPerform of true would still indicate to NOT perform the
  // action.
  bool doNotPerform;

  //  Extensions for doNotPerform
  Element element_doNotPerform;

  //  The period, timing or frequency upon which the described activity is
  // to occur.
  Timing timingTiming;

  //  The period, timing or frequency upon which the described activity is
  // to occur.
  String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for timingDateTime
  Element element_timingDateTime;

  //  The period, timing or frequency upon which the described activity is
  // to occur.
  Age timingAge;

  //  The period, timing or frequency upon which the described activity is
  // to occur.
  Period timingPeriod;

  //  The period, timing or frequency upon which the described activity is
  // to occur.
  Range timingRange;

  //  The period, timing or frequency upon which the described activity is
  // to occur.
  Duration timingDuration;

  //  Identifies the facility where the activity will occur; e.g. home,
  // hospital, specific clinic, etc.
  Reference location;

  //  Indicates who should participate in performing the action described.
  List<ActivityDefinition_Participant> participant;

  //  Identifies the food, drug or other product being consumed or supplied
  // in the activity.
  Reference productReference;

  //  Identifies the food, drug or other product being consumed or supplied
  // in the activity.
  CodeableConcept productCodeableConcept;

  //  Identifies the quantity expected to be consumed at once (per dose, per
  // meal, etc.).
  Quantity quantity;

  //  Provides detailed dosage instructions in the same way that they are
  // described for MedicationRequest resources.
  List<Dosage> dosage;

  //  Indicates the sites on the subject's body where the procedure should
  // be performed (I.e. the target sites).
  List<CodeableConcept> bodySite;

  //  Defines specimen requirements for the action to be performed, such as
  // required specimens for a lab test.
  List<Reference> specimenRequirement;

  //  Defines observation requirements for the action to be performed, such
  // as body weight or surface area.
  List<Reference> observationRequirement;

  //  Defines the observations that are expected to be produced by the
  // action.
  List<Reference> observationResultRequirement;

  //  A reference to a StructureMap resource that defines a transform that
  // can be executed to produce the intent resource using the
  // ActivityDefinition instance as the input.
  String transform;

  //  Dynamic values that will be evaluated to produce values for elements
  // of the resulting resource. For example, if the dosage of a medication
  // must be computed based on the patient's weight, a dynamic value would
  // be used to specify an expression that calculated the weight, and the
  // path on the request resource that would contain the result.
  List<ActivityDefinition_DynamicValue> dynamicValue;

ActivityDefinition(
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
    this.subtitle,
    this.element_subtitle,
    this.status,
    this.element_status,
    this.experimental,
    this.element_experimental,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.date,
    this.element_date,
    this.publisher,
    this.element_publisher,
    this.contact,
    this.description,
    this.element_description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.element_purpose,
    this.usage,
    this.element_usage,
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
    this.library,
    this.kind,
    this.element_kind,
    this.profile,
    this.code,
    this.intent,
    this.element_intent,
    this.priority,
    this.element_priority,
    this.doNotPerform,
    this.element_doNotPerform,
    this.timingTiming,
    this.timingDateTime,
    this.element_timingDateTime,
    this.timingAge,
    this.timingPeriod,
    this.timingRange,
    this.timingDuration,
    this.location,
    this.participant,
    this.productReference,
    this.productCodeableConcept,
    this.quantity,
    this.dosage,
    this.bodySite,
    this.specimenRequirement,
    this.observationRequirement,
    this.observationResultRequirement,
    this.transform,
    this.dynamicValue
    });

  factory ActivityDefinition.fromJson(Map<String, dynamic> json) => _$ActivityDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ActivityDefinition_Participant {

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

  //  The type of participant in the action.
  String type;

  //  Extensions for type
  Element element_type;

  //  The role the participant should play in performing the described
  // action.
  CodeableConcept role;

ActivityDefinition_Participant(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.element_type,
    this.role
    });

  factory ActivityDefinition_Participant.fromJson(Map<String, dynamic> json) => _$ActivityDefinition_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityDefinition_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ActivityDefinition_DynamicValue {

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

  //  The path to the element to be customized. This is the path on the
  // resource that will hold the result of the calculation defined by the
  // expression. The specified path SHALL be a FHIRPath resolveable on the
  // specified target type of the ActivityDefinition, and SHALL consist only
  // of identifiers, constant indexers, and a restricted subset of
  // functions. The path is allowed to contain qualifiers (.) to traverse
  // sub-elements, as well as indexers ([x]) to traverse
  // multiple-cardinality sub-elements (see the [Simple FHIRPath
  // Profile](fhirpath.html#simple) for full details).
  String path;

  //  Extensions for path
  Element element_path;

  //  An expression specifying the value of the customized element.
  Expression expression;

ActivityDefinition_DynamicValue(
  this.expression,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.element_path
    });

  factory ActivityDefinition_DynamicValue.fromJson(Map<String, dynamic> json) => _$ActivityDefinition_DynamicValueFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityDefinition_DynamicValueToJson(this);
}

