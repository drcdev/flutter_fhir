import 'package:hive/hive.dart';
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

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 514)
class ResearchElementDefinition {

  //  This is a ResearchElementDefinition resource
  @HiveField(0)
  final String resourceType= 'ResearchElementDefinition';

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

  //  An absolute URI that is used to identify this research element
  // definition when it is referenced in a specification, model, design or
  // an instance; also called its canonical identifier. This SHOULD be
  // globally unique and SHOULD be a literal address at which at which an
  // authoritative instance of this research element definition is (or will
  // be) published. This URL can be the target of a canonical reference. It
  // SHALL remain the same when the research element definition is stored on
  // different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  A formal identifier that is used to identify this research element
  // definition when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
  @HiveField(13)
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
  @HiveField(14)
  String version;

  //  Extensions for version
  @HiveField(15)
  Element elementVersion;

  //  A natural language name identifying the research element definition.
  // This name should be usable as an identifier for the module by machine
  // processing applications such as code generation.
  @HiveField(16)
  String name;

  //  Extensions for name
  @HiveField(17)
  Element elementName;

  //  A short, descriptive, user-friendly title for the research element
  // definition.
  @HiveField(18)
  String title;

  //  Extensions for title
  @HiveField(19)
  Element elementTitle;

  //  The short title provides an alternate title for use in informal
  // descriptive contexts where the full, formal title is not necessary.
  @HiveField(20)
  String shortTitle;

  //  Extensions for shortTitle
  @HiveField(21)
  Element elementShortTitle;

  //  An explanatory or alternate title for the ResearchElementDefinition
  // giving additional information about its content.
  @HiveField(22)
  String subtitle;

  //  Extensions for subtitle
  @HiveField(23)
  Element elementSubtitle;

  //  The status of this research element definition. Enables tracking the
  // life-cycle of the content.
  @HiveField(24)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(25)
  Element elementStatus;

  //  A Boolean value to indicate that this research element definition is
  // authored for testing purposes (or education/evaluation/marketing) and
  // is not intended to be used for genuine usage.
  @HiveField(26)
  bool experimental;

  //  Extensions for experimental
  @HiveField(27)
  Element elementExperimental;

  //  The intended subjects for the ResearchElementDefinition. If this
  // element is not provided, a Patient subject is assumed, but the subject
  // of the ResearchElementDefinition can be anything.
  @HiveField(28)
  CodeableConcept subjectCodeableConcept;

  //  The intended subjects for the ResearchElementDefinition. If this
  // element is not provided, a Patient subject is assumed, but the subject
  // of the ResearchElementDefinition can be anything.
  @HiveField(29)
  Reference subjectReference;

  //  The date  (and optionally time) when the research element definition
  // was published. The date must change when the business version changes
  // and it must change if the status code changes. In addition, it should
  // change when the substantive content of the research element definition
  // changes.
  @HiveField(30)
  DateTime date;

  //  Extensions for date
  @HiveField(31)
  Element elementDate;

  //  The name of the organization or individual that published the research
  // element definition.
  @HiveField(32)
  String publisher;

  //  Extensions for publisher
  @HiveField(33)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(34)
  List<ContactDetail> contact;

  //  A free text natural language description of the research element
  // definition from a consumer's perspective.
  @HiveField(35)
  String description;

  //  Extensions for description
  @HiveField(36)
  Element elementDescription;

  //  A human-readable string to clarify or explain concepts about the
  // resource.
  @HiveField(37)
  List<String> comment;

  //  Extensions for comment
  @HiveField(38)
  List<Element> elementComment;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate research element definition instances.
  @HiveField(39)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the research element definition
  // is intended to be used.
  @HiveField(40)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this research element definition is needed and why
  // it has been designed as it has.
  @HiveField(41)
  String purpose;

  //  Extensions for purpose
  @HiveField(42)
  Element elementPurpose;

  //  A detailed description, from a clinical perspective, of how the
  // ResearchElementDefinition is used.
  @HiveField(43)
  String usage;

  //  Extensions for usage
  @HiveField(44)
  Element elementUsage;

