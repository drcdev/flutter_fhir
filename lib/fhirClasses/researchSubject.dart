import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class ResearchSubject {
  static Future<ResearchSubject> newInstance({
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
    String status,
    Element elementStatus,
    Period period,
    Reference study,
    Reference individual,
    String assignedArm,
    Element elementAssignedArm,
    String actualArm,
    Element elementActualArm,
    Reference consent,
  }) async {
    var fhirDb = new DatabaseHelper();
    ResearchSubject newResearchSubject = new ResearchSubject(
      resourceType: 'ResearchSubject',
      id: id ?? await fhirDb.newResourceId('ResearchSubject'),
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
      status: status,
      elementStatus: elementStatus,
      period: period,
      study: study,
      individual: individual,
      assignedArm: assignedArm,
      elementAssignedArm: elementAssignedArm,
      actualArm: actualArm,
      elementActualArm: elementActualArm,
      consent: consent,
    );
    newResearchSubject.meta.createdAt = DateTime.now();
    newResearchSubject.meta.lastUpdated = newResearchSubject.meta.createdAt;
    int saved = await fhirDb.saveResource(newResearchSubject);
    return newResearchSubject;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'ResearchSubject';
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
  String status;
  Element elementStatus;
  Period period;
  Reference study;
  Reference individual;
  String assignedArm;
  Element elementAssignedArm;
  String actualArm;
  Element elementActualArm;
  Reference consent;

  ResearchSubject({
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
    this.status,
    this.elementStatus,
    this.period,
    @required this.study,
    @required this.individual,
    this.assignedArm,
    this.elementAssignedArm,
    this.actualArm,
    this.elementActualArm,
    this.consent,
  });

  factory ResearchSubject.fromJson(Map<String, dynamic> json) =>
      _$ResearchSubjectFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchSubjectToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResearchSubject _$ResearchSubjectFromJson(Map<String, dynamic> json) {
  return ResearchSubject(
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    study: json['study'] == null
        ? null
        : Reference.fromJson(json['study'] as Map<String, dynamic>),
    individual: json['individual'] == null
        ? null
        : Reference.fromJson(json['individual'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ResearchSubjectToJson(ResearchSubject instance) {
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
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('study', instance.study?.toJson());
  writeNotNull('individual', instance.individual?.toJson());
  writeNotNull('assignedArm', instance.assignedArm);
  writeNotNull('elementAssignedArm', instance.elementAssignedArm?.toJson());
  writeNotNull('actualArm', instance.actualArm);
  writeNotNull('elementActualArm', instance.elementActualArm?.toJson());
  writeNotNull('consent', instance.consent?.toJson());
  return val;
}
