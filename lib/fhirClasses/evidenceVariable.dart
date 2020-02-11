import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/triggerDefinition.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/expression.dart';
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
@HiveType(typeId: 256)
class EvidenceVariable {

  //  This is a EvidenceVariable resource
  @HiveField(0)
  final String resourceType= 'EvidenceVariable';

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

  //  An absolute URI that is used to identify this evidence variable when
  // it is referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this evidence variable is (or will be) published. This URL can be
  // the target of a canonical reference. It SHALL remain the same when the
  // evidence variable is stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  A formal identifier that is used to identify this evidence variable
  // when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
  @HiveField(13)
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the evidence
  // variable when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the evidence variable
  // author and is not expected to be globally unique. For example, it might
  // be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  // There is also no expectation that versions can be placed in a
  // lexicographical sequence. To provide a version consistent with the
  // Decision Support Service specification, use the format
  // Major.Minor.Revision (e.g. 1.0.0). For more information on versioning
  // knowledge assets, refer to the Decision Support Service specification.
  // Note that a version is required for non-experimental active artifacts.
  @HiveField(14)
  String version;

  //  Extensions for version
  @HiveField(15)
  Element elementVersion;

  //  A natural language name identifying the evidence variable. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  @HiveField(16)
  String name;

  //  Extensions for name
  @HiveField(17)
  Element elementName;

  //  A short, descriptive, user-friendly title for the evidence variable.
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

  //  An explanatory or alternate title for the EvidenceVariable giving
  // additional information about its content.
  @HiveField(22)
  String subtitle;

  //  Extensions for subtitle
  @HiveField(23)
  Element elementSubtitle;

  //  The status of this evidence variable. Enables tracking the life-cycle
  // of the content.
  @HiveField(24)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(25)
  Element elementStatus;

  //  The date  (and optionally time) when the evidence variable was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the evidence variable changes.
  @HiveField(26)
  DateTime date;

  //  Extensions for date
  @HiveField(27)
  Element elementDate;

  //  The name of the organization or individual that published the evidence
  // variable.
  @HiveField(28)
  String publisher;

  //  Extensions for publisher
  @HiveField(29)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(30)
  List<ContactDetail> contact;

  //  A free text natural language description of the evidence variable from
  // a consumer's perspective.
  @HiveField(31)
  String description;

  //  Extensions for description
  @HiveField(32)
  Element elementDescription;

  //  A human-readable string to clarify or explain concepts about the
  // resource.
  @HiveField(33)
  List<Annotation> note;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate evidence variable instances.
  @HiveField(34)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the evidence variable is
  // intended to be used.
  @HiveField(35)
  List<CodeableConcept> jurisdiction;

  //  A copyright statement relating to the evidence variable and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the evidence variable.
  @HiveField(36)
  String copyright;

  //  Extensions for copyright
  @HiveField(37)
  Element elementCopyright;

  //  The date on which the resource content was approved by the publisher.
  // Approval happens once when the content is officially approved for
  // usage.
  @HiveField(38)
  String approvalDate;

  //  Extensions for approvalDate
  @HiveField(39)
  Element elementApprovalDate;

  //  The date on which the resource content was last reviewed. Review
  // happens periodically after approval but does not change the original
  // approval date.
  @HiveField(40)
  String lastReviewDate;

  //  Extensions for lastReviewDate
  @HiveField(41)
  Element elementLastReviewDate;

  //  The period during which the evidence variable content was or is
  // planned to be in active use.
  @HiveField(42)
  Period effectivePeriod;

  //  Descriptive topics related to the content of the EvidenceVariable.
  // Topics provide a high-level categorization grouping types of
  // EvidenceVariables that can be useful for filtering and searching.
  @HiveField(43)
  List<CodeableConcept> topic;

  //  An individiual or organization primarily involved in the creation and
  // maintenance of the content.
  @HiveField(44)
  List<ContactDetail> author;

  //  An individual or organization primarily responsible for internal
  // coherence of the content.
  @HiveField(45)
  List<ContactDetail> editor;

  //  An individual or organization primarily responsible for review of some
  // aspect of the content.
  @HiveField(46)
  List<ContactDetail> reviewer;

  //  An individual or organization responsible for officially endorsing the
  // content for use in some setting.
  @HiveField(47)
  List<ContactDetail> endorser;

  //  Related artifacts such as additional documentation, justification, or
  // bibliographic references.
  @HiveField(48)
  List<RelatedArtifact> relatedArtifact;

  //  The type of evidence element, a population, an exposure, or an
  // outcome.
  @HiveField(49)
  String type; // <code> enum: dichotomous/continuous/descriptive;

