import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class DetectedIssue {


	static Future<DetectedIssue> newInstance({
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
		List<Identifier> identifier,
		String status,
		Element elementStatus,
		CodeableConcept code,
		String severity,
		Element elementSeverity,
		Reference patient,
		String identifiedDateTime,
		Element elementIdentifiedDateTime,
		Period identifiedPeriod,
		Reference author,
		List<Reference> implicated,
		List<DetectedIssue_Evidence> evidence,
		String detail,
		Element elementDetail,
		String reference,
		Element elementReference,
		List<DetectedIssue_Mitigation> mitigation}) async {
	var fhirDb = new DatabaseHelper();
	DetectedIssue newDetectedIssue = new DetectedIssue(
			resourceType: resourceType,
			id: await fhirDb.newResourceId('DetectedIssue'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			status: status,
			elementStatus: elementStatus,
			code: code,
			severity: severity,
			elementSeverity: elementSeverity,
			patient: patient,
			identifiedDateTime: identifiedDateTime,
			elementIdentifiedDateTime: elementIdentifiedDateTime,
			identifiedPeriod: identifiedPeriod,
			author: author,
			implicated: implicated,
			evidence: evidence,
			detail: detail,
			elementDetail: elementDetail,
			reference: reference,
			elementReference: elementReference,
			mitigation: mitigation,
);
	int saved = await fhirDb.saveResource(newDetectedIssue);
	return newDetectedIssue;
}

save () async {
	var fhirDb = new DatabaseHelper();
	int saved = await fhirDb.save(this);
}
  String resourceType= 'DetectedIssue';
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
  List<Identifier> identifier;
  String status;
  Element elementStatus;
  CodeableConcept code;
  String severity; // <code> enum: high/moderate/low;
  Element elementSeverity;
  Reference patient;
  String identifiedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementIdentifiedDateTime;
  Period identifiedPeriod;
  Reference author;
  List<Reference> implicated;
  List<DetectedIssue_Evidence> evidence;
  String detail;
  Element elementDetail;
  String reference;
  Element elementReference;
  List<DetectedIssue_Mitigation> mitigation;

DetectedIssue(
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
    this.identifier,
    this.status,
    this.elementStatus,
    this.code,
    this.severity,
    this.elementSeverity,
    this.patient,
    this.identifiedDateTime,
    this.elementIdentifiedDateTime,
    this.identifiedPeriod,
    this.author,
    this.implicated,
    this.evidence,
    this.detail,
    this.elementDetail,
    this.reference,
    this.elementReference,
    this.mitigation
    });

  factory DetectedIssue.fromJson(Map<String, dynamic> json) => _$DetectedIssueFromJson(json);
  Map<String, dynamic> toJson() => _$DetectedIssueToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetectedIssue_Evidence {


	static Future<DetectedIssue_Evidence> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<CodeableConcept> code,
		List<Reference> detail}) async {
	var fhirDb = new DatabaseHelper();
	DetectedIssue_Evidence newDetectedIssue_Evidence = new DetectedIssue_Evidence(
			id: await fhirDb.newResourceId('DetectedIssue_Evidence'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			detail: detail,
);
	return newDetectedIssue_Evidence;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> code;
  List<Reference> detail;

DetectedIssue_Evidence(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.detail
    });

  factory DetectedIssue_Evidence.fromJson(Map<String, dynamic> json) => _$DetectedIssue_EvidenceFromJson(json);
  Map<String, dynamic> toJson() => _$DetectedIssue_EvidenceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetectedIssue_Mitigation {


	static Future<DetectedIssue_Mitigation> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept action,
		DateTime date,
		Element elementDate,
		Reference author}) async {
	var fhirDb = new DatabaseHelper();
	DetectedIssue_Mitigation newDetectedIssue_Mitigation = new DetectedIssue_Mitigation(
			id: await fhirDb.newResourceId('DetectedIssue_Mitigation'),
			extension: extension,
			modifierExtension: modifierExtension,
			action: action,
			date: date,
			elementDate: elementDate,
			author: author,
);
	return newDetectedIssue_Mitigation;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept action;
  DateTime date;
  Element elementDate;
  Reference author;

DetectedIssue_Mitigation(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.action,
    this.date,
    this.elementDate,
    this.author
    });

  factory DetectedIssue_Mitigation.fromJson(Map<String, dynamic> json) => _$DetectedIssue_MitigationFromJson(json);
  Map<String, dynamic> toJson() => _$DetectedIssue_MitigationToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetectedIssue _$DetectedIssueFromJson(Map<String, dynamic> json) {
  return DetectedIssue(
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    severity: json['severity'] as String,
    elementSeverity: json['elementSeverity'] == null
        ? null
        : Element.fromJson(json['elementSeverity'] as Map<String, dynamic>),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    identifiedDateTime: json['identifiedDateTime'] as String,
    elementIdentifiedDateTime: json['elementIdentifiedDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementIdentifiedDateTime'] as Map<String, dynamic>),
    identifiedPeriod: json['identifiedPeriod'] == null
        ? null
        : Period.fromJson(json['identifiedPeriod'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
    implicated: (json['implicated'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evidence: (json['evidence'] as List)
        ?.map((e) => e == null
            ? null
            : DetectedIssue_Evidence.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    detail: json['detail'] as String,
    elementDetail: json['elementDetail'] == null
        ? null
        : Element.fromJson(json['elementDetail'] as Map<String, dynamic>),
    reference: json['reference'] as String,
    elementReference: json['elementReference'] == null
        ? null
        : Element.fromJson(json['elementReference'] as Map<String, dynamic>),
    mitigation: (json['mitigation'] as List)
        ?.map((e) => e == null
            ? null
            : DetectedIssue_Mitigation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DetectedIssueToJson(DetectedIssue instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'code': instance.code?.toJson(),
      'severity': instance.severity,
      'elementSeverity': instance.elementSeverity?.toJson(),
      'patient': instance.patient?.toJson(),
      'identifiedDateTime': instance.identifiedDateTime,
      'elementIdentifiedDateTime': instance.elementIdentifiedDateTime?.toJson(),
      'identifiedPeriod': instance.identifiedPeriod?.toJson(),
      'author': instance.author?.toJson(),
      'implicated': instance.implicated?.map((e) => e?.toJson())?.toList(),
      'evidence': instance.evidence?.map((e) => e?.toJson())?.toList(),
      'detail': instance.detail,
      'elementDetail': instance.elementDetail?.toJson(),
      'reference': instance.reference,
      'elementReference': instance.elementReference?.toJson(),
      'mitigation': instance.mitigation?.map((e) => e?.toJson())?.toList(),
    };

DetectedIssue_Evidence _$DetectedIssue_EvidenceFromJson(
    Map<String, dynamic> json) {
  return DetectedIssue_Evidence(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    detail: (json['detail'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DetectedIssue_EvidenceToJson(
        DetectedIssue_Evidence instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };

DetectedIssue_Mitigation _$DetectedIssue_MitigationFromJson(
    Map<String, dynamic> json) {
  return DetectedIssue_Mitigation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: json['action'] == null
        ? null
        : CodeableConcept.fromJson(json['action'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DetectedIssue_MitigationToJson(
        DetectedIssue_Mitigation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'author': instance.author?.toJson(),
    };
