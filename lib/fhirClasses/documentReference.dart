import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 230)
class DocumentReference {

  //  This is a DocumentReference resource
  @HiveField(0)
  final String resourceType= 'DocumentReference';

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

  //  Document identifier as assigned by the source of the document. This
  // identifier is specific to this version of the document. This unique
  // identifier may be used elsewhere to identify this version of the
  // document.
  @HiveField(11)
  Identifier masterIdentifier;

  //  Other identifiers associated with the document, including version
  // independent identifiers.
  @HiveField(12)
  List<Identifier> identifier;

  //  The status of this document reference.
  @HiveField(13)
  String status; // <code> enum: current/superseded/entered-in-error;

  //  Extensions for status
  @HiveField(14)
  Element elementStatus;

  //  The status of the underlying document.
  @HiveField(15)
  String docStatus;

  //  Extensions for docStatus
  @HiveField(16)
  Element elementDocStatus;

  //  Specifies the particular kind of document referenced  (e.g. History
  // and Physical, Discharge Summary, Progress Note). This usually equates
  // to the purpose of making the document referenced.
  @HiveField(17)
  CodeableConcept type;

  //  A categorization for the type of document referenced - helps for
  // indexing and searching. This may be implied by or derived from the code
  // specified in the DocumentReference.type.
  @HiveField(18)
  List<CodeableConcept> category;

  //  Who or what the document is about. The document can be about a person,
  // (patient or healthcare practitioner), a device (e.g. a machine) or even
  // a group of subjects (such as a document about a herd of farm animals,
  // or a set of patients that share a common exposure).
  @HiveField(19)
  Reference subject;

  //  When the document reference was created.
  @HiveField(20)
  DateTime date;

  //  Extensions for date
  @HiveField(21)
  Element elementDate;

  //  Identifies who is responsible for adding the information to the
  // document.
  @HiveField(22)
  List<Reference> author;

  //  Which person or organization authenticates that this document is
  // valid.
  @HiveField(23)
  Reference authenticator;

  //  Identifies the organization or group who is responsible for ongoing
  // maintenance of and access to the document.
  @HiveField(24)
  Reference custodian;

  //  Relationships that this document has with other document references
  // that already exist.
  @HiveField(25)
  List<DocumentReference_RelatesTo> relatesTo;

  //  Human-readable description of the source document.
  @HiveField(26)
  String description;

  //  Extensions for description
  @HiveField(27)
  Element elementDescription;

  //  A set of Security-Tag codes specifying the level of privacy/security
  // of the Document. Note that DocumentReference.meta.security contains the
  // security labels of the "reference" to the document, while
  // DocumentReference.securityLabel contains a snapshot of the security
  // labels on the document the reference refers to.
  @HiveField(28)
  List<CodeableConcept> securityLabel;

  //  The document and format referenced. There may be multiple content
  // element repetitions, each with a different format.
  @HiveField(29)
  List<DocumentReference_Content> content;

