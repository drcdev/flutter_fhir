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
@HiveType(typeId: 251)
class EpisodeOfCare {

  //  This is a EpisodeOfCare resource
  @HiveField(0)
  final String resourceType= 'EpisodeOfCare';

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

  //  The EpisodeOfCare may be known by different identifiers for different
  // contexts of use, such as when an external agency is tracking the
  // Episode for funding purposes.
  @HiveField(11)
  List<Identifier> identifier;

  //  planned | waitlist | active | onhold | finished | cancelled.
  @HiveField(12)
  String status; // <code> enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  The history of statuses that the EpisodeOfCare has been through
  // (without requiring processing the history of the resource).
  @HiveField(14)
  List<EpisodeOfCare_StatusHistory> statusHistory;

  //  A classification of the type of episode of care; e.g. specialist
  // referral, disease management, type of funded care.
  @HiveField(15)
  List<CodeableConcept> type;

  //  The list of diagnosis relevant to this episode of care.
  @HiveField(16)
  List<EpisodeOfCare_Diagnosis> diagnosis;

  //  The patient who is the focus of this episode of care.
  @HiveField(17)
  Reference patient;

  //  The organization that has assumed the specific responsibilities for
  // the specified duration.
  @HiveField(18)
  Reference managingOrganization;

  //  The interval during which the managing organization assumes the
  // defined responsibility.
  @HiveField(19)
  Period period;

  //  Referral Request(s) that are fulfilled by this EpisodeOfCare, incoming
  // referrals.
  @HiveField(20)
  List<Reference> referralRequest;

  //  The practitioner that is the care manager/care coordinator for this
  // patient.
  @HiveField(21)
  Reference careManager;

  //  The list of practitioners that may be facilitating this episode of
  // care for specific purposes.
  @HiveField(22)
  List<Reference> team;

  //  The set of accounts that may be used for billing for this
  // EpisodeOfCare.
  @HiveField(23)
  List<Reference> account;

EpisodeOfCare(
  this.patient,
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
    this.statusHistory,
    this.type,
    this.diagnosis,
    this.managingOrganization,
    this.period,
    this.referralRequest,
    this.careManager,
    this.team,
    this.account
    });

  factory EpisodeOfCare.fromJson(Map<String, dynamic> json) => _$EpisodeOfCareFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeOfCareToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 252)
class EpisodeOfCare_StatusHistory {

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

  //  planned | waitlist | active | onhold | finished | cancelled.
  @HiveField(3)
  String status; // <code> enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error;

  //  Extensions for status
  @HiveField(4)
  Element elementStatus;

  //  The period during this EpisodeOfCare that the specific status applied.
  @HiveField(5)
  Period period;

EpisodeOfCare_StatusHistory(
  this.period,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.status,
    this.elementStatus
    });

  factory EpisodeOfCare_StatusHistory.fromJson(Map<String, dynamic> json) => _$EpisodeOfCare_StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeOfCare_StatusHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 253)
class EpisodeOfCare_Diagnosis {

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

  //  A list of conditions/problems/diagnoses that this episode of care is
  // intended to be providing care for.
  @HiveField(3)
  Reference condition;

  //  Role that this diagnosis has within the episode of care (e.g.
  // admission, billing, discharge …).
  @HiveField(4)
  CodeableConcept role;

  //  Ranking of the diagnosis (for each role type).
  @HiveField(5)
  int rank;

