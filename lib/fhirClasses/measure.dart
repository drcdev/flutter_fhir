import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Measure {
  static Future<Measure> newInstance({
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
    String url,
    Element elementUrl,
    List<Identifier> identifier,
    String version,
    Element elementVersion,
    String name,
    Element elementName,
    String title,
    Element elementTitle,
    String subtitle,
    Element elementSubtitle,
    String status,
    Element elementStatus,
    bool experimental,
    Element elementExperimental,
    CodeableConcept subjectCodeableConcept,
    Reference subjectReference,
    DateTime date,
    Element elementDate,
    String publisher,
    Element elementPublisher,
    List<ContactDetail> contact,
    String description,
    Element elementDescription,
    List<UsageContext> useContext,
    List<CodeableConcept> jurisdiction,
    String purpose,
    Element elementPurpose,
    String usage,
    Element elementUsage,
    String copyright,
    Element elementCopyright,
    String approvalDate,
    Element elementApprovalDate,
    String lastReviewDate,
    Element elementLastReviewDate,
    Period effectivePeriod,
    List<CodeableConcept> topic,
    List<ContactDetail> author,
    List<ContactDetail> editor,
    List<ContactDetail> reviewer,
    List<ContactDetail> endorser,
    List<RelatedArtifact> relatedArtifact,
    List<String> library,
    String disclaimer,
    Element elementDisclaimer,
    CodeableConcept scoring,
    CodeableConcept compositeScoring,
    List<CodeableConcept> type,
    String riskAdjustment,
    Element elementRiskAdjustment,
    String rateAggregation,
    Element elementRateAggregation,
    String rationale,
    Element elementRationale,
    String clinicalRecommendationStatement,
    Element elementClinicalRecommendationStatement,
    CodeableConcept improvementNotation,
    List<String> definition,
    List<Element> elementDefinition,
    String guidance,
    Element elementGuidance,
    List<Measure_Group> group,
    List<Measure_SupplementalData> supplementalData,
  }) async {
    var fhirDb = new DatabaseHelper();
    Measure newMeasure = new Measure(
      resourceType: 'Measure',
      id: id ?? await fhirDb.newResourceId('Measure'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      url: url,
      elementUrl: elementUrl,
      identifier: identifier,
      version: version,
      elementVersion: elementVersion,
      name: name,
      elementName: elementName,
      title: title,
      elementTitle: elementTitle,
      subtitle: subtitle,
      elementSubtitle: elementSubtitle,
      status: status,
      elementStatus: elementStatus,
      experimental: experimental,
      elementExperimental: elementExperimental,
      subjectCodeableConcept: subjectCodeableConcept,
      subjectReference: subjectReference,
      date: date,
      elementDate: elementDate,
      publisher: publisher,
      elementPublisher: elementPublisher,
      contact: contact,
      description: description,
      elementDescription: elementDescription,
      useContext: useContext,
      jurisdiction: jurisdiction,
      purpose: purpose,
      elementPurpose: elementPurpose,
      usage: usage,
      elementUsage: elementUsage,
      copyright: copyright,
      elementCopyright: elementCopyright,
      approvalDate: approvalDate,
      elementApprovalDate: elementApprovalDate,
      lastReviewDate: lastReviewDate,
      elementLastReviewDate: elementLastReviewDate,
      effectivePeriod: effectivePeriod,
      topic: topic,
      author: author,
      editor: editor,
      reviewer: reviewer,
      endorser: endorser,
      relatedArtifact: relatedArtifact,
      library: library,
      disclaimer: disclaimer,
      elementDisclaimer: elementDisclaimer,
      scoring: scoring,
      compositeScoring: compositeScoring,
      type: type,
      riskAdjustment: riskAdjustment,
      elementRiskAdjustment: elementRiskAdjustment,
      rateAggregation: rateAggregation,
      elementRateAggregation: elementRateAggregation,
      rationale: rationale,
      elementRationale: elementRationale,
      clinicalRecommendationStatement: clinicalRecommendationStatement,
      elementClinicalRecommendationStatement:
          elementClinicalRecommendationStatement,
      improvementNotation: improvementNotation,
      definition: definition,
      elementDefinition: elementDefinition,
      guidance: guidance,
      elementGuidance: elementGuidance,
      group: group,
      supplementalData: supplementalData,
    );
    newMeasure.meta.createdAt = DateTime.now();
    newMeasure.meta.lastUpdated = newMeasure.meta.createdAt;
    int saved = await fhirDb.saveResource(newMeasure);
    return newMeasure;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'Measure';
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
  String url;
  @HiveField(12)
  Element elementUrl;
  @HiveField(13)
  List<Identifier> identifier;
  @HiveField(14)
  String version;
  @HiveField(15)
  Element elementVersion;
  @HiveField(16)
  String name;
  @HiveField(17)
  Element elementName;
  @HiveField(18)
  String title;
  @HiveField(19)
  Element elementTitle;
  @HiveField(20)
  String subtitle;
  @HiveField(21)
  Element elementSubtitle;
  @HiveField(22)
  String status;
  @HiveField(23)
  Element elementStatus;
  @HiveField(24)
  bool experimental;
  @HiveField(25)
  Element elementExperimental;
  @HiveField(26)
  CodeableConcept subjectCodeableConcept;
  @HiveField(27)
  Reference subjectReference;
  @HiveField(28)
  DateTime date;
  @HiveField(29)
  Element elementDate;
  @HiveField(30)
  String publisher;
  @HiveField(31)
  Element elementPublisher;
  @HiveField(32)
  List<ContactDetail> contact;
  @HiveField(33)
  String description;
  @HiveField(34)
  Element elementDescription;
  @HiveField(35)
  List<UsageContext> useContext;
  @HiveField(36)
  List<CodeableConcept> jurisdiction;
  @HiveField(37)
  String purpose;
  @HiveField(38)
  Element elementPurpose;
  @HiveField(39)
  String usage;
  @HiveField(40)
  Element elementUsage;
  @HiveField(41)
  String copyright;
  @HiveField(42)
  Element elementCopyright;
  @HiveField(43)
  String approvalDate;
  @HiveField(44)
  Element elementApprovalDate;
  @HiveField(45)
  String lastReviewDate;
  @HiveField(46)
  Element elementLastReviewDate;
  @HiveField(47)
  Period effectivePeriod;
  @HiveField(48)
  List<CodeableConcept> topic;
  @HiveField(49)
  List<ContactDetail> author;
  @HiveField(50)
  List<ContactDetail> editor;
  @HiveField(51)
  List<ContactDetail> reviewer;
  @HiveField(52)
  List<ContactDetail> endorser;
  @HiveField(53)
  List<RelatedArtifact> relatedArtifact;
  @HiveField(54)
  List<String> library;
  @HiveField(55)
  String disclaimer;
  @HiveField(56)
  Element elementDisclaimer;
  @HiveField(57)
  CodeableConcept scoring;
  @HiveField(58)
  CodeableConcept compositeScoring;
  @HiveField(59)
  List<CodeableConcept> type;
  @HiveField(60)
  String riskAdjustment;
  @HiveField(61)
  Element elementRiskAdjustment;
  @HiveField(62)
  String rateAggregation;
  @HiveField(63)
  Element elementRateAggregation;
  @HiveField(64)
  String rationale;
  @HiveField(65)
  Element elementRationale;
  @HiveField(66)
  String clinicalRecommendationStatement;
  @HiveField(67)
  Element elementClinicalRecommendationStatement;
  @HiveField(68)
  CodeableConcept improvementNotation;
  @HiveField(69)
  List<String> definition;
  @HiveField(70)
  List<Element> elementDefinition;
  @HiveField(71)
  String guidance;
  @HiveField(72)
  Element elementGuidance;
  @HiveField(73)
  List<Measure_Group> group;
  @HiveField(74)
  List<Measure_SupplementalData> supplementalData;

  Measure({
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
    this.url,
    this.elementUrl,
    this.identifier,
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
    this.subtitle,
    this.elementSubtitle,
    this.status,
    this.elementStatus,
    this.experimental,
    this.elementExperimental,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.elementPurpose,
    this.usage,
    this.elementUsage,
    this.copyright,
    this.elementCopyright,
    this.approvalDate,
    this.elementApprovalDate,
    this.lastReviewDate,
    this.elementLastReviewDate,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library,
    this.disclaimer,
    this.elementDisclaimer,
    this.scoring,
    this.compositeScoring,
    this.type,
    this.riskAdjustment,
    this.elementRiskAdjustment,
    this.rateAggregation,
    this.elementRateAggregation,
    this.rationale,
    this.elementRationale,
    this.clinicalRecommendationStatement,
    this.elementClinicalRecommendationStatement,
    this.improvementNotation,
    this.definition,
    this.elementDefinition,
    this.guidance,
    this.elementGuidance,
    this.group,
    this.supplementalData,
  });

  factory Measure.fromJson(Map<String, dynamic> json) =>
      _$MeasureFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureToJson(this);
}

class Measure_Group {
  static Future<Measure_Group> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    String description,
    Element elementDescription,
    List<Measure_Population> population,
    List<Measure_Stratifier> stratifier,
  }) async {
    var fhirDb = new DatabaseHelper();
    Measure_Group newMeasure_Group = new Measure_Group(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      description: description,
      elementDescription: elementDescription,
      population: population,
      stratifier: stratifier,
    );
    return newMeasure_Group;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept code;
  @HiveField(4)
  String description;
  @HiveField(5)
  Element elementDescription;
  @HiveField(6)
  List<Measure_Population> population;
  @HiveField(7)
  List<Measure_Stratifier> stratifier;

  Measure_Group({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.description,
    this.elementDescription,
    this.population,
    this.stratifier,
  });

  factory Measure_Group.fromJson(Map<String, dynamic> json) =>
      _$Measure_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_GroupToJson(this);
}

class Measure_Population {
  static Future<Measure_Population> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    String description,
    Element elementDescription,
    Expression criteria,
  }) async {
    var fhirDb = new DatabaseHelper();
    Measure_Population newMeasure_Population = new Measure_Population(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      description: description,
      elementDescription: elementDescription,
      criteria: criteria,
    );
    return newMeasure_Population;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept code;
  @HiveField(4)
  String description;
  @HiveField(5)
  Element elementDescription;
  @HiveField(6)
  Expression criteria;

  Measure_Population({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.description,
    this.elementDescription,
    @required this.criteria,
  });

  factory Measure_Population.fromJson(Map<String, dynamic> json) =>
      _$Measure_PopulationFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_PopulationToJson(this);
}

