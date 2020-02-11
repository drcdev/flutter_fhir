import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/parameterDefinition.dart';
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
@HiveType(typeId: 344)
class Library {

  //  This is a Library resource
  @HiveField(0)
  final String resourceType= 'Library';

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

  //  An absolute URI that is used to identify this library when it is
  // referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this library is (or will be) published. This URL can be the target
  // of a canonical reference. It SHALL remain the same when the library is
  // stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  A formal identifier that is used to identify this library when it is
  // represented in other formats, or referenced in a specification, model,
  // design or an instance. e.g. CMS or NQF identifiers for a measure
  // artifact. Note that at least one identifier is required for
  // non-experimental active artifacts.
  @HiveField(13)
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the library
  // when it is referenced in a specification, model, design or instance.
  // This is an arbitrary value managed by the library author and is not
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

  //  A natural language name identifying the library. This name should be
  // usable as an identifier for the module by machine processing
  // applications such as code generation.
  @HiveField(16)
  String name;

  //  Extensions for name
  @HiveField(17)
  Element elementName;

  //  A short, descriptive, user-friendly title for the library.
  @HiveField(18)
  String title;

  //  Extensions for title
  @HiveField(19)
  Element elementTitle;

  //  An explanatory or alternate title for the library giving additional
  // information about its content.
  @HiveField(20)
  String subtitle;

  //  Extensions for subtitle
  @HiveField(21)
  Element elementSubtitle;

  //  The status of this library. Enables tracking the life-cycle of the
  // content.
  @HiveField(22)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(23)
  Element elementStatus;

  //  A Boolean value to indicate that this library is authored for testing
  // purposes (or education/evaluation/marketing) and is not intended to be
  // used for genuine usage.
  @HiveField(24)
  bool experimental;

  //  Extensions for experimental
  @HiveField(25)
  Element elementExperimental;

  //  Identifies the type of library such as a Logic Library, Model
  // Definition, Asset Collection, or Module Definition.
  @HiveField(26)
  CodeableConcept type;

  //  A code or group definition that describes the intended subject of the
  // contents of the library.
  @HiveField(27)
  CodeableConcept subjectCodeableConcept;

  //  A code or group definition that describes the intended subject of the
  // contents of the library.
  @HiveField(28)
  Reference subjectReference;

  //  The date  (and optionally time) when the library was published. The
  // date must change when the business version changes and it must change
  // if the status code changes. In addition, it should change when the
  // substantive content of the library changes.
  @HiveField(29)
  DateTime date;

  //  Extensions for date
  @HiveField(30)
  Element elementDate;

  //  The name of the organization or individual that published the library.
  @HiveField(31)
  String publisher;

  //  Extensions for publisher
  @HiveField(32)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(33)
  List<ContactDetail> contact;

  //  A free text natural language description of the library from a
  // consumer's perspective.
  @HiveField(34)
  String description;

  //  Extensions for description
  @HiveField(35)
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate library instances.
  @HiveField(36)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the library is intended to be
  // used.
  @HiveField(37)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this library is needed and why it has been designed
  // as it has.
  @HiveField(38)
  String purpose;

  //  Extensions for purpose
  @HiveField(39)
  Element elementPurpose;

  //  A detailed description of how the library is used from a clinical
  // perspective.
  @HiveField(40)
  String usage;

  //  Extensions for usage
  @HiveField(41)
  Element elementUsage;

  //  A copyright statement relating to the library and/or its contents.
  // Copyright statements are generally legal restrictions on the use and
  // publishing of the library.
  @HiveField(42)
  String copyright;

  //  Extensions for copyright
  @HiveField(43)
  Element elementCopyright;

  //  The date on which the resource content was approved by the publisher.
  // Approval happens once when the content is officially approved for
  // usage.
  @HiveField(44)
  String approvalDate;

  //  Extensions for approvalDate
  @HiveField(45)
  Element elementApprovalDate;

  //  The date on which the resource content was last reviewed. Review
  // happens periodically after approval but does not change the original
  // approval date.
  @HiveField(46)
  String lastReviewDate;

  //  Extensions for lastReviewDate
  @HiveField(47)
  Element elementLastReviewDate;

  //  The period during which the library content was or is planned to be in
  // active use.
  @HiveField(48)
  Period effectivePeriod;

  //  Descriptive topics related to the content of the library. Topics
  // provide a high-level categorization of the library that can be useful
  // for filtering and searching.
  @HiveField(49)
  List<CodeableConcept> topic;

  //  An individiual or organization primarily involved in the creation and
  // maintenance of the content.
  @HiveField(50)
  List<ContactDetail> author;

  //  An individual or organization primarily responsible for internal
  // coherence of the content.
  @HiveField(51)
  List<ContactDetail> editor;

  //  An individual or organization primarily responsible for review of some
  // aspect of the content.
  @HiveField(52)
  List<ContactDetail> reviewer;

  //  An individual or organization responsible for officially endorsing the
  // content for use in some setting.
  @HiveField(53)
  List<ContactDetail> endorser;

  //  Related artifacts such as additional documentation, justification, or
  // bibliographic references.
  @HiveField(54)
  List<RelatedArtifact> relatedArtifact;

  //  The parameter element defines parameters used by the library.
  @HiveField(55)
  List<ParameterDefinition> parameter;

