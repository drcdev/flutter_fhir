import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
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
@HiveType(typeId: 57)
class ActivityDefinition {

  //  This is a ActivityDefinition resource
  @HiveField(0)
  final String resourceType= 'ActivityDefinition';

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

  //  An absolute URI that is used to identify this activity definition when
  // it is referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this activity definition is (or will be) published. This URL can be
  // the target of a canonical reference. It SHALL remain the same when the
  // activity definition is stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  A formal identifier that is used to identify this activity definition
  // when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
  @HiveField(13)
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
  @HiveField(14)
  String version;

  //  Extensions for version
  @HiveField(15)
  Element elementVersion;

  //  A natural language name identifying the activity definition. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  @HiveField(16)
  String name;

  //  Extensions for name
  @HiveField(17)
  Element elementName;

  //  A short, descriptive, user-friendly title for the activity definition.
  @HiveField(18)
  String title;

  //  Extensions for title
  @HiveField(19)
  Element elementTitle;

  //  An explanatory or alternate title for the activity definition giving
  // additional information about its content.
  @HiveField(20)
  String subtitle;

  //  Extensions for subtitle
  @HiveField(21)
  Element elementSubtitle;

  //  The status of this activity definition. Enables tracking the
  // life-cycle of the content.
  @HiveField(22)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(23)
  Element elementStatus;

  //  A Boolean value to indicate that this activity definition is authored
  // for testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  @HiveField(24)
  bool experimental;

  //  Extensions for experimental
  @HiveField(25)
  Element elementExperimental;

  //  A code or group definition that describes the intended subject of the
  // activity being defined.
  @HiveField(26)
  CodeableConcept subjectCodeableConcept;

  //  A code or group definition that describes the intended subject of the
  // activity being defined.
  @HiveField(27)
  Reference subjectReference;

  //  The date  (and optionally time) when the activity definition was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the activity definition changes.
  @HiveField(28)
  DateTime date;

  //  Extensions for date
  @HiveField(29)
  Element elementDate;

  //  The name of the organization or individual that published the activity
  // definition.
  @HiveField(30)
  String publisher;

  //  Extensions for publisher
  @HiveField(31)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(32)
  List<ContactDetail> contact;

  //  A free text natural language description of the activity definition
  // from a consumer's perspective.
  @HiveField(33)
  String description;

  //  Extensions for description
  @HiveField(34)
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate activity definition instances.
  @HiveField(35)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the activity definition is
  // intended to be used.
  @HiveField(36)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this activity definition is needed and why it has
  // been designed as it has.
  @HiveField(37)
  String purpose;

  //  Extensions for purpose
  @HiveField(38)
  Element elementPurpose;

  //  A detailed description of how the activity definition is used from a
  // clinical perspective.
  @HiveField(39)
  String usage;

  //  Extensions for usage
  @HiveField(40)
  Element elementUsage;

  //  A copyright statement relating to the activity definition and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the activity definition.
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

  //  The period during which the activity definition content was or is
  // planned to be in active use.
  @HiveField(47)
  Period effectivePeriod;

  //  Descriptive topics related to the content of the activity. Topics
  // provide a high-level categorization of the activity that can be useful
  // for filtering and searching.
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

  //  A reference to a Library resource containing any formal logic used by
  // the activity definition.
  @HiveField(54)
  List<String> library;

  //  A description of the kind of resource the activity definition is
  // representing. For example, a MedicationRequest, a ServiceRequest, or a
  // CommunicationRequest. Typically, but not always, this is a Request
  // resource.
  @HiveField(55)
  String kind;

  //  Extensions for kind
  @HiveField(56)
  Element elementKind;

  //  A profile to which the target of the activity definition is expected
  // to conform.
  @HiveField(57)
  String profile;

  //  Detailed description of the type of activity; e.g. What lab test, what
  // procedure, what kind of encounter.
  @HiveField(58)
  CodeableConcept code;

  //  Indicates the level of authority/intentionality associated with the
  // activity and where the request should fit into the workflow chain.
  @HiveField(59)
  String intent;

  //  Extensions for intent
  @HiveField(60)
  Element elementIntent;

  //  Indicates how quickly the activity  should be addressed with respect
  // to other requests.
  @HiveField(61)
  String priority;

  //  Extensions for priority
  @HiveField(62)
  Element elementPriority;

  //  Set this to true if the definition is to indicate that a particular
  // activity should NOT be performed. If true, this element should be
  // interpreted to reinforce a negative coding. For example NPO as a code
  // with a doNotPerform of true would still indicate to NOT perform the
  // action.
  @HiveField(63)
  bool doNotPerform;

  //  Extensions for doNotPerform
  @HiveField(64)
  Element elementDoNotPerform;