  //  Extensions for type
  @HiveField(50)
  Element elementType;

  //  A characteristic that defines the members of the evidence element.
  // Multiple characteristics are applied with "and" semantics.
  @HiveField(51)
  List<EvidenceVariable_Characteristic> characteristic;

EvidenceVariable(
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
    this.type,
    this.elementType
    });

  factory EvidenceVariable.fromJson(Map<String, dynamic> json) => _$EvidenceVariableFromJson(json);
  Map<String, dynamic> toJson() => _$EvidenceVariableToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 257)
class EvidenceVariable_Characteristic {

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

  //  A short, natural language description of the characteristic that could
  // be used to communicate the criteria to an end-user.
  @HiveField(3)
  String description;

  //  Extensions for description
  @HiveField(4)
  Element elementDescription;

  //  Define members of the evidence element using Codes (such as condition,
  // medication, or observation), Expressions ( using an expression language
  // such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  // diagnosis onset in the last year).
  @HiveField(5)
  Reference definitionReference;

  //  Define members of the evidence element using Codes (such as condition,
  // medication, or observation), Expressions ( using an expression language
  // such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  // diagnosis onset in the last year).
  @HiveField(6)
  String definitionCanonical; //  pattern: ^\S*$

  //  Extensions for definitionCanonical
  @HiveField(7)
  Element elementDefinitionCanonical;

  //  Define members of the evidence element using Codes (such as condition,
  // medication, or observation), Expressions ( using an expression language
  // such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  // diagnosis onset in the last year).
  @HiveField(8)
  CodeableConcept definitionCodeableConcept;

  //  Define members of the evidence element using Codes (such as condition,
  // medication, or observation), Expressions ( using an expression language
  // such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  // diagnosis onset in the last year).
  @HiveField(9)
  Expression definitionExpression;

  //  Define members of the evidence element using Codes (such as condition,
  // medication, or observation), Expressions ( using an expression language
  // such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  // diagnosis onset in the last year).
  @HiveField(10)
  DataRequirement definitionDataRequirement;

  //  Define members of the evidence element using Codes (such as condition,
  // medication, or observation), Expressions ( using an expression language
  // such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  // diagnosis onset in the last year).
  @HiveField(11)
  TriggerDefinition definitionTriggerDefinition;

  //  Use UsageContext to define the members of the population, such as Age
  // Ranges, Genders, Settings.
  @HiveField(12)
  List<UsageContext> usageContext;

  //  When true, members with this characteristic are excluded from the
  // element.
  @HiveField(13)
  bool exclude;

  //  Extensions for exclude
  @HiveField(14)
  Element elementExclude;

  //  Indicates what effective period the study covers.
  @HiveField(15)
  String participantEffectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for participantEffectiveDateTime
  @HiveField(16)
  Element elementParticipantEffectiveDateTime;

  //  Indicates what effective period the study covers.
  @HiveField(17)
  Period participantEffectivePeriod;

  //  Indicates what effective period the study covers.
  @HiveField(18)
  Duration participantEffectiveDuration;

  //  Indicates what effective period the study covers.
  @HiveField(19)
  Timing participantEffectiveTiming;

  //  Indicates duration from the participant's study entry.
  @HiveField(20)
  Duration timeFromStart;

  //  Indicates how elements are aggregated within the study effective
  // period.
  @HiveField(21)
  String groupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;

