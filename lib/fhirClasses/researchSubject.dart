import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 174)
class ResearchSubject {

  //  This is a ResearchSubject resource
  @HiveField(0)
  final String resourceType= 'ResearchSubject';

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

  //  Identifiers assigned to this research subject for a study.
  @HiveField(11)
  List<Identifier> identifier;

  //  The current state of the subject.
  @HiveField(12)
  String status; // <code> enum: candidate/eligible/follow-up/ineligible/not-registered/off-study/on-study/on-study-intervention/on-study-observation/pending-on-study/potential-candidate/screening/withdrawn;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  The dates the subject began and ended their participation in the
  // study.
  @HiveField(14)
  Period period;

  //  Reference to the study the subject is participating in.
  @HiveField(15)
  Reference study;

  //  The record of the person or animal who is involved in the study.
  @HiveField(16)
  Reference individual;

  //  The name of the arm in the study the subject is expected to follow as
  // part of this study.
  @HiveField(17)
  String assignedArm;

  //  Extensions for assignedArm
  @HiveField(18)
  Element elementAssignedArm;

  //  The name of the arm in the study the subject actually followed as part
  // of this study.
  @HiveField(19)
  String actualArm;

  //  Extensions for actualArm
  @HiveField(20)
  Element elementActualArm;

  //  A record of the patient's informed agreement to participate in the
  // study.
  @HiveField(21)
  Reference consent;

ResearchSubject(
  this.study,
    this.individual,
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
    this.period,
    this.assignedArm,
    this.elementAssignedArm,
    this.actualArm,
    this.elementActualArm,
    this.consent
    });

  factory ResearchSubject.fromJson(Map<String, dynamic> json) => _$ResearchSubjectFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchSubjectToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResearchSubjectAdapter extends TypeAdapter<ResearchSubject> {
  @override
  final typeId = 174;

  @override
  ResearchSubject read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ResearchSubject(
      fields[15] as Reference,
      fields[16] as Reference,
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
      period: fields[14] as Period,
      assignedArm: fields[17] as String,
      elementAssignedArm: fields[18] as Element,
      actualArm: fields[19] as String,
      elementActualArm: fields[20] as Element,
      consent: fields[21] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, ResearchSubject obj) {
    writer
      ..writeByte(22)
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
      ..write(obj.period)
      ..writeByte(15)
      ..write(obj.study)
      ..writeByte(16)
      ..write(obj.individual)
      ..writeByte(17)
      ..write(obj.assignedArm)
      ..writeByte(18)
      ..write(obj.elementAssignedArm)
      ..writeByte(19)
      ..write(obj.actualArm)
      ..writeByte(20)
      ..write(obj.elementActualArm)
      ..writeByte(21)
      ..write(obj.consent);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResearchSubject _$ResearchSubjectFromJson(Map<String, dynamic> json) {
  return ResearchSubject(
    json['study'] == null
        ? null
        : Reference.fromJson(json['study'] as Map<String, dynamic>),
    json['individual'] == null
        ? null
        : Reference.fromJson(json['individual'] as Map<String, dynamic>),
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
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    assignedArm: json['assignedArm'] as String,
    elementAssignedArm: json['elementAssignedArm'] == null
        ? null
        : Element.fromJson(json['elementAssignedArm'] as Map<String, dynamic>),
    actualArm: json['actualArm'] as String,
    elementActualArm: json['elementActualArm'] == null
        ? null
        : Element.fromJson(json['elementActualArm'] as Map<String, dynamic>),
    consent: json['consent'] == null
        ? null
        : Reference.fromJson(json['consent'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResearchSubjectToJson(ResearchSubject instance) =>
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
      'period': instance.period?.toJson(),
      'study': instance.study?.toJson(),
      'individual': instance.individual?.toJson(),
      'assignedArm': instance.assignedArm,
      'elementAssignedArm': instance.elementAssignedArm?.toJson(),
      'actualArm': instance.actualArm,
      'elementActualArm': instance.elementActualArm?.toJson(),
      'consent': instance.consent?.toJson(),
    };
