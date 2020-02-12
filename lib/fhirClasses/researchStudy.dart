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
	researchStudyBox.put(newResearchStudy.id, newResearchStudy);
	return newResearchStudy;
}
  final String resourceType= 'ResearchStudy';
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
  List<Identifier> identifier;
  String title;
  Element elementTitle;
  List<Reference> protocol;
  List<Reference> partOf;
  String status; // <code> enum: active/administratively-completed/approved/closed-to-accrual/closed-to-accrual-and-intervention/completed/disapproved/in-review/temporarily-closed-to-accrual/temporarily-closed-to-accrual-and-intervention/withdrawn;
  Element elementStatus;
  CodeableConcept primaryPurposeType;
  CodeableConcept phase;
  List<CodeableConcept> category;
  List<CodeableConcept> focus;
  List<CodeableConcept> condition;
  List<ContactDetail> contact;
  List<RelatedArtifact> relatedArtifact;
  List<CodeableConcept> keyword;
  List<CodeableConcept> location;
  String description;
  Element elementDescription;
  List<Reference> enrollment;
  Period period;
  Reference sponsor;
  Reference principalInvestigator;
  List<Reference> site;
  CodeableConcept reasonStopped;
  List<Annotation> note;
  List<ResearchStudy_Arm> arm;
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
	researchStudy_ArmBox.put(newResearchStudy_Arm.id, newResearchStudy_Arm);
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
	researchStudy_ObjectiveBox.put(newResearchStudy_Objective.id, newResearchStudy_Objective);
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
