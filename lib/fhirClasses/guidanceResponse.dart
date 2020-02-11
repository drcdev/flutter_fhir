import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 114)
class GuidanceResponse {

  //  This is a GuidanceResponse resource
  @HiveField(0)
  final String resourceType= 'GuidanceResponse';

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

  //  The identifier of the request associated with this response. If an
  // identifier was given as part of the request, it will be reproduced here
  // to enable the requester to more easily identify the response in a
  // multi-request scenario.
  @HiveField(11)
  Identifier requestIdentifier;

  //  Allows a service to provide  unique, business identifiers for the
  // response.
  @HiveField(12)
  List<Identifier> identifier;

  //  An identifier, CodeableConcept or canonical reference to the guidance
  // that was requested.
  @HiveField(13)
  String moduleUri; //  pattern: ^\S*$

  //  Extensions for moduleUri
  @HiveField(14)
  Element elementModuleUri;

  //  An identifier, CodeableConcept or canonical reference to the guidance
  // that was requested.
  @HiveField(15)
  String moduleCanonical; //  pattern: ^\S*$

  //  Extensions for moduleCanonical
  @HiveField(16)
  Element elementModuleCanonical;

  //  An identifier, CodeableConcept or canonical reference to the guidance
  // that was requested.
  @HiveField(17)
  CodeableConcept moduleCodeableConcept;

  //  The status of the response. If the evaluation is completed
  // successfully, the status will indicate success. However, in order to
  // complete the evaluation, the engine may require more information. In
  // this case, the status will be data-required, and the response will
  // contain a description of the additional required information. If the
  // evaluation completed successfully, but the engine determines that a
  // potentially more accurate response could be provided if more data was
  // available, the status will be data-requested, and the response will
  // contain a description of the additional requested information.
  @HiveField(18)
  String status; // <code> enum: success/data-requested/data-required/in-progress/failure/entered-in-error;

  //  Extensions for status
  @HiveField(19)
  Element elementStatus;

  //  The patient for which the request was processed.
  @HiveField(20)
  Reference subject;

  //  The encounter during which this response was created or to which the
  // creation of this record is tightly associated.
  @HiveField(21)
  Reference encounter;

  //  Indicates when the guidance response was processed.
  @HiveField(22)
  DateTime occurrenceDateTime;

  //  Extensions for occurrenceDateTime
  @HiveField(23)
  Element elementOccurrenceDateTime;

  //  Provides a reference to the device that performed the guidance.
  @HiveField(24)
  Reference performer;

  //  Describes the reason for the guidance response in coded or textual
  // form.
  @HiveField(25)
  List<CodeableConcept> reasonCode;

  //  Indicates the reason the request was initiated. This is typically
  // provided as a parameter to the evaluation and echoed by the service,
  // although for some use cases, such as subscription- or event-based
  // scenarios, it may provide an indication of the cause for the response.
  @HiveField(26)
  List<Reference> reasonReference;

  //  Provides a mechanism to communicate additional information about the
  // response.
  @HiveField(27)
  List<Annotation> note;

  //  Messages resulting from the evaluation of the artifact or artifacts.
  // As part of evaluating the request, the engine may produce informational
  // or warning messages. These messages will be provided by this element.
  @HiveField(28)
  List<Reference> evaluationMessage;

  //  The output parameters of the evaluation, if any. Many modules will
  // result in the return of specific resources such as procedure or
  // communication requests that are returned as part of the operation
  // result. However, modules may define specific outputs that would be
  // returned as the result of the evaluation, and these would be returned
  // in this element.
  @HiveField(29)
  Reference outputParameters;

  //  The actions, if any, produced by the evaluation of the artifact.
  @HiveField(30)
  Reference result;

  //  If the evaluation could not be completed due to lack of information,
  // or additional information would potentially result in a more accurate
  // response, this element will a description of the data required in order
  // to proceed with the evaluation. A subsequent request to the service
  // should include this data.
  @HiveField(31)
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
// TypeAdapterGenerator
// **************************************************************************

class GuidanceResponseAdapter extends TypeAdapter<GuidanceResponse> {
  @override
  final typeId = 114;

  @override
  GuidanceResponse read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GuidanceResponse(
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
      requestIdentifier: fields[11] as Identifier,
      identifier: (fields[12] as List)?.cast<Identifier>(),
      moduleUri: fields[13] as String,
      elementModuleUri: fields[14] as Element,
      moduleCanonical: fields[15] as String,
      elementModuleCanonical: fields[16] as Element,
      moduleCodeableConcept: fields[17] as CodeableConcept,
      status: fields[18] as String,
      elementStatus: fields[19] as Element,
      subject: fields[20] as Reference,
      encounter: fields[21] as Reference,
      occurrenceDateTime: fields[22] as DateTime,
      elementOccurrenceDateTime: fields[23] as Element,
      performer: fields[24] as Reference,
      reasonCode: (fields[25] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[26] as List)?.cast<Reference>(),
      note: (fields[27] as List)?.cast<Annotation>(),
      evaluationMessage: (fields[28] as List)?.cast<Reference>(),
      outputParameters: fields[29] as Reference,
      result: fields[30] as Reference,
      dataRequirement: (fields[31] as List)?.cast<DataRequirement>(),
    );
  }

  @override
  void write(BinaryWriter writer, GuidanceResponse obj) {
    writer
      ..writeByte(32)
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
      ..write(obj.requestIdentifier)
      ..writeByte(12)
      ..write(obj.identifier)
      ..writeByte(13)
      ..write(obj.moduleUri)
      ..writeByte(14)
      ..write(obj.elementModuleUri)
      ..writeByte(15)
      ..write(obj.moduleCanonical)
      ..writeByte(16)
      ..write(obj.elementModuleCanonical)
      ..writeByte(17)
      ..write(obj.moduleCodeableConcept)
      ..writeByte(18)
      ..write(obj.status)
      ..writeByte(19)
      ..write(obj.elementStatus)
      ..writeByte(20)
      ..write(obj.subject)
      ..writeByte(21)
      ..write(obj.encounter)
      ..writeByte(22)
      ..write(obj.occurrenceDateTime)
      ..writeByte(23)
      ..write(obj.elementOccurrenceDateTime)
      ..writeByte(24)
      ..write(obj.performer)
      ..writeByte(25)
      ..write(obj.reasonCode)
      ..writeByte(26)
      ..write(obj.reasonReference)
      ..writeByte(27)
      ..write(obj.note)
      ..writeByte(28)
      ..write(obj.evaluationMessage)
      ..writeByte(29)
      ..write(obj.outputParameters)
      ..writeByte(30)
      ..write(obj.result)
      ..writeByte(31)
      ..write(obj.dataRequirement);
  }
}

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
