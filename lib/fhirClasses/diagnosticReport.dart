import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 95)
class DiagnosticReport {

  //  This is a DiagnosticReport resource
  @HiveField(0)
  final String resourceType= 'DiagnosticReport';

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

  //  Identifiers assigned to this report by the performer or other systems.
  @HiveField(11)
  List<Identifier> identifier;

  //  Details concerning a service requested.
  @HiveField(12)
  List<Reference> basedOn;

  //  The status of the diagnostic report.
  @HiveField(13)
  String status; // <code> enum: registered/partial/preliminary/final/amended/corrected/appended/cancelled/entered-in-error/unknown;

  //  Extensions for status
  @HiveField(14)
  Element elementStatus;

  //  A code that classifies the clinical discipline, department or
  // diagnostic service that created the report (e.g. cardiology,
  // biochemistry, hematology, MRI). This is used for searching, sorting and
  // display purposes.
  @HiveField(15)
  List<CodeableConcept> category;

  //  A code or name that describes this diagnostic report.
  @HiveField(16)
  CodeableConcept code;

  //  The subject of the report. Usually, but not always, this is a patient.
  // However, diagnostic services also perform analyses on specimens
  // collected from a variety of other sources.
  @HiveField(17)
  Reference subject;

  //  The healthcare event  (e.g. a patient and healthcare provider
  // interaction) which this DiagnosticReport is about.
  @HiveField(18)
  Reference encounter;

  //  The time or time-period the observed values are related to. When the
  // subject of the report is a patient, this is usually either the time of
  // the procedure or of specimen collection(s), but very often the source
  // of the date/time is not known, only the date/time itself.
  @HiveField(19)
  String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for effectiveDateTime
  @HiveField(20)
  Element elementEffectiveDateTime;

  //  The time or time-period the observed values are related to. When the
  // subject of the report is a patient, this is usually either the time of
  // the procedure or of specimen collection(s), but very often the source
  // of the date/time is not known, only the date/time itself.
  @HiveField(21)
  Period effectivePeriod;

  //  The date and time that this version of the report was made available
  // to providers, typically after the report was reviewed and verified.
  @HiveField(22)
  DateTime issued;

  //  Extensions for issued
  @HiveField(23)
  Element elementIssued;

  //  The diagnostic service that is responsible for issuing the report.
  @HiveField(24)
  List<Reference> performer;

  //  The practitioner or organization that is responsible for the report's
  // conclusions and interpretations.
  @HiveField(25)
  List<Reference> resultsInterpreter;

  //  Details about the specimens on which this diagnostic report is based.
  @HiveField(26)
  List<Reference> specimen;

  //  [Observations](observation.html)  that are part of this diagnostic
  // report.
  @HiveField(27)
  List<Reference> result;

  //  One or more links to full details of any imaging performed during the
  // diagnostic investigation. Typically, this is imaging performed by DICOM
  // enabled modalities, but this is not required. A fully enabled PACS
  // viewer can use this information to provide views of the source images.
  @HiveField(28)
  List<Reference> imagingStudy;

  //  A list of key images associated with this report. The images are
  // generally created during the diagnostic process, and may be directly of
  // the patient, or of treated specimens (i.e. slides of interest).
  @HiveField(29)
  List<DiagnosticReport_Media> media;

  //  Concise and clinically contextualized summary conclusion
  // (interpretation/impression) of the diagnostic report.
  @HiveField(30)
  String conclusion;

  //  Extensions for conclusion
  @HiveField(31)
  Element elementConclusion;

  //  One or more codes that represent the summary conclusion
  // (interpretation/impression) of the diagnostic report.
  @HiveField(32)
  List<CodeableConcept> conclusionCode;

