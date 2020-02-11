import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 205)
class DetectedIssue {

  //  This is a DetectedIssue resource
  @HiveField(0)
  final String resourceType= 'DetectedIssue';

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

  //  Business identifier associated with the detected issue record.
  @HiveField(11)
  List<Identifier> identifier;

  //  Indicates the status of the detected issue.
  @HiveField(12)
  String status;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  Identifies the general type of issue identified.
  @HiveField(14)
  CodeableConcept code;

  //  Indicates the degree of importance associated with the identified
  // issue based on the potential impact on the patient.
  @HiveField(15)
  String severity; // <code> enum: high/moderate/low;

  //  Extensions for severity
  @HiveField(16)
  Element elementSeverity;

  //  Indicates the patient whose record the detected issue is associated
  // with.
  @HiveField(17)
  Reference patient;

  //  The date or period when the detected issue was initially identified.
  @HiveField(18)
  String identifiedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for identifiedDateTime
  @HiveField(19)
  Element elementIdentifiedDateTime;

  //  The date or period when the detected issue was initially identified.
  @HiveField(20)
  Period identifiedPeriod;

  //  Individual or device responsible for the issue being raised.  For
  // example, a decision support application or a pharmacist conducting a
  // medication review.
  @HiveField(21)
  Reference author;

  //  Indicates the resource representing the current activity or proposed
  // activity that is potentially problematic.
  @HiveField(22)
  List<Reference> implicated;

  //  Supporting evidence or manifestations that provide the basis for
  // identifying the detected issue such as a GuidanceResponse or
  // MeasureReport.
  @HiveField(23)
  List<DetectedIssue_Evidence> evidence;

  //  A textual explanation of the detected issue.
  @HiveField(24)
  String detail;

  //  Extensions for detail
  @HiveField(25)
  Element elementDetail;

  //  The literature, knowledge-base or similar reference that describes the
  // propensity for the detected issue identified.
  @HiveField(26)
  String reference;

  //  Extensions for reference
  @HiveField(27)
  Element elementReference;

  //  Indicates an action that has been taken or is committed to reduce or
  // eliminate the likelihood of the risk identified by the detected issue
  // from manifesting.  Can also reflect an observation of known mitigating
  // factors that may reduce/eliminate the need for any action.
  @HiveField(28)
  List<DetectedIssue_Mitigation> mitigation;

DetectedIssue(
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
@HiveType(typeId: 206)
class DetectedIssue_Evidence {

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

  //  A manifestation that led to the recording of this detected issue.
  @HiveField(3)
  List<CodeableConcept> code;

  //  Links to resources that constitute evidence for the detected issue
  // such as a GuidanceResponse or MeasureReport.
  @HiveField(4)
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
@HiveType(typeId: 207)
class DetectedIssue_Mitigation {

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

  //  Describes the action that was taken or the observation that was made
  // that reduces/eliminates the risk associated with the identified issue.
  @HiveField(3)
  CodeableConcept action;

  //  Indicates when the mitigating action was documented.
  @HiveField(4)
  DateTime date;

  //  Extensions for date
  @HiveField(5)
  Element elementDate;

  //  Identifies the practitioner who determined the mitigation and takes
  // responsibility for the mitigation step occurring.
  @HiveField(6)
  Reference author;

DetectedIssue_Mitigation(
  this.action,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.date,
    this.elementDate,
    this.author
    });

  factory DetectedIssue_Mitigation.fromJson(Map<String, dynamic> json) => _$DetectedIssue_MitigationFromJson(json);
  Map<String, dynamic> toJson() => _$DetectedIssue_MitigationToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DetectedIssueAdapter extends TypeAdapter<DetectedIssue> {
  @override
  final typeId = 205;

  @override
  DetectedIssue read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DetectedIssue(
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
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      code: fields[14] as CodeableConcept,
      severity: fields[15] as String,
      elementSeverity: fields[16] as Element,
      patient: fields[17] as Reference,
      identifiedDateTime: fields[18] as String,
      elementIdentifiedDateTime: fields[19] as Element,
      identifiedPeriod: fields[20] as Period,
      author: fields[21] as Reference,
      implicated: (fields[22] as List)?.cast<Reference>(),
      evidence: (fields[23] as List)?.cast<DetectedIssue_Evidence>(),
      detail: fields[24] as String,
      elementDetail: fields[25] as Element,
      reference: fields[26] as String,
      elementReference: fields[27] as Element,
      mitigation: (fields[28] as List)?.cast<DetectedIssue_Mitigation>(),
    );
  }

  @override
  void write(BinaryWriter writer, DetectedIssue obj) {
    writer
      ..writeByte(29)
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
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.code)
      ..writeByte(15)
      ..write(obj.severity)
      ..writeByte(16)
      ..write(obj.elementSeverity)
      ..writeByte(17)
      ..write(obj.patient)
      ..writeByte(18)
      ..write(obj.identifiedDateTime)
      ..writeByte(19)
      ..write(obj.elementIdentifiedDateTime)
      ..writeByte(20)
      ..write(obj.identifiedPeriod)
      ..writeByte(21)
      ..write(obj.author)
      ..writeByte(22)
      ..write(obj.implicated)
      ..writeByte(23)
      ..write(obj.evidence)
      ..writeByte(24)
      ..write(obj.detail)
      ..writeByte(25)
      ..write(obj.elementDetail)
      ..writeByte(26)
      ..write(obj.reference)
      ..writeByte(27)
      ..write(obj.elementReference)
      ..writeByte(28)
      ..write(obj.mitigation);
  }
}

class DetectedIssue_EvidenceAdapter
    extends TypeAdapter<DetectedIssue_Evidence> {
  @override
  final typeId = 206;

  @override
  DetectedIssue_Evidence read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DetectedIssue_Evidence(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: (fields[3] as List)?.cast<CodeableConcept>(),
      detail: (fields[4] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, DetectedIssue_Evidence obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.detail);
  }
}

class DetectedIssue_MitigationAdapter
    extends TypeAdapter<DetectedIssue_Mitigation> {
  @override
  final typeId = 207;

  @override
  DetectedIssue_Mitigation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DetectedIssue_Mitigation(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      date: fields[4] as DateTime,
      elementDate: fields[5] as Element,
      author: fields[6] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, DetectedIssue_Mitigation obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.action)
      ..writeByte(4)
      ..write(obj.date)
      ..writeByte(5)
      ..write(obj.elementDate)
      ..writeByte(6)
      ..write(obj.author);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetectedIssue _$DetectedIssueFromJson(Map<String, dynamic> json) {
  return DetectedIssue(
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
    json['action'] == null
        ? null
        : CodeableConcept.fromJson(json['action'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
