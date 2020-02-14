import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class DocumentReference {

	static Future<DocumentReference> newInstance({
		String  resourceType,
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
		String docStatus,
		Element elementDocStatus,
		CodeableConcept type,
		List<CodeableConcept> category,
		Reference subject,
		DateTime date,
		Element elementDate,
		List<Reference> author,
		Reference authenticator,
		Reference custodian,
		List<DocumentReference_RelatesTo> relatesTo,
		String description,
		Element elementDescription,
		List<CodeableConcept> securityLabel,
		List<DocumentReference_Content> content,
		DocumentReference_Context context}) async {
	var fhirDb = new DatabaseHelper();
	DocumentReference newDocumentReference = new DocumentReference(
			resourceType: resourceType,
			id: await fhirDb.newResourceId('DocumentReference'),
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
			docStatus: docStatus,
			elementDocStatus: elementDocStatus,
			type: type,
			category: category,
			subject: subject,
			date: date,
			elementDate: elementDate,
			author: author,
			authenticator: authenticator,
			custodian: custodian,
			relatesTo: relatesTo,
			description: description,
			elementDescription: elementDescription,
			securityLabel: securityLabel,
			content: content,
			context: context,
);
	int saved = await fhirDb.saveResource(newDocumentReference);
	return newDocumentReference;
}
  String resourceType= 'DocumentReference';
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
  String docStatus;
  Element elementDocStatus;
  CodeableConcept type;
  List<CodeableConcept> category;
  Reference subject;
  DateTime date;
  Element elementDate;
  List<Reference> author;
  Reference authenticator;
  Reference custodian;
  List<DocumentReference_RelatesTo> relatesTo;
  String description;
  Element elementDescription;
  List<CodeableConcept> securityLabel;
  List<DocumentReference_Content> content;
  DocumentReference_Context context;

DocumentReference(
  {@required this.resourceType,
    this.id,
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
    @required this.content,
    this.context
    });

  factory DocumentReference.fromJson(Map<String, dynamic> json) => _$DocumentReferenceFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReferenceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentReference_RelatesTo {

	static Future<DocumentReference_RelatesTo> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String code,
		Element elementCode,
		Reference target}) async {
	var fhirDb = new DatabaseHelper();
	DocumentReference_RelatesTo newDocumentReference_RelatesTo = new DocumentReference_RelatesTo(
			id: await fhirDb.newResourceId('DocumentReference_RelatesTo'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			elementCode: elementCode,
			target: target,
);
	int saved = await fhirDb.saveResource(newDocumentReference_RelatesTo);
	return newDocumentReference_RelatesTo;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code; // <code> enum: replaces/transforms/signs/appends;
  Element elementCode;
  Reference target;

DocumentReference_RelatesTo(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    @required this.target
    });

  factory DocumentReference_RelatesTo.fromJson(Map<String, dynamic> json) => _$DocumentReference_RelatesToFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReference_RelatesToToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentReference_Content {

	static Future<DocumentReference_Content> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Attachment attachment,
		Coding format}) async {
	var fhirDb = new DatabaseHelper();
	DocumentReference_Content newDocumentReference_Content = new DocumentReference_Content(
			id: await fhirDb.newResourceId('DocumentReference_Content'),
			extension: extension,
			modifierExtension: modifierExtension,
			attachment: attachment,
			format: format,
);
	int saved = await fhirDb.saveResource(newDocumentReference_Content);
	return newDocumentReference_Content;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Attachment attachment;
  Coding format;

DocumentReference_Content(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.attachment,
    this.format
    });

  factory DocumentReference_Content.fromJson(Map<String, dynamic> json) => _$DocumentReference_ContentFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReference_ContentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentReference_Context {

	static Future<DocumentReference_Context> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<Reference> encounter,
		List<CodeableConcept> event,
		Period period,
		CodeableConcept facilityType,
		CodeableConcept practiceSetting,
		Reference sourcePatientInfo,
		List<Reference> related}) async {
	var fhirDb = new DatabaseHelper();
	DocumentReference_Context newDocumentReference_Context = new DocumentReference_Context(
			id: await fhirDb.newResourceId('DocumentReference_Context'),
			extension: extension,
			modifierExtension: modifierExtension,
			encounter: encounter,
			event: event,
			period: period,
			facilityType: facilityType,
			practiceSetting: practiceSetting,
			sourcePatientInfo: sourcePatientInfo,
			related: related,
);
	int saved = await fhirDb.saveResource(newDocumentReference_Context);
	return newDocumentReference_Context;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Reference> encounter;
  List<CodeableConcept> event;
  Period period;
  CodeableConcept facilityType;
  CodeableConcept practiceSetting;
  Reference sourcePatientInfo;
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
// JsonSerializableGenerator
// **************************************************************************

DocumentReference _$DocumentReferenceFromJson(Map<String, dynamic> json) {
  return DocumentReference(
    resourceType: json['resourceType'] as String,
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
    content: (json['content'] as List)
        ?.map((e) => e == null
            ? null
            : DocumentReference_Content.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    context: json['context'] == null
        ? null
        : DocumentReference_Context.fromJson(
            json['context'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DocumentReferenceToJson(DocumentReference instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
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
    target: json['target'] == null
        ? null
        : Reference.fromJson(json['target'] as Map<String, dynamic>),
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
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attachment: json['attachment'] == null
        ? null
        : Attachment.fromJson(json['attachment'] as Map<String, dynamic>),
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