  //  Rich text representation of the entire result as issued by the
  // diagnostic service. Multiple formats are allowed but they SHALL be
  // semantically equivalent.
  @HiveField(33)
  List<Attachment> presentedForm;

DiagnosticReport(
  this.code,
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
    this.identifier,
    this.basedOn,
    this.status,
    this.elementStatus,
    this.category,
    this.subject,
    this.encounter,
    this.effectiveDateTime,
    this.elementEffectiveDateTime,
    this.effectivePeriod,
    this.issued,
    this.elementIssued,
    this.performer,
    this.resultsInterpreter,
    this.specimen,
    this.result,
    this.imagingStudy,
    this.media,
    this.conclusion,
    this.elementConclusion,
    this.conclusionCode,
    this.presentedForm
    });

  factory DiagnosticReport.fromJson(Map<String, dynamic> json) => _$DiagnosticReportFromJson(json);
  Map<String, dynamic> toJson() => _$DiagnosticReportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DiagnosticReport_Media {

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

  //  A comment about the image. Typically, this is used to provide an
  // explanation for why the image is included, or to draw the viewer's
  // attention to important features.
  String comment;

  //  Extensions for comment
  Element elementComment;

  //  Reference to the image source.
  Reference link;

DiagnosticReport_Media(
  this.link,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.comment,
    this.elementComment
    });

  factory DiagnosticReport_Media.fromJson(Map<String, dynamic> json) => _$DiagnosticReport_MediaFromJson(json);
  Map<String, dynamic> toJson() => _$DiagnosticReport_MediaToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiagnosticReportAdapter extends TypeAdapter<DiagnosticReport> {
  @override
  final typeId = 95;

  @override
  DiagnosticReport read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DiagnosticReport(
      fields[16] as CodeableConcept,
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
      identifier: (fields[11] as List)?.cast<Identifier>(),
      basedOn: (fields[12] as List)?.cast<Reference>(),
      status: fields[13] as String,
      elementStatus: fields[14] as Element,
      category: (fields[15] as List)?.cast<CodeableConcept>(),
      subject: fields[17] as Reference,
      encounter: fields[18] as Reference,
      effectiveDateTime: fields[19] as String,
      elementEffectiveDateTime: fields[20] as Element,
      effectivePeriod: fields[21] as Period,
      issued: fields[22] as DateTime,
      elementIssued: fields[23] as Element,
      performer: (fields[24] as List)?.cast<Reference>(),
      resultsInterpreter: (fields[25] as List)?.cast<Reference>(),
      specimen: (fields[26] as List)?.cast<Reference>(),
      result: (fields[27] as List)?.cast<Reference>(),
      imagingStudy: (fields[28] as List)?.cast<Reference>(),
      media: (fields[29] as List)?.cast<DiagnosticReport_Media>(),
      conclusion: fields[30] as String,
      elementConclusion: fields[31] as Element,
      conclusionCode: (fields[32] as List)?.cast<CodeableConcept>(),
      presentedForm: (fields[33] as List)?.cast<Attachment>(),
    );
  }

  @override
  void write(BinaryWriter writer, DiagnosticReport obj) {
    writer
      ..writeByte(34)
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
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.basedOn)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.elementStatus)
      ..writeByte(15)
      ..write(obj.category)
      ..writeByte(16)
      ..write(obj.code)
      ..writeByte(17)
      ..write(obj.subject)
      ..writeByte(18)
      ..write(obj.encounter)
      ..writeByte(19)
      ..write(obj.effectiveDateTime)
      ..writeByte(20)
      ..write(obj.elementEffectiveDateTime)
      ..writeByte(21)
      ..write(obj.effectivePeriod)
      ..writeByte(22)
      ..write(obj.issued)
      ..writeByte(23)
      ..write(obj.elementIssued)
      ..writeByte(24)
      ..write(obj.performer)
      ..writeByte(25)
      ..write(obj.resultsInterpreter)
      ..writeByte(26)
      ..write(obj.specimen)
      ..writeByte(27)
      ..write(obj.result)
      ..writeByte(28)
      ..write(obj.imagingStudy)
      ..writeByte(29)
      ..write(obj.media)
      ..writeByte(30)
      ..write(obj.conclusion)
      ..writeByte(31)
      ..write(obj.elementConclusion)
      ..writeByte(32)
      ..write(obj.conclusionCode)
      ..writeByte(33)
      ..write(obj.presentedForm);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiagnosticReport _$DiagnosticReportFromJson(Map<String, dynamic> json) {
  return DiagnosticReport(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
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
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    effectiveDateTime: json['effectiveDateTime'] as String,
    elementEffectiveDateTime: json['elementEffectiveDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementEffectiveDateTime'] as Map<String, dynamic>),
    effectivePeriod: json['effectivePeriod'] == null
        ? null
        : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
    issued: json['issued'] == null
        ? null
        : DateTime.parse(json['issued'] as String),
    elementIssued: json['elementIssued'] == null
        ? null
        : Element.fromJson(json['elementIssued'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    resultsInterpreter: (json['resultsInterpreter'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specimen: (json['specimen'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    result: (json['result'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    imagingStudy: (json['imagingStudy'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    media: (json['media'] as List)
        ?.map((e) => e == null
            ? null
            : DiagnosticReport_Media.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    conclusion: json['conclusion'] as String,
    elementConclusion: json['elementConclusion'] == null
        ? null
        : Element.fromJson(json['elementConclusion'] as Map<String, dynamic>),
    conclusionCode: (json['conclusionCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    presentedForm: (json['presentedForm'] as List)
        ?.map((e) =>
            e == null ? null : Attachment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DiagnosticReportToJson(DiagnosticReport instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'effectiveDateTime': instance.effectiveDateTime,
      'elementEffectiveDateTime': instance.elementEffectiveDateTime?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'issued': instance.issued?.toIso8601String(),
      'elementIssued': instance.elementIssued?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'resultsInterpreter':
          instance.resultsInterpreter?.map((e) => e?.toJson())?.toList(),
      'specimen': instance.specimen?.map((e) => e?.toJson())?.toList(),
      'result': instance.result?.map((e) => e?.toJson())?.toList(),
      'imagingStudy': instance.imagingStudy?.map((e) => e?.toJson())?.toList(),
      'media': instance.media?.map((e) => e?.toJson())?.toList(),
      'conclusion': instance.conclusion,
      'elementConclusion': instance.elementConclusion?.toJson(),
      'conclusionCode':
          instance.conclusionCode?.map((e) => e?.toJson())?.toList(),
      'presentedForm':
          instance.presentedForm?.map((e) => e?.toJson())?.toList(),
    };

DiagnosticReport_Media _$DiagnosticReport_MediaFromJson(
    Map<String, dynamic> json) {
  return DiagnosticReport_Media(
    json['link'] == null
        ? null
        : Reference.fromJson(json['link'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DiagnosticReport_MediaToJson(
        DiagnosticReport_Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
      'link': instance.link?.toJson(),
    };