  //  A copyright statement relating to the research element definition
  // and/or its contents. Copyright statements are generally legal
  // restrictions on the use and publishing of the research element
  // definition.
  @HiveField(45)
  String copyright;

  //  Extensions for copyright
  @HiveField(46)
  Element elementCopyright;

  //  The date on which the resource content was approved by the publisher.
  // Approval happens once when the content is officially approved for
  // usage.
  @HiveField(47)
  String approvalDate;

  //  Extensions for approvalDate
  @HiveField(48)
  Element elementApprovalDate;

  //  The date on which the resource content was last reviewed. Review
  // happens periodically after approval but does not change the original
  // approval date.
  @HiveField(49)
  String lastReviewDate;

  //  Extensions for lastReviewDate
  @HiveField(50)
  Element elementLastReviewDate;

  //  The period during which the research element definition content was or
  // is planned to be in active use.
  @HiveField(51)
  Period effectivePeriod;

  //  Descriptive topics related to the content of the
  // ResearchElementDefinition. Topics provide a high-level categorization
  // grouping types of ResearchElementDefinitions that can be useful for
  // filtering and searching.
  @HiveField(52)
  List<CodeableConcept> topic;

  //  An individiual or organization primarily involved in the creation and
  // maintenance of the content.
  @HiveField(53)
  List<ContactDetail> author;

  //  An individual or organization primarily responsible for internal
  // coherence of the content.
  @HiveField(54)
  List<ContactDetail> editor;

  //  An individual or organization primarily responsible for review of some
  // aspect of the content.
  @HiveField(55)
  List<ContactDetail> reviewer;

  //  An individual or organization responsible for officially endorsing the
  // content for use in some setting.
  @HiveField(56)
  List<ContactDetail> endorser;

  //  Related artifacts such as additional documentation, justification, or
  // bibliographic references.
  @HiveField(57)
  List<RelatedArtifact> relatedArtifact;

  //  A reference to a Library resource containing the formal logic used by
  // the ResearchElementDefinition.
  @HiveField(58)
  List<String> library;

  //  The type of research element, a population, an exposure, or an
  // outcome.
  @HiveField(59)
  String type; // <code> enum: population/exposure/outcome;

  //  Extensions for type
  @HiveField(60)
  Element elementType;

  //  The type of the outcome (e.g. Dichotomous, Continuous, or
  // Descriptive).
  @HiveField(61)
  String variableType; // <code> enum: dichotomous/continuous/descriptive;

  //  Extensions for variableType
  @HiveField(62)
  Element elementVariableType;

  //  A characteristic that defines the members of the research element.
  // Multiple characteristics are applied with "and" semantics.
  @HiveField(63)
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
@HiveType(typeId: 515)
class ResearchElementDefinition_Characteristic {

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

  //  Define members of the research element using Codes (such as condition,
  // medication, or observation), Expressions ( using an expression language
  // such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  // diagnosis onset in the last year).
  @HiveField(3)
  CodeableConcept definitionCodeableConcept;

  //  Define members of the research element using Codes (such as condition,
  // medication, or observation), Expressions ( using an expression language
  // such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  // diagnosis onset in the last year).
  @HiveField(4)
  String definitionCanonical; //  pattern: ^\S*$

  //  Extensions for definitionCanonical
  @HiveField(5)
  Element elementDefinitionCanonical;

  //  Define members of the research element using Codes (such as condition,
  // medication, or observation), Expressions ( using an expression language
  // such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  // diagnosis onset in the last year).
  @HiveField(6)
  Expression definitionExpression;

  //  Define members of the research element using Codes (such as condition,
  // medication, or observation), Expressions ( using an expression language
  // such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  // diagnosis onset in the last year).
  @HiveField(7)
  DataRequirement definitionDataRequirement;

  //  Use UsageContext to define the members of the population, such as Age
  // Ranges, Genders, Settings.
  @HiveField(8)
  List<UsageContext> usageContext;

  //  When true, members with this characteristic are excluded from the
  // element.
  @HiveField(9)
  bool exclude;

  //  Extensions for exclude
  @HiveField(10)
  Element elementExclude;