class Measure_Stratifier {
  static Future<Measure_Stratifier> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    String description,
    Element elementDescription,
    Expression criteria,
    List<Measure_Component> component,
  }) async {
    var fhirDb = new DatabaseHelper();
    Measure_Stratifier newMeasure_Stratifier = new Measure_Stratifier(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      description: description,
      elementDescription: elementDescription,
      criteria: criteria,
      component: component,
    );
    return newMeasure_Stratifier;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept code;
  @HiveField(4)
  String description;
  @HiveField(5)
  Element elementDescription;
  @HiveField(6)
  Expression criteria;
  @HiveField(7)
  List<Measure_Component> component;

  Measure_Stratifier({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.description,
    this.elementDescription,
    this.criteria,
    this.component,
  });

  factory Measure_Stratifier.fromJson(Map<String, dynamic> json) =>
      _$Measure_StratifierFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_StratifierToJson(this);
}

class Measure_Component {
  static Future<Measure_Component> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    String description,
    Element elementDescription,
    Expression criteria,
  }) async {
    var fhirDb = new DatabaseHelper();
    Measure_Component newMeasure_Component = new Measure_Component(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      description: description,
      elementDescription: elementDescription,
      criteria: criteria,
    );
    return newMeasure_Component;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept code;
  @HiveField(4)
  String description;
  @HiveField(5)
  Element elementDescription;
  @HiveField(6)
  Expression criteria;

  Measure_Component({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.description,
    this.elementDescription,
    @required this.criteria,
  });

  factory Measure_Component.fromJson(Map<String, dynamic> json) =>
      _$Measure_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_ComponentToJson(this);
}

