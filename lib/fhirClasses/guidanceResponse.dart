import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class GuidanceResponse {

	static Future<GuidanceResponse> newInstance({
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
		Identifier requestIdentifier,
		List<Identifier> identifier,
		String moduleUri,
		Element elementModuleUri,
		String moduleCanonical,
		Element elementModuleCanonical,
		CodeableConcept moduleCodeableConcept,
		String status,
		Element elementStatus,
		Reference subject,
		Reference encounter,
		DateTime occurrenceDateTime,
		Element elementOccurrenceDateTime,
		Reference performer,
		List<CodeableConcept> reasonCode,
		List<Reference> reasonReference,
		List<Annotation> note,
		List<Reference> evaluationMessage,
		Reference outputParameters,
		Reference result,
		List<DataRequirement> dataRequirement}) async {
	GuidanceResponse newGuidanceResponse = new GuidanceResponse(
			id: await newId('GuidanceResponse'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			requestIdentifier: requestIdentifier,
			identifier: identifier,
			moduleUri: moduleUri,
			elementModuleUri: elementModuleUri,
			moduleCanonical: moduleCanonical,
			elementModuleCanonical: elementModuleCanonical,
			moduleCodeableConcept: moduleCodeableConcept,
			status: status,
			elementStatus: elementStatus,
			subject: subject,
			encounter: encounter,
			occurrenceDateTime: occurrenceDateTime,
			elementOccurrenceDateTime: elementOccurrenceDateTime,
			performer: performer,
			reasonCode: reasonCode,
			reasonReference: reasonReference,
			note: note,
			evaluationMessage: evaluationMessage,
			outputParameters: outputParameters,
			result: result,
			dataRequirement: dataRequirement);
	var guidanceResponseBox = await Hive.openBox<GuidanceResponse>('GuidanceResponseBox');
	guidanceResponseBox.put(newGuidanceResponse.id, newGuidanceResponse);
	return newGuidanceResponse;
}
  final String resourceType= 'GuidanceResponse';
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
  Identifier requestIdentifier;
  List<Identifier> identifier;
  String moduleUri; //  pattern: ^\S*$
  Element elementModuleUri;
  String moduleCanonical; //  pattern: ^\S*$
  Element elementModuleCanonical;
  CodeableConcept moduleCodeableConcept;
  String status; // <code> enum: success/data-requested/data-required/in-progress/failure/entered-in-error;
  Element elementStatus;
  Reference subject;
  Reference encounter;
  DateTime occurrenceDateTime;
  Element elementOccurrenceDateTime;
  Reference performer;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Annotation> note;
  List<Reference> evaluationMessage;
  Reference outputParameters;
  Reference result;
  List<DataRequirement> dataRequirement;

GuidanceResponse(
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
    this.requestIdentifier,
    this.identifier,
    this.moduleUri,
    this.elementModuleUri,
    this.moduleCanonical,
    this.elementModuleCanonical,
    this.moduleCodeableConcept,
    this.status,
    this.elementStatus,
    this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.evaluationMessage,
    this.outputParameters,
    this.result,
    this.dataRequirement
    });

  factory GuidanceResponse.fromJson(Map<String, dynamic> json) => _$GuidanceResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GuidanceResponseToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuidanceResponse _$GuidanceResponseFromJson(Map<String, dynamic> json) {
  return GuidanceResponse(
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
    requestIdentifier: json['requestIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['requestIdentifier'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    moduleUri: json['moduleUri'] as String,
    elementModuleUri: json['elementModuleUri'] == null
        ? null
        : Element.fromJson(json['elementModuleUri'] as Map<String, dynamic>),
    moduleCanonical: json['moduleCanonical'] as String,
    elementModuleCanonical: json['elementModuleCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementModuleCanonical'] as Map<String, dynamic>),
    moduleCodeableConcept: json['moduleCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['moduleCodeableConcept'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    occurrenceDateTime: json['occurrenceDateTime'] == null
        ? null
        : DateTime.parse(json['occurrenceDateTime'] as String),
    elementOccurrenceDateTime: json['elementOccurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOccurrenceDateTime'] as Map<String, dynamic>),
    performer: json['performer'] == null
        ? null
        : Reference.fromJson(json['performer'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evaluationMessage: (json['evaluationMessage'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outputParameters: json['outputParameters'] == null
        ? null
        : Reference.fromJson(json['outputParameters'] as Map<String, dynamic>),
    result: json['result'] == null
        ? null
        : Reference.fromJson(json['result'] as Map<String, dynamic>),
    dataRequirement: (json['dataRequirement'] as List)
        ?.map((e) => e == null
            ? null
            : DataRequirement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GuidanceResponseToJson(GuidanceResponse instance) =>
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
      'requestIdentifier': instance.requestIdentifier?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'moduleUri': instance.moduleUri,
      'elementModuleUri': instance.elementModuleUri?.toJson(),
      'moduleCanonical': instance.moduleCanonical,
      'elementModuleCanonical': instance.elementModuleCanonical?.toJson(),
      'moduleCodeableConcept': instance.moduleCodeableConcept?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'occurrenceDateTime': instance.occurrenceDateTime?.toIso8601String(),
      'elementOccurrenceDateTime': instance.elementOccurrenceDateTime?.toJson(),
      'performer': instance.performer?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'evaluationMessage':
          instance.evaluationMessage?.map((e) => e?.toJson())?.toList(),
      'outputParameters': instance.outputParameters?.toJson(),
      'result': instance.result?.toJson(),
      'dataRequirement':
          instance.dataRequirement?.map((e) => e?.toJson())?.toList(),
    };