  //  Extensions for rank
  @HiveField(6)
  Element elementRank;

EpisodeOfCare_Diagnosis(
  this.condition,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    this.rank,
    this.elementRank
    });

  factory EpisodeOfCare_Diagnosis.fromJson(Map<String, dynamic> json) => _$EpisodeOfCare_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeOfCare_DiagnosisToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EpisodeOfCareAdapter extends TypeAdapter<EpisodeOfCare> {
  @override
  final typeId = 251;

  @override
  EpisodeOfCare read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EpisodeOfCare(
      fields[17] as Reference,
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
      statusHistory: (fields[14] as List)?.cast<EpisodeOfCare_StatusHistory>(),
      type: (fields[15] as List)?.cast<CodeableConcept>(),
      diagnosis: (fields[16] as List)?.cast<EpisodeOfCare_Diagnosis>(),
      managingOrganization: fields[18] as Reference,
      period: fields[19] as Period,
      referralRequest: (fields[20] as List)?.cast<Reference>(),
      careManager: fields[21] as Reference,
      team: (fields[22] as List)?.cast<Reference>(),
      account: (fields[23] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, EpisodeOfCare obj) {
    writer
      ..writeByte(24)
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
      ..write(obj.statusHistory)
      ..writeByte(15)
      ..write(obj.type)
      ..writeByte(16)
      ..write(obj.diagnosis)
      ..writeByte(17)
      ..write(obj.patient)
      ..writeByte(18)
      ..write(obj.managingOrganization)
      ..writeByte(19)
      ..write(obj.period)
      ..writeByte(20)
      ..write(obj.referralRequest)
      ..writeByte(21)
      ..write(obj.careManager)
      ..writeByte(22)
      ..write(obj.team)
      ..writeByte(23)
      ..write(obj.account);
  }
}

class EpisodeOfCare_StatusHistoryAdapter
    extends TypeAdapter<EpisodeOfCare_StatusHistory> {
  @override
  final typeId = 252;

  @override
  EpisodeOfCare_StatusHistory read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EpisodeOfCare_StatusHistory(
      fields[5] as Period,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      status: fields[3] as String,
      elementStatus: fields[4] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, EpisodeOfCare_StatusHistory obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.elementStatus)
      ..writeByte(5)
      ..write(obj.period);
  }
}

class EpisodeOfCare_DiagnosisAdapter
    extends TypeAdapter<EpisodeOfCare_Diagnosis> {
  @override
  final typeId = 253;

  @override
  EpisodeOfCare_Diagnosis read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EpisodeOfCare_Diagnosis(
      fields[3] as Reference,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      role: fields[4] as CodeableConcept,
      rank: fields[5] as int,
      elementRank: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, EpisodeOfCare_Diagnosis obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.condition)
      ..writeByte(4)
      ..write(obj.role)
      ..writeByte(5)
      ..write(obj.rank)
      ..writeByte(6)
      ..write(obj.elementRank);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeOfCare _$EpisodeOfCareFromJson(Map<String, dynamic> json) {
  return EpisodeOfCare(
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
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
    statusHistory: (json['statusHistory'] as List)
        ?.map((e) => e == null
            ? null
            : EpisodeOfCare_StatusHistory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    diagnosis: (json['diagnosis'] as List)
        ?.map((e) => e == null
            ? null
            : EpisodeOfCare_Diagnosis.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    managingOrganization: json['managingOrganization'] == null
        ? null
        : Reference.fromJson(
            json['managingOrganization'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    referralRequest: (json['referralRequest'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    careManager: json['careManager'] == null
        ? null
        : Reference.fromJson(json['careManager'] as Map<String, dynamic>),
    team: (json['team'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    account: (json['account'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EpisodeOfCareToJson(EpisodeOfCare instance) =>
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
      'statusHistory':
          instance.statusHistory?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'diagnosis': instance.diagnosis?.map((e) => e?.toJson())?.toList(),
      'patient': instance.patient?.toJson(),
      'managingOrganization': instance.managingOrganization?.toJson(),
      'period': instance.period?.toJson(),
      'referralRequest':
          instance.referralRequest?.map((e) => e?.toJson())?.toList(),
      'careManager': instance.careManager?.toJson(),
      'team': instance.team?.map((e) => e?.toJson())?.toList(),
      'account': instance.account?.map((e) => e?.toJson())?.toList(),
    };

EpisodeOfCare_StatusHistory _$EpisodeOfCare_StatusHistoryFromJson(
    Map<String, dynamic> json) {
  return EpisodeOfCare_StatusHistory(
    json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EpisodeOfCare_StatusHistoryToJson(
        EpisodeOfCare_StatusHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'period': instance.period?.toJson(),
    };

EpisodeOfCare_Diagnosis _$EpisodeOfCare_DiagnosisFromJson(
    Map<String, dynamic> json) {
  return EpisodeOfCare_Diagnosis(
    json['condition'] == null
        ? null
        : Reference.fromJson(json['condition'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
    rank: json['rank'] as int,
    elementRank: json['elementRank'] == null
        ? null
        : Element.fromJson(json['elementRank'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EpisodeOfCare_DiagnosisToJson(
        EpisodeOfCare_Diagnosis instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition?.toJson(),
      'role': instance.role?.toJson(),
      'rank': instance.rank,
      'elementRank': instance.elementRank?.toJson(),
    };