  //  Describes a set of data that must be provided in order to be able to
  // successfully perform the computations defined by the library.
  @HiveField(56)
  List<DataRequirement> dataRequirement;

  //  The content of the library as an Attachment. The content may be a
  // reference to a url, or may be directly embedded as a base-64 string.
  // Either way, the contentType of the attachment determines how to
  // interpret the content.
  @HiveField(57)
  List<Attachment> content;

Library(
  this.type,
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
    this.parameter,
    this.dataRequirement,
    this.content
    });

  factory Library.fromJson(Map<String, dynamic> json) => _$LibraryFromJson(json);
  Map<String, dynamic> toJson() => _$LibraryToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LibraryAdapter extends TypeAdapter<Library> {
  @override
  final typeId = 344;

  @override
  Library read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Library(
      fields[26] as CodeableConcept,
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
      subjectCodeableConcept: fields[27] as CodeableConcept,
      subjectReference: fields[28] as Reference,
      date: fields[29] as DateTime,
      elementDate: fields[30] as Element,
      publisher: fields[31] as String,
      elementPublisher: fields[32] as Element,
      contact: (fields[33] as List)?.cast<ContactDetail>(),
      description: fields[34] as String,
      elementDescription: fields[35] as Element,
      useContext: (fields[36] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[37] as List)?.cast<CodeableConcept>(),
      purpose: fields[38] as String,
      elementPurpose: fields[39] as Element,
      usage: fields[40] as String,
      elementUsage: fields[41] as Element,
      copyright: fields[42] as String,
      elementCopyright: fields[43] as Element,
      approvalDate: fields[44] as String,
      elementApprovalDate: fields[45] as Element,
      lastReviewDate: fields[46] as String,
      elementLastReviewDate: fields[47] as Element,
      effectivePeriod: fields[48] as Period,
      topic: (fields[49] as List)?.cast<CodeableConcept>(),
      author: (fields[50] as List)?.cast<ContactDetail>(),
      editor: (fields[51] as List)?.cast<ContactDetail>(),
      reviewer: (fields[52] as List)?.cast<ContactDetail>(),
      endorser: (fields[53] as List)?.cast<ContactDetail>(),
      relatedArtifact: (fields[54] as List)?.cast<RelatedArtifact>(),
      parameter: (fields[55] as List)?.cast<ParameterDefinition>(),
      dataRequirement: (fields[56] as List)?.cast<DataRequirement>(),
      content: (fields[57] as List)?.cast<Attachment>(),
    );
  }

  @override
  void write(BinaryWriter writer, Library obj) {
    writer
      ..writeByte(58)
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
      ..write(obj.type)
      ..writeByte(27)
      ..write(obj.subjectCodeableConcept)
      ..writeByte(28)
      ..write(obj.subjectReference)
      ..writeByte(29)
      ..write(obj.date)
      ..writeByte(30)
      ..write(obj.elementDate)
      ..writeByte(31)
      ..write(obj.publisher)
      ..writeByte(32)
      ..write(obj.elementPublisher)
      ..writeByte(33)
      ..write(obj.contact)
      ..writeByte(34)
      ..write(obj.description)
      ..writeByte(35)
      ..write(obj.elementDescription)
      ..writeByte(36)
      ..write(obj.useContext)
      ..writeByte(37)
      ..write(obj.jurisdiction)
      ..writeByte(38)
      ..write(obj.purpose)
      ..writeByte(39)
      ..write(obj.elementPurpose)
      ..writeByte(40)
      ..write(obj.usage)
      ..writeByte(41)
      ..write(obj.elementUsage)
      ..writeByte(42)
      ..write(obj.copyright)
      ..writeByte(43)
      ..write(obj.elementCopyright)
      ..writeByte(44)
      ..write(obj.approvalDate)
      ..writeByte(45)
      ..write(obj.elementApprovalDate)
      ..writeByte(46)
      ..write(obj.lastReviewDate)
      ..writeByte(47)
      ..write(obj.elementLastReviewDate)
      ..writeByte(48)
      ..write(obj.effectivePeriod)
      ..writeByte(49)
      ..write(obj.topic)
      ..writeByte(50)
      ..write(obj.author)
      ..writeByte(51)
      ..write(obj.editor)
      ..writeByte(52)
      ..write(obj.reviewer)
      ..writeByte(53)
      ..write(obj.endorser)
      ..writeByte(54)
      ..write(obj.relatedArtifact)
      ..writeByte(55)
      ..write(obj.parameter)
      ..writeByte(56)
      ..write(obj.dataRequirement)
      ..writeByte(57)
      ..write(obj.content);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Library _$LibraryFromJson(Map<String, dynamic> json) {
  return Library(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
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
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : ParameterDefinition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dataRequirement: (json['dataRequirement'] as List)
        ?.map((e) => e == null
            ? null
            : DataRequirement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    content: (json['content'] as List)
        ?.map((e) =>
            e == null ? null : Attachment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LibraryToJson(Library instance) => <String, dynamic>{
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
      'type': instance.type?.toJson(),
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
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
      'dataRequirement':
          instance.dataRequirement?.map((e) => e?.toJson())?.toList(),
      'content': instance.content?.map((e) => e?.toJson())?.toList(),
    };
