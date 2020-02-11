import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
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
@HiveType(typeId: 76)
class ClinicalImpression {

  //  This is a ClinicalImpression resource
  @HiveField(0)
  final String resourceType= 'ClinicalImpression';

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

  //  Business identifiers assigned to this clinical impression by the
  // performer or other systems which remain constant as the resource is
  // updated and propagates from server to server.
  @HiveField(11)
  List<Identifier> identifier;

  //  Identifies the workflow status of the assessment.
  @HiveField(12)
  String status;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  Captures the reason for the current state of the ClinicalImpression.
  @HiveField(14)
  CodeableConcept statusReason;

  //  Categorizes the type of clinical assessment performed.
  @HiveField(15)
  CodeableConcept code;

  //  A summary of the context and/or cause of the assessment - why / where
  // it was performed, and what patient events/status prompted it.
  @HiveField(16)
  String description;

  //  Extensions for description
  @HiveField(17)
  Element elementDescription;

  //  The patient or group of individuals assessed as part of this record.
  @HiveField(18)
  Reference subject;

  //  The Encounter during which this ClinicalImpression was created or to
  // which the creation of this record is tightly associated.
  @HiveField(19)
  Reference encounter;

  //  The point in time or period over which the subject was assessed.
  @HiveField(20)
  String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for effectiveDateTime
  @HiveField(21)
  Element elementEffectiveDateTime;

  //  The point in time or period over which the subject was assessed.
  @HiveField(22)
  Period effectivePeriod;

  //  Indicates when the documentation of the assessment was complete.
  @HiveField(23)
  DateTime date;

  //  Extensions for date
  @HiveField(24)
  Element elementDate;

  //  The clinician performing the assessment.
  @HiveField(25)
  Reference assessor;

  //  A reference to the last assessment that was conducted on this patient.
  // Assessments are often/usually ongoing in nature; a care provider
  // (practitioner or team) will make new assessments on an ongoing basis as
  // new data arises or the patient's conditions changes.
  @HiveField(26)
  Reference previous;

  //  A list of the relevant problems/conditions for a patient.
  @HiveField(27)
  List<Reference> problem;

  //  One or more sets of investigations (signs, symptoms, etc.). The actual
  // grouping of investigations varies greatly depending on the type and
  // context of the assessment. These investigations may include data
  // generated during the assessment process, or data previously generated
  // and recorded that is pertinent to the outcomes.
  @HiveField(28)
  List<ClinicalImpression_Investigation> investigation;

  //  Reference to a specific published clinical protocol that was followed
  // during this assessment, and/or that provides evidence in support of the
  // diagnosis.
  @HiveField(29)
  List<String> protocol;

  //  Extensions for protocol
  @HiveField(30)
  List<Element> elementProtocol;

  //  A text summary of the investigations and the diagnosis.
  @HiveField(31)
  String summary;

  //  Extensions for summary
  @HiveField(32)
  Element elementSummary;

  //  Specific findings or diagnoses that were considered likely or relevant
  // to ongoing treatment.
  @HiveField(33)
  List<ClinicalImpression_Finding> finding;

  //  Estimate of likely outcome.
  @HiveField(34)
  List<CodeableConcept> prognosisCodeableConcept;

  //  RiskAssessment expressing likely outcome.
  @HiveField(35)
  List<Reference> prognosisReference;

  //  Information supporting the clinical impression.
  @HiveField(36)
  List<Reference> supportingInfo;