  //  The period, timing or frequency upon which the described activity is
  // to occur.
  @HiveField(65)
  Timing timingTiming;

  //  The period, timing or frequency upon which the described activity is
  // to occur.
  @HiveField(66)
  String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for timingDateTime
  @HiveField(67)
  Element elementTimingDateTime;

  //  The period, timing or frequency upon which the described activity is
  // to occur.
  @HiveField(68)
  Age timingAge;

  //  The period, timing or frequency upon which the described activity is
  // to occur.
  @HiveField(69)
  Period timingPeriod;

  //  The period, timing or frequency upon which the described activity is
  // to occur.
  @HiveField(70)
  Range timingRange;

  //  The period, timing or frequency upon which the described activity is
  // to occur.
  @HiveField(71)
  Duration timingDuration;

  //  Identifies the facility where the activity will occur; e.g. home,
  // hospital, specific clinic, etc.
  @HiveField(72)
  Reference location;

  //  Indicates who should participate in performing the action described.
  @HiveField(73)
  List<ActivityDefinition_Participant> participant;

  //  Identifies the food, drug or other product being consumed or supplied
  // in the activity.
  @HiveField(74)
  Reference productReference;

  //  Identifies the food, drug or other product being consumed or supplied
  // in the activity.
  @HiveField(75)
  CodeableConcept productCodeableConcept;

  //  Identifies the quantity expected to be consumed at once (per dose, per
  // meal, etc.).
  @HiveField(76)
  Quantity quantity;

  //  Provides detailed dosage instructions in the same way that they are
  // described for MedicationRequest resources.
  @HiveField(77)
  List<Dosage> dosage;

  //  Indicates the sites on the subject's body where the procedure should
  // be performed (I.e. the target sites).
  @HiveField(78)
  List<CodeableConcept> bodySite;

  //  Defines specimen requirements for the action to be performed, such as
  // required specimens for a lab test.
  @HiveField(79)
  List<Reference> specimenRequirement;

  //  Defines observation requirements for the action to be performed, such
  // as body weight or surface area.
  @HiveField(80)
  List<Reference> observationRequirement;

  //  Defines the observations that are expected to be produced by the
  // action.
  @HiveField(81)
  List<Reference> observationResultRequirement;

  //  A reference to a StructureMap resource that defines a transform that
  // can be executed to produce the intent resource using the
  // ActivityDefinition instance as the input.
  @HiveField(82)
  String transform;

  //  Dynamic values that will be evaluated to produce values for elements
  // of the resulting resource. For example, if the dosage of a medication
  // must be computed based on the patient's weight, a dynamic value would
  // be used to specify an expression that calculated the weight, and the
  // path on the request resource that would contain the result.
  @HiveField(83)
  List<ActivityDefinition_DynamicValue> dynamicValue;

ActivityDefinition(
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
    this.kind,
    this.elementKind,
    this.profile,
    this.code,
    this.intent,
    this.elementIntent,
    this.priority,
    this.elementPriority,
    this.doNotPerform,
    this.elementDoNotPerform,
    this.timingTiming,
    this.timingDateTime,
    this.elementTimingDateTime,
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
@HiveType(typeId: 58)
class ActivityDefinition_Participant {

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

  //  The type of participant in the action.
  @HiveField(3)
  String type;

  //  Extensions for type
  @HiveField(4)
  Element elementType;

  //  The role the participant should play in performing the described
  // action.
  @HiveField(5)
  CodeableConcept role;

ActivityDefinition_Participant(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.role
    });

  factory ActivityDefinition_Participant.fromJson(Map<String, dynamic> json) => _$ActivityDefinition_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityDefinition_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 59)
class ActivityDefinition_DynamicValue {

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

  //  The path to the element to be customized. This is the path on the
  // resource that will hold the result of the calculation defined by the
  // expression. The specified path SHALL be a FHIRPath resolveable on the
  // specified target type of the ActivityDefinition, and SHALL consist only
  // of identifiers, constant indexers, and a restricted subset of
  // functions. The path is allowed to contain qualifiers (.) to traverse
  // sub-elements, as well as indexers ([x]) to traverse
  // multiple-cardinality sub-elements (see the [Simple FHIRPath
  // Profile](fhirpath.html#simple) for full details).
  @HiveField(3)
  String path;

  //  Extensions for path
  @HiveField(4)
  Element elementPath;

  //  An expression specifying the value of the customized element.
  @HiveField(5)
  Expression expression;

ActivityDefinition_DynamicValue(
  this.expression,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath
    });