  //  Specifies the UCUM unit for the outcome.
  @HiveField(11)
  CodeableConcept unitOfMeasure;

  //  A narrative description of the time period the study covers.
  @HiveField(12)
  String studyEffectiveDescription;

  //  Extensions for studyEffectiveDescription
  @HiveField(13)
  Element elementStudyEffectiveDescription;

  //  Indicates what effective period the study covers.
  @HiveField(14)
  String studyEffectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for studyEffectiveDateTime
  @HiveField(15)
  Element elementStudyEffectiveDateTime;

  //  Indicates what effective period the study covers.
  @HiveField(16)
  Period studyEffectivePeriod;

  //  Indicates what effective period the study covers.
  @HiveField(17)
  Duration studyEffectiveDuration;

  //  Indicates what effective period the study covers.
  @HiveField(18)
  Timing studyEffectiveTiming;

  //  Indicates duration from the study initiation.
  @HiveField(19)
  Duration studyEffectiveTimeFromStart;

  //  Indicates how elements are aggregated within the study effective
  // period.
  @HiveField(20)
  String studyEffectiveGroupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;

  //  Extensions for studyEffectiveGroupMeasure
  @HiveField(21)
  Element elementStudyEffectiveGroupMeasure;

  //  A narrative description of the time period the study covers.
  @HiveField(22)
  String participantEffectiveDescription;

  //  Extensions for participantEffectiveDescription
  @HiveField(23)
  Element elementParticipantEffectiveDescription;

  //  Indicates what effective period the study covers.
  @HiveField(24)
  String participantEffectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for participantEffectiveDateTime
  @HiveField(25)
  Element elementParticipantEffectiveDateTime;

  //  Indicates what effective period the study covers.
  @HiveField(26)
  Period participantEffectivePeriod;

  //  Indicates what effective period the study covers.
  @HiveField(27)
  Duration participantEffectiveDuration;

  //  Indicates what effective period the study covers.
  @HiveField(28)
  Timing participantEffectiveTiming;

  //  Indicates duration from the participant's study entry.
  @HiveField(29)
  Duration participantEffectiveTimeFromStart;

  //  Indicates how elements are aggregated within the study effective
  // period.
  @HiveField(30)
  String participantEffectiveGroupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;