  //  Commentary about the impression, typically recorded after the
  // impression itself was made, though supplemental notes by the original
  // author could also appear.
  @HiveField(37)
  List<Annotation> note;

ClinicalImpression(
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
    this.status,
    this.elementStatus,
    this.statusReason,
    this.code,
    this.description,
    this.elementDescription,
    this.encounter,
    this.effectiveDateTime,
    this.elementEffectiveDateTime,
    this.effectivePeriod,
    this.date,
    this.elementDate,
    this.assessor,
    this.previous,
    this.problem,
    this.investigation,
    this.protocol,
    this.elementProtocol,
    this.summary,
    this.elementSummary,
    this.finding,
    this.prognosisCodeableConcept,
    this.prognosisReference,
    this.supportingInfo,
    this.note
    });

  factory ClinicalImpression.fromJson(Map<String, dynamic> json) => _$ClinicalImpressionFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicalImpressionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClinicalImpression_Investigation {

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

  //  A name/code for the group ("set") of investigations. Typically, this
  // will be something like "signs", "symptoms", "clinical", "diagnostic",
  // but the list is not constrained, and others such groups such as
  // (exposure|family|travel|nutritional) history may be used.
  CodeableConcept code;

  //  A record of a specific investigation that was undertaken.
  List<Reference> item;

ClinicalImpression_Investigation(
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.item
    });

  factory ClinicalImpression_Investigation.fromJson(Map<String, dynamic> json) => _$ClinicalImpression_InvestigationFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicalImpression_InvestigationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClinicalImpression_Finding {

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

  //  Specific text or code for finding or diagnosis, which may include
  // ruled-out or resolved conditions.
  CodeableConcept itemCodeableConcept;

  //  Specific reference for finding or diagnosis, which may include
  // ruled-out or resolved conditions.
  Reference itemReference;

  //  Which investigations support finding or diagnosis.
  String basis;

  //  Extensions for basis
  Element elementBasis;

ClinicalImpression_Finding(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.basis,
    this.elementBasis
    });

  factory ClinicalImpression_Finding.fromJson(Map<String, dynamic> json) => _$ClinicalImpression_FindingFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicalImpression_FindingToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClinicalImpressionAdapter extends TypeAdapter<ClinicalImpression> {
  @override
  final typeId = 76;

  @override
  ClinicalImpression read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClinicalImpression(
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
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      statusReason: fields[14] as CodeableConcept,
      code: fields[15] as CodeableConcept,
      description: fields[16] as String,
      elementDescription: fields[17] as Element,
      encounter: fields[19] as Reference,
      effectiveDateTime: fields[20] as String,
      elementEffectiveDateTime: fields[21] as Element,
      effectivePeriod: fields[22] as Period,
      date: fields[23] as DateTime,
      elementDate: fields[24] as Element,
      assessor: fields[25] as Reference,
      previous: fields[26] as Reference,
      problem: (fields[27] as List)?.cast<Reference>(),
      investigation:
          (fields[28] as List)?.cast<ClinicalImpression_Investigation>(),
      protocol: (fields[29] as List)?.cast<String>(),
      elementProtocol: (fields[30] as List)?.cast<Element>(),
      summary: fields[31] as String,
      elementSummary: fields[32] as Element,
      finding: (fields[33] as List)?.cast<ClinicalImpression_Finding>(),
      prognosisCodeableConcept: (fields[34] as List)?.cast<CodeableConcept>(),
      prognosisReference: (fields[35] as List)?.cast<Reference>(),
      supportingInfo: (fields[36] as List)?.cast<Reference>(),
      note: (fields[37] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClinicalImpression obj) {
    writer
      ..writeByte(38)
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
      ..write(obj.statusReason)
      ..writeByte(15)
      ..write(obj.code)
      ..writeByte(16)
      ..write(obj.description)
      ..writeByte(17)
      ..write(obj.elementDescription)
      ..writeByte(18)
      ..write(obj.subject)
      ..writeByte(19)
      ..write(obj.encounter)
      ..writeByte(20)
      ..write(obj.effectiveDateTime)
      ..writeByte(21)
      ..write(obj.elementEffectiveDateTime)
      ..writeByte(22)
      ..write(obj.effectivePeriod)
      ..writeByte(23)
      ..write(obj.date)
      ..writeByte(24)
      ..write(obj.elementDate)
      ..writeByte(25)
      ..write(obj.assessor)
      ..writeByte(26)
      ..write(obj.previous)
      ..writeByte(27)
      ..write(obj.problem)
      ..writeByte(28)
      ..write(obj.investigation)
      ..writeByte(29)
      ..write(obj.protocol)
      ..writeByte(30)
      ..write(obj.elementProtocol)
      ..writeByte(31)
      ..write(obj.summary)
      ..writeByte(32)
      ..write(obj.elementSummary)
      ..writeByte(33)
      ..write(obj.finding)
      ..writeByte(34)
      ..write(obj.prognosisCodeableConcept)
      ..writeByte(35)
      ..write(obj.prognosisReference)
      ..writeByte(36)
      ..write(obj.supportingInfo)
      ..writeByte(37)
      ..write(obj.note);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClinicalImpression _$ClinicalImpressionFromJson(Map<String, dynamic> json) {
  return ClinicalImpression(
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusReason: json['statusReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReason'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
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
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    assessor: json['assessor'] == null
        ? null
        : Reference.fromJson(json['assessor'] as Map<String, dynamic>),
    previous: json['previous'] == null
        ? null
        : Reference.fromJson(json['previous'] as Map<String, dynamic>),
    problem: (json['problem'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    investigation: (json['investigation'] as List)
        ?.map((e) => e == null
            ? null
            : ClinicalImpression_Investigation.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    protocol: (json['protocol'] as List)?.map((e) => e as String)?.toList(),
    elementProtocol: (json['elementProtocol'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    summary: json['summary'] as String,
    elementSummary: json['elementSummary'] == null
        ? null
        : Element.fromJson(json['elementSummary'] as Map<String, dynamic>),
    finding: (json['finding'] as List)
        ?.map((e) => e == null
            ? null
            : ClinicalImpression_Finding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prognosisCodeableConcept: (json['prognosisCodeableConcept'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prognosisReference: (json['prognosisReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClinicalImpressionToJson(ClinicalImpression instance) =>
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
      'statusReason': instance.statusReason?.toJson(),
      'code': instance.code?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'effectiveDateTime': instance.effectiveDateTime,
      'elementEffectiveDateTime': instance.elementEffectiveDateTime?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'assessor': instance.assessor?.toJson(),
      'previous': instance.previous?.toJson(),
      'problem': instance.problem?.map((e) => e?.toJson())?.toList(),
      'investigation':
          instance.investigation?.map((e) => e?.toJson())?.toList(),
      'protocol': instance.protocol,
      'elementProtocol':
          instance.elementProtocol?.map((e) => e?.toJson())?.toList(),
      'summary': instance.summary,
      'elementSummary': instance.elementSummary?.toJson(),
      'finding': instance.finding?.map((e) => e?.toJson())?.toList(),
      'prognosisCodeableConcept':
          instance.prognosisCodeableConcept?.map((e) => e?.toJson())?.toList(),
      'prognosisReference':
          instance.prognosisReference?.map((e) => e?.toJson())?.toList(),
      'supportingInfo':
          instance.supportingInfo?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };

ClinicalImpression_Investigation _$ClinicalImpression_InvestigationFromJson(
    Map<String, dynamic> json) {
  return ClinicalImpression_Investigation(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    item: (json['item'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClinicalImpression_InvestigationToJson(
        ClinicalImpression_Investigation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };

ClinicalImpression_Finding _$ClinicalImpression_FindingFromJson(
    Map<String, dynamic> json) {
  return ClinicalImpression_Finding(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemCodeableConcept: json['itemCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['itemCodeableConcept'] as Map<String, dynamic>),
    itemReference: json['itemReference'] == null
        ? null
        : Reference.fromJson(json['itemReference'] as Map<String, dynamic>),
    basis: json['basis'] as String,
    elementBasis: json['elementBasis'] == null
        ? null
        : Element.fromJson(json['elementBasis'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClinicalImpression_FindingToJson(
        ClinicalImpression_Finding instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'itemCodeableConcept': instance.itemCodeableConcept?.toJson(),
      'itemReference': instance.itemReference?.toJson(),
      'basis': instance.basis,
      'elementBasis': instance.elementBasis?.toJson(),
    };