  //  Extensions for groupMeasure
  @HiveField(22)
  Element elementGroupMeasure;

EvidenceVariable_Characteristic(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.definitionReference,
    this.definitionCanonical,
    this.elementDefinitionCanonical,
    this.definitionCodeableConcept,
    this.definitionExpression,
    this.definitionDataRequirement,
    this.definitionTriggerDefinition,
    this.usageContext,
    this.exclude,
    this.elementExclude,
    this.participantEffectiveDateTime,
    this.elementParticipantEffectiveDateTime,
    this.participantEffectivePeriod,
    this.participantEffectiveDuration,
    this.participantEffectiveTiming,
    this.timeFromStart,
    this.groupMeasure,
    this.elementGroupMeasure
    });

  factory EvidenceVariable_Characteristic.fromJson(Map<String, dynamic> json) => _$EvidenceVariable_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$EvidenceVariable_CharacteristicToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EvidenceVariableAdapter extends TypeAdapter<EvidenceVariable> {
  @override
  final typeId = 256;

  @override
  EvidenceVariable read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EvidenceVariable(
      (fields[51] as List)?.cast<EvidenceVariable_Characteristic>(),
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
      date: fields[26] as DateTime,
      elementDate: fields[27] as Element,
      publisher: fields[28] as String,
      elementPublisher: fields[29] as Element,
      contact: (fields[30] as List)?.cast<ContactDetail>(),
      description: fields[31] as String,
      elementDescription: fields[32] as Element,
      note: (fields[33] as List)?.cast<Annotation>(),
      useContext: (fields[34] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[35] as List)?.cast<CodeableConcept>(),
      copyright: fields[36] as String,
      elementCopyright: fields[37] as Element,
      approvalDate: fields[38] as String,
      elementApprovalDate: fields[39] as Element,
      lastReviewDate: fields[40] as String,
      elementLastReviewDate: fields[41] as Element,
      effectivePeriod: fields[42] as Period,
      topic: (fields[43] as List)?.cast<CodeableConcept>(),
      author: (fields[44] as List)?.cast<ContactDetail>(),
      editor: (fields[45] as List)?.cast<ContactDetail>(),
      reviewer: (fields[46] as List)?.cast<ContactDetail>(),
      endorser: (fields[47] as List)?.cast<ContactDetail>(),
      relatedArtifact: (fields[48] as List)?.cast<RelatedArtifact>(),
      type: fields[49] as String,
      elementType: fields[50] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, EvidenceVariable obj) {
    writer
      ..writeByte(52)
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
      ..write(obj.date)
      ..writeByte(27)
      ..write(obj.elementDate)
      ..writeByte(28)
      ..write(obj.publisher)
      ..writeByte(29)
      ..write(obj.elementPublisher)
      ..writeByte(30)
      ..write(obj.contact)
      ..writeByte(31)
      ..write(obj.description)
      ..writeByte(32)
      ..write(obj.elementDescription)
      ..writeByte(33)
      ..write(obj.note)
      ..writeByte(34)
      ..write(obj.useContext)
      ..writeByte(35)
      ..write(obj.jurisdiction)
      ..writeByte(36)
      ..write(obj.copyright)
      ..writeByte(37)
      ..write(obj.elementCopyright)
      ..writeByte(38)
      ..write(obj.approvalDate)
      ..writeByte(39)
      ..write(obj.elementApprovalDate)
      ..writeByte(40)
      ..write(obj.lastReviewDate)
      ..writeByte(41)
      ..write(obj.elementLastReviewDate)
      ..writeByte(42)
      ..write(obj.effectivePeriod)
      ..writeByte(43)
      ..write(obj.topic)
      ..writeByte(44)
      ..write(obj.author)
      ..writeByte(45)
      ..write(obj.editor)
      ..writeByte(46)
      ..write(obj.reviewer)
      ..writeByte(47)
      ..write(obj.endorser)
      ..writeByte(48)
      ..write(obj.relatedArtifact)
      ..writeByte(49)
      ..write(obj.type)
      ..writeByte(50)
      ..write(obj.elementType)
      ..writeByte(51)
      ..write(obj.characteristic);
  }
}

