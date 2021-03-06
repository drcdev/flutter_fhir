import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

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
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'Measure';
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
  String url;
  Element elementUrl;
  List<Identifier> identifier;
  String version;
  Element elementVersion;
  String name;
  Element elementName;
  String title;
  Element elementTitle;
  String subtitle;
  Element elementSubtitle;
  String status;
  Element elementStatus;
  bool experimental;
  Element elementExperimental;
  CodeableConcept subjectCodeableConcept;
  Reference subjectReference;
  DateTime date;
  Element elementDate;
  String publisher;
  Element elementPublisher;
  List<ContactDetail> contact;
  String description;
  Element elementDescription;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String purpose;
  Element elementPurpose;
  String usage;
  Element elementUsage;
  String copyright;
  Element elementCopyright;
  String approvalDate;
  Element elementApprovalDate;
  String lastReviewDate;
  Element elementLastReviewDate;
  Period effectivePeriod;
  List<CodeableConcept> topic;
  List<ContactDetail> author;
  List<ContactDetail> editor;
  List<ContactDetail> reviewer;
  List<ContactDetail> endorser;
  List<RelatedArtifact> relatedArtifact;
  List<String> library;
  String disclaimer;
  Element elementDisclaimer;
  CodeableConcept scoring;
  CodeableConcept compositeScoring;
  List<CodeableConcept> type;
  String riskAdjustment;
  Element elementRiskAdjustment;
  String rateAggregation;
  Element elementRateAggregation;
  String rationale;
  Element elementRationale;
  String clinicalRecommendationStatement;
  Element elementClinicalRecommendationStatement;
  CodeableConcept improvementNotation;
  List<String> definition;
  List<Element> elementDefinition;
  String guidance;
  Element elementGuidance;
  List<Measure_Group> group;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  String description;
  Element elementDescription;
  List<Measure_Population> population;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  String description;
  Element elementDescription;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  String description;
  Element elementDescription;
  Expression criteria;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  String description;
  Element elementDescription;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  List<CodeableConcept> usage;
  String description;
  Element elementDescription;
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