  factory ActivityDefinition_DynamicValue.fromJson(Map<String, dynamic> json) => _$ActivityDefinition_DynamicValueFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityDefinition_DynamicValueToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ActivityDefinitionAdapter extends TypeAdapter<ActivityDefinition> {
  @override
  final typeId = 57;

  @override
  ActivityDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ActivityDefinition(
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
      kind: fields[55] as String,
      elementKind: fields[56] as Element,
      profile: fields[57] as String,
      code: fields[58] as CodeableConcept,
      intent: fields[59] as String,
      elementIntent: fields[60] as Element,
      priority: fields[61] as String,
      elementPriority: fields[62] as Element,
      doNotPerform: fields[63] as bool,
      elementDoNotPerform: fields[64] as Element,
      timingTiming: fields[65] as Timing,
      timingDateTime: fields[66] as String,
      elementTimingDateTime: fields[67] as Element,
      timingAge: fields[68] as Age,
      timingPeriod: fields[69] as Period,
      timingRange: fields[70] as Range,
      timingDuration: fields[71] as Duration,
      location: fields[72] as Reference,
      participant: (fields[73] as List)?.cast<ActivityDefinition_Participant>(),
      productReference: fields[74] as Reference,
      productCodeableConcept: fields[75] as CodeableConcept,
      quantity: fields[76] as Quantity,
      dosage: (fields[77] as List)?.cast<Dosage>(),
      bodySite: (fields[78] as List)?.cast<CodeableConcept>(),
      specimenRequirement: (fields[79] as List)?.cast<Reference>(),
      observationRequirement: (fields[80] as List)?.cast<Reference>(),
      observationResultRequirement: (fields[81] as List)?.cast<Reference>(),
      transform: fields[82] as String,
      dynamicValue:
          (fields[83] as List)?.cast<ActivityDefinition_DynamicValue>(),
    );
  }

  @override
  void write(BinaryWriter writer, ActivityDefinition obj) {
    writer
      ..writeByte(84)
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
      ..write(obj.kind)
      ..writeByte(56)
      ..write(obj.elementKind)
      ..writeByte(57)
      ..write(obj.profile)
      ..writeByte(58)
      ..write(obj.code)
      ..writeByte(59)
      ..write(obj.intent)
      ..writeByte(60)
      ..write(obj.elementIntent)
      ..writeByte(61)
      ..write(obj.priority)
      ..writeByte(62)
      ..write(obj.elementPriority)
      ..writeByte(63)
      ..write(obj.doNotPerform)
      ..writeByte(64)
      ..write(obj.elementDoNotPerform)
      ..writeByte(65)
      ..write(obj.timingTiming)
      ..writeByte(66)
      ..write(obj.timingDateTime)
      ..writeByte(67)
      ..write(obj.elementTimingDateTime)
      ..writeByte(68)
      ..write(obj.timingAge)
      ..writeByte(69)
      ..write(obj.timingPeriod)
      ..writeByte(70)
      ..write(obj.timingRange)
      ..writeByte(71)
      ..write(obj.timingDuration)
      ..writeByte(72)
      ..write(obj.location)
      ..writeByte(73)
      ..write(obj.participant)
      ..writeByte(74)
      ..write(obj.productReference)
      ..writeByte(75)
      ..write(obj.productCodeableConcept)
      ..writeByte(76)
      ..write(obj.quantity)
      ..writeByte(77)
      ..write(obj.dosage)
      ..writeByte(78)
      ..write(obj.bodySite)
      ..writeByte(79)
      ..write(obj.specimenRequirement)
      ..writeByte(80)
      ..write(obj.observationRequirement)
      ..writeByte(81)
      ..write(obj.observationResultRequirement)
      ..writeByte(82)
      ..write(obj.transform)
      ..writeByte(83)
      ..write(obj.dynamicValue);
  }
}

class ActivityDefinition_ParticipantAdapter
    extends TypeAdapter<ActivityDefinition_Participant> {
  @override
  final typeId = 58;

  @override
  ActivityDefinition_Participant read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ActivityDefinition_Participant(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      role: fields[5] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, ActivityDefinition_Participant obj) {
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
      ..write(obj.elementType)
      ..writeByte(5)
      ..write(obj.role);
  }
}