  //  Extensions for participantEffectiveGroupMeasure
  @HiveField(31)
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


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResearchElementDefinitionAdapter
    extends TypeAdapter<ResearchElementDefinition> {
  @override
  final typeId = 514;

  @override
  ResearchElementDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ResearchElementDefinition(
      (fields[63] as List)?.cast<ResearchElementDefinition_Characteristic>(),
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
      shortTitle: fields[20] as String,
      elementShortTitle: fields[21] as Element,
      subtitle: fields[22] as String,
      elementSubtitle: fields[23] as Element,
      status: fields[24] as String,
      elementStatus: fields[25] as Element,
      experimental: fields[26] as bool,
      elementExperimental: fields[27] as Element,
      subjectCodeableConcept: fields[28] as CodeableConcept,
      subjectReference: fields[29] as Reference,
      date: fields[30] as DateTime,
      elementDate: fields[31] as Element,
      publisher: fields[32] as String,
      elementPublisher: fields[33] as Element,
      contact: (fields[34] as List)?.cast<ContactDetail>(),
      description: fields[35] as String,
      elementDescription: fields[36] as Element,
      comment: (fields[37] as List)?.cast<String>(),
      elementComment: (fields[38] as List)?.cast<Element>(),
      useContext: (fields[39] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[40] as List)?.cast<CodeableConcept>(),
      purpose: fields[41] as String,
      elementPurpose: fields[42] as Element,
      usage: fields[43] as String,
      elementUsage: fields[44] as Element,
      copyright: fields[45] as String,
      elementCopyright: fields[46] as Element,
      approvalDate: fields[47] as String,
      elementApprovalDate: fields[48] as Element,
      lastReviewDate: fields[49] as String,
      elementLastReviewDate: fields[50] as Element,
      effectivePeriod: fields[51] as Period,
      topic: (fields[52] as List)?.cast<CodeableConcept>(),
      author: (fields[53] as List)?.cast<ContactDetail>(),
      editor: (fields[54] as List)?.cast<ContactDetail>(),
      reviewer: (fields[55] as List)?.cast<ContactDetail>(),
      endorser: (fields[56] as List)?.cast<ContactDetail>(),
      relatedArtifact: (fields[57] as List)?.cast<RelatedArtifact>(),
      library: (fields[58] as List)?.cast<String>(),
      type: fields[59] as String,
      elementType: fields[60] as Element,
      variableType: fields[61] as String,
      elementVariableType: fields[62] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ResearchElementDefinition obj) {
    writer
      ..writeByte(64)
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
      ..write(obj.shortTitle)
      ..writeByte(21)
      ..write(obj.elementShortTitle)
      ..writeByte(22)
      ..write(obj.subtitle)
      ..writeByte(23)
      ..write(obj.elementSubtitle)
      ..writeByte(24)
      ..write(obj.status)
      ..writeByte(25)
      ..write(obj.elementStatus)
      ..writeByte(26)
      ..write(obj.experimental)
      ..writeByte(27)
      ..write(obj.elementExperimental)
      ..writeByte(28)
      ..write(obj.subjectCodeableConcept)
      ..writeByte(29)
      ..write(obj.subjectReference)
      ..writeByte(30)
      ..write(obj.date)
      ..writeByte(31)
      ..write(obj.elementDate)
      ..writeByte(32)
      ..write(obj.publisher)
      ..writeByte(33)
      ..write(obj.elementPublisher)
      ..writeByte(34)
      ..write(obj.contact)
      ..writeByte(35)
      ..write(obj.description)
      ..writeByte(36)
      ..write(obj.elementDescription)
      ..writeByte(37)
      ..write(obj.comment)
      ..writeByte(38)
      ..write(obj.elementComment)
      ..writeByte(39)
      ..write(obj.useContext)
      ..writeByte(40)
      ..write(obj.jurisdiction)
      ..writeByte(41)
      ..write(obj.purpose)
      ..writeByte(42)
      ..write(obj.elementPurpose)
      ..writeByte(43)
      ..write(obj.usage)
      ..writeByte(44)
      ..write(obj.elementUsage)
      ..writeByte(45)
      ..write(obj.copyright)
      ..writeByte(46)
      ..write(obj.elementCopyright)
      ..writeByte(47)
      ..write(obj.approvalDate)
      ..writeByte(48)
      ..write(obj.elementApprovalDate)
      ..writeByte(49)
      ..write(obj.lastReviewDate)
      ..writeByte(50)
      ..write(obj.elementLastReviewDate)
      ..writeByte(51)
      ..write(obj.effectivePeriod)
      ..writeByte(52)
      ..write(obj.topic)
      ..writeByte(53)
      ..write(obj.author)
      ..writeByte(54)
      ..write(obj.editor)
      ..writeByte(55)
      ..write(obj.reviewer)
      ..writeByte(56)
      ..write(obj.endorser)
      ..writeByte(57)
      ..write(obj.relatedArtifact)
      ..writeByte(58)
      ..write(obj.library)
      ..writeByte(59)
      ..write(obj.type)
      ..writeByte(60)
      ..write(obj.elementType)
      ..writeByte(61)
      ..write(obj.variableType)
      ..writeByte(62)
      ..write(obj.elementVariableType)
      ..writeByte(63)
      ..write(obj.characteristic);
  }
}

class ResearchElementDefinition_CharacteristicAdapter
    extends TypeAdapter<ResearchElementDefinition_Characteristic> {
  @override
  final typeId = 515;

  @override
  ResearchElementDefinition_Characteristic read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ResearchElementDefinition_Characteristic(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      definitionCodeableConcept: fields[3] as CodeableConcept,
      definitionCanonical: fields[4] as String,
      elementDefinitionCanonical: fields[5] as Element,
      definitionExpression: fields[6] as Expression,
      definitionDataRequirement: fields[7] as DataRequirement,
      usageContext: (fields[8] as List)?.cast<UsageContext>(),
      exclude: fields[9] as bool,
      elementExclude: fields[10] as Element,
      unitOfMeasure: fields[11] as CodeableConcept,
      studyEffectiveDescription: fields[12] as String,
      elementStudyEffectiveDescription: fields[13] as Element,
      studyEffectiveDateTime: fields[14] as String,
      elementStudyEffectiveDateTime: fields[15] as Element,
      studyEffectivePeriod: fields[16] as Period,
      studyEffectiveDuration: fields[17] as Duration,
      studyEffectiveTiming: fields[18] as Timing,
      studyEffectiveTimeFromStart: fields[19] as Duration,
      studyEffectiveGroupMeasure: fields[20] as String,
      elementStudyEffectiveGroupMeasure: fields[21] as Element,
      participantEffectiveDescription: fields[22] as String,
      elementParticipantEffectiveDescription: fields[23] as Element,
      participantEffectiveDateTime: fields[24] as String,
      elementParticipantEffectiveDateTime: fields[25] as Element,
      participantEffectivePeriod: fields[26] as Period,
      participantEffectiveDuration: fields[27] as Duration,
      participantEffectiveTiming: fields[28] as Timing,
      participantEffectiveTimeFromStart: fields[29] as Duration,
      participantEffectiveGroupMeasure: fields[30] as String,
      elementParticipantEffectiveGroupMeasure: fields[31] as Element,
    );
  }

