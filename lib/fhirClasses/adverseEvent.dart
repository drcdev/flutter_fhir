import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class AdverseEvent {
  final String resourceType= 'AdverseEvent';
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
  Identifier identifier;
  String actuality; // <code> enum: actual/potential;
  Element elementActuality;
  List<CodeableConcept> category;
  CodeableConcept event;
  Reference subject;
  Reference encounter;
  DateTime date;
  Element elementDate;
  DateTime detected;
  Element elementDetected;
  DateTime recordedDate;
  Element elementRecordedDate;
  List<Reference> resultingCondition;
  Reference location;
  CodeableConcept seriousness;
  CodeableConcept severity;
  CodeableConcept outcome;
  Reference recorder;
  List<Reference> contributor;
  List<AdverseEvent_SuspectEntity> suspectEntity;
  List<Reference> subjectMedicalHistory;
  List<Reference> referenceDocument;
  List<Reference> study;

AdverseEvent(
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
    this.actuality,
    this.elementActuality,
    this.category,
    this.event,
    this.encounter,
    this.date,
    this.elementDate,
    this.detected,
    this.elementDetected,
    this.recordedDate,
    this.elementRecordedDate,
    this.resultingCondition,
    this.location,
    this.seriousness,
    this.severity,
    this.outcome,
    this.recorder,
    this.contributor,
    this.suspectEntity,
    this.subjectMedicalHistory,
    this.referenceDocument,
    this.study
    });

  factory AdverseEvent.fromJson(Map<String, dynamic> json) => _$AdverseEventFromJson(json);
  Map<String, dynamic> toJson() => _$AdverseEventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdverseEvent_SuspectEntity {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference instance;
  List<AdverseEvent_Causality> causality;

AdverseEvent_SuspectEntity(
  this.instance,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.causality
    });

  factory AdverseEvent_SuspectEntity.fromJson(Map<String, dynamic> json) => _$AdverseEvent_SuspectEntityFromJson(json);
  Map<String, dynamic> toJson() => _$AdverseEvent_SuspectEntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdverseEvent_Causality {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept assessment;
  String productRelatedness;
  Element elementProductRelatedness;
  Reference author;
  CodeableConcept method;

AdverseEvent_Causality(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.assessment,
    this.productRelatedness,
    this.elementProductRelatedness,
    this.author,
    this.method
    });

  factory AdverseEvent_Causality.fromJson(Map<String, dynamic> json) => _$AdverseEvent_CausalityFromJson(json);
  Map<String, dynamic> toJson() => _$AdverseEvent_CausalityToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdverseEvent _$AdverseEventFromJson(Map<String, dynamic> json) {
  return AdverseEvent(
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    actuality: json['actuality'] as String,
    elementActuality: json['elementActuality'] == null
        ? null
        : Element.fromJson(json['elementActuality'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    event: json['event'] == null
        ? null
        : CodeableConcept.fromJson(json['event'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    detected: json['detected'] == null
        ? null
        : DateTime.parse(json['detected'] as String),
    elementDetected: json['elementDetected'] == null
        ? null
        : Element.fromJson(json['elementDetected'] as Map<String, dynamic>),
    recordedDate: json['recordedDate'] == null
        ? null
        : DateTime.parse(json['recordedDate'] as String),
    elementRecordedDate: json['elementRecordedDate'] == null
        ? null
        : Element.fromJson(json['elementRecordedDate'] as Map<String, dynamic>),
    resultingCondition: (json['resultingCondition'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    seriousness: json['seriousness'] == null
        ? null
        : CodeableConcept.fromJson(json['seriousness'] as Map<String, dynamic>),
    severity: json['severity'] == null
        ? null
        : CodeableConcept.fromJson(json['severity'] as Map<String, dynamic>),
    outcome: json['outcome'] == null
        ? null
        : CodeableConcept.fromJson(json['outcome'] as Map<String, dynamic>),
    recorder: json['recorder'] == null
        ? null
        : Reference.fromJson(json['recorder'] as Map<String, dynamic>),
    contributor: (json['contributor'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    suspectEntity: (json['suspectEntity'] as List)
        ?.map((e) => e == null
            ? null
            : AdverseEvent_SuspectEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subjectMedicalHistory: (json['subjectMedicalHistory'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    referenceDocument: (json['referenceDocument'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    study: (json['study'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AdverseEventToJson(AdverseEvent instance) =>
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
      'identifier': instance.identifier?.toJson(),
      'actuality': instance.actuality,
      'elementActuality': instance.elementActuality?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'event': instance.event?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'detected': instance.detected?.toIso8601String(),
      'elementDetected': instance.elementDetected?.toJson(),
      'recordedDate': instance.recordedDate?.toIso8601String(),
      'elementRecordedDate': instance.elementRecordedDate?.toJson(),
      'resultingCondition':
          instance.resultingCondition?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.toJson(),
      'seriousness': instance.seriousness?.toJson(),
      'severity': instance.severity?.toJson(),
      'outcome': instance.outcome?.toJson(),
      'recorder': instance.recorder?.toJson(),
      'contributor': instance.contributor?.map((e) => e?.toJson())?.toList(),
      'suspectEntity':
          instance.suspectEntity?.map((e) => e?.toJson())?.toList(),
      'subjectMedicalHistory':
          instance.subjectMedicalHistory?.map((e) => e?.toJson())?.toList(),
      'referenceDocument':
          instance.referenceDocument?.map((e) => e?.toJson())?.toList(),
      'study': instance.study?.map((e) => e?.toJson())?.toList(),
    };

AdverseEvent_SuspectEntity _$AdverseEvent_SuspectEntityFromJson(
    Map<String, dynamic> json) {
  return AdverseEvent_SuspectEntity(
    json['instance'] == null
        ? null
        : Reference.fromJson(json['instance'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    causality: (json['causality'] as List)
        ?.map((e) => e == null
            ? null
            : AdverseEvent_Causality.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AdverseEvent_SuspectEntityToJson(
        AdverseEvent_SuspectEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'instance': instance.instance?.toJson(),
      'causality': instance.causality?.map((e) => e?.toJson())?.toList(),
    };

AdverseEvent_Causality _$AdverseEvent_CausalityFromJson(
    Map<String, dynamic> json) {
  return AdverseEvent_Causality(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    assessment: json['assessment'] == null
        ? null
        : CodeableConcept.fromJson(json['assessment'] as Map<String, dynamic>),
    productRelatedness: json['productRelatedness'] as String,
    elementProductRelatedness: json['elementProductRelatedness'] == null
        ? null
        : Element.fromJson(
            json['elementProductRelatedness'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AdverseEvent_CausalityToJson(
        AdverseEvent_Causality instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'assessment': instance.assessment?.toJson(),
      'productRelatedness': instance.productRelatedness,
      'elementProductRelatedness': instance.elementProductRelatedness?.toJson(),
      'author': instance.author?.toJson(),
      'method': instance.method?.toJson(),
    };