  //  The clinical context in which the document was prepared.
  @HiveField(30)
  DocumentReference_Context context;

DocumentReference(
  this.content,
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
    this.masterIdentifier,
    this.identifier,
    this.status,
    this.elementStatus,
    this.docStatus,
    this.elementDocStatus,
    this.type,
    this.category,
    this.subject,
    this.date,
    this.elementDate,
    this.author,
    this.authenticator,
    this.custodian,
    this.relatesTo,
    this.description,
    this.elementDescription,
    this.securityLabel,
    this.context
    });

  factory DocumentReference.fromJson(Map<String, dynamic> json) => _$DocumentReferenceFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReferenceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentReference_RelatesTo {

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

  //  The type of relationship that this document has with anther document.
  String code; // <code> enum: replaces/transforms/signs/appends;

  //  Extensions for code
  Element elementCode;

  //  The target document of this relationship.
  Reference target;

DocumentReference_RelatesTo(
  this.target,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode
    });

  factory DocumentReference_RelatesTo.fromJson(Map<String, dynamic> json) => _$DocumentReference_RelatesToFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReference_RelatesToToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentReference_Content {

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

  //  The document or URL of the document along with critical metadata to
  // prove content has integrity.
  Attachment attachment;

  //  An identifier of the document encoding, structure, and template that
  // the document conforms to beyond the base format indicated in the
  // mimeType.
  Coding format;

DocumentReference_Content(
  this.attachment,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.format
    });

  factory DocumentReference_Content.fromJson(Map<String, dynamic> json) => _$DocumentReference_ContentFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReference_ContentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentReference_Context {

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

  //  Describes the clinical encounter or type of care that the document
  // content is associated with.
  List<Reference> encounter;

  //  This list of codes represents the main clinical acts, such as a
  // colonoscopy or an appendectomy, being documented. In some cases, the
  // event is inherent in the type Code, such as a "History and Physical
  // Report" in which the procedure being documented is necessarily a
  // "History and Physical" act.
  List<CodeableConcept> event;

  //  The time period over which the service that is described by the
  // document was provided.
  Period period;

  //  The kind of facility where the patient was seen.
  CodeableConcept facilityType;

  //  This property may convey specifics about the practice setting where
  // the content was created, often reflecting the clinical specialty.
  CodeableConcept practiceSetting;

  //  The Patient Information as known when the document was published. May
  // be a reference to a version specific, or contained.
  Reference sourcePatientInfo;

  //  Related identifiers or resources associated with the
  // DocumentReference.
  List<Reference> related;

DocumentReference_Context(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.encounter,
    this.event,
    this.period,
    this.facilityType,
    this.practiceSetting,
    this.sourcePatientInfo,
    this.related
    });

  factory DocumentReference_Context.fromJson(Map<String, dynamic> json) => _$DocumentReference_ContextFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReference_ContextToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DocumentReferenceAdapter extends TypeAdapter<DocumentReference> {
  @override
  final typeId = 230;

  @override
  DocumentReference read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DocumentReference(
      (fields[29] as List)?.cast<DocumentReference_Content>(),
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
      masterIdentifier: fields[11] as Identifier,
      identifier: (fields[12] as List)?.cast<Identifier>(),
      status: fields[13] as String,
      elementStatus: fields[14] as Element,
      docStatus: fields[15] as String,
      elementDocStatus: fields[16] as Element,
      type: fields[17] as CodeableConcept,
      category: (fields[18] as List)?.cast<CodeableConcept>(),
      subject: fields[19] as Reference,
      date: fields[20] as DateTime,
      elementDate: fields[21] as Element,
      author: (fields[22] as List)?.cast<Reference>(),
      authenticator: fields[23] as Reference,
      custodian: fields[24] as Reference,
      relatesTo: (fields[25] as List)?.cast<DocumentReference_RelatesTo>(),
      description: fields[26] as String,
      elementDescription: fields[27] as Element,
      securityLabel: (fields[28] as List)?.cast<CodeableConcept>(),
      context: fields[30] as DocumentReference_Context,
    );
  }

  @override
  void write(BinaryWriter writer, DocumentReference obj) {
    writer
      ..writeByte(31)
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
      ..write(obj.masterIdentifier)
      ..writeByte(12)
      ..write(obj.identifier)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.elementStatus)
      ..writeByte(15)
      ..write(obj.docStatus)
      ..writeByte(16)
      ..write(obj.elementDocStatus)
      ..writeByte(17)
      ..write(obj.type)
      ..writeByte(18)
      ..write(obj.category)
      ..writeByte(19)
      ..write(obj.subject)
      ..writeByte(20)
      ..write(obj.date)
      ..writeByte(21)
      ..write(obj.elementDate)
      ..writeByte(22)
      ..write(obj.author)
      ..writeByte(23)
      ..write(obj.authenticator)
      ..writeByte(24)
      ..write(obj.custodian)
      ..writeByte(25)
      ..write(obj.relatesTo)
      ..writeByte(26)
      ..write(obj.description)
      ..writeByte(27)
      ..write(obj.elementDescription)
      ..writeByte(28)
      ..write(obj.securityLabel)
      ..writeByte(29)
      ..write(obj.content)
      ..writeByte(30)
      ..write(obj.context);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentReference _$DocumentReferenceFromJson(Map<String, dynamic> json) {
  return DocumentReference(
    (json['content'] as List)
        ?.map((e) => e == null
            ? null
            : DocumentReference_Content.fromJson(e as Map<String, dynamic>))
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
    masterIdentifier: json['masterIdentifier'] == null
        ? null
        : Identifier.fromJson(json['masterIdentifier'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    docStatus: json['docStatus'] as String,
    elementDocStatus: json['elementDocStatus'] == null
        ? null
        : Element.fromJson(json['elementDocStatus'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    author: (json['author'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authenticator: json['authenticator'] == null
        ? null
        : Reference.fromJson(json['authenticator'] as Map<String, dynamic>),
    custodian: json['custodian'] == null
        ? null
        : Reference.fromJson(json['custodian'] as Map<String, dynamic>),
    relatesTo: (json['relatesTo'] as List)
        ?.map((e) => e == null
            ? null
            : DocumentReference_RelatesTo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    securityLabel: (json['securityLabel'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    context: json['context'] == null
        ? null
        : DocumentReference_Context.fromJson(
            json['context'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DocumentReferenceToJson(DocumentReference instance) =>
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
      'masterIdentifier': instance.masterIdentifier?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'docStatus': instance.docStatus,
      'elementDocStatus': instance.elementDocStatus?.toJson(),
      'type': instance.type?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'authenticator': instance.authenticator?.toJson(),
      'custodian': instance.custodian?.toJson(),
      'relatesTo': instance.relatesTo?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'securityLabel':
          instance.securityLabel?.map((e) => e?.toJson())?.toList(),
      'content': instance.content?.map((e) => e?.toJson())?.toList(),
      'context': instance.context?.toJson(),
    };

DocumentReference_RelatesTo _$DocumentReference_RelatesToFromJson(
    Map<String, dynamic> json) {
  return DocumentReference_RelatesTo(
    json['target'] == null
        ? null
        : Reference.fromJson(json['target'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DocumentReference_RelatesToToJson(
        DocumentReference_RelatesTo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'target': instance.target?.toJson(),
    };

DocumentReference_Content _$DocumentReference_ContentFromJson(
    Map<String, dynamic> json) {
  return DocumentReference_Content(
    json['attachment'] == null
        ? null
        : Attachment.fromJson(json['attachment'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    format: json['format'] == null
        ? null
        : Coding.fromJson(json['format'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DocumentReference_ContentToJson(
        DocumentReference_Content instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'attachment': instance.attachment?.toJson(),
      'format': instance.format?.toJson(),
    };

DocumentReference_Context _$DocumentReference_ContextFromJson(
    Map<String, dynamic> json) {
  return DocumentReference_Context(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    encounter: (json['encounter'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    event: (json['event'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    facilityType: json['facilityType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['facilityType'] as Map<String, dynamic>),
    practiceSetting: json['practiceSetting'] == null
        ? null
        : CodeableConcept.fromJson(
            json['practiceSetting'] as Map<String, dynamic>),
    sourcePatientInfo: json['sourcePatientInfo'] == null
        ? null
        : Reference.fromJson(json['sourcePatientInfo'] as Map<String, dynamic>),
    related: (json['related'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DocumentReference_ContextToJson(
        DocumentReference_Context instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'encounter': instance.encounter?.map((e) => e?.toJson())?.toList(),
      'event': instance.event?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'facilityType': instance.facilityType?.toJson(),
      'practiceSetting': instance.practiceSetting?.toJson(),
      'sourcePatientInfo': instance.sourcePatientInfo?.toJson(),
      'related': instance.related?.map((e) => e?.toJson())?.toList(),
    };
