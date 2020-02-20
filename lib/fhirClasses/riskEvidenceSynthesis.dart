import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RiskEvidenceSynthesis {
  static Future<RiskEvidenceSynthesis> newInstance({
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
    String status,
    Element elementStatus,
    DateTime date,
    Element elementDate,
    String publisher,
    Element elementPublisher,
    List<ContactDetail> contact,
    String description,
    Element elementDescription,
    List<Annotation> note,
    List<UsageContext> useContext,
    List<CodeableConcept> jurisdiction,
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
    CodeableConcept synthesisType,
    CodeableConcept studyType,
    Reference population,
    Reference exposure,
    Reference outcome,
    RiskEvidenceSynthesis_SampleSize sampleSize,
    RiskEvidenceSynthesis_RiskEstimate riskEstimate,
    List<RiskEvidenceSynthesis_Certainty> certainty,
  }) async {
    var fhirDb = new DatabaseHelper();
    RiskEvidenceSynthesis newRiskEvidenceSynthesis = new RiskEvidenceSynthesis(
      resourceType: 'RiskEvidenceSynthesis',
      id: id ?? await fhirDb.newResourceId('RiskEvidenceSynthesis'),
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
      status: status,
      elementStatus: elementStatus,
      date: date,
      elementDate: elementDate,
      publisher: publisher,
      elementPublisher: elementPublisher,
      contact: contact,
      description: description,
      elementDescription: elementDescription,
      note: note,
      useContext: useContext,
      jurisdiction: jurisdiction,
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
      synthesisType: synthesisType,
      studyType: studyType,
      population: population,
      exposure: exposure,
      outcome: outcome,
      sampleSize: sampleSize,
      riskEstimate: riskEstimate,
      certainty: certainty,
    );
    newRiskEvidenceSynthesis.meta.createdAt = DateTime.now();
    newRiskEvidenceSynthesis.meta.lastUpdated =
        newRiskEvidenceSynthesis.meta.createdAt;
    int saved = await fhirDb.saveResource(newRiskEvidenceSynthesis);
    return newRiskEvidenceSynthesis;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'RiskEvidenceSynthesis';
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
  String status;
  Element elementStatus;
  DateTime date;
  Element elementDate;
  String publisher;
  Element elementPublisher;
  List<ContactDetail> contact;
  String description;
  Element elementDescription;
  List<Annotation> note;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
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
  CodeableConcept synthesisType;
  CodeableConcept studyType;
  Reference population;
  Reference exposure;
  Reference outcome;
  RiskEvidenceSynthesis_SampleSize sampleSize;
  RiskEvidenceSynthesis_RiskEstimate riskEstimate;
  List<RiskEvidenceSynthesis_Certainty> certainty;

  RiskEvidenceSynthesis({
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
    this.status,
    this.elementStatus,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.note,
    this.useContext,
    this.jurisdiction,
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
    this.synthesisType,
    this.studyType,
    @required this.population,
    this.exposure,
    @required this.outcome,
    this.sampleSize,
    this.riskEstimate,
    this.certainty,
  });

  factory RiskEvidenceSynthesis.fromJson(Map<String, dynamic> json) =>
      _$RiskEvidenceSynthesisFromJson(json);
  Map<String, dynamic> toJson() => _$RiskEvidenceSynthesisToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RiskEvidenceSynthesis_SampleSize {
  static Future<RiskEvidenceSynthesis_SampleSize> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String description,
    Element elementDescription,
    int numberOfStudies,
    Element elementNumberOfStudies,
    int numberOfParticipants,
    Element elementNumberOfParticipants,
  }) async {
    var fhirDb = new DatabaseHelper();
    RiskEvidenceSynthesis_SampleSize newRiskEvidenceSynthesis_SampleSize =
        new RiskEvidenceSynthesis_SampleSize(
      id: id ?? await fhirDb.newResourceId('RiskEvidenceSynthesis_SampleSize'),
      extension: extension,
      modifierExtension: modifierExtension,
      description: description,
      elementDescription: elementDescription,
      numberOfStudies: numberOfStudies,
      elementNumberOfStudies: elementNumberOfStudies,
      numberOfParticipants: numberOfParticipants,
      elementNumberOfParticipants: elementNumberOfParticipants,
    );
    return newRiskEvidenceSynthesis_SampleSize;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  int numberOfStudies;
  Element elementNumberOfStudies;
  int numberOfParticipants;
  Element elementNumberOfParticipants;

  RiskEvidenceSynthesis_SampleSize({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.numberOfStudies,
    this.elementNumberOfStudies,
    this.numberOfParticipants,
    this.elementNumberOfParticipants,
  });

  factory RiskEvidenceSynthesis_SampleSize.fromJson(
          Map<String, dynamic> json) =>
      _$RiskEvidenceSynthesis_SampleSizeFromJson(json);
  Map<String, dynamic> toJson() =>
      _$RiskEvidenceSynthesis_SampleSizeToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RiskEvidenceSynthesis_RiskEstimate {
  static Future<RiskEvidenceSynthesis_RiskEstimate> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String description,
    Element elementDescription,
    CodeableConcept type,
    double value,
    Element elementValue,
    CodeableConcept unitOfMeasure,
    int denominatorCount,
    Element elementDenominatorCount,
    int numeratorCount,
    Element elementNumeratorCount,
    List<RiskEvidenceSynthesis_PrecisionEstimate> precisionEstimate,
  }) async {
    var fhirDb = new DatabaseHelper();
    RiskEvidenceSynthesis_RiskEstimate newRiskEvidenceSynthesis_RiskEstimate =
        new RiskEvidenceSynthesis_RiskEstimate(
      id: id ??
          await fhirDb.newResourceId('RiskEvidenceSynthesis_RiskEstimate'),
      extension: extension,
      modifierExtension: modifierExtension,
      description: description,
      elementDescription: elementDescription,
      type: type,
      value: value,
      elementValue: elementValue,
      unitOfMeasure: unitOfMeasure,
      denominatorCount: denominatorCount,
      elementDenominatorCount: elementDenominatorCount,
      numeratorCount: numeratorCount,
      elementNumeratorCount: elementNumeratorCount,
      precisionEstimate: precisionEstimate,
    );
    return newRiskEvidenceSynthesis_RiskEstimate;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  CodeableConcept type;
  double value;
  Element elementValue;
  CodeableConcept unitOfMeasure;
  int denominatorCount;
  Element elementDenominatorCount;
  int numeratorCount;
  Element elementNumeratorCount;
  List<RiskEvidenceSynthesis_PrecisionEstimate> precisionEstimate;

  RiskEvidenceSynthesis_RiskEstimate({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.type,
    this.value,
    this.elementValue,
    this.unitOfMeasure,
    this.denominatorCount,
    this.elementDenominatorCount,
    this.numeratorCount,
    this.elementNumeratorCount,
    this.precisionEstimate,
  });

  factory RiskEvidenceSynthesis_RiskEstimate.fromJson(
          Map<String, dynamic> json) =>
      _$RiskEvidenceSynthesis_RiskEstimateFromJson(json);
  Map<String, dynamic> toJson() =>
      _$RiskEvidenceSynthesis_RiskEstimateToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RiskEvidenceSynthesis_PrecisionEstimate {
  static Future<RiskEvidenceSynthesis_PrecisionEstimate> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    double level,
    Element elementLevel,
    double from,
    Element elementFrom,
    double to,
    Element elementTo,
  }) async {
    var fhirDb = new DatabaseHelper();
    RiskEvidenceSynthesis_PrecisionEstimate
        newRiskEvidenceSynthesis_PrecisionEstimate =
        new RiskEvidenceSynthesis_PrecisionEstimate(
      id: id ??
          await fhirDb.newResourceId('RiskEvidenceSynthesis_PrecisionEstimate'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      level: level,
      elementLevel: elementLevel,
      from: from,
      elementFrom: elementFrom,
      to: to,
      elementTo: elementTo,
    );
    return newRiskEvidenceSynthesis_PrecisionEstimate;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  double level;
  Element elementLevel;
  double from;
  Element elementFrom;
  double to;
  Element elementTo;

  RiskEvidenceSynthesis_PrecisionEstimate({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.level,
    this.elementLevel,
    this.from,
    this.elementFrom,
    this.to,
    this.elementTo,
  });

  factory RiskEvidenceSynthesis_PrecisionEstimate.fromJson(
          Map<String, dynamic> json) =>
      _$RiskEvidenceSynthesis_PrecisionEstimateFromJson(json);
  Map<String, dynamic> toJson() =>
      _$RiskEvidenceSynthesis_PrecisionEstimateToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RiskEvidenceSynthesis_Certainty {
  static Future<RiskEvidenceSynthesis_Certainty> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<CodeableConcept> rating,
    List<Annotation> note,
    List<RiskEvidenceSynthesis_CertaintySubcomponent> certaintySubcomponent,
  }) async {
    var fhirDb = new DatabaseHelper();
    RiskEvidenceSynthesis_Certainty newRiskEvidenceSynthesis_Certainty =
        new RiskEvidenceSynthesis_Certainty(
      id: id ?? await fhirDb.newResourceId('RiskEvidenceSynthesis_Certainty'),
      extension: extension,
      modifierExtension: modifierExtension,
      rating: rating,
      note: note,
      certaintySubcomponent: certaintySubcomponent,
    );
    return newRiskEvidenceSynthesis_Certainty;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> rating;
  List<Annotation> note;
  List<RiskEvidenceSynthesis_CertaintySubcomponent> certaintySubcomponent;

  RiskEvidenceSynthesis_Certainty({
    this.id,
    this.extension,
    this.modifierExtension,
    this.rating,
    this.note,
    this.certaintySubcomponent,
  });

  factory RiskEvidenceSynthesis_Certainty.fromJson(Map<String, dynamic> json) =>
      _$RiskEvidenceSynthesis_CertaintyFromJson(json);
  Map<String, dynamic> toJson() =>
      _$RiskEvidenceSynthesis_CertaintyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RiskEvidenceSynthesis_CertaintySubcomponent {
  static Future<RiskEvidenceSynthesis_CertaintySubcomponent> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    List<CodeableConcept> rating,
    List<Annotation> note,
  }) async {
    var fhirDb = new DatabaseHelper();
    RiskEvidenceSynthesis_CertaintySubcomponent
        newRiskEvidenceSynthesis_CertaintySubcomponent =
        new RiskEvidenceSynthesis_CertaintySubcomponent(
      id: id ??
          await fhirDb
              .newResourceId('RiskEvidenceSynthesis_CertaintySubcomponent'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      rating: rating,
      note: note,
    );
    return newRiskEvidenceSynthesis_CertaintySubcomponent;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<CodeableConcept> rating;
  List<Annotation> note;

  RiskEvidenceSynthesis_CertaintySubcomponent({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.rating,
    this.note,
  });

  factory RiskEvidenceSynthesis_CertaintySubcomponent.fromJson(
          Map<String, dynamic> json) =>
      _$RiskEvidenceSynthesis_CertaintySubcomponentFromJson(json);
  Map<String, dynamic> toJson() =>
      _$RiskEvidenceSynthesis_CertaintySubcomponentToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RiskEvidenceSynthesis _$RiskEvidenceSynthesisFromJson(
    Map<String, dynamic> json) {
  return RiskEvidenceSynthesis(
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
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
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    synthesisType: json['synthesisType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['synthesisType'] as Map<String, dynamic>),
    studyType: json['studyType'] == null
        ? null
        : CodeableConcept.fromJson(json['studyType'] as Map<String, dynamic>),
    population: json['population'] == null
        ? null
        : Reference.fromJson(json['population'] as Map<String, dynamic>),
    exposure: json['exposure'] == null
        ? null
        : Reference.fromJson(json['exposure'] as Map<String, dynamic>),
    outcome: json['outcome'] == null
        ? null
        : Reference.fromJson(json['outcome'] as Map<String, dynamic>),
    sampleSize: json['sampleSize'] == null
        ? null
        : RiskEvidenceSynthesis_SampleSize.fromJson(
            json['sampleSize'] as Map<String, dynamic>),
    riskEstimate: json['riskEstimate'] == null
        ? null
        : RiskEvidenceSynthesis_RiskEstimate.fromJson(
            json['riskEstimate'] as Map<String, dynamic>),
    certainty: (json['certainty'] as List)
        ?.map((e) => e == null
            ? null
            : RiskEvidenceSynthesis_Certainty.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RiskEvidenceSynthesisToJson(
    RiskEvidenceSynthesis instance) {
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
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('publisher', instance.publisher);
  writeNotNull('elementPublisher', instance.elementPublisher?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e?.toJson())?.toList());
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
  writeNotNull('synthesisType', instance.synthesisType?.toJson());
  writeNotNull('studyType', instance.studyType?.toJson());
  writeNotNull('population', instance.population?.toJson());
  writeNotNull('exposure', instance.exposure?.toJson());
  writeNotNull('outcome', instance.outcome?.toJson());
  writeNotNull('sampleSize', instance.sampleSize?.toJson());
  writeNotNull('riskEstimate', instance.riskEstimate?.toJson());
  writeNotNull(
      'certainty', instance.certainty?.map((e) => e?.toJson())?.toList());
  return val;
}

RiskEvidenceSynthesis_SampleSize _$RiskEvidenceSynthesis_SampleSizeFromJson(
    Map<String, dynamic> json) {
  return RiskEvidenceSynthesis_SampleSize(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    numberOfStudies: json['numberOfStudies'] as int,
    elementNumberOfStudies: json['elementNumberOfStudies'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfStudies'] as Map<String, dynamic>),
    numberOfParticipants: json['numberOfParticipants'] as int,
    elementNumberOfParticipants: json['elementNumberOfParticipants'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfParticipants'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RiskEvidenceSynthesis_SampleSizeToJson(
    RiskEvidenceSynthesis_SampleSize instance) {
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
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('numberOfStudies', instance.numberOfStudies);
  writeNotNull(
      'elementNumberOfStudies', instance.elementNumberOfStudies?.toJson());
  writeNotNull('numberOfParticipants', instance.numberOfParticipants);
  writeNotNull('elementNumberOfParticipants',
      instance.elementNumberOfParticipants?.toJson());
  return val;
}

RiskEvidenceSynthesis_RiskEstimate _$RiskEvidenceSynthesis_RiskEstimateFromJson(
    Map<String, dynamic> json) {
  return RiskEvidenceSynthesis_RiskEstimate(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    value: (json['value'] as num)?.toDouble(),
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    unitOfMeasure: json['unitOfMeasure'] == null
        ? null
        : CodeableConcept.fromJson(
            json['unitOfMeasure'] as Map<String, dynamic>),
    denominatorCount: json['denominatorCount'] as int,
    elementDenominatorCount: json['elementDenominatorCount'] == null
        ? null
        : Element.fromJson(
            json['elementDenominatorCount'] as Map<String, dynamic>),
    numeratorCount: json['numeratorCount'] as int,
    elementNumeratorCount: json['elementNumeratorCount'] == null
        ? null
        : Element.fromJson(
            json['elementNumeratorCount'] as Map<String, dynamic>),
    precisionEstimate: (json['precisionEstimate'] as List)
        ?.map((e) => e == null
            ? null
            : RiskEvidenceSynthesis_PrecisionEstimate.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RiskEvidenceSynthesis_RiskEstimateToJson(
    RiskEvidenceSynthesis_RiskEstimate instance) {
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
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('value', instance.value);
  writeNotNull('elementValue', instance.elementValue?.toJson());
  writeNotNull('unitOfMeasure', instance.unitOfMeasure?.toJson());
  writeNotNull('denominatorCount', instance.denominatorCount);
  writeNotNull(
      'elementDenominatorCount', instance.elementDenominatorCount?.toJson());
  writeNotNull('numeratorCount', instance.numeratorCount);
  writeNotNull(
      'elementNumeratorCount', instance.elementNumeratorCount?.toJson());
  writeNotNull('precisionEstimate',
      instance.precisionEstimate?.map((e) => e?.toJson())?.toList());
  return val;
}

RiskEvidenceSynthesis_PrecisionEstimate
    _$RiskEvidenceSynthesis_PrecisionEstimateFromJson(
        Map<String, dynamic> json) {
  return RiskEvidenceSynthesis_PrecisionEstimate(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    level: (json['level'] as num)?.toDouble(),
    elementLevel: json['elementLevel'] == null
        ? null
        : Element.fromJson(json['elementLevel'] as Map<String, dynamic>),
    from: (json['from'] as num)?.toDouble(),
    elementFrom: json['elementFrom'] == null
        ? null
        : Element.fromJson(json['elementFrom'] as Map<String, dynamic>),
    to: (json['to'] as num)?.toDouble(),
    elementTo: json['elementTo'] == null
        ? null
        : Element.fromJson(json['elementTo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RiskEvidenceSynthesis_PrecisionEstimateToJson(
    RiskEvidenceSynthesis_PrecisionEstimate instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('level', instance.level);
  writeNotNull('elementLevel', instance.elementLevel?.toJson());
  writeNotNull('from', instance.from);
  writeNotNull('elementFrom', instance.elementFrom?.toJson());
  writeNotNull('to', instance.to);
  writeNotNull('elementTo', instance.elementTo?.toJson());
  return val;
}

RiskEvidenceSynthesis_Certainty _$RiskEvidenceSynthesis_CertaintyFromJson(
    Map<String, dynamic> json) {
  return RiskEvidenceSynthesis_Certainty(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rating: (json['rating'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    certaintySubcomponent: (json['certaintySubcomponent'] as List)
        ?.map((e) => e == null
            ? null
            : RiskEvidenceSynthesis_CertaintySubcomponent.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RiskEvidenceSynthesis_CertaintyToJson(
    RiskEvidenceSynthesis_Certainty instance) {
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
  writeNotNull('rating', instance.rating?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull('certaintySubcomponent',
      instance.certaintySubcomponent?.map((e) => e?.toJson())?.toList());
  return val;
}

RiskEvidenceSynthesis_CertaintySubcomponent
    _$RiskEvidenceSynthesis_CertaintySubcomponentFromJson(
        Map<String, dynamic> json) {
  return RiskEvidenceSynthesis_CertaintySubcomponent(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    rating: (json['rating'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RiskEvidenceSynthesis_CertaintySubcomponentToJson(
    RiskEvidenceSynthesis_CertaintySubcomponent instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('rating', instance.rating?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  return val;
}
