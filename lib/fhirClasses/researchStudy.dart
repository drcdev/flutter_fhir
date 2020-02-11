import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 516)
class ResearchStudy {

  //  This is a ResearchStudy resource
  @HiveField(0)
  final String resourceType= 'ResearchStudy';

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

  //  Identifiers assigned to this research study by the sponsor or other
  // systems.
  @HiveField(11)
  List<Identifier> identifier;

  //  A short, descriptive user-friendly label for the study.
  @HiveField(12)
  String title;

  //  Extensions for title
  @HiveField(13)
  Element elementTitle;

  //  The set of steps expected to be performed as part of the execution of
  // the study.
  @HiveField(14)
  List<Reference> protocol;

  //  A larger research study of which this particular study is a component
  // or step.
  @HiveField(15)
  List<Reference> partOf;

  //  The current state of the study.
  @HiveField(16)
  String status; // <code> enum: active/administratively-completed/approved/closed-to-accrual/closed-to-accrual-and-intervention/completed/disapproved/in-review/temporarily-closed-to-accrual/temporarily-closed-to-accrual-and-intervention/withdrawn;

  //  Extensions for status
  @HiveField(17)
  Element elementStatus;

  //  The type of study based upon the intent of the study's activities. A
  // classification of the intent of the study.
  @HiveField(18)
  CodeableConcept primaryPurposeType;

  //  The stage in the progression of a therapy from initial experimental
  // use in humans in clinical trials to post-market evaluation.
  @HiveField(19)
  CodeableConcept phase;

  //  Codes categorizing the type of study such as investigational vs.
  // observational, type of blinding, type of randomization, safety vs.
  // efficacy, etc.
  @HiveField(20)
  List<CodeableConcept> category;

  //  The medication(s), food(s), therapy(ies), device(s) or other concerns
  // or interventions that the study is seeking to gain more information
  // about.
  @HiveField(21)
  List<CodeableConcept> focus;

  //  The condition that is the focus of the study.  For example, In a study
  // to examine risk factors for Lupus, might have as an inclusion criterion
  // "healthy volunteer", but the target condition code would be a Lupus
  // SNOMED code.
  @HiveField(22)
  List<CodeableConcept> condition;

  //  Contact details to assist a user in learning more about or engaging
  // with the study.
  @HiveField(23)
  List<ContactDetail> contact;

  //  Citations, references and other related documents.
  @HiveField(24)
  List<RelatedArtifact> relatedArtifact;

  //  Key terms to aid in searching for or filtering the study.
  @HiveField(25)
  List<CodeableConcept> keyword;

  //  Indicates a country, state or other region where the study is taking
  // place.
  @HiveField(26)
  List<CodeableConcept> location;

  //  A full description of how the study is being conducted.
  @HiveField(27)
  String description;

  //  Extensions for description
  @HiveField(28)
  Element elementDescription;

  //  Reference to a Group that defines the criteria for and quantity of
  // subjects participating in the study.  E.g. " 200 female Europeans
  // between the ages of 20 and 45 with early onset diabetes".
  @HiveField(29)
  List<Reference> enrollment;

  //  Identifies the start date and the expected (or actual, depending on
  // status) end date for the study.
  @HiveField(30)
  Period period;

  //  An organization that initiates the investigation and is legally
  // responsible for the study.
  @HiveField(31)
  Reference sponsor;

  //  A researcher in a study who oversees multiple aspects of the study,
  // such as concept development, protocol writing, protocol submission for
  // IRB approval, participant recruitment, informed consent, data
  // collection, analysis, interpretation and presentation.
  @HiveField(32)
  Reference principalInvestigator;

  //  A facility in which study activities are conducted.
  @HiveField(33)
  List<Reference> site;

  //  A description and/or code explaining the premature termination of the
  // study.
  @HiveField(34)
  CodeableConcept reasonStopped;

  //  Comments made about the study by the performer, subject or other
  // participants.
  @HiveField(35)
  List<Annotation> note;

