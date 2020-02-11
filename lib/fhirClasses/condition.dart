import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 166)
class Condition {

  //  This is a Condition resource
  @HiveField(0)
  final String resourceType= 'Condition';

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

  //  Business identifiers assigned to this condition by the performer or
  // other systems which remain constant as the resource is updated and
  // propagates from server to server.
  @HiveField(11)
  List<Identifier> identifier;

  //  The clinical status of the condition.
  @HiveField(12)
  CodeableConcept clinicalStatus;

  //  The verification status to support the clinical status of the
  // condition.
  @HiveField(13)
  CodeableConcept verificationStatus;

  //  A category assigned to the condition.
  @HiveField(14)
  List<CodeableConcept> category;

  //  A subjective assessment of the severity of the condition as evaluated
  // by the clinician.
  @HiveField(15)
  CodeableConcept severity;

  //  Identification of the condition, problem or diagnosis.
  @HiveField(16)
  CodeableConcept code;

  //  The anatomical location where this condition manifests itself.
  @HiveField(17)
  List<CodeableConcept> bodySite;

  //  Indicates the patient or group who the condition record is associated
  // with.
  @HiveField(18)
  Reference subject;

  //  The Encounter during which this Condition was created or to which the
  // creation of this record is tightly associated.
  @HiveField(19)
  Reference encounter;

  //  Estimated or actual date or date-time  the condition began, in the
  // opinion of the clinician.
  @HiveField(20)
  String onsetDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for onsetDateTime
  @HiveField(21)
  Element elementOnsetDateTime;

  //  Estimated or actual date or date-time  the condition began, in the
  // opinion of the clinician.
  @HiveField(22)
  Age onsetAge;

  //  Estimated or actual date or date-time  the condition began, in the
  // opinion of the clinician.
  @HiveField(23)
  Period onsetPeriod;

  //  Estimated or actual date or date-time  the condition began, in the
  // opinion of the clinician.
  @HiveField(24)
  Range onsetRange;

  //  Estimated or actual date or date-time  the condition began, in the
  // opinion of the clinician.
  @HiveField(25)
  String onsetString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for onsetString
  @HiveField(26)
  Element elementOnsetString;

  //  The date or estimated date that the condition resolved or went into
  // remission. This is called "abatement" because of the many overloaded
  // connotations associated with "remission" or "resolution" - Conditions
  // are never really resolved, but they can abate.
  @HiveField(27)
  String abatementDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for abatementDateTime
  @HiveField(28)
  Element elementAbatementDateTime;

  //  The date or estimated date that the condition resolved or went into
  // remission. This is called "abatement" because of the many overloaded
  // connotations associated with "remission" or "resolution" - Conditions
  // are never really resolved, but they can abate.
  @HiveField(29)
  Age abatementAge;

  //  The date or estimated date that the condition resolved or went into
  // remission. This is called "abatement" because of the many overloaded
  // connotations associated with "remission" or "resolution" - Conditions
  // are never really resolved, but they can abate.
  @HiveField(30)
  Period abatementPeriod;

  //  The date or estimated date that the condition resolved or went into
  // remission. This is called "abatement" because of the many overloaded
  // connotations associated with "remission" or "resolution" - Conditions
  // are never really resolved, but they can abate.
  @HiveField(31)
  Range abatementRange;

  //  The date or estimated date that the condition resolved or went into
  // remission. This is called "abatement" because of the many overloaded
  // connotations associated with "remission" or "resolution" - Conditions
  // are never really resolved, but they can abate.
  @HiveField(32)
  String abatementString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for abatementString
  @HiveField(33)
  Element elementAbatementString;

  //  The recordedDate represents when this particular Condition record was
  // created in the system, which is often a system-generated date.
  @HiveField(34)
  DateTime recordedDate;

  //  Extensions for recordedDate
  @HiveField(35)
  Element elementRecordedDate;

  //  Individual who recorded the record and takes responsibility for its
  // content.
  @HiveField(36)
  Reference recorder;

  //  Individual who is making the condition statement.
  @HiveField(37)
  Reference asserter;

  //  Clinical stage or grade of a condition. May include formal severity
  // assessments.
  @HiveField(38)
  List<Condition_Stage> stage;

  //  Supporting evidence / manifestations that are the basis of the
  // Condition's verification status, such as evidence that confirmed or
  // refuted the condition.
  @HiveField(39)
  List<Condition_Evidence> evidence;

