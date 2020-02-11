import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 96)
class DocumentManifest {

  //  This is a DocumentManifest resource
  @HiveField(0)
  final String resourceType= 'DocumentManifest';

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

  //  A single identifier that uniquely identifies this manifest.
  // Principally used to refer to the manifest in non-FHIR contexts.
  @HiveField(11)
  Identifier masterIdentifier;

  //  Other identifiers associated with the document manifest, including
  // version independent  identifiers.
  @HiveField(12)
  List<Identifier> identifier;

  //  The status of this document manifest.
  @HiveField(13)
  String status; // <code> enum: current/superseded/entered-in-error;

  //  Extensions for status
  @HiveField(14)
  Element elementStatus;

  //  The code specifying the type of clinical activity that resulted in
  // placing the associated content into the DocumentManifest.
  @HiveField(15)
  CodeableConcept type;

  //  Who or what the set of documents is about. The documents can be about
  // a person, (patient or healthcare practitioner), a device (i.e. machine)
  // or even a group of subjects (such as a document about a herd of farm
  // animals, or a set of patients that share a common exposure). If the
  // documents cross more than one subject, then more than one subject is
  // allowed here (unusual use case).
  @HiveField(16)
  Reference subject;

  //  When the document manifest was created for submission to the server
  // (not necessarily the same thing as the actual resource last modified
  // time, since it may be modified, replicated, etc.).
  @HiveField(17)
  DateTime created;

  //  Extensions for created
  @HiveField(18)
  Element elementCreated;

  //  Identifies who is the author of the manifest. Manifest author is not
  // necessarly the author of the references included.
  @HiveField(19)
  List<Reference> author;

  //  A patient, practitioner, or organization for which this set of
  // documents is intended.
  @HiveField(20)
  List<Reference> recipient;

  //  Identifies the source system, application, or software that produced
  // the document manifest.
  @HiveField(21)
  String source;

  //  Extensions for source
  @HiveField(22)
  Element elementSource;

  //  Human-readable description of the source document. This is sometimes
  // known as the "title".
  @HiveField(23)
  String description;

  //  Extensions for description
  @HiveField(24)
  Element elementDescription;

  //  The list of Resources that consist of the parts of this manifest.
  @HiveField(25)
  List<Reference> content;

  //  Related identifiers or resources associated with the DocumentManifest.
  @HiveField(26)
  List<DocumentManifest_Related> related;

DocumentManifest(
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
    this.type,
    this.subject,
    this.created,
    this.elementCreated,
    this.author,
    this.recipient,
    this.source,
    this.elementSource,
    this.description,
    this.elementDescription,
    this.related
    });

  factory DocumentManifest.fromJson(Map<String, dynamic> json) => _$DocumentManifestFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentManifestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentManifest_Related {

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

  //  Related identifier to this DocumentManifest.  For example, Order
  // numbers, accession numbers, XDW workflow numbers.
  Identifier identifier;

  //  Related Resource to this DocumentManifest. For example, Order,
  // ServiceRequest,  Procedure, EligibilityRequest, etc.
  Reference ref;

DocumentManifest_Related(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.ref
    });

  factory DocumentManifest_Related.fromJson(Map<String, dynamic> json) => _$DocumentManifest_RelatedFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentManifest_RelatedToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DocumentManifestAdapter extends TypeAdapter<DocumentManifest> {
  @override
  final typeId = 96;

  @override
  DocumentManifest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DocumentManifest(
      (fields[25] as List)?.cast<Reference>(),
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
      type: fields[15] as CodeableConcept,
      subject: fields[16] as Reference,
      created: fields[17] as DateTime,
      elementCreated: fields[18] as Element,
      author: (fields[19] as List)?.cast<Reference>(),
      recipient: (fields[20] as List)?.cast<Reference>(),
      source: fields[21] as String,
      elementSource: fields[22] as Element,
      description: fields[23] as String,
      elementDescription: fields[24] as Element,
      related: (fields[26] as List)?.cast<DocumentManifest_Related>(),
    );
  }

  @override
  void write(BinaryWriter writer, DocumentManifest obj) {
    writer
      ..writeByte(27)
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
      ..write(obj.type)
      ..writeByte(16)
      ..write(obj.subject)
      ..writeByte(17)
      ..write(obj.created)
      ..writeByte(18)
      ..write(obj.elementCreated)
      ..writeByte(19)
      ..write(obj.author)
      ..writeByte(20)
      ..write(obj.recipient)
      ..writeByte(21)
      ..write(obj.source)
      ..writeByte(22)
      ..write(obj.elementSource)
      ..writeByte(23)
      ..write(obj.description)
      ..writeByte(24)
      ..write(obj.elementDescription)
      ..writeByte(25)
      ..write(obj.content)
      ..writeByte(26)
      ..write(obj.related);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentManifest _$DocumentManifestFromJson(Map<String, dynamic> json) {
  return DocumentManifest(
    (json['content'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
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
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    author: (json['author'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    recipient: (json['recipient'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    source: json['source'] as String,
    elementSource: json['elementSource'] == null
        ? null
        : Element.fromJson(json['elementSource'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    related: (json['related'] as List)
        ?.map((e) => e == null
            ? null
            : DocumentManifest_Related.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DocumentManifestToJson(DocumentManifest instance) =>
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
      'type': instance.type?.toJson(),
      'subject': instance.subject?.toJson(),
      'created': instance.created?.toIso8601String(),
      'elementCreated': instance.elementCreated?.toJson(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'recipient': instance.recipient?.map((e) => e?.toJson())?.toList(),
      'source': instance.source,
      'elementSource': instance.elementSource?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'content': instance.content?.map((e) => e?.toJson())?.toList(),
      'related': instance.related?.map((e) => e?.toJson())?.toList(),
    };

DocumentManifest_Related _$DocumentManifest_RelatedFromJson(
    Map<String, dynamic> json) {
  return DocumentManifest_Related(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    ref: json['ref'] == null
        ? null
        : Reference.fromJson(json['ref'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DocumentManifest_RelatedToJson(
        DocumentManifest_Related instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'ref': instance.ref?.toJson(),
    };