class Measure_SupplementalData {
  static Future<Measure_SupplementalData> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    List<CodeableConcept> usage,
    String description,
    Element elementDescription,
    Expression criteria,
  }) async {
    var fhirDb = new DatabaseHelper();
    Measure_SupplementalData newMeasure_SupplementalData =
        new Measure_SupplementalData(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      usage: usage,
      description: description,
      elementDescription: elementDescription,
      criteria: criteria,
    );
    return newMeasure_SupplementalData;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept code;
  @HiveField(4)
  List<CodeableConcept> usage;
  @HiveField(5)
  String description;
  @HiveField(6)
  Element elementDescription;
  @HiveField(7)
  Expression criteria;

  Measure_SupplementalData({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.usage,
    this.description,
    this.elementDescription,
    @required this.criteria,
  });

  factory Measure_SupplementalData.fromJson(Map<String, dynamic> json) =>
      _$Measure_SupplementalDataFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_SupplementalDataToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Measure _$MeasureFromJson(Map<String, dynamic> json) {
  return Measure(
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
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    subtitle: json['subtitle'] as String,
    elementSubtitle: json['elementSubtitle'] == null
        ? null
        : Element.fromJson(json['elementSubtitle'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    elementExperimental: json['elementExperimental'] == null
        ? null
        : Element.fromJson(json['elementExperimental'] as Map<String, dynamic>),
    subjectCodeableConcept: json['subjectCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['subjectCodeableConcept'] as Map<String, dynamic>),
    subjectReference: json['subjectReference'] == null
        ? null
        : Reference.fromJson(json['subjectReference'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    publisher: json['publisher'] as String,
    elementPublisher: json['elementPublisher'] == null
        ? null
        : Element.fromJson(json['elementPublisher'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    usage: json['usage'] as String,
    elementUsage: json['elementUsage'] == null
        ? null
        : Element.fromJson(json['elementUsage'] as Map<String, dynamic>),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    approvalDate: json['approvalDate'] as String,
    elementApprovalDate: json['elementApprovalDate'] == null
        ? null
        : Element.fromJson(json['elementApprovalDate'] as Map<String, dynamic>),
    lastReviewDate: json['lastReviewDate'] as String,
    elementLastReviewDate: json['elementLastReviewDate'] == null
        ? null
        : Element.fromJson(
            json['elementLastReviewDate'] as Map<String, dynamic>),
    effectivePeriod: json['effectivePeriod'] == null
        ? null
        : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
    topic: (json['topic'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    author: (json['author'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    editor: (json['editor'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reviewer: (json['reviewer'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    endorser: (json['endorser'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relatedArtifact: (json['relatedArtifact'] as List)
        ?.map((e) => e == null
            ? null
            : RelatedArtifact.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    library: (json['library'] as List)?.map((e) => e as String)?.toList(),
    disclaimer: json['disclaimer'] as String,
    elementDisclaimer: json['elementDisclaimer'] == null
        ? null
        : Element.fromJson(json['elementDisclaimer'] as Map<String, dynamic>),
    scoring: json['scoring'] == null
        ? null
        : CodeableConcept.fromJson(json['scoring'] as Map<String, dynamic>),
    compositeScoring: json['compositeScoring'] == null
        ? null
        : CodeableConcept.fromJson(
            json['compositeScoring'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    riskAdjustment: json['riskAdjustment'] as String,
    elementRiskAdjustment: json['elementRiskAdjustment'] == null
        ? null
        : Element.fromJson(
            json['elementRiskAdjustment'] as Map<String, dynamic>),
    rateAggregation: json['rateAggregation'] as String,
    elementRateAggregation: json['elementRateAggregation'] == null
        ? null
        : Element.fromJson(
            json['elementRateAggregation'] as Map<String, dynamic>),
    rationale: json['rationale'] as String,
    elementRationale: json['elementRationale'] == null
        ? null
        : Element.fromJson(json['elementRationale'] as Map<String, dynamic>),
    clinicalRecommendationStatement:
        json['clinicalRecommendationStatement'] as String,
    elementClinicalRecommendationStatement:
        json['elementClinicalRecommendationStatement'] == null
            ? null
            : Element.fromJson(json['elementClinicalRecommendationStatement']
                as Map<String, dynamic>),
    improvementNotation: json['improvementNotation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['improvementNotation'] as Map<String, dynamic>),
    definition: (json['definition'] as List)?.map((e) => e as String)?.toList(),
    elementDefinition: (json['elementDefinition'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    guidance: json['guidance'] as String,
    elementGuidance: json['elementGuidance'] == null
        ? null
        : Element.fromJson(json['elementGuidance'] as Map<String, dynamic>),
    group: (json['group'] as List)
        ?.map((e) => e == null
            ? null
            : Measure_Group.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supplementalData: (json['supplementalData'] as List)
        ?.map((e) => e == null
            ? null
            : Measure_SupplementalData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MeasureToJson(Measure instance) {
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
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('subtitle', instance.subtitle);
  writeNotNull('elementSubtitle', instance.elementSubtitle?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('experimental', instance.experimental);
  writeNotNull('elementExperimental', instance.elementExperimental?.toJson());
  writeNotNull(
      'subjectCodeableConcept', instance.subjectCodeableConcept?.toJson());
  writeNotNull('subjectReference', instance.subjectReference?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('publisher', instance.publisher);
  writeNotNull('elementPublisher', instance.elementPublisher?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e?.toJson())?.toList());
  writeNotNull('purpose', instance.purpose);
  writeNotNull('elementPurpose', instance.elementPurpose?.toJson());
  writeNotNull('usage', instance.usage);
  writeNotNull('elementUsage', instance.elementUsage?.toJson());
  writeNotNull('copyright', instance.copyright);
  writeNotNull('elementCopyright', instance.elementCopyright?.toJson());
  writeNotNull('approvalDate', instance.approvalDate);
  writeNotNull('elementApprovalDate', instance.elementApprovalDate?.toJson());
  writeNotNull('lastReviewDate', instance.lastReviewDate);
  writeNotNull(
      'elementLastReviewDate', instance.elementLastReviewDate?.toJson());
  writeNotNull('effectivePeriod', instance.effectivePeriod?.toJson());
  writeNotNull('topic', instance.topic?.map((e) => e?.toJson())?.toList());
  writeNotNull('author', instance.author?.map((e) => e?.toJson())?.toList());
  writeNotNull('editor', instance.editor?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'reviewer', instance.reviewer?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'endorser', instance.endorser?.map((e) => e?.toJson())?.toList());
  writeNotNull('relatedArtifact',
      instance.relatedArtifact?.map((e) => e?.toJson())?.toList());
  writeNotNull('library', instance.library);
  writeNotNull('disclaimer', instance.disclaimer);
  writeNotNull('elementDisclaimer', instance.elementDisclaimer?.toJson());
  writeNotNull('scoring', instance.scoring?.toJson());
  writeNotNull('compositeScoring', instance.compositeScoring?.toJson());
  writeNotNull('type', instance.type?.map((e) => e?.toJson())?.toList());
  writeNotNull('riskAdjustment', instance.riskAdjustment);
  writeNotNull(
      'elementRiskAdjustment', instance.elementRiskAdjustment?.toJson());
  writeNotNull('rateAggregation', instance.rateAggregation);
  writeNotNull(
      'elementRateAggregation', instance.elementRateAggregation?.toJson());
  writeNotNull('rationale', instance.rationale);
  writeNotNull('elementRationale', instance.elementRationale?.toJson());
  writeNotNull('clinicalRecommendationStatement',
      instance.clinicalRecommendationStatement);
  writeNotNull('elementClinicalRecommendationStatement',
      instance.elementClinicalRecommendationStatement?.toJson());
  writeNotNull('improvementNotation', instance.improvementNotation?.toJson());
  writeNotNull('definition', instance.definition);
  writeNotNull('elementDefinition',
      instance.elementDefinition?.map((e) => e?.toJson())?.toList());
  writeNotNull('guidance', instance.guidance);
  writeNotNull('elementGuidance', instance.elementGuidance?.toJson());
  writeNotNull('group', instance.group?.map((e) => e?.toJson())?.toList());
  writeNotNull('supplementalData',
      instance.supplementalData?.map((e) => e?.toJson())?.toList());
  return val;
}

Measure_Group _$Measure_GroupFromJson(Map<String, dynamic> json) {
  return Measure_Group(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    population: (json['population'] as List)
        ?.map((e) => e == null
            ? null
            : Measure_Population.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    stratifier: (json['stratifier'] as List)
        ?.map((e) => e == null
            ? null
            : Measure_Stratifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Measure_GroupToJson(Measure_Group instance) {
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
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull(
      'population', instance.population?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'stratifier', instance.stratifier?.map((e) => e?.toJson())?.toList());
  return val;
}

Measure_Population _$Measure_PopulationFromJson(Map<String, dynamic> json) {
  return Measure_Population(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    criteria: json['criteria'] == null
        ? null
        : Expression.fromJson(json['criteria'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Measure_PopulationToJson(Measure_Population instance) {
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
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('criteria', instance.criteria?.toJson());
  return val;
}

Measure_Stratifier _$Measure_StratifierFromJson(Map<String, dynamic> json) {
  return Measure_Stratifier(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    criteria: json['criteria'] == null
        ? null
        : Expression.fromJson(json['criteria'] as Map<String, dynamic>),
    component: (json['component'] as List)
        ?.map((e) => e == null
            ? null
            : Measure_Component.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Measure_StratifierToJson(Measure_Stratifier instance) {
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
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('criteria', instance.criteria?.toJson());
  writeNotNull(
      'component', instance.component?.map((e) => e?.toJson())?.toList());
  return val;
}

Measure_Component _$Measure_ComponentFromJson(Map<String, dynamic> json) {
  return Measure_Component(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    criteria: json['criteria'] == null
        ? null
        : Expression.fromJson(json['criteria'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Measure_ComponentToJson(Measure_Component instance) {
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
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('criteria', instance.criteria?.toJson());
  return val;
}

Measure_SupplementalData _$Measure_SupplementalDataFromJson(
    Map<String, dynamic> json) {
  return Measure_SupplementalData(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    usage: (json['usage'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    criteria: json['criteria'] == null
        ? null
        : Expression.fromJson(json['criteria'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Measure_SupplementalDataToJson(
    Measure_SupplementalData instance) {
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
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('usage', instance.usage?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('criteria', instance.criteria?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MeasureAdapter extends TypeAdapter<Measure> {
  @override
  Measure read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Measure(
      resourceType: fields[0] as String,
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
      url: fields[11] as String,
      elementUrl: fields[12] as Element,
      identifier: (fields[13] as List)?.cast<Identifier>(),
      version: fields[14] as String,
      elementVersion: fields[15] as Element,
      name: fields[16] as String,
      elementName: fields[17] as Element,
      title: fields[18] as String,
      elementTitle: fields[19] as Element,
      subtitle: fields[20] as String,
      elementSubtitle: fields[21] as Element,
      status: fields[22] as String,
      elementStatus: fields[23] as Element,
      experimental: fields[24] as bool,
      elementExperimental: fields[25] as Element,
      subjectCodeableConcept: fields[26] as CodeableConcept,
      subjectReference: fields[27] as Reference,
      date: fields[28] as DateTime,
      elementDate: fields[29] as Element,
      publisher: fields[30] as String,
      elementPublisher: fields[31] as Element,
      contact: (fields[32] as List)?.cast<ContactDetail>(),
      description: fields[33] as String,
      elementDescription: fields[34] as Element,
      useContext: (fields[35] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[36] as List)?.cast<CodeableConcept>(),
      purpose: fields[37] as String,
      elementPurpose: fields[38] as Element,
      usage: fields[39] as String,
      elementUsage: fields[40] as Element,
      copyright: fields[41] as String,
      elementCopyright: fields[42] as Element,
      approvalDate: fields[43] as String,
      elementApprovalDate: fields[44] as Element,
      lastReviewDate: fields[45] as String,
      elementLastReviewDate: fields[46] as Element,
      effectivePeriod: fields[47] as Period,
      topic: (fields[48] as List)?.cast<CodeableConcept>(),
      author: (fields[49] as List)?.cast<ContactDetail>(),
      editor: (fields[50] as List)?.cast<ContactDetail>(),
      reviewer: (fields[51] as List)?.cast<ContactDetail>(),
      endorser: (fields[52] as List)?.cast<ContactDetail>(),
      relatedArtifact: (fields[53] as List)?.cast<RelatedArtifact>(),
      library: (fields[54] as List)?.cast<String>(),
      disclaimer: fields[55] as String,
      elementDisclaimer: fields[56] as Element,
      scoring: fields[57] as CodeableConcept,
      compositeScoring: fields[58] as CodeableConcept,
      type: (fields[59] as List)?.cast<CodeableConcept>(),
      riskAdjustment: fields[60] as String,
      elementRiskAdjustment: fields[61] as Element,
      rateAggregation: fields[62] as String,
      elementRateAggregation: fields[63] as Element,
      rationale: fields[64] as String,
      elementRationale: fields[65] as Element,
      clinicalRecommendationStatement: fields[66] as String,
      elementClinicalRecommendationStatement: fields[67] as Element,
      improvementNotation: fields[68] as CodeableConcept,
      definition: (fields[69] as List)?.cast<String>(),
      elementDefinition: (fields[70] as List)?.cast<Element>(),
      guidance: fields[71] as String,
      elementGuidance: fields[72] as Element,
      group: (fields[73] as List)?.cast<Measure_Group>(),
      supplementalData: (fields[74] as List)?.cast<Measure_SupplementalData>(),
    );
  }

  @override
  void write(BinaryWriter writer, Measure obj) {
    writer
      ..writeByte(75)
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
      ..write(obj.url)
      ..writeByte(12)
      ..write(obj.elementUrl)
      ..writeByte(13)
      ..write(obj.identifier)
      ..writeByte(14)
      ..write(obj.version)
      ..writeByte(15)
      ..write(obj.elementVersion)
      ..writeByte(16)
      ..write(obj.name)
      ..writeByte(17)
      ..write(obj.elementName)
      ..writeByte(18)
      ..write(obj.title)
      ..writeByte(19)
      ..write(obj.elementTitle)
      ..writeByte(20)
      ..write(obj.subtitle)
      ..writeByte(21)
      ..write(obj.elementSubtitle)
      ..writeByte(22)
      ..write(obj.status)
      ..writeByte(23)
      ..write(obj.elementStatus)
      ..writeByte(24)
      ..write(obj.experimental)
      ..writeByte(25)
      ..write(obj.elementExperimental)
      ..writeByte(26)
      ..write(obj.subjectCodeableConcept)
      ..writeByte(27)
      ..write(obj.subjectReference)
      ..writeByte(28)
      ..write(obj.date)
      ..writeByte(29)
      ..write(obj.elementDate)
      ..writeByte(30)
      ..write(obj.publisher)
      ..writeByte(31)
      ..write(obj.elementPublisher)
      ..writeByte(32)
      ..write(obj.contact)
      ..writeByte(33)
      ..write(obj.description)
      ..writeByte(34)
      ..write(obj.elementDescription)
      ..writeByte(35)
      ..write(obj.useContext)
      ..writeByte(36)
      ..write(obj.jurisdiction)
      ..writeByte(37)
      ..write(obj.purpose)
      ..writeByte(38)
      ..write(obj.elementPurpose)
      ..writeByte(39)
      ..write(obj.usage)
      ..writeByte(40)
      ..write(obj.elementUsage)
      ..writeByte(41)
      ..write(obj.copyright)
      ..writeByte(42)
      ..write(obj.elementCopyright)
      ..writeByte(43)
      ..write(obj.approvalDate)
      ..writeByte(44)
      ..write(obj.elementApprovalDate)
      ..writeByte(45)
      ..write(obj.lastReviewDate)
      ..writeByte(46)
      ..write(obj.elementLastReviewDate)
      ..writeByte(47)
      ..write(obj.effectivePeriod)
      ..writeByte(48)
      ..write(obj.topic)
      ..writeByte(49)
      ..write(obj.author)
      ..writeByte(50)
      ..write(obj.editor)
      ..writeByte(51)
      ..write(obj.reviewer)
      ..writeByte(52)
      ..write(obj.endorser)
      ..writeByte(53)
      ..write(obj.relatedArtifact)
      ..writeByte(54)
      ..write(obj.library)
      ..writeByte(55)
      ..write(obj.disclaimer)
      ..writeByte(56)
      ..write(obj.elementDisclaimer)
      ..writeByte(57)
      ..write(obj.scoring)
      ..writeByte(58)
      ..write(obj.compositeScoring)
      ..writeByte(59)
      ..write(obj.type)
      ..writeByte(60)
      ..write(obj.riskAdjustment)
      ..writeByte(61)
      ..write(obj.elementRiskAdjustment)
      ..writeByte(62)
      ..write(obj.rateAggregation)
      ..writeByte(63)
      ..write(obj.elementRateAggregation)
      ..writeByte(64)
      ..write(obj.rationale)
      ..writeByte(65)
      ..write(obj.elementRationale)
      ..writeByte(66)
      ..write(obj.clinicalRecommendationStatement)
      ..writeByte(67)
      ..write(obj.elementClinicalRecommendationStatement)
      ..writeByte(68)
      ..write(obj.improvementNotation)
      ..writeByte(69)
      ..write(obj.definition)
      ..writeByte(70)
      ..write(obj.elementDefinition)
      ..writeByte(71)
      ..write(obj.guidance)
      ..writeByte(72)
      ..write(obj.elementGuidance)
      ..writeByte(73)
      ..write(obj.group)
      ..writeByte(74)
      ..write(obj.supplementalData);
  }
}

class Measure_GroupAdapter extends TypeAdapter<Measure_Group> {
  @override
  Measure_Group read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Measure_Group(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      description: fields[4] as String,
      elementDescription: fields[5] as Element,
      population: (fields[6] as List)?.cast<Measure_Population>(),
      stratifier: (fields[7] as List)?.cast<Measure_Stratifier>(),
    );
  }

  @override
  void write(BinaryWriter writer, Measure_Group obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.elementDescription)
      ..writeByte(6)
      ..write(obj.population)
      ..writeByte(7)
      ..write(obj.stratifier);
  }
}

class Measure_PopulationAdapter extends TypeAdapter<Measure_Population> {
  @override
  Measure_Population read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Measure_Population(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      description: fields[4] as String,
      elementDescription: fields[5] as Element,
      criteria: fields[6] as Expression,
    );
  }

  @override
  void write(BinaryWriter writer, Measure_Population obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.elementDescription)
      ..writeByte(6)
      ..write(obj.criteria);
  }
}

class Measure_StratifierAdapter extends TypeAdapter<Measure_Stratifier> {
  @override
  Measure_Stratifier read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Measure_Stratifier(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      description: fields[4] as String,
      elementDescription: fields[5] as Element,
      criteria: fields[6] as Expression,
      component: (fields[7] as List)?.cast<Measure_Component>(),
    );
  }

  @override
  void write(BinaryWriter writer, Measure_Stratifier obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.elementDescription)
      ..writeByte(6)
      ..write(obj.criteria)
      ..writeByte(7)
      ..write(obj.component);
  }
}

class Measure_ComponentAdapter extends TypeAdapter<Measure_Component> {
  @override
  Measure_Component read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Measure_Component(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      description: fields[4] as String,
      elementDescription: fields[5] as Element,
      criteria: fields[6] as Expression,
    );
  }

  @override
  void write(BinaryWriter writer, Measure_Component obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.elementDescription)
      ..writeByte(6)
      ..write(obj.criteria);
  }
}

class Measure_SupplementalDataAdapter
    extends TypeAdapter<Measure_SupplementalData> {
  @override
  Measure_SupplementalData read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Measure_SupplementalData(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      usage: (fields[4] as List)?.cast<CodeableConcept>(),
      description: fields[5] as String,
      elementDescription: fields[6] as Element,
      criteria: fields[7] as Expression,
    );
  }

  @override
  void write(BinaryWriter writer, Measure_SupplementalData obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.usage)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.elementDescription)
      ..writeByte(7)
      ..write(obj.criteria);
  }
}