  //  Describes an expected sequence of events for one of the participants
  // of a study.  E.g. Exposure to drug A, wash-out, exposure to drug B,
  // wash-out, follow-up.
  @HiveField(36)
  List<ResearchStudy_Arm> arm;

  //  A goal that the study is aiming to achieve in terms of a scientific
  // question to be answered by the analysis of data collected during the
  // study.
  @HiveField(37)
  List<ResearchStudy_Objective> objective;

ResearchStudy(
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
    this.title,
    this.elementTitle,
    this.protocol,
    this.partOf,
    this.status,
    this.elementStatus,
    this.primaryPurposeType,
    this.phase,
    this.category,
    this.focus,
    this.condition,
    this.contact,
    this.relatedArtifact,
    this.keyword,
    this.location,
    this.description,
    this.elementDescription,
    this.enrollment,
    this.period,
    this.sponsor,
    this.principalInvestigator,
    this.site,
    this.reasonStopped,
    this.note,
    this.arm,
    this.objective
    });

  factory ResearchStudy.fromJson(Map<String, dynamic> json) => _$ResearchStudyFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchStudyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResearchStudy_Arm {

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

  //  Unique, human-readable label for this arm of the study.
  String name;

  //  Extensions for name
  Element elementName;

  //  Categorization of study arm, e.g. experimental, active comparator,
  // placebo comparater.
  CodeableConcept type;

  //  A succinct description of the path through the study that would be
  // followed by a subject adhering to this arm.
  String description;

  //  Extensions for description
  Element elementDescription;

ResearchStudy_Arm(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.type,
    this.description,
    this.elementDescription
    });

  factory ResearchStudy_Arm.fromJson(Map<String, dynamic> json) => _$ResearchStudy_ArmFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchStudy_ArmToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResearchStudy_Objective {

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

  //  Unique, human-readable label for this objective of the study.
  String name;

  //  Extensions for name
  Element elementName;

  //  The kind of study objective.
  CodeableConcept type;

ResearchStudy_Objective(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.type
    });

  factory ResearchStudy_Objective.fromJson(Map<String, dynamic> json) => _$ResearchStudy_ObjectiveFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchStudy_ObjectiveToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResearchStudyAdapter extends TypeAdapter<ResearchStudy> {
  @override
  final typeId = 516;

  @override
  ResearchStudy read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ResearchStudy(
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
      title: fields[12] as String,
      elementTitle: fields[13] as Element,
      protocol: (fields[14] as List)?.cast<Reference>(),
      partOf: (fields[15] as List)?.cast<Reference>(),
      status: fields[16] as String,
      elementStatus: fields[17] as Element,
      primaryPurposeType: fields[18] as CodeableConcept,
      phase: fields[19] as CodeableConcept,
      category: (fields[20] as List)?.cast<CodeableConcept>(),
      focus: (fields[21] as List)?.cast<CodeableConcept>(),
      condition: (fields[22] as List)?.cast<CodeableConcept>(),
      contact: (fields[23] as List)?.cast<ContactDetail>(),
      relatedArtifact: (fields[24] as List)?.cast<RelatedArtifact>(),
      keyword: (fields[25] as List)?.cast<CodeableConcept>(),
      location: (fields[26] as List)?.cast<CodeableConcept>(),
      description: fields[27] as String,
      elementDescription: fields[28] as Element,
      enrollment: (fields[29] as List)?.cast<Reference>(),
      period: fields[30] as Period,
      sponsor: fields[31] as Reference,
      principalInvestigator: fields[32] as Reference,
      site: (fields[33] as List)?.cast<Reference>(),
      reasonStopped: fields[34] as CodeableConcept,
      note: (fields[35] as List)?.cast<Annotation>(),
      arm: (fields[36] as List)?.cast<ResearchStudy_Arm>(),
      objective: (fields[37] as List)?.cast<ResearchStudy_Objective>(),
    );
  }

  @override
  void write(BinaryWriter writer, ResearchStudy obj) {
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
      ..write(obj.title)
      ..writeByte(13)
      ..write(obj.elementTitle)
      ..writeByte(14)
      ..write(obj.protocol)
      ..writeByte(15)
      ..write(obj.partOf)
      ..writeByte(16)
      ..write(obj.status)
      ..writeByte(17)
      ..write(obj.elementStatus)
      ..writeByte(18)
      ..write(obj.primaryPurposeType)
      ..writeByte(19)
      ..write(obj.phase)
      ..writeByte(20)
      ..write(obj.category)
      ..writeByte(21)
      ..write(obj.focus)
      ..writeByte(22)
      ..write(obj.condition)
      ..writeByte(23)
      ..write(obj.contact)
      ..writeByte(24)
      ..write(obj.relatedArtifact)
      ..writeByte(25)
      ..write(obj.keyword)
      ..writeByte(26)
      ..write(obj.location)
      ..writeByte(27)
      ..write(obj.description)
      ..writeByte(28)
      ..write(obj.elementDescription)
      ..writeByte(29)
      ..write(obj.enrollment)
      ..writeByte(30)
      ..write(obj.period)
      ..writeByte(31)
      ..write(obj.sponsor)
      ..writeByte(32)
      ..write(obj.principalInvestigator)
      ..writeByte(33)
      ..write(obj.site)
      ..writeByte(34)
      ..write(obj.reasonStopped)
      ..writeByte(35)
      ..write(obj.note)
      ..writeByte(36)
      ..write(obj.arm)
      ..writeByte(37)
      ..write(obj.objective);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResearchStudy _$ResearchStudyFromJson(Map<String, dynamic> json) {
  return ResearchStudy(
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
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    protocol: (json['protocol'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    primaryPurposeType: json['primaryPurposeType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['primaryPurposeType'] as Map<String, dynamic>),
    phase: json['phase'] == null
        ? null
        : CodeableConcept.fromJson(json['phase'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    focus: (json['focus'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: (json['condition'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relatedArtifact: (json['relatedArtifact'] as List)
        ?.map((e) => e == null
            ? null
            : RelatedArtifact.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    keyword: (json['keyword'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: (json['location'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    enrollment: (json['enrollment'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    sponsor: json['sponsor'] == null
        ? null
        : Reference.fromJson(json['sponsor'] as Map<String, dynamic>),
    principalInvestigator: json['principalInvestigator'] == null
        ? null
        : Reference.fromJson(
            json['principalInvestigator'] as Map<String, dynamic>),
    site: (json['site'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonStopped: json['reasonStopped'] == null
        ? null
        : CodeableConcept.fromJson(
            json['reasonStopped'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    arm: (json['arm'] as List)
        ?.map((e) => e == null
            ? null
            : ResearchStudy_Arm.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    objective: (json['objective'] as List)
        ?.map((e) => e == null
            ? null
            : ResearchStudy_Objective.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ResearchStudyToJson(ResearchStudy instance) =>
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
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'protocol': instance.protocol?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'primaryPurposeType': instance.primaryPurposeType?.toJson(),
      'phase': instance.phase?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'focus': instance.focus?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition?.map((e) => e?.toJson())?.toList(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'relatedArtifact':
          instance.relatedArtifact?.map((e) => e?.toJson())?.toList(),
      'keyword': instance.keyword?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'enrollment': instance.enrollment?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'sponsor': instance.sponsor?.toJson(),
      'principalInvestigator': instance.principalInvestigator?.toJson(),
      'site': instance.site?.map((e) => e?.toJson())?.toList(),
      'reasonStopped': instance.reasonStopped?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'arm': instance.arm?.map((e) => e?.toJson())?.toList(),
      'objective': instance.objective?.map((e) => e?.toJson())?.toList(),
    };

ResearchStudy_Arm _$ResearchStudy_ArmFromJson(Map<String, dynamic> json) {
  return ResearchStudy_Arm(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResearchStudy_ArmToJson(ResearchStudy_Arm instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'type': instance.type?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
    };

ResearchStudy_Objective _$ResearchStudy_ObjectiveFromJson(
    Map<String, dynamic> json) {
  return ResearchStudy_Objective(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResearchStudy_ObjectiveToJson(
        ResearchStudy_Objective instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'type': instance.type?.toJson(),
    };
