import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class ResearchStudy {
  static Future<ResearchStudy> newInstance({
    String resourceType,
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
    List<ResearchStudy_Objective> objective,
  }) async {
    var fhirDb = new DatabaseHelper();
    ResearchStudy newResearchStudy = new ResearchStudy(
      resourceType: 'ResearchStudy',
      id: id ?? await fhirDb.newResourceId('ResearchStudy'),
      meta: meta ?? await Meta.newInstance(),
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
      objective: objective,
    );
    newResearchStudy.meta.createdAt = DateTime.now();
    newResearchStudy.meta.lastUpdated = newResearchStudy.meta.createdAt;
    int saved = await fhirDb.saveResource(newResearchStudy);
    return newResearchStudy;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'ResearchStudy';
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
  String status;
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

  ResearchStudy({
    @required this.resourceType,
    this.id,
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
    this.objective,
  });

  factory ResearchStudy.fromJson(Map<String, dynamic> json) =>
      _$ResearchStudyFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchStudyToJson(this);
}

class ResearchStudy_Arm {
  static Future<ResearchStudy_Arm> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    CodeableConcept type,
    String description,
    Element elementDescription,
  }) async {
    var fhirDb = new DatabaseHelper();
    ResearchStudy_Arm newResearchStudy_Arm = new ResearchStudy_Arm(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      type: type,
      description: description,
      elementDescription: elementDescription,
    );
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

  ResearchStudy_Arm({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.type,
    this.description,
    this.elementDescription,
  });

  factory ResearchStudy_Arm.fromJson(Map<String, dynamic> json) =>
      _$ResearchStudy_ArmFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchStudy_ArmToJson(this);
}

class ResearchStudy_Objective {
  static Future<ResearchStudy_Objective> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    CodeableConcept type,
  }) async {
    var fhirDb = new DatabaseHelper();
    ResearchStudy_Objective newResearchStudy_Objective =
        new ResearchStudy_Objective(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      type: type,
    );
    return newResearchStudy_Objective;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  CodeableConcept type;

  ResearchStudy_Objective({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.type,
  });

  factory ResearchStudy_Objective.fromJson(Map<String, dynamic> json) =>
      _$ResearchStudy_ObjectiveFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchStudy_ObjectiveToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResearchStudy _$ResearchStudyFromJson(Map<String, dynamic> json) {
  return ResearchStudy(
    resourceType: json['resourceType'] as String,
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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

Map<String, dynamic> _$ResearchStudyToJson(ResearchStudy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull(
      'protocol', instance.protocol?.map((e) => e?.toJson())?.toList());
  writeNotNull('partOf', instance.partOf?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('primaryPurposeType', instance.primaryPurposeType?.toJson());
  writeNotNull('phase', instance.phase?.toJson());
  writeNotNull(
      'category', instance.category?.map((e) => e?.toJson())?.toList());
  writeNotNull('focus', instance.focus?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'condition', instance.condition?.map((e) => e?.toJson())?.toList());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull('relatedArtifact',
      instance.relatedArtifact?.map((e) => e?.toJson())?.toList());
  writeNotNull('keyword', instance.keyword?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'location', instance.location?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull(
      'enrollment', instance.enrollment?.map((e) => e?.toJson())?.toList());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('sponsor', instance.sponsor?.toJson());
  writeNotNull(
      'principalInvestigator', instance.principalInvestigator?.toJson());
  writeNotNull('site', instance.site?.map((e) => e?.toJson())?.toList());
  writeNotNull('reasonStopped', instance.reasonStopped?.toJson());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull('arm', instance.arm?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'objective', instance.objective?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$ResearchStudy_ArmToJson(ResearchStudy_Arm instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  return val;
}

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
    ResearchStudy_Objective instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('type', instance.type?.toJson());
  return val;
}