  @override
  void write(
      BinaryWriter writer, ResearchElementDefinition_Characteristic obj) {
    writer
      ..writeByte(32)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.definitionCodeableConcept)
      ..writeByte(4)
      ..write(obj.definitionCanonical)
      ..writeByte(5)
      ..write(obj.elementDefinitionCanonical)
      ..writeByte(6)
      ..write(obj.definitionExpression)
      ..writeByte(7)
      ..write(obj.definitionDataRequirement)
      ..writeByte(8)
      ..write(obj.usageContext)
      ..writeByte(9)
      ..write(obj.exclude)
      ..writeByte(10)
      ..write(obj.elementExclude)
      ..writeByte(11)
      ..write(obj.unitOfMeasure)
      ..writeByte(12)
      ..write(obj.studyEffectiveDescription)
      ..writeByte(13)
      ..write(obj.elementStudyEffectiveDescription)
      ..writeByte(14)
      ..write(obj.studyEffectiveDateTime)
      ..writeByte(15)
      ..write(obj.elementStudyEffectiveDateTime)
      ..writeByte(16)
      ..write(obj.studyEffectivePeriod)
      ..writeByte(17)
      ..write(obj.studyEffectiveDuration)
      ..writeByte(18)
      ..write(obj.studyEffectiveTiming)
      ..writeByte(19)
      ..write(obj.studyEffectiveTimeFromStart)
      ..writeByte(20)
      ..write(obj.studyEffectiveGroupMeasure)
      ..writeByte(21)
      ..write(obj.elementStudyEffectiveGroupMeasure)
      ..writeByte(22)
      ..write(obj.participantEffectiveDescription)
      ..writeByte(23)
      ..write(obj.elementParticipantEffectiveDescription)
      ..writeByte(24)
      ..write(obj.participantEffectiveDateTime)
      ..writeByte(25)
      ..write(obj.elementParticipantEffectiveDateTime)
      ..writeByte(26)
      ..write(obj.participantEffectivePeriod)
      ..writeByte(27)
      ..write(obj.participantEffectiveDuration)
      ..writeByte(28)
      ..write(obj.participantEffectiveTiming)
      ..writeByte(29)
      ..write(obj.participantEffectiveTimeFromStart)
      ..writeByte(30)
      ..write(obj.participantEffectiveGroupMeasure)
      ..writeByte(31)
      ..write(obj.elementParticipantEffectiveGroupMeasure);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResearchElementDefinition _$ResearchElementDefinitionFromJson(
    Map<String, dynamic> json) {
  return ResearchElementDefinition(
    (json['characteristic'] as List)
        ?.map((e) => e == null
            ? null
            : ResearchElementDefinition_Characteristic.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
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
    shortTitle: json['shortTitle'] as String,
    elementShortTitle: json['elementShortTitle'] == null
        ? null
        : Element.fromJson(json['elementShortTitle'] as Map<String, dynamic>),
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
    comment: (json['comment'] as List)?.map((e) => e as String)?.toList(),
    elementComment: (json['elementComment'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
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
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    variableType: json['variableType'] as String,
    elementVariableType: json['elementVariableType'] == null
        ? null
        : Element.fromJson(json['elementVariableType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResearchElementDefinitionToJson(
        ResearchElementDefinition instance) =>
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
      'shortTitle': instance.shortTitle,
      'elementShortTitle': instance.elementShortTitle?.toJson(),
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
      'comment': instance.comment,
      'elementComment':
          instance.elementComment?.map((e) => e?.toJson())?.toList(),
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
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'variableType': instance.variableType,
      'elementVariableType': instance.elementVariableType?.toJson(),
      'characteristic':
          instance.characteristic?.map((e) => e?.toJson())?.toList(),
    };

ResearchElementDefinition_Characteristic
    _$ResearchElementDefinition_CharacteristicFromJson(
        Map<String, dynamic> json) {
  return ResearchElementDefinition_Characteristic(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    definitionCodeableConcept: json['definitionCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['definitionCodeableConcept'] as Map<String, dynamic>),
    definitionCanonical: json['definitionCanonical'] as String,
    elementDefinitionCanonical: json['elementDefinitionCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementDefinitionCanonical'] as Map<String, dynamic>),
    definitionExpression: json['definitionExpression'] == null
        ? null
        : Expression.fromJson(
            json['definitionExpression'] as Map<String, dynamic>),
    definitionDataRequirement: json['definitionDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['definitionDataRequirement'] as Map<String, dynamic>),
    usageContext: (json['usageContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    exclude: json['exclude'] as bool,
    elementExclude: json['elementExclude'] == null
        ? null
        : Element.fromJson(json['elementExclude'] as Map<String, dynamic>),
    unitOfMeasure: json['unitOfMeasure'] == null
        ? null
        : CodeableConcept.fromJson(
            json['unitOfMeasure'] as Map<String, dynamic>),
    studyEffectiveDescription: json['studyEffectiveDescription'] as String,
    elementStudyEffectiveDescription:
        json['elementStudyEffectiveDescription'] == null
            ? null
            : Element.fromJson(json['elementStudyEffectiveDescription']
                as Map<String, dynamic>),
    studyEffectiveDateTime: json['studyEffectiveDateTime'] as String,
    elementStudyEffectiveDateTime: json['elementStudyEffectiveDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementStudyEffectiveDateTime'] as Map<String, dynamic>),
    studyEffectivePeriod: json['studyEffectivePeriod'] == null
        ? null
        : Period.fromJson(json['studyEffectivePeriod'] as Map<String, dynamic>),
    studyEffectiveDuration: json['studyEffectiveDuration'] == null
        ? null
        : Duration.fromJson(
            json['studyEffectiveDuration'] as Map<String, dynamic>),
    studyEffectiveTiming: json['studyEffectiveTiming'] == null
        ? null
        : Timing.fromJson(json['studyEffectiveTiming'] as Map<String, dynamic>),
    studyEffectiveTimeFromStart: json['studyEffectiveTimeFromStart'] == null
        ? null
        : Duration.fromJson(
            json['studyEffectiveTimeFromStart'] as Map<String, dynamic>),
    studyEffectiveGroupMeasure: json['studyEffectiveGroupMeasure'] as String,
    elementStudyEffectiveGroupMeasure:
        json['elementStudyEffectiveGroupMeasure'] == null
            ? null
            : Element.fromJson(json['elementStudyEffectiveGroupMeasure']
                as Map<String, dynamic>),
    participantEffectiveDescription:
        json['participantEffectiveDescription'] as String,
    elementParticipantEffectiveDescription:
        json['elementParticipantEffectiveDescription'] == null
            ? null
            : Element.fromJson(json['elementParticipantEffectiveDescription']
                as Map<String, dynamic>),
    participantEffectiveDateTime:
        json['participantEffectiveDateTime'] as String,
    elementParticipantEffectiveDateTime:
        json['elementParticipantEffectiveDateTime'] == null
            ? null
            : Element.fromJson(json['elementParticipantEffectiveDateTime']
                as Map<String, dynamic>),
    participantEffectivePeriod: json['participantEffectivePeriod'] == null
        ? null
        : Period.fromJson(
            json['participantEffectivePeriod'] as Map<String, dynamic>),
    participantEffectiveDuration: json['participantEffectiveDuration'] == null
        ? null
        : Duration.fromJson(
            json['participantEffectiveDuration'] as Map<String, dynamic>),
    participantEffectiveTiming: json['participantEffectiveTiming'] == null
        ? null
        : Timing.fromJson(
            json['participantEffectiveTiming'] as Map<String, dynamic>),
    participantEffectiveTimeFromStart:
        json['participantEffectiveTimeFromStart'] == null
            ? null
            : Duration.fromJson(json['participantEffectiveTimeFromStart']
                as Map<String, dynamic>),
    participantEffectiveGroupMeasure:
        json['participantEffectiveGroupMeasure'] as String,
    elementParticipantEffectiveGroupMeasure:
        json['elementParticipantEffectiveGroupMeasure'] == null
            ? null
            : Element.fromJson(json['elementParticipantEffectiveGroupMeasure']
                as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResearchElementDefinition_CharacteristicToJson(
        ResearchElementDefinition_Characteristic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'definitionCodeableConcept': instance.definitionCodeableConcept?.toJson(),
      'definitionCanonical': instance.definitionCanonical,
      'elementDefinitionCanonical':
          instance.elementDefinitionCanonical?.toJson(),
      'definitionExpression': instance.definitionExpression?.toJson(),
      'definitionDataRequirement': instance.definitionDataRequirement?.toJson(),
      'usageContext': instance.usageContext?.map((e) => e?.toJson())?.toList(),
      'exclude': instance.exclude,
      'elementExclude': instance.elementExclude?.toJson(),
      'unitOfMeasure': instance.unitOfMeasure?.toJson(),
      'studyEffectiveDescription': instance.studyEffectiveDescription,
      'elementStudyEffectiveDescription':
          instance.elementStudyEffectiveDescription?.toJson(),
      'studyEffectiveDateTime': instance.studyEffectiveDateTime,
      'elementStudyEffectiveDateTime':
          instance.elementStudyEffectiveDateTime?.toJson(),
      'studyEffectivePeriod': instance.studyEffectivePeriod?.toJson(),
      'studyEffectiveDuration': instance.studyEffectiveDuration?.toJson(),
      'studyEffectiveTiming': instance.studyEffectiveTiming?.toJson(),
      'studyEffectiveTimeFromStart':
          instance.studyEffectiveTimeFromStart?.toJson(),
      'studyEffectiveGroupMeasure': instance.studyEffectiveGroupMeasure,
      'elementStudyEffectiveGroupMeasure':
          instance.elementStudyEffectiveGroupMeasure?.toJson(),
      'participantEffectiveDescription':
          instance.participantEffectiveDescription,
      'elementParticipantEffectiveDescription':
          instance.elementParticipantEffectiveDescription?.toJson(),
      'participantEffectiveDateTime': instance.participantEffectiveDateTime,
      'elementParticipantEffectiveDateTime':
          instance.elementParticipantEffectiveDateTime?.toJson(),
      'participantEffectivePeriod':
          instance.participantEffectivePeriod?.toJson(),
      'participantEffectiveDuration':
          instance.participantEffectiveDuration?.toJson(),
      'participantEffectiveTiming':
          instance.participantEffectiveTiming?.toJson(),
      'participantEffectiveTimeFromStart':
          instance.participantEffectiveTimeFromStart?.toJson(),
      'participantEffectiveGroupMeasure':
          instance.participantEffectiveGroupMeasure,
      'elementParticipantEffectiveGroupMeasure':
          instance.elementParticipantEffectiveGroupMeasure?.toJson(),
    };
