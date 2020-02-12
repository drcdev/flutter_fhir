import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

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
@HiveType(typeId: 173)
class ResearchStudy {

	static Future<ResearchStudy> newInstance({
		String id,
		Meta meta,
		String implicitRules,
		Element elementImplicitRules,
		String language,
		Element elementLanguage,
		Narrative text,
		List<dynamic> contained,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<Identifier> identifier,
		String title,
		Element elementTitle,
		List<Reference> protocol,
		List<Reference> partOf,
		String status,
		Element elementStatus,
		CodeableConcept primaryPurposeType,
		CodeableConcept phase,
		List<CodeableConcept> category,
		List<CodeableConcept> focus,
		List<CodeableConcept> condition,
		List<ContactDetail> contact,
		List<RelatedArtifact> relatedArtifact,
		List<CodeableConcept> keyword,
		List<CodeableConcept> location,
		String description,
		Element elementDescription,
		List<Reference> enrollment,
		Period period,
		Reference sponsor,
		Reference principalInvestigator,
		List<Reference> site,
		CodeableConcept reasonStopped,
		List<Annotation> note,
		List<ResearchStudy_Arm> arm,
		List<ResearchStudy_Objective> objective}) async {
	ResearchStudy newResearchStudy = new ResearchStudy(
			id: await newId('ResearchStudy'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			title: title,
			elementTitle: elementTitle,
			protocol: protocol,
			partOf: partOf,
			status: status,
			elementStatus: elementStatus,
			primaryPurposeType: primaryPurposeType,
			phase: phase,
			category: category,
			focus: focus,
			condition: condition,
			contact: contact,
			relatedArtifact: relatedArtifact,
			keyword: keyword,
			location: location,
			description: description,
			elementDescription: elementDescription,
			enrollment: enrollment,
			period: period,
			sponsor: sponsor,
			principalInvestigator: principalInvestigator,
			site: site,
			reasonStopped: reasonStopped,
			note: note,
			arm: arm,
			objective: objective);
	var researchStudyBox = await Hive.openBox<ResearchStudy>('ResearchStudyBox');
	researchStudyBox.add(newResearchStudy);
	return newResearchStudy;
}
  @HiveField(0)
  final String resourceType= 'ResearchStudy';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Identifier> identifier;
  @HiveField(12)
  String title;
  @HiveField(13)
  Element elementTitle;
  @HiveField(14)
  List<Reference> protocol;
  @HiveField(15)
  List<Reference> partOf;
  @HiveField(16)
  String status; // <code> enum: active/administratively-completed/approved/closed-to-accrual/closed-to-accrual-and-intervention/completed/disapproved/in-review/temporarily-closed-to-accrual/temporarily-closed-to-accrual-and-intervention/withdrawn;
  @HiveField(17)
  Element elementStatus;
  @HiveField(18)
  CodeableConcept primaryPurposeType;
  @HiveField(19)
  CodeableConcept phase;
  @HiveField(20)
  List<CodeableConcept> category;
  @HiveField(21)
  List<CodeableConcept> focus;
  @HiveField(22)
  List<CodeableConcept> condition;
  @HiveField(23)
  List<ContactDetail> contact;
  @HiveField(24)
  List<RelatedArtifact> relatedArtifact;
  @HiveField(25)
  List<CodeableConcept> keyword;
  @HiveField(26)
  List<CodeableConcept> location;
  @HiveField(27)
  String description;
  @HiveField(28)
  Element elementDescription;
  @HiveField(29)
  List<Reference> enrollment;
  @HiveField(30)
  Period period;
  @HiveField(31)
  Reference sponsor;
  @HiveField(32)
  Reference principalInvestigator;
  @HiveField(33)
  List<Reference> site;
  @HiveField(34)
  CodeableConcept reasonStopped;
  @HiveField(35)
  List<Annotation> note;
  @HiveField(36)
  List<ResearchStudy_Arm> arm;
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

	static Future<ResearchStudy_Arm> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String name,
		Element elementName,
		CodeableConcept type,
		String description,
		Element elementDescription}) async {
	ResearchStudy_Arm newResearchStudy_Arm = new ResearchStudy_Arm(
			id: await newId('ResearchStudy_Arm'),
			extension: extension,
			modifierExtension: modifierExtension,
			name: name,
			elementName: elementName,
			type: type,
			description: description,
			elementDescription: elementDescription);
	var researchStudy_ArmBox = await Hive.openBox<ResearchStudy_Arm>('ResearchStudy_ArmBox');
	researchStudy_ArmBox.add(newResearchStudy_Arm);
	return newResearchStudy_Arm;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  CodeableConcept type;
  String description;
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

	static Future<ResearchStudy_Objective> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String name,
		Element elementName,
		CodeableConcept type}) async {
	ResearchStudy_Objective newResearchStudy_Objective = new ResearchStudy_Objective(
			id: await newId('ResearchStudy_Objective'),
			extension: extension,
			modifierExtension: modifierExtension,
			name: name,
			elementName: elementName,
			type: type);
	var researchStudy_ObjectiveBox = await Hive.openBox<ResearchStudy_Objective>('ResearchStudy_ObjectiveBox');
	researchStudy_ObjectiveBox.add(newResearchStudy_Objective);
	return newResearchStudy_Objective;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
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
  final typeId = 173;

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