class ActivityDefinition_DynamicValueAdapter
    extends TypeAdapter<ActivityDefinition_DynamicValue> {
  @override
  final typeId = 59;

  @override
  ActivityDefinition_DynamicValue read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ActivityDefinition_DynamicValue(
      fields[5] as Expression,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      path: fields[3] as String,
      elementPath: fields[4] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ActivityDefinition_DynamicValue obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.path)
      ..writeByte(4)
      ..write(obj.elementPath)
      ..writeByte(5)
      ..write(obj.expression);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityDefinition _$ActivityDefinitionFromJson(Map<String, dynamic> json) {
  return ActivityDefinition(
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
    kind: json['kind'] as String,
    elementKind: json['elementKind'] == null
        ? null
        : Element.fromJson(json['elementKind'] as Map<String, dynamic>),
    profile: json['profile'] as String,
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    intent: json['intent'] as String,
    elementIntent: json['elementIntent'] == null
        ? null
        : Element.fromJson(json['elementIntent'] as Map<String, dynamic>),
    priority: json['priority'] as String,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
    doNotPerform: json['doNotPerform'] as bool,
    elementDoNotPerform: json['elementDoNotPerform'] == null
        ? null
        : Element.fromJson(json['elementDoNotPerform'] as Map<String, dynamic>),
    timingTiming: json['timingTiming'] == null
        ? null
        : Timing.fromJson(json['timingTiming'] as Map<String, dynamic>),
    timingDateTime: json['timingDateTime'] as String,
    elementTimingDateTime: json['elementTimingDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementTimingDateTime'] as Map<String, dynamic>),
    timingAge: json['timingAge'] == null
        ? null
        : Age.fromJson(json['timingAge'] as Map<String, dynamic>),
    timingPeriod: json['timingPeriod'] == null
        ? null
        : Period.fromJson(json['timingPeriod'] as Map<String, dynamic>),
    timingRange: json['timingRange'] == null
        ? null
        : Range.fromJson(json['timingRange'] as Map<String, dynamic>),
    timingDuration: json['timingDuration'] == null
        ? null
        : Duration.fromJson(json['timingDuration'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    participant: (json['participant'] as List)
        ?.map((e) => e == null
            ? null
            : ActivityDefinition_Participant.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    productReference: json['productReference'] == null
        ? null
        : Reference.fromJson(json['productReference'] as Map<String, dynamic>),
    productCodeableConcept: json['productCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productCodeableConcept'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    dosage: (json['dosage'] as List)
        ?.map((e) =>
            e == null ? null : Dosage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    bodySite: (json['bodySite'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specimenRequirement: (json['specimenRequirement'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    observationRequirement: (json['observationRequirement'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    observationResultRequirement: (json['observationResultRequirement'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    transform: json['transform'] as String,
    dynamicValue: (json['dynamicValue'] as List)
        ?.map((e) => e == null
            ? null
            : ActivityDefinition_DynamicValue.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ActivityDefinitionToJson(ActivityDefinition instance) =>
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
      'kind': instance.kind,
      'elementKind': instance.elementKind?.toJson(),
      'profile': instance.profile,
      'code': instance.code?.toJson(),
      'intent': instance.intent,
      'elementIntent': instance.elementIntent?.toJson(),
      'priority': instance.priority,
      'elementPriority': instance.elementPriority?.toJson(),
      'doNotPerform': instance.doNotPerform,
      'elementDoNotPerform': instance.elementDoNotPerform?.toJson(),
      'timingTiming': instance.timingTiming?.toJson(),
      'timingDateTime': instance.timingDateTime,
      'elementTimingDateTime': instance.elementTimingDateTime?.toJson(),
      'timingAge': instance.timingAge?.toJson(),
      'timingPeriod': instance.timingPeriod?.toJson(),
      'timingRange': instance.timingRange?.toJson(),
      'timingDuration': instance.timingDuration?.toJson(),
      'location': instance.location?.toJson(),
      'participant': instance.participant?.map((e) => e?.toJson())?.toList(),
      'productReference': instance.productReference?.toJson(),
      'productCodeableConcept': instance.productCodeableConcept?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'dosage': instance.dosage?.map((e) => e?.toJson())?.toList(),
      'bodySite': instance.bodySite?.map((e) => e?.toJson())?.toList(),
      'specimenRequirement':
          instance.specimenRequirement?.map((e) => e?.toJson())?.toList(),
      'observationRequirement':
          instance.observationRequirement?.map((e) => e?.toJson())?.toList(),
      'observationResultRequirement': instance.observationResultRequirement
          ?.map((e) => e?.toJson())
          ?.toList(),
      'transform': instance.transform,
      'dynamicValue': instance.dynamicValue?.map((e) => e?.toJson())?.toList(),
    };

ActivityDefinition_Participant _$ActivityDefinition_ParticipantFromJson(
    Map<String, dynamic> json) {
  return ActivityDefinition_Participant(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ActivityDefinition_ParticipantToJson(
        ActivityDefinition_Participant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'role': instance.role?.toJson(),
    };

ActivityDefinition_DynamicValue _$ActivityDefinition_DynamicValueFromJson(
    Map<String, dynamic> json) {
  return ActivityDefinition_DynamicValue(
    json['expression'] == null
        ? null
        : Expression.fromJson(json['expression'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ActivityDefinition_DynamicValueToJson(
        ActivityDefinition_DynamicValue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
      'expression': instance.expression?.toJson(),
    };