  //  Additional information about the Condition. This is a general
  // notes/comments entry  for description of the Condition, its diagnosis
  // and prognosis.
  @HiveField(40)
  List<Annotation> note;

Condition(
  this.subject,
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
    this.clinicalStatus,
    this.verificationStatus,
    this.category,
    this.severity,
    this.code,
    this.bodySite,
    this.encounter,
    this.onsetDateTime,
    this.elementOnsetDateTime,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.elementOnsetString,
    this.abatementDateTime,
    this.elementAbatementDateTime,
    this.abatementAge,
    this.abatementPeriod,
    this.abatementRange,
    this.abatementString,
    this.elementAbatementString,
    this.recordedDate,
    this.elementRecordedDate,
    this.recorder,
    this.asserter,
    this.stage,
    this.evidence,
    this.note
    });

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Condition_Stage {

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

  //  A simple summary of the stage such as "Stage 3". The determination of
  // the stage is disease-specific.
  CodeableConcept summary;

  //  Reference to a formal record of the evidence on which the staging
  // assessment is based.
  List<Reference> assessment;

  //  The kind of staging, such as pathological or clinical staging.
  CodeableConcept type;

Condition_Stage(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.summary,
    this.assessment,
    this.type
    });

  factory Condition_Stage.fromJson(Map<String, dynamic> json) => _$Condition_StageFromJson(json);
  Map<String, dynamic> toJson() => _$Condition_StageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Condition_Evidence {

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

  //  A manifestation or symptom that led to the recording of this
  // condition.
  List<CodeableConcept> code;

  //  Links to other relevant information, including pathology reports.
  List<Reference> detail;

Condition_Evidence(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.detail
    });

  factory Condition_Evidence.fromJson(Map<String, dynamic> json) => _$Condition_EvidenceFromJson(json);
  Map<String, dynamic> toJson() => _$Condition_EvidenceToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConditionAdapter extends TypeAdapter<Condition> {
  @override
  final typeId = 166;

  @override
  Condition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Condition(
      fields[18] as Reference,
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
      clinicalStatus: fields[12] as CodeableConcept,
      verificationStatus: fields[13] as CodeableConcept,
      category: (fields[14] as List)?.cast<CodeableConcept>(),
      severity: fields[15] as CodeableConcept,
      code: fields[16] as CodeableConcept,
      bodySite: (fields[17] as List)?.cast<CodeableConcept>(),
      encounter: fields[19] as Reference,
      onsetDateTime: fields[20] as String,
      elementOnsetDateTime: fields[21] as Element,
      onsetAge: fields[22] as Age,
      onsetPeriod: fields[23] as Period,
      onsetRange: fields[24] as Range,
      onsetString: fields[25] as String,
      elementOnsetString: fields[26] as Element,
      abatementDateTime: fields[27] as String,
      elementAbatementDateTime: fields[28] as Element,
      abatementAge: fields[29] as Age,
      abatementPeriod: fields[30] as Period,
      abatementRange: fields[31] as Range,
      abatementString: fields[32] as String,
      elementAbatementString: fields[33] as Element,
      recordedDate: fields[34] as DateTime,
      elementRecordedDate: fields[35] as Element,
      recorder: fields[36] as Reference,
      asserter: fields[37] as Reference,
      stage: (fields[38] as List)?.cast<Condition_Stage>(),
      evidence: (fields[39] as List)?.cast<Condition_Evidence>(),
      note: (fields[40] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, Condition obj) {
    writer
      ..writeByte(41)
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
      ..write(obj.clinicalStatus)
      ..writeByte(13)
      ..write(obj.verificationStatus)
      ..writeByte(14)
      ..write(obj.category)
      ..writeByte(15)
      ..write(obj.severity)
      ..writeByte(16)
      ..write(obj.code)
      ..writeByte(17)
      ..write(obj.bodySite)
      ..writeByte(18)
      ..write(obj.subject)
      ..writeByte(19)
      ..write(obj.encounter)
      ..writeByte(20)
      ..write(obj.onsetDateTime)
      ..writeByte(21)
      ..write(obj.elementOnsetDateTime)
      ..writeByte(22)
      ..write(obj.onsetAge)
      ..writeByte(23)
      ..write(obj.onsetPeriod)
      ..writeByte(24)
      ..write(obj.onsetRange)
      ..writeByte(25)
      ..write(obj.onsetString)
      ..writeByte(26)
      ..write(obj.elementOnsetString)
      ..writeByte(27)
      ..write(obj.abatementDateTime)
      ..writeByte(28)
      ..write(obj.elementAbatementDateTime)
      ..writeByte(29)
      ..write(obj.abatementAge)
      ..writeByte(30)
      ..write(obj.abatementPeriod)
      ..writeByte(31)
      ..write(obj.abatementRange)
      ..writeByte(32)
      ..write(obj.abatementString)
      ..writeByte(33)
      ..write(obj.elementAbatementString)
      ..writeByte(34)
      ..write(obj.recordedDate)
      ..writeByte(35)
      ..write(obj.elementRecordedDate)
      ..writeByte(36)
      ..write(obj.recorder)
      ..writeByte(37)
      ..write(obj.asserter)
      ..writeByte(38)
      ..write(obj.stage)
      ..writeByte(39)
      ..write(obj.evidence)
      ..writeByte(40)
      ..write(obj.note);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return Condition(
    json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
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
    clinicalStatus: json['clinicalStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['clinicalStatus'] as Map<String, dynamic>),
    verificationStatus: json['verificationStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['verificationStatus'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    severity: json['severity'] == null
        ? null
        : CodeableConcept.fromJson(json['severity'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    bodySite: (json['bodySite'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    onsetDateTime: json['onsetDateTime'] as String,
    elementOnsetDateTime: json['elementOnsetDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOnsetDateTime'] as Map<String, dynamic>),
    onsetAge: json['onsetAge'] == null
        ? null
        : Age.fromJson(json['onsetAge'] as Map<String, dynamic>),
    onsetPeriod: json['onsetPeriod'] == null
        ? null
        : Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>),
    onsetRange: json['onsetRange'] == null
        ? null
        : Range.fromJson(json['onsetRange'] as Map<String, dynamic>),
    onsetString: json['onsetString'] as String,
    elementOnsetString: json['elementOnsetString'] == null
        ? null
        : Element.fromJson(json['elementOnsetString'] as Map<String, dynamic>),
    abatementDateTime: json['abatementDateTime'] as String,
    elementAbatementDateTime: json['elementAbatementDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementAbatementDateTime'] as Map<String, dynamic>),
    abatementAge: json['abatementAge'] == null
        ? null
        : Age.fromJson(json['abatementAge'] as Map<String, dynamic>),
    abatementPeriod: json['abatementPeriod'] == null
        ? null
        : Period.fromJson(json['abatementPeriod'] as Map<String, dynamic>),
    abatementRange: json['abatementRange'] == null
        ? null
        : Range.fromJson(json['abatementRange'] as Map<String, dynamic>),
    abatementString: json['abatementString'] as String,
    elementAbatementString: json['elementAbatementString'] == null
        ? null
        : Element.fromJson(
            json['elementAbatementString'] as Map<String, dynamic>),
    recordedDate: json['recordedDate'] == null
        ? null
        : DateTime.parse(json['recordedDate'] as String),
    elementRecordedDate: json['elementRecordedDate'] == null
        ? null
        : Element.fromJson(json['elementRecordedDate'] as Map<String, dynamic>),
    recorder: json['recorder'] == null
        ? null
        : Reference.fromJson(json['recorder'] as Map<String, dynamic>),
    asserter: json['asserter'] == null
        ? null
        : Reference.fromJson(json['asserter'] as Map<String, dynamic>),
    stage: (json['stage'] as List)
        ?.map((e) => e == null
            ? null
            : Condition_Stage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evidence: (json['evidence'] as List)
        ?.map((e) => e == null
            ? null
            : Condition_Evidence.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
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
      'clinicalStatus': instance.clinicalStatus?.toJson(),
      'verificationStatus': instance.verificationStatus?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'severity': instance.severity?.toJson(),
      'code': instance.code?.toJson(),
      'bodySite': instance.bodySite?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'onsetDateTime': instance.onsetDateTime,
      'elementOnsetDateTime': instance.elementOnsetDateTime?.toJson(),
      'onsetAge': instance.onsetAge?.toJson(),
      'onsetPeriod': instance.onsetPeriod?.toJson(),
      'onsetRange': instance.onsetRange?.toJson(),
      'onsetString': instance.onsetString,
      'elementOnsetString': instance.elementOnsetString?.toJson(),
      'abatementDateTime': instance.abatementDateTime,
      'elementAbatementDateTime': instance.elementAbatementDateTime?.toJson(),
      'abatementAge': instance.abatementAge?.toJson(),
      'abatementPeriod': instance.abatementPeriod?.toJson(),
      'abatementRange': instance.abatementRange?.toJson(),
      'abatementString': instance.abatementString,
      'elementAbatementString': instance.elementAbatementString?.toJson(),
      'recordedDate': instance.recordedDate?.toIso8601String(),
      'elementRecordedDate': instance.elementRecordedDate?.toJson(),
      'recorder': instance.recorder?.toJson(),
      'asserter': instance.asserter?.toJson(),
      'stage': instance.stage?.map((e) => e?.toJson())?.toList(),
      'evidence': instance.evidence?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };

Condition_Stage _$Condition_StageFromJson(Map<String, dynamic> json) {
  return Condition_Stage(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    summary: json['summary'] == null
        ? null
        : CodeableConcept.fromJson(json['summary'] as Map<String, dynamic>),
    assessment: (json['assessment'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Condition_StageToJson(Condition_Stage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'summary': instance.summary?.toJson(),
      'assessment': instance.assessment?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
    };

Condition_Evidence _$Condition_EvidenceFromJson(Map<String, dynamic> json) {
  return Condition_Evidence(
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

Map<String, dynamic> _$Condition_EvidenceToJson(Condition_Evidence instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };
