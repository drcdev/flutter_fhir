import 'package:hive/hive.dart';
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
@HiveType(typeId: 60)
class AdverseEvent {

  //  This is a AdverseEvent resource
  @HiveField(0)
  final String resourceType= 'AdverseEvent';

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

  //  Business identifiers assigned to this adverse event by the performer
  // or other systems which remain constant as the resource is updated and
  // propagates from server to server.
  @HiveField(11)
  Identifier identifier;

  //  Whether the event actually happened, or just had the potential to.
  // Note that this is independent of whether anyone was affected or harmed
  // or how severely.
  @HiveField(12)
  String actuality; // <code> enum: actual/potential;

  //  Extensions for actuality
  @HiveField(13)
  Element elementActuality;

  //  The overall type of event, intended for search and filtering purposes.
  @HiveField(14)
  List<CodeableConcept> category;

  //  This element defines the specific type of event that occurred or that
  // was prevented from occurring.
  @HiveField(15)
  CodeableConcept event;

  //  This subject or group impacted by the event.
  @HiveField(16)
  Reference subject;

  //  The Encounter during which AdverseEvent was created or to which the
  // creation of this record is tightly associated.
  @HiveField(17)
  Reference encounter;

  //  The date (and perhaps time) when the adverse event occurred.
  @HiveField(18)
  DateTime date;

  //  Extensions for date
  @HiveField(19)
  Element elementDate;

  //  Estimated or actual date the AdverseEvent began, in the opinion of the
  // reporter.
  @HiveField(20)
  DateTime detected;

  //  Extensions for detected
  @HiveField(21)
  Element elementDetected;

  //  The date on which the existence of the AdverseEvent was first
  // recorded.
  @HiveField(22)
  DateTime recordedDate;

  //  Extensions for recordedDate
  @HiveField(23)
  Element elementRecordedDate;

  //  Includes information about the reaction that occurred as a result of
  // exposure to a substance (for example, a drug or a chemical).
  @HiveField(24)
  List<Reference> resultingCondition;

  //  The information about where the adverse event occurred.
  @HiveField(25)
  Reference location;

  //  Assessment whether this event was of real importance.
  @HiveField(26)
  CodeableConcept seriousness;

  //  Describes the severity of the adverse event, in relation to the
  // subject. Contrast to AdverseEvent.seriousness - a severe rash might not
  // be serious, but a mild heart problem is.
  @HiveField(27)
  CodeableConcept severity;

  //  Describes the type of outcome from the adverse event.
  @HiveField(28)
  CodeableConcept outcome;

  //  Information on who recorded the adverse event.  May be the patient or
  // a practitioner.
  @HiveField(29)
  Reference recorder;

  //  Parties that may or should contribute or have contributed information
  // to the adverse event, which can consist of one or more activities. 
  // Such information includes information leading to the decision to
  // perform the activity and how to perform the activity (e.g. consultant),
  // information that the activity itself seeks to reveal (e.g. informant of
  // clinical history), or information about what activity was performed
  // (e.g. informant witness).
  @HiveField(30)
  List<Reference> contributor;

  //  Describes the entity that is suspected to have caused the adverse
  // event.
  @HiveField(31)
  List<AdverseEvent_SuspectEntity> suspectEntity;

  //  AdverseEvent.subjectMedicalHistory.
  @HiveField(32)
  List<Reference> subjectMedicalHistory;

  //  AdverseEvent.referenceDocument.
  @HiveField(33)
  List<Reference> referenceDocument;

  //  AdverseEvent.study.
  @HiveField(34)
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
@HiveType(typeId: 61)
class AdverseEvent_SuspectEntity {

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

  //  Identifies the actual instance of what caused the adverse event.  May
  // be a substance, medication, medication administration, medication
  // statement or a device.
  @HiveField(3)
  Reference instance;

  //  Information on the possible cause of the event.
  @HiveField(4)
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
@HiveType(typeId: 62)
class AdverseEvent_Causality {

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

  //  Assessment of if the entity caused the event.
  @HiveField(3)
  CodeableConcept assessment;

  //  AdverseEvent.suspectEntity.causalityProductRelatedness.
  @HiveField(4)
  String productRelatedness;

  //  Extensions for productRelatedness
  @HiveField(5)
  Element elementProductRelatedness;

  //  AdverseEvent.suspectEntity.causalityAuthor.
  @HiveField(6)
  Reference author;

  //  ProbabilityScale | Bayesian | Checklist.
  @HiveField(7)
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
// TypeAdapterGenerator
// **************************************************************************

class AdverseEventAdapter extends TypeAdapter<AdverseEvent> {
  @override
  final typeId = 60;

  @override
  AdverseEvent read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AdverseEvent(
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
      identifier: fields[11] as Identifier,
      actuality: fields[12] as String,
      elementActuality: fields[13] as Element,
      category: (fields[14] as List)?.cast<CodeableConcept>(),
      event: fields[15] as CodeableConcept,
      encounter: fields[17] as Reference,
      date: fields[18] as DateTime,
      elementDate: fields[19] as Element,
      detected: fields[20] as DateTime,
      elementDetected: fields[21] as Element,
      recordedDate: fields[22] as DateTime,
      elementRecordedDate: fields[23] as Element,
      resultingCondition: (fields[24] as List)?.cast<Reference>(),
      location: fields[25] as Reference,
      seriousness: fields[26] as CodeableConcept,
      severity: fields[27] as CodeableConcept,
      outcome: fields[28] as CodeableConcept,
      recorder: fields[29] as Reference,
      contributor: (fields[30] as List)?.cast<Reference>(),
      suspectEntity: (fields[31] as List)?.cast<AdverseEvent_SuspectEntity>(),
      subjectMedicalHistory: (fields[32] as List)?.cast<Reference>(),
      referenceDocument: (fields[33] as List)?.cast<Reference>(),
      study: (fields[34] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, AdverseEvent obj) {
    writer
      ..writeByte(35)
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
      ..write(obj.actuality)
      ..writeByte(13)
      ..write(obj.elementActuality)
      ..writeByte(14)
      ..write(obj.category)
      ..writeByte(15)
      ..write(obj.event)
      ..writeByte(16)
      ..write(obj.subject)
      ..writeByte(17)
      ..write(obj.encounter)
      ..writeByte(18)
      ..write(obj.date)
      ..writeByte(19)
      ..write(obj.elementDate)
      ..writeByte(20)
      ..write(obj.detected)
      ..writeByte(21)
      ..write(obj.elementDetected)
      ..writeByte(22)
      ..write(obj.recordedDate)
      ..writeByte(23)
      ..write(obj.elementRecordedDate)
      ..writeByte(24)
      ..write(obj.resultingCondition)
      ..writeByte(25)
      ..write(obj.location)
      ..writeByte(26)
      ..write(obj.seriousness)
      ..writeByte(27)
      ..write(obj.severity)
      ..writeByte(28)
      ..write(obj.outcome)
      ..writeByte(29)
      ..write(obj.recorder)
      ..writeByte(30)
      ..write(obj.contributor)
      ..writeByte(31)
      ..write(obj.suspectEntity)
      ..writeByte(32)
      ..write(obj.subjectMedicalHistory)
      ..writeByte(33)
      ..write(obj.referenceDocument)
      ..writeByte(34)
      ..write(obj.study);
  }
}

class AdverseEvent_SuspectEntityAdapter
    extends TypeAdapter<AdverseEvent_SuspectEntity> {
  @override
  final typeId = 61;

  @override
  AdverseEvent_SuspectEntity read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AdverseEvent_SuspectEntity(
      fields[3] as Reference,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      causality: (fields[4] as List)?.cast<AdverseEvent_Causality>(),
    );
  }

  @override
  void write(BinaryWriter writer, AdverseEvent_SuspectEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.instance)
      ..writeByte(4)
      ..write(obj.causality);
  }
}

class AdverseEvent_CausalityAdapter
    extends TypeAdapter<AdverseEvent_Causality> {
  @override
  final typeId = 62;

  @override
  AdverseEvent_Causality read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AdverseEvent_Causality(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      assessment: fields[3] as CodeableConcept,
      productRelatedness: fields[4] as String,
      elementProductRelatedness: fields[5] as Element,
      author: fields[6] as Reference,
      method: fields[7] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, AdverseEvent_Causality obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.assessment)
      ..writeByte(4)
      ..write(obj.productRelatedness)
      ..writeByte(5)
      ..write(obj.elementProductRelatedness)
      ..writeByte(6)
      ..write(obj.author)
      ..writeByte(7)
      ..write(obj.method);
  }
}

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