class EvidenceVariable_CharacteristicAdapter
    extends TypeAdapter<EvidenceVariable_Characteristic> {
  @override
  final typeId = 257;

  @override
  EvidenceVariable_Characteristic read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EvidenceVariable_Characteristic(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      description: fields[3] as String,
      elementDescription: fields[4] as Element,
      definitionReference: fields[5] as Reference,
      definitionCanonical: fields[6] as String,
      elementDefinitionCanonical: fields[7] as Element,
      definitionCodeableConcept: fields[8] as CodeableConcept,
      definitionExpression: fields[9] as Expression,
      definitionDataRequirement: fields[10] as DataRequirement,
      definitionTriggerDefinition: fields[11] as TriggerDefinition,
      usageContext: (fields[12] as List)?.cast<UsageContext>(),
      exclude: fields[13] as bool,
      elementExclude: fields[14] as Element,
      participantEffectiveDateTime: fields[15] as String,
      elementParticipantEffectiveDateTime: fields[16] as Element,
      participantEffectivePeriod: fields[17] as Period,
      participantEffectiveDuration: fields[18] as Duration,
      participantEffectiveTiming: fields[19] as Timing,
      timeFromStart: fields[20] as Duration,
      groupMeasure: fields[21] as String,
      elementGroupMeasure: fields[22] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, EvidenceVariable_Characteristic obj) {
    writer
      ..writeByte(23)
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
      ..write(obj.definitionReference)
      ..writeByte(6)
      ..write(obj.definitionCanonical)
      ..writeByte(7)
      ..write(obj.elementDefinitionCanonical)
      ..writeByte(8)
      ..write(obj.definitionCodeableConcept)
      ..writeByte(9)
      ..write(obj.definitionExpression)
      ..writeByte(10)
      ..write(obj.definitionDataRequirement)
      ..writeByte(11)
      ..write(obj.definitionTriggerDefinition)
      ..writeByte(12)
      ..write(obj.usageContext)
      ..writeByte(13)
      ..write(obj.exclude)
      ..writeByte(14)
      ..write(obj.elementExclude)
      ..writeByte(15)
      ..write(obj.participantEffectiveDateTime)
      ..writeByte(16)
      ..write(obj.elementParticipantEffectiveDateTime)
      ..writeByte(17)
      ..write(obj.participantEffectivePeriod)
      ..writeByte(18)
      ..write(obj.participantEffectiveDuration)
      ..writeByte(19)
      ..write(obj.participantEffectiveTiming)
      ..writeByte(20)
      ..write(obj.timeFromStart)
      ..writeByte(21)
      ..write(obj.groupMeasure)
      ..writeByte(22)
      ..write(obj.elementGroupMeasure);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EvidenceVariable _$EvidenceVariableFromJson(Map<String, dynamic> json) {
  return EvidenceVariable(
    (json['characteristic'] as List)
        ?.map((e) => e == null
            ? null
            : EvidenceVariable_Characteristic.fromJson(
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
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EvidenceVariableToJson(EvidenceVariable instance) =>
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
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'characteristic':
          instance.characteristic?.map((e) => e?.toJson())?.toList(),
    };

EvidenceVariable_Characteristic _$EvidenceVariable_CharacteristicFromJson(
    Map<String, dynamic> json) {
  return EvidenceVariable_Characteristic(
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
    definitionReference: json['definitionReference'] == null
        ? null
        : Reference.fromJson(
            json['definitionReference'] as Map<String, dynamic>),
    definitionCanonical: json['definitionCanonical'] as String,
    elementDefinitionCanonical: json['elementDefinitionCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementDefinitionCanonical'] as Map<String, dynamic>),
    definitionCodeableConcept: json['definitionCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['definitionCodeableConcept'] as Map<String, dynamic>),
    definitionExpression: json['definitionExpression'] == null
        ? null
        : Expression.fromJson(
            json['definitionExpression'] as Map<String, dynamic>),
    definitionDataRequirement: json['definitionDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['definitionDataRequirement'] as Map<String, dynamic>),
    definitionTriggerDefinition: json['definitionTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['definitionTriggerDefinition'] as Map<String, dynamic>),
    usageContext: (json['usageContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    exclude: json['exclude'] as bool,
    elementExclude: json['elementExclude'] == null
        ? null
        : Element.fromJson(json['elementExclude'] as Map<String, dynamic>),
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
    timeFromStart: json['timeFromStart'] == null
        ? null
        : Duration.fromJson(json['timeFromStart'] as Map<String, dynamic>),
    groupMeasure: json['groupMeasure'] as String,
    elementGroupMeasure: json['elementGroupMeasure'] == null
        ? null
        : Element.fromJson(json['elementGroupMeasure'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EvidenceVariable_CharacteristicToJson(
        EvidenceVariable_Characteristic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'definitionReference': instance.definitionReference?.toJson(),
      'definitionCanonical': instance.definitionCanonical,
      'elementDefinitionCanonical':
          instance.elementDefinitionCanonical?.toJson(),
      'definitionCodeableConcept': instance.definitionCodeableConcept?.toJson(),
      'definitionExpression': instance.definitionExpression?.toJson(),
      'definitionDataRequirement': instance.definitionDataRequirement?.toJson(),
      'definitionTriggerDefinition':
          instance.definitionTriggerDefinition?.toJson(),
      'usageContext': instance.usageContext?.map((e) => e?.toJson())?.toList(),
      'exclude': instance.exclude,
      'elementExclude': instance.elementExclude?.toJson(),
      'participantEffectiveDateTime': instance.participantEffectiveDateTime,
      'elementParticipantEffectiveDateTime':
          instance.elementParticipantEffectiveDateTime?.toJson(),
      'participantEffectivePeriod':
          instance.participantEffectivePeriod?.toJson(),
      'participantEffectiveDuration':
          instance.participantEffectiveDuration?.toJson(),
      'participantEffectiveTiming':
          instance.participantEffectiveTiming?.toJson(),
      'timeFromStart': instance.timeFromStart?.toJson(),
      'groupMeasure': instance.groupMeasure,
      'elementGroupMeasure': instance.elementGroupMeasure?.toJson(),
    };
