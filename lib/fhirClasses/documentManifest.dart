import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class DocumentManifest {

	static Future<DocumentManifest> newInstance({
		String id,
		Meta meta,
		String implicitRules,
		Element elementImplicitRules,
		String language,
		Element elementLanguage,
		Narrative text,
		List<dynamic> contained,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Identifier masterIdentifier,
		List<Identifier> identifier,
		String status,
		Element elementStatus,
		CodeableConcept type,
		Reference subject,
		DateTime created,
		Element elementCreated,
		List<Reference> author,
		List<Reference> recipient,
		String source,
		Element elementSource,
		String description,
		Element elementDescription,
		List<Reference> content,
		List<DocumentManifest_Related> related}) async {
	DocumentManifest newDocumentManifest = new DocumentManifest(
			id: await newId('DocumentManifest'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			masterIdentifier: masterIdentifier,
			identifier: identifier,
			status: status,
			elementStatus: elementStatus,
			type: type,
			subject: subject,
			created: created,
			elementCreated: elementCreated,
			author: author,
			recipient: recipient,
			source: source,
			elementSource: elementSource,
			description: description,
			elementDescription: elementDescription,
			content: content,
			related: related);
	var documentManifestBox = await Hive.openBox<DocumentManifest>('DocumentManifestBox');
	documentManifestBox.put(newDocumentManifest.id, newDocumentManifest);
	return newDocumentManifest;
}
  final String resourceType= 'DocumentManifest';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier masterIdentifier;
  List<Identifier> identifier;
  String status; // <code> enum: current/superseded/entered-in-error;
  Element elementStatus;
  CodeableConcept type;
  Reference subject;
  DateTime created;
  Element elementCreated;
  List<Reference> author;
  List<Reference> recipient;
  String source;
  Element elementSource;
  String description;
  Element elementDescription;
  List<Reference> content;
  List<DocumentManifest_Related> related;

DocumentManifest(
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
    @required this.content,
    this.related
    });

  factory DocumentManifest.fromJson(Map<String, dynamic> json) => _$DocumentManifestFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentManifestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentManifest_Related {

	static Future<DocumentManifest_Related> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Identifier identifier,
		Reference ref}) async {
	DocumentManifest_Related newDocumentManifest_Related = new DocumentManifest_Related(
			id: await newId('DocumentManifest_Related'),
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			ref: ref);
	var documentManifest_RelatedBox = await Hive.openBox<DocumentManifest_Related>('DocumentManifest_RelatedBox');
	documentManifest_RelatedBox.put(newDocumentManifest_Related.id, newDocumentManifest_Related);
	return newDocumentManifest_Related;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
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
// JsonSerializableGenerator
// **************************************************************************

DocumentManifest _$DocumentManifestFromJson(Map<String, dynamic> json) {
  return DocumentManifest(
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
    content: (json['content'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
