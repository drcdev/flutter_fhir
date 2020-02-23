import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class MolecularSequence {
  static Future<MolecularSequence> newInstance({
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
    String type,
    Element elementType,
    int coordinateSystem,
    Element elementCoordinateSystem,
    Reference patient,
    Reference specimen,
    Reference device,
    Reference performer,
    Quantity quantity,
    MolecularSequence_ReferenceSeq referenceSeq,
    List<MolecularSequence_Variant> variant,
    String observedSeq,
    Element elementObservedSeq,
    List<MolecularSequence_Quality> quality,
    int readCoverage,
    Element elementReadCoverage,
    List<MolecularSequence_Repository> repository,
    List<Reference> pointer,
    List<MolecularSequence_StructureVariant> structureVariant,
  }) async {
    var fhirDb = new DatabaseHelper();
    MolecularSequence newMolecularSequence = new MolecularSequence(
      resourceType: 'MolecularSequence',
      id: id ?? await fhirDb.newResourceId('MolecularSequence'),
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
      type: type,
      elementType: elementType,
      coordinateSystem: coordinateSystem,
      elementCoordinateSystem: elementCoordinateSystem,
      patient: patient,
      specimen: specimen,
      device: device,
      performer: performer,
      quantity: quantity,
      referenceSeq: referenceSeq,
      variant: variant,
      observedSeq: observedSeq,
      elementObservedSeq: elementObservedSeq,
      quality: quality,
      readCoverage: readCoverage,
      elementReadCoverage: elementReadCoverage,
      repository: repository,
      pointer: pointer,
      structureVariant: structureVariant,
    );
    newMolecularSequence.meta.createdAt = DateTime.now();
    newMolecularSequence.meta.lastUpdated = newMolecularSequence.meta.createdAt;
    int saved = await fhirDb.saveResource(newMolecularSequence);
    return newMolecularSequence;
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
  String resourceType = 'MolecularSequence';
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
  String type;
  @HiveField(13)
  Element elementType;
  @HiveField(14)
  int coordinateSystem;
  @HiveField(15)
  Element elementCoordinateSystem;
  @HiveField(16)
  Reference patient;
  @HiveField(17)
  Reference specimen;
  @HiveField(18)
  Reference device;
  @HiveField(19)
  Reference performer;
  @HiveField(20)
  Quantity quantity;
  @HiveField(21)
  MolecularSequence_ReferenceSeq referenceSeq;
  @HiveField(22)
  List<MolecularSequence_Variant> variant;
  @HiveField(23)
  String observedSeq;
  @HiveField(24)
  Element elementObservedSeq;
  @HiveField(25)
  List<MolecularSequence_Quality> quality;
  @HiveField(26)
  int readCoverage;
  @HiveField(27)
  Element elementReadCoverage;
  @HiveField(28)
  List<MolecularSequence_Repository> repository;
  @HiveField(29)
  List<Reference> pointer;
  @HiveField(30)
  List<MolecularSequence_StructureVariant> structureVariant;

  MolecularSequence({
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
    this.type,
    this.elementType,
    this.coordinateSystem,
    this.elementCoordinateSystem,
    this.patient,
    this.specimen,
    this.device,
    this.performer,
    this.quantity,
    this.referenceSeq,
    this.variant,
    this.observedSeq,
    this.elementObservedSeq,
    this.quality,
    this.readCoverage,
    this.elementReadCoverage,
    this.repository,
    this.pointer,
    this.structureVariant,
  });

  factory MolecularSequence.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequenceToJson(this);
}

class MolecularSequence_ReferenceSeq {
  static Future<MolecularSequence_ReferenceSeq> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept chromosome,
    String genomeBuild,
    Element elementGenomeBuild,
    String orientation,
    Element elementOrientation,
    CodeableConcept referenceSeqId,
    Reference referenceSeqPointer,
    String referenceSeqString,
    Element elementReferenceSeqString,
    String strand,
    Element elementStrand,
    int windowStart,
    Element elementWindowStart,
    int windowEnd,
    Element elementWindowEnd,
  }) async {
    var fhirDb = new DatabaseHelper();
    MolecularSequence_ReferenceSeq newMolecularSequence_ReferenceSeq =
        new MolecularSequence_ReferenceSeq(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      chromosome: chromosome,
      genomeBuild: genomeBuild,
      elementGenomeBuild: elementGenomeBuild,
      orientation: orientation,
      elementOrientation: elementOrientation,
      referenceSeqId: referenceSeqId,
      referenceSeqPointer: referenceSeqPointer,
      referenceSeqString: referenceSeqString,
      elementReferenceSeqString: elementReferenceSeqString,
      strand: strand,
      elementStrand: elementStrand,
      windowStart: windowStart,
      elementWindowStart: elementWindowStart,
      windowEnd: windowEnd,
      elementWindowEnd: elementWindowEnd,
    );
    return newMolecularSequence_ReferenceSeq;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept chromosome;
  @HiveField(4)
  String genomeBuild;
  @HiveField(5)
  Element elementGenomeBuild;
  @HiveField(6)
  String orientation;
  @HiveField(7)
  Element elementOrientation;
  @HiveField(8)
  CodeableConcept referenceSeqId;
  @HiveField(9)
  Reference referenceSeqPointer;
  @HiveField(10)
  String referenceSeqString;
  @HiveField(11)
  Element elementReferenceSeqString;
  @HiveField(12)
  String strand;
  @HiveField(13)
  Element elementStrand;
  @HiveField(14)
  int windowStart;
  @HiveField(15)
  Element elementWindowStart;
  @HiveField(16)
  int windowEnd;
  @HiveField(17)
  Element elementWindowEnd;

  MolecularSequence_ReferenceSeq({
    this.id,
    this.extension,
    this.modifierExtension,
    this.chromosome,
    this.genomeBuild,
    this.elementGenomeBuild,
    this.orientation,
    this.elementOrientation,
    this.referenceSeqId,
    this.referenceSeqPointer,
    this.referenceSeqString,
    this.elementReferenceSeqString,
    this.strand,
    this.elementStrand,
    this.windowStart,
    this.elementWindowStart,
    this.windowEnd,
    this.elementWindowEnd,
  });

  factory MolecularSequence_ReferenceSeq.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequence_ReferenceSeqFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_ReferenceSeqToJson(this);
}

class MolecularSequence_Variant {
  static Future<MolecularSequence_Variant> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int start,
    Element elementStart,
    int end,
    Element elementEnd,
    String observedAllele,
    Element elementObservedAllele,
    String referenceAllele,
    Element elementReferenceAllele,
    String cigar,
    Element elementCigar,
    Reference variantPointer,
  }) async {
    var fhirDb = new DatabaseHelper();
    MolecularSequence_Variant newMolecularSequence_Variant =
        new MolecularSequence_Variant(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      start: start,
      elementStart: elementStart,
      end: end,
      elementEnd: elementEnd,
      observedAllele: observedAllele,
      elementObservedAllele: elementObservedAllele,
      referenceAllele: referenceAllele,
      elementReferenceAllele: elementReferenceAllele,
      cigar: cigar,
      elementCigar: elementCigar,
      variantPointer: variantPointer,
    );
    return newMolecularSequence_Variant;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int start;
  @HiveField(4)
  Element elementStart;
  @HiveField(5)
  int end;
  @HiveField(6)
  Element elementEnd;
  @HiveField(7)
  String observedAllele;
  @HiveField(8)
  Element elementObservedAllele;
  @HiveField(9)
  String referenceAllele;
  @HiveField(10)
  Element elementReferenceAllele;
  @HiveField(11)
  String cigar;
  @HiveField(12)
  Element elementCigar;
  @HiveField(13)
  Reference variantPointer;

  MolecularSequence_Variant({
    this.id,
    this.extension,
    this.modifierExtension,
    this.start,
    this.elementStart,
    this.end,
    this.elementEnd,
    this.observedAllele,
    this.elementObservedAllele,
    this.referenceAllele,
    this.elementReferenceAllele,
    this.cigar,
    this.elementCigar,
    this.variantPointer,
  });

  factory MolecularSequence_Variant.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequence_VariantFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_VariantToJson(this);
}

class MolecularSequence_Quality {
  static Future<MolecularSequence_Quality> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String type,
    Element elementType,
    CodeableConcept standardSequence,
    int start,
    Element elementStart,
    int end,
    Element elementEnd,
    Quantity score,
    CodeableConcept method,
    double truthTP,
    Element elementTruthTP,
    double queryTP,
    Element elementQueryTP,
    double truthFN,
    Element elementTruthFN,
    double queryFP,
    Element elementQueryFP,
    double gtFP,
    Element elementGtFP,
    double precision,
    Element elementPrecision,
    double recall,
    Element elementRecall,
    double fScore,
    Element elementFScore,
    MolecularSequence_Roc roc,
  }) async {
    var fhirDb = new DatabaseHelper();
    MolecularSequence_Quality newMolecularSequence_Quality =
        new MolecularSequence_Quality(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      standardSequence: standardSequence,
      start: start,
      elementStart: elementStart,
      end: end,
      elementEnd: elementEnd,
      score: score,
      method: method,
      truthTP: truthTP,
      elementTruthTP: elementTruthTP,
      queryTP: queryTP,
      elementQueryTP: elementQueryTP,
      truthFN: truthFN,
      elementTruthFN: elementTruthFN,
      queryFP: queryFP,
      elementQueryFP: elementQueryFP,
      gtFP: gtFP,
      elementGtFP: elementGtFP,
      precision: precision,
      elementPrecision: elementPrecision,
      recall: recall,
      elementRecall: elementRecall,
      fScore: fScore,
      elementFScore: elementFScore,
      roc: roc,
    );
    return newMolecularSequence_Quality;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String type;
  @HiveField(4)
  Element elementType;
  @HiveField(5)
  CodeableConcept standardSequence;
  @HiveField(6)
  int start;
  @HiveField(7)
  Element elementStart;
  @HiveField(8)
  int end;
  @HiveField(9)
  Element elementEnd;
  @HiveField(10)
  Quantity score;
  @HiveField(11)
  CodeableConcept method;
  @HiveField(12)
  double truthTP;
  @HiveField(13)
  Element elementTruthTP;
  @HiveField(14)
  double queryTP;
  @HiveField(15)
  Element elementQueryTP;
  @HiveField(16)
  double truthFN;
  @HiveField(17)
  Element elementTruthFN;
  @HiveField(18)
  double queryFP;
  @HiveField(19)
  Element elementQueryFP;
  @HiveField(20)
  double gtFP;
  @HiveField(21)
  Element elementGtFP;
  @HiveField(22)
  double precision;
  @HiveField(23)
  Element elementPrecision;
  @HiveField(24)
  double recall;
  @HiveField(25)
  Element elementRecall;
  @HiveField(26)
  double fScore;
  @HiveField(27)
  Element elementFScore;
  @HiveField(28)
  MolecularSequence_Roc roc;

  MolecularSequence_Quality({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.standardSequence,
    this.start,
    this.elementStart,
    this.end,
    this.elementEnd,
    this.score,
    this.method,
    this.truthTP,
    this.elementTruthTP,
    this.queryTP,
    this.elementQueryTP,
    this.truthFN,
    this.elementTruthFN,
    this.queryFP,
    this.elementQueryFP,
    this.gtFP,
    this.elementGtFP,
    this.precision,
    this.elementPrecision,
    this.recall,
    this.elementRecall,
    this.fScore,
    this.elementFScore,
    this.roc,
  });

  factory MolecularSequence_Quality.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequence_QualityFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_QualityToJson(this);
}

class MolecularSequence_Roc {
  static Future<MolecularSequence_Roc> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<int> score,
    List<Element> elementScore,
    List<int> numTP,
    List<Element> elementNumTP,
    List<int> numFP,
    List<Element> elementNumFP,
    List<int> numFN,
    List<Element> elementNumFN,
    List<double> precision,
    List<Element> elementPrecision,
    List<double> sensitivity,
    List<Element> elementSensitivity,
    List<double> fMeasure,
    List<Element> elementFMeasure,
  }) async {
    var fhirDb = new DatabaseHelper();
    MolecularSequence_Roc newMolecularSequence_Roc = new MolecularSequence_Roc(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      score: score,
      elementScore: elementScore,
      numTP: numTP,
      elementNumTP: elementNumTP,
      numFP: numFP,
      elementNumFP: elementNumFP,
      numFN: numFN,
      elementNumFN: elementNumFN,
      precision: precision,
      elementPrecision: elementPrecision,
      sensitivity: sensitivity,
      elementSensitivity: elementSensitivity,
      fMeasure: fMeasure,
      elementFMeasure: elementFMeasure,
    );
    return newMolecularSequence_Roc;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<int> score;
  @HiveField(4)
  List<Element> elementScore;
  @HiveField(5)
  List<int> numTP;
  @HiveField(6)
  List<Element> elementNumTP;
  @HiveField(7)
  List<int> numFP;
  @HiveField(8)
  List<Element> elementNumFP;
  @HiveField(9)
  List<int> numFN;
  @HiveField(10)
  List<Element> elementNumFN;
  @HiveField(11)
  List<double> precision;
  @HiveField(12)
  List<Element> elementPrecision;
  @HiveField(13)
  List<double> sensitivity;
  @HiveField(14)
  List<Element> elementSensitivity;
  @HiveField(15)
  List<double> fMeasure;
  @HiveField(16)
  List<Element> elementFMeasure;

  MolecularSequence_Roc({
    this.id,
    this.extension,
    this.modifierExtension,
    this.score,
    this.elementScore,
    this.numTP,
    this.elementNumTP,
    this.numFP,
    this.elementNumFP,
    this.numFN,
    this.elementNumFN,
    this.precision,
    this.elementPrecision,
    this.sensitivity,
    this.elementSensitivity,
    this.fMeasure,
    this.elementFMeasure,
  });

  factory MolecularSequence_Roc.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequence_RocFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_RocToJson(this);
}

class MolecularSequence_Repository {
  static Future<MolecularSequence_Repository> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String type,
    Element elementType,
    String url,
    Element elementUrl,
    String name,
    Element elementName,
    String datasetId,
    Element elementDatasetId,
    String variantsetId,
    Element elementVariantsetId,
    String readsetId,
    Element elementReadsetId,
  }) async {
    var fhirDb = new DatabaseHelper();
    MolecularSequence_Repository newMolecularSequence_Repository =
        new MolecularSequence_Repository(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      url: url,
      elementUrl: elementUrl,
      name: name,
      elementName: elementName,
      datasetId: datasetId,
      elementDatasetId: elementDatasetId,
      variantsetId: variantsetId,
      elementVariantsetId: elementVariantsetId,
      readsetId: readsetId,
      elementReadsetId: elementReadsetId,
    );
    return newMolecularSequence_Repository;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String type;
  @HiveField(4)
  Element elementType;
  @HiveField(5)
  String url;
  @HiveField(6)
  Element elementUrl;
  @HiveField(7)
  String name;
  @HiveField(8)
  Element elementName;
  @HiveField(9)
  String datasetId;
  @HiveField(10)
  Element elementDatasetId;
  @HiveField(11)
  String variantsetId;
  @HiveField(12)
  Element elementVariantsetId;
  @HiveField(13)
  String readsetId;
  @HiveField(14)
  Element elementReadsetId;

  MolecularSequence_Repository({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.url,
    this.elementUrl,
    this.name,
    this.elementName,
    this.datasetId,
    this.elementDatasetId,
    this.variantsetId,
    this.elementVariantsetId,
    this.readsetId,
    this.elementReadsetId,
  });

  factory MolecularSequence_Repository.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequence_RepositoryFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_RepositoryToJson(this);
}

class MolecularSequence_StructureVariant {
  static Future<MolecularSequence_StructureVariant> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept variantType,
    bool exact,
    Element elementExact,
    int length,
    Element elementLength,
    MolecularSequence_Outer outer,
    MolecularSequence_Inner inner,
  }) async {
    var fhirDb = new DatabaseHelper();
    MolecularSequence_StructureVariant newMolecularSequence_StructureVariant =
        new MolecularSequence_StructureVariant(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      variantType: variantType,
      exact: exact,
      elementExact: elementExact,
      length: length,
      elementLength: elementLength,
      outer: outer,
      inner: inner,
    );
    return newMolecularSequence_StructureVariant;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept variantType;
  @HiveField(4)
  bool exact;
  @HiveField(5)
  Element elementExact;
  @HiveField(6)
  int length;
  @HiveField(7)
  Element elementLength;
  @HiveField(8)
  MolecularSequence_Outer outer;
  @HiveField(9)
  MolecularSequence_Inner inner;

  MolecularSequence_StructureVariant({
    this.id,
    this.extension,
    this.modifierExtension,
    this.variantType,
    this.exact,
    this.elementExact,
    this.length,
    this.elementLength,
    this.outer,
    this.inner,
  });

  factory MolecularSequence_StructureVariant.fromJson(
          Map<String, dynamic> json) =>
      _$MolecularSequence_StructureVariantFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MolecularSequence_StructureVariantToJson(this);
}

class MolecularSequence_Outer {
  static Future<MolecularSequence_Outer> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int start,
    Element elementStart,
    int end,
    Element elementEnd,
  }) async {
    var fhirDb = new DatabaseHelper();
    MolecularSequence_Outer newMolecularSequence_Outer =
        new MolecularSequence_Outer(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      start: start,
      elementStart: elementStart,
      end: end,
      elementEnd: elementEnd,
    );
    return newMolecularSequence_Outer;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int start;
  @HiveField(4)
  Element elementStart;
  @HiveField(5)
  int end;
  @HiveField(6)
  Element elementEnd;

  MolecularSequence_Outer({
    this.id,
    this.extension,
    this.modifierExtension,
    this.start,
    this.elementStart,
    this.end,
    this.elementEnd,
  });

  factory MolecularSequence_Outer.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequence_OuterFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_OuterToJson(this);
}

class MolecularSequence_Inner {
  static Future<MolecularSequence_Inner> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int start,
    Element elementStart,
    int end,
    Element elementEnd,
  }) async {
    var fhirDb = new DatabaseHelper();
    MolecularSequence_Inner newMolecularSequence_Inner =
        new MolecularSequence_Inner(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      start: start,
      elementStart: elementStart,
      end: end,
      elementEnd: elementEnd,
    );
    return newMolecularSequence_Inner;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int start;
  @HiveField(4)
  Element elementStart;
  @HiveField(5)
  int end;
  @HiveField(6)
  Element elementEnd;

  MolecularSequence_Inner({
    this.id,
    this.extension,
    this.modifierExtension,
    this.start,
    this.elementStart,
    this.end,
    this.elementEnd,
  });

  factory MolecularSequence_Inner.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequence_InnerFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_InnerToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MolecularSequence _$MolecularSequenceFromJson(Map<String, dynamic> json) {
  return MolecularSequence(
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
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    coordinateSystem: json['coordinateSystem'] as int,
    elementCoordinateSystem: json['elementCoordinateSystem'] == null
        ? null
        : Element.fromJson(
            json['elementCoordinateSystem'] as Map<String, dynamic>),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    specimen: json['specimen'] == null
        ? null
        : Reference.fromJson(json['specimen'] as Map<String, dynamic>),
    device: json['device'] == null
        ? null
        : Reference.fromJson(json['device'] as Map<String, dynamic>),
    performer: json['performer'] == null
        ? null
        : Reference.fromJson(json['performer'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    referenceSeq: json['referenceSeq'] == null
        ? null
        : MolecularSequence_ReferenceSeq.fromJson(
            json['referenceSeq'] as Map<String, dynamic>),
    variant: (json['variant'] as List)
        ?.map((e) => e == null
            ? null
            : MolecularSequence_Variant.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    observedSeq: json['observedSeq'] as String,
    elementObservedSeq: json['elementObservedSeq'] == null
        ? null
        : Element.fromJson(json['elementObservedSeq'] as Map<String, dynamic>),
    quality: (json['quality'] as List)
        ?.map((e) => e == null
            ? null
            : MolecularSequence_Quality.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    readCoverage: json['readCoverage'] as int,
    elementReadCoverage: json['elementReadCoverage'] == null
        ? null
        : Element.fromJson(json['elementReadCoverage'] as Map<String, dynamic>),
    repository: (json['repository'] as List)
        ?.map((e) => e == null
            ? null
            : MolecularSequence_Repository.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    pointer: (json['pointer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    structureVariant: (json['structureVariant'] as List)
        ?.map((e) => e == null
            ? null
            : MolecularSequence_StructureVariant.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MolecularSequenceToJson(MolecularSequence instance) {
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
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('coordinateSystem', instance.coordinateSystem);
  writeNotNull(
      'elementCoordinateSystem', instance.elementCoordinateSystem?.toJson());
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('specimen', instance.specimen?.toJson());
  writeNotNull('device', instance.device?.toJson());
  writeNotNull('performer', instance.performer?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('referenceSeq', instance.referenceSeq?.toJson());
  writeNotNull('variant', instance.variant?.map((e) => e?.toJson())?.toList());
  writeNotNull('observedSeq', instance.observedSeq);
  writeNotNull('elementObservedSeq', instance.elementObservedSeq?.toJson());
  writeNotNull('quality', instance.quality?.map((e) => e?.toJson())?.toList());
  writeNotNull('readCoverage', instance.readCoverage);
  writeNotNull('elementReadCoverage', instance.elementReadCoverage?.toJson());
  writeNotNull(
      'repository', instance.repository?.map((e) => e?.toJson())?.toList());
  writeNotNull('pointer', instance.pointer?.map((e) => e?.toJson())?.toList());
  writeNotNull('structureVariant',
      instance.structureVariant?.map((e) => e?.toJson())?.toList());
  return val;
}

MolecularSequence_ReferenceSeq _$MolecularSequence_ReferenceSeqFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_ReferenceSeq(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    chromosome: json['chromosome'] == null
        ? null
        : CodeableConcept.fromJson(json['chromosome'] as Map<String, dynamic>),
    genomeBuild: json['genomeBuild'] as String,
    elementGenomeBuild: json['elementGenomeBuild'] == null
        ? null
        : Element.fromJson(json['elementGenomeBuild'] as Map<String, dynamic>),
    orientation: json['orientation'] as String,
    elementOrientation: json['elementOrientation'] == null
        ? null
        : Element.fromJson(json['elementOrientation'] as Map<String, dynamic>),
    referenceSeqId: json['referenceSeqId'] == null
        ? null
        : CodeableConcept.fromJson(
            json['referenceSeqId'] as Map<String, dynamic>),
    referenceSeqPointer: json['referenceSeqPointer'] == null
        ? null
        : Reference.fromJson(
            json['referenceSeqPointer'] as Map<String, dynamic>),
    referenceSeqString: json['referenceSeqString'] as String,
    elementReferenceSeqString: json['elementReferenceSeqString'] == null
        ? null
        : Element.fromJson(
            json['elementReferenceSeqString'] as Map<String, dynamic>),
    strand: json['strand'] as String,
    elementStrand: json['elementStrand'] == null
        ? null
        : Element.fromJson(json['elementStrand'] as Map<String, dynamic>),
    windowStart: json['windowStart'] as int,
    elementWindowStart: json['elementWindowStart'] == null
        ? null
        : Element.fromJson(json['elementWindowStart'] as Map<String, dynamic>),
    windowEnd: json['windowEnd'] as int,
    elementWindowEnd: json['elementWindowEnd'] == null
        ? null
        : Element.fromJson(json['elementWindowEnd'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MolecularSequence_ReferenceSeqToJson(
    MolecularSequence_ReferenceSeq instance) {
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
  writeNotNull('chromosome', instance.chromosome?.toJson());
  writeNotNull('genomeBuild', instance.genomeBuild);
  writeNotNull('elementGenomeBuild', instance.elementGenomeBuild?.toJson());
  writeNotNull('orientation', instance.orientation);
  writeNotNull('elementOrientation', instance.elementOrientation?.toJson());
  writeNotNull('referenceSeqId', instance.referenceSeqId?.toJson());
  writeNotNull('referenceSeqPointer', instance.referenceSeqPointer?.toJson());
  writeNotNull('referenceSeqString', instance.referenceSeqString);
  writeNotNull('elementReferenceSeqString',
      instance.elementReferenceSeqString?.toJson());
  writeNotNull('strand', instance.strand);
  writeNotNull('elementStrand', instance.elementStrand?.toJson());
  writeNotNull('windowStart', instance.windowStart);
  writeNotNull('elementWindowStart', instance.elementWindowStart?.toJson());
  writeNotNull('windowEnd', instance.windowEnd);
  writeNotNull('elementWindowEnd', instance.elementWindowEnd?.toJson());
  return val;
}

MolecularSequence_Variant _$MolecularSequence_VariantFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_Variant(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    start: json['start'] as int,
    elementStart: json['elementStart'] == null
        ? null
        : Element.fromJson(json['elementStart'] as Map<String, dynamic>),
    end: json['end'] as int,
    elementEnd: json['elementEnd'] == null
        ? null
        : Element.fromJson(json['elementEnd'] as Map<String, dynamic>),
    observedAllele: json['observedAllele'] as String,
    elementObservedAllele: json['elementObservedAllele'] == null
        ? null
        : Element.fromJson(
            json['elementObservedAllele'] as Map<String, dynamic>),
    referenceAllele: json['referenceAllele'] as String,
    elementReferenceAllele: json['elementReferenceAllele'] == null
        ? null
        : Element.fromJson(
            json['elementReferenceAllele'] as Map<String, dynamic>),
    cigar: json['cigar'] as String,
    elementCigar: json['elementCigar'] == null
        ? null
        : Element.fromJson(json['elementCigar'] as Map<String, dynamic>),
    variantPointer: json['variantPointer'] == null
        ? null
        : Reference.fromJson(json['variantPointer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MolecularSequence_VariantToJson(
    MolecularSequence_Variant instance) {
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
  writeNotNull('start', instance.start);
  writeNotNull('elementStart', instance.elementStart?.toJson());
  writeNotNull('end', instance.end);
  writeNotNull('elementEnd', instance.elementEnd?.toJson());
  writeNotNull('observedAllele', instance.observedAllele);
  writeNotNull(
      'elementObservedAllele', instance.elementObservedAllele?.toJson());
  writeNotNull('referenceAllele', instance.referenceAllele);
  writeNotNull(
      'elementReferenceAllele', instance.elementReferenceAllele?.toJson());
  writeNotNull('cigar', instance.cigar);
  writeNotNull('elementCigar', instance.elementCigar?.toJson());
  writeNotNull('variantPointer', instance.variantPointer?.toJson());
  return val;
}

MolecularSequence_Quality _$MolecularSequence_QualityFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_Quality(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    standardSequence: json['standardSequence'] == null
        ? null
        : CodeableConcept.fromJson(
            json['standardSequence'] as Map<String, dynamic>),
    start: json['start'] as int,
    elementStart: json['elementStart'] == null
        ? null
        : Element.fromJson(json['elementStart'] as Map<String, dynamic>),
    end: json['end'] as int,
    elementEnd: json['elementEnd'] == null
        ? null
        : Element.fromJson(json['elementEnd'] as Map<String, dynamic>),
    score: json['score'] == null
        ? null
        : Quantity.fromJson(json['score'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    truthTP: (json['truthTP'] as num)?.toDouble(),
    elementTruthTP: json['elementTruthTP'] == null
        ? null
        : Element.fromJson(json['elementTruthTP'] as Map<String, dynamic>),
    queryTP: (json['queryTP'] as num)?.toDouble(),
    elementQueryTP: json['elementQueryTP'] == null
        ? null
        : Element.fromJson(json['elementQueryTP'] as Map<String, dynamic>),
    truthFN: (json['truthFN'] as num)?.toDouble(),
    elementTruthFN: json['elementTruthFN'] == null
        ? null
        : Element.fromJson(json['elementTruthFN'] as Map<String, dynamic>),
    queryFP: (json['queryFP'] as num)?.toDouble(),
    elementQueryFP: json['elementQueryFP'] == null
        ? null
        : Element.fromJson(json['elementQueryFP'] as Map<String, dynamic>),
    gtFP: (json['gtFP'] as num)?.toDouble(),
    elementGtFP: json['elementGtFP'] == null
        ? null
        : Element.fromJson(json['elementGtFP'] as Map<String, dynamic>),
    precision: (json['precision'] as num)?.toDouble(),
    elementPrecision: json['elementPrecision'] == null
        ? null
        : Element.fromJson(json['elementPrecision'] as Map<String, dynamic>),
    recall: (json['recall'] as num)?.toDouble(),
    elementRecall: json['elementRecall'] == null
        ? null
        : Element.fromJson(json['elementRecall'] as Map<String, dynamic>),
    fScore: (json['fScore'] as num)?.toDouble(),
    elementFScore: json['elementFScore'] == null
        ? null
        : Element.fromJson(json['elementFScore'] as Map<String, dynamic>),
    roc: json['roc'] == null
        ? null
        : MolecularSequence_Roc.fromJson(json['roc'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MolecularSequence_QualityToJson(
    MolecularSequence_Quality instance) {
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
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('standardSequence', instance.standardSequence?.toJson());
  writeNotNull('start', instance.start);
  writeNotNull('elementStart', instance.elementStart?.toJson());
  writeNotNull('end', instance.end);
  writeNotNull('elementEnd', instance.elementEnd?.toJson());
  writeNotNull('score', instance.score?.toJson());
  writeNotNull('method', instance.method?.toJson());
  writeNotNull('truthTP', instance.truthTP);
  writeNotNull('elementTruthTP', instance.elementTruthTP?.toJson());
  writeNotNull('queryTP', instance.queryTP);
  writeNotNull('elementQueryTP', instance.elementQueryTP?.toJson());
  writeNotNull('truthFN', instance.truthFN);
  writeNotNull('elementTruthFN', instance.elementTruthFN?.toJson());
  writeNotNull('queryFP', instance.queryFP);
  writeNotNull('elementQueryFP', instance.elementQueryFP?.toJson());
  writeNotNull('gtFP', instance.gtFP);
  writeNotNull('elementGtFP', instance.elementGtFP?.toJson());
  writeNotNull('precision', instance.precision);
  writeNotNull('elementPrecision', instance.elementPrecision?.toJson());
  writeNotNull('recall', instance.recall);
  writeNotNull('elementRecall', instance.elementRecall?.toJson());
  writeNotNull('fScore', instance.fScore);
  writeNotNull('elementFScore', instance.elementFScore?.toJson());
  writeNotNull('roc', instance.roc?.toJson());
  return val;
}

MolecularSequence_Roc _$MolecularSequence_RocFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_Roc(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    score: (json['score'] as List)?.map((e) => e as int)?.toList(),
    elementScore: (json['elementScore'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numTP: (json['numTP'] as List)?.map((e) => e as int)?.toList(),
    elementNumTP: (json['elementNumTP'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numFP: (json['numFP'] as List)?.map((e) => e as int)?.toList(),
    elementNumFP: (json['elementNumFP'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numFN: (json['numFN'] as List)?.map((e) => e as int)?.toList(),
    elementNumFN: (json['elementNumFN'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    precision: (json['precision'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    elementPrecision: (json['elementPrecision'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sensitivity: (json['sensitivity'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    elementSensitivity: (json['elementSensitivity'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fMeasure: (json['fMeasure'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    elementFMeasure: (json['elementFMeasure'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MolecularSequence_RocToJson(
    MolecularSequence_Roc instance) {
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
  writeNotNull('score', instance.score);
  writeNotNull(
      'elementScore', instance.elementScore?.map((e) => e?.toJson())?.toList());
  writeNotNull('numTP', instance.numTP);
  writeNotNull(
      'elementNumTP', instance.elementNumTP?.map((e) => e?.toJson())?.toList());
  writeNotNull('numFP', instance.numFP);
  writeNotNull(
      'elementNumFP', instance.elementNumFP?.map((e) => e?.toJson())?.toList());
  writeNotNull('numFN', instance.numFN);
  writeNotNull(
      'elementNumFN', instance.elementNumFN?.map((e) => e?.toJson())?.toList());
  writeNotNull('precision', instance.precision);
  writeNotNull('elementPrecision',
      instance.elementPrecision?.map((e) => e?.toJson())?.toList());
  writeNotNull('sensitivity', instance.sensitivity);
  writeNotNull('elementSensitivity',
      instance.elementSensitivity?.map((e) => e?.toJson())?.toList());
  writeNotNull('fMeasure', instance.fMeasure);
  writeNotNull('elementFMeasure',
      instance.elementFMeasure?.map((e) => e?.toJson())?.toList());
  return val;
}

MolecularSequence_Repository _$MolecularSequence_RepositoryFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_Repository(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    datasetId: json['datasetId'] as String,
    elementDatasetId: json['elementDatasetId'] == null
        ? null
        : Element.fromJson(json['elementDatasetId'] as Map<String, dynamic>),
    variantsetId: json['variantsetId'] as String,
    elementVariantsetId: json['elementVariantsetId'] == null
        ? null
        : Element.fromJson(json['elementVariantsetId'] as Map<String, dynamic>),
    readsetId: json['readsetId'] as String,
    elementReadsetId: json['elementReadsetId'] == null
        ? null
        : Element.fromJson(json['elementReadsetId'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MolecularSequence_RepositoryToJson(
    MolecularSequence_Repository instance) {
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
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('datasetId', instance.datasetId);
  writeNotNull('elementDatasetId', instance.elementDatasetId?.toJson());
  writeNotNull('variantsetId', instance.variantsetId);
  writeNotNull('elementVariantsetId', instance.elementVariantsetId?.toJson());
  writeNotNull('readsetId', instance.readsetId);
  writeNotNull('elementReadsetId', instance.elementReadsetId?.toJson());
  return val;
}

MolecularSequence_StructureVariant _$MolecularSequence_StructureVariantFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_StructureVariant(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    variantType: json['variantType'] == null
        ? null
        : CodeableConcept.fromJson(json['variantType'] as Map<String, dynamic>),
    exact: json['exact'] as bool,
    elementExact: json['elementExact'] == null
        ? null
        : Element.fromJson(json['elementExact'] as Map<String, dynamic>),
    length: json['length'] as int,
    elementLength: json['elementLength'] == null
        ? null
        : Element.fromJson(json['elementLength'] as Map<String, dynamic>),
    outer: json['outer'] == null
        ? null
        : MolecularSequence_Outer.fromJson(
            json['outer'] as Map<String, dynamic>),
    inner: json['inner'] == null
        ? null
        : MolecularSequence_Inner.fromJson(
            json['inner'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MolecularSequence_StructureVariantToJson(
    MolecularSequence_StructureVariant instance) {
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
  writeNotNull('variantType', instance.variantType?.toJson());
  writeNotNull('exact', instance.exact);
  writeNotNull('elementExact', instance.elementExact?.toJson());
  writeNotNull('length', instance.length);
  writeNotNull('elementLength', instance.elementLength?.toJson());
  writeNotNull('outer', instance.outer?.toJson());
  writeNotNull('inner', instance.inner?.toJson());
  return val;
}

MolecularSequence_Outer _$MolecularSequence_OuterFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_Outer(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    start: json['start'] as int,
    elementStart: json['elementStart'] == null
        ? null
        : Element.fromJson(json['elementStart'] as Map<String, dynamic>),
    end: json['end'] as int,
    elementEnd: json['elementEnd'] == null
        ? null
        : Element.fromJson(json['elementEnd'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MolecularSequence_OuterToJson(
    MolecularSequence_Outer instance) {
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
  writeNotNull('start', instance.start);
  writeNotNull('elementStart', instance.elementStart?.toJson());
  writeNotNull('end', instance.end);
  writeNotNull('elementEnd', instance.elementEnd?.toJson());
  return val;
}

MolecularSequence_Inner _$MolecularSequence_InnerFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_Inner(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    start: json['start'] as int,
    elementStart: json['elementStart'] == null
        ? null
        : Element.fromJson(json['elementStart'] as Map<String, dynamic>),
    end: json['end'] as int,
    elementEnd: json['elementEnd'] == null
        ? null
        : Element.fromJson(json['elementEnd'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MolecularSequence_InnerToJson(
    MolecularSequence_Inner instance) {
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
  writeNotNull('start', instance.start);
  writeNotNull('elementStart', instance.elementStart?.toJson());
  writeNotNull('end', instance.end);
  writeNotNull('elementEnd', instance.elementEnd?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MolecularSequenceAdapter extends TypeAdapter<MolecularSequence> {
  @override
  MolecularSequence read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MolecularSequence(
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
      identifier: (fields[11] as List)?.cast<Identifier>(),
      type: fields[12] as String,
      elementType: fields[13] as Element,
      coordinateSystem: fields[14] as int,
      elementCoordinateSystem: fields[15] as Element,
      patient: fields[16] as Reference,
      specimen: fields[17] as Reference,
      device: fields[18] as Reference,
      performer: fields[19] as Reference,
      quantity: fields[20] as Quantity,
      referenceSeq: fields[21] as MolecularSequence_ReferenceSeq,
      variant: (fields[22] as List)?.cast<MolecularSequence_Variant>(),
      observedSeq: fields[23] as String,
      elementObservedSeq: fields[24] as Element,
      quality: (fields[25] as List)?.cast<MolecularSequence_Quality>(),
      readCoverage: fields[26] as int,
      elementReadCoverage: fields[27] as Element,
      repository: (fields[28] as List)?.cast<MolecularSequence_Repository>(),
      pointer: (fields[29] as List)?.cast<Reference>(),
      structureVariant:
          (fields[30] as List)?.cast<MolecularSequence_StructureVariant>(),
    );
  }

  @override
  void write(BinaryWriter writer, MolecularSequence obj) {
    writer
      ..writeByte(31)
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
      ..write(obj.type)
      ..writeByte(13)
      ..write(obj.elementType)
      ..writeByte(14)
      ..write(obj.coordinateSystem)
      ..writeByte(15)
      ..write(obj.elementCoordinateSystem)
      ..writeByte(16)
      ..write(obj.patient)
      ..writeByte(17)
      ..write(obj.specimen)
      ..writeByte(18)
      ..write(obj.device)
      ..writeByte(19)
      ..write(obj.performer)
      ..writeByte(20)
      ..write(obj.quantity)
      ..writeByte(21)
      ..write(obj.referenceSeq)
      ..writeByte(22)
      ..write(obj.variant)
      ..writeByte(23)
      ..write(obj.observedSeq)
      ..writeByte(24)
      ..write(obj.elementObservedSeq)
      ..writeByte(25)
      ..write(obj.quality)
      ..writeByte(26)
      ..write(obj.readCoverage)
      ..writeByte(27)
      ..write(obj.elementReadCoverage)
      ..writeByte(28)
      ..write(obj.repository)
      ..writeByte(29)
      ..write(obj.pointer)
      ..writeByte(30)
      ..write(obj.structureVariant);
  }
}

class MolecularSequence_ReferenceSeqAdapter
    extends TypeAdapter<MolecularSequence_ReferenceSeq> {
  @override
  MolecularSequence_ReferenceSeq read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MolecularSequence_ReferenceSeq(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      chromosome: fields[3] as CodeableConcept,
      genomeBuild: fields[4] as String,
      elementGenomeBuild: fields[5] as Element,
      orientation: fields[6] as String,
      elementOrientation: fields[7] as Element,
      referenceSeqId: fields[8] as CodeableConcept,
      referenceSeqPointer: fields[9] as Reference,
      referenceSeqString: fields[10] as String,
      elementReferenceSeqString: fields[11] as Element,
      strand: fields[12] as String,
      elementStrand: fields[13] as Element,
      windowStart: fields[14] as int,
      elementWindowStart: fields[15] as Element,
      windowEnd: fields[16] as int,
      elementWindowEnd: fields[17] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, MolecularSequence_ReferenceSeq obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.chromosome)
      ..writeByte(4)
      ..write(obj.genomeBuild)
      ..writeByte(5)
      ..write(obj.elementGenomeBuild)
      ..writeByte(6)
      ..write(obj.orientation)
      ..writeByte(7)
      ..write(obj.elementOrientation)
      ..writeByte(8)
      ..write(obj.referenceSeqId)
      ..writeByte(9)
      ..write(obj.referenceSeqPointer)
      ..writeByte(10)
      ..write(obj.referenceSeqString)
      ..writeByte(11)
      ..write(obj.elementReferenceSeqString)
      ..writeByte(12)
      ..write(obj.strand)
      ..writeByte(13)
      ..write(obj.elementStrand)
      ..writeByte(14)
      ..write(obj.windowStart)
      ..writeByte(15)
      ..write(obj.elementWindowStart)
      ..writeByte(16)
      ..write(obj.windowEnd)
      ..writeByte(17)
      ..write(obj.elementWindowEnd);
  }
}

class MolecularSequence_VariantAdapter
    extends TypeAdapter<MolecularSequence_Variant> {
  @override
  MolecularSequence_Variant read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MolecularSequence_Variant(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      start: fields[3] as int,
      elementStart: fields[4] as Element,
      end: fields[5] as int,
      elementEnd: fields[6] as Element,
      observedAllele: fields[7] as String,
      elementObservedAllele: fields[8] as Element,
      referenceAllele: fields[9] as String,
      elementReferenceAllele: fields[10] as Element,
      cigar: fields[11] as String,
      elementCigar: fields[12] as Element,
      variantPointer: fields[13] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, MolecularSequence_Variant obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.start)
      ..writeByte(4)
      ..write(obj.elementStart)
      ..writeByte(5)
      ..write(obj.end)
      ..writeByte(6)
      ..write(obj.elementEnd)
      ..writeByte(7)
      ..write(obj.observedAllele)
      ..writeByte(8)
      ..write(obj.elementObservedAllele)
      ..writeByte(9)
      ..write(obj.referenceAllele)
      ..writeByte(10)
      ..write(obj.elementReferenceAllele)
      ..writeByte(11)
      ..write(obj.cigar)
      ..writeByte(12)
      ..write(obj.elementCigar)
      ..writeByte(13)
      ..write(obj.variantPointer);
  }
}

class MolecularSequence_QualityAdapter
    extends TypeAdapter<MolecularSequence_Quality> {
  @override
  MolecularSequence_Quality read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MolecularSequence_Quality(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      standardSequence: fields[5] as CodeableConcept,
      start: fields[6] as int,
      elementStart: fields[7] as Element,
      end: fields[8] as int,
      elementEnd: fields[9] as Element,
      score: fields[10] as Quantity,
      method: fields[11] as CodeableConcept,
      truthTP: fields[12] as double,
      elementTruthTP: fields[13] as Element,
      queryTP: fields[14] as double,
      elementQueryTP: fields[15] as Element,
      truthFN: fields[16] as double,
      elementTruthFN: fields[17] as Element,
      queryFP: fields[18] as double,
      elementQueryFP: fields[19] as Element,
      gtFP: fields[20] as double,
      elementGtFP: fields[21] as Element,
      precision: fields[22] as double,
      elementPrecision: fields[23] as Element,
      recall: fields[24] as double,
      elementRecall: fields[25] as Element,
      fScore: fields[26] as double,
      elementFScore: fields[27] as Element,
      roc: fields[28] as MolecularSequence_Roc,
    );
  }

  @override
  void write(BinaryWriter writer, MolecularSequence_Quality obj) {
    writer
      ..writeByte(29)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.elementType)
      ..writeByte(5)
      ..write(obj.standardSequence)
      ..writeByte(6)
      ..write(obj.start)
      ..writeByte(7)
      ..write(obj.elementStart)
      ..writeByte(8)
      ..write(obj.end)
      ..writeByte(9)
      ..write(obj.elementEnd)
      ..writeByte(10)
      ..write(obj.score)
      ..writeByte(11)
      ..write(obj.method)
      ..writeByte(12)
      ..write(obj.truthTP)
      ..writeByte(13)
      ..write(obj.elementTruthTP)
      ..writeByte(14)
      ..write(obj.queryTP)
      ..writeByte(15)
      ..write(obj.elementQueryTP)
      ..writeByte(16)
      ..write(obj.truthFN)
      ..writeByte(17)
      ..write(obj.elementTruthFN)
      ..writeByte(18)
      ..write(obj.queryFP)
      ..writeByte(19)
      ..write(obj.elementQueryFP)
      ..writeByte(20)
      ..write(obj.gtFP)
      ..writeByte(21)
      ..write(obj.elementGtFP)
      ..writeByte(22)
      ..write(obj.precision)
      ..writeByte(23)
      ..write(obj.elementPrecision)
      ..writeByte(24)
      ..write(obj.recall)
      ..writeByte(25)
      ..write(obj.elementRecall)
      ..writeByte(26)
      ..write(obj.fScore)
      ..writeByte(27)
      ..write(obj.elementFScore)
      ..writeByte(28)
      ..write(obj.roc);
  }
}

class MolecularSequence_RocAdapter extends TypeAdapter<MolecularSequence_Roc> {
  @override
  MolecularSequence_Roc read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MolecularSequence_Roc(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      score: (fields[3] as List)?.cast<int>(),
      elementScore: (fields[4] as List)?.cast<Element>(),
      numTP: (fields[5] as List)?.cast<int>(),
      elementNumTP: (fields[6] as List)?.cast<Element>(),
      numFP: (fields[7] as List)?.cast<int>(),
      elementNumFP: (fields[8] as List)?.cast<Element>(),
      numFN: (fields[9] as List)?.cast<int>(),
      elementNumFN: (fields[10] as List)?.cast<Element>(),
      precision: (fields[11] as List)?.cast<double>(),
      elementPrecision: (fields[12] as List)?.cast<Element>(),
      sensitivity: (fields[13] as List)?.cast<double>(),
      elementSensitivity: (fields[14] as List)?.cast<Element>(),
      fMeasure: (fields[15] as List)?.cast<double>(),
      elementFMeasure: (fields[16] as List)?.cast<Element>(),
    );
  }

  @override
  void write(BinaryWriter writer, MolecularSequence_Roc obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.score)
      ..writeByte(4)
      ..write(obj.elementScore)
      ..writeByte(5)
      ..write(obj.numTP)
      ..writeByte(6)
      ..write(obj.elementNumTP)
      ..writeByte(7)
      ..write(obj.numFP)
      ..writeByte(8)
      ..write(obj.elementNumFP)
      ..writeByte(9)
      ..write(obj.numFN)
      ..writeByte(10)
      ..write(obj.elementNumFN)
      ..writeByte(11)
      ..write(obj.precision)
      ..writeByte(12)
      ..write(obj.elementPrecision)
      ..writeByte(13)
      ..write(obj.sensitivity)
      ..writeByte(14)
      ..write(obj.elementSensitivity)
      ..writeByte(15)
      ..write(obj.fMeasure)
      ..writeByte(16)
      ..write(obj.elementFMeasure);
  }
}

class MolecularSequence_RepositoryAdapter
    extends TypeAdapter<MolecularSequence_Repository> {
  @override
  MolecularSequence_Repository read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MolecularSequence_Repository(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      url: fields[5] as String,
      elementUrl: fields[6] as Element,
      name: fields[7] as String,
      elementName: fields[8] as Element,
      datasetId: fields[9] as String,
      elementDatasetId: fields[10] as Element,
      variantsetId: fields[11] as String,
      elementVariantsetId: fields[12] as Element,
      readsetId: fields[13] as String,
      elementReadsetId: fields[14] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, MolecularSequence_Repository obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.elementType)
      ..writeByte(5)
      ..write(obj.url)
      ..writeByte(6)
      ..write(obj.elementUrl)
      ..writeByte(7)
      ..write(obj.name)
      ..writeByte(8)
      ..write(obj.elementName)
      ..writeByte(9)
      ..write(obj.datasetId)
      ..writeByte(10)
      ..write(obj.elementDatasetId)
      ..writeByte(11)
      ..write(obj.variantsetId)
      ..writeByte(12)
      ..write(obj.elementVariantsetId)
      ..writeByte(13)
      ..write(obj.readsetId)
      ..writeByte(14)
      ..write(obj.elementReadsetId);
  }
}

class MolecularSequence_StructureVariantAdapter
    extends TypeAdapter<MolecularSequence_StructureVariant> {
  @override
  MolecularSequence_StructureVariant read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MolecularSequence_StructureVariant(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      variantType: fields[3] as CodeableConcept,
      exact: fields[4] as bool,
      elementExact: fields[5] as Element,
      length: fields[6] as int,
      elementLength: fields[7] as Element,
      outer: fields[8] as MolecularSequence_Outer,
      inner: fields[9] as MolecularSequence_Inner,
    );
  }

  @override
  void write(BinaryWriter writer, MolecularSequence_StructureVariant obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.variantType)
      ..writeByte(4)
      ..write(obj.exact)
      ..writeByte(5)
      ..write(obj.elementExact)
      ..writeByte(6)
      ..write(obj.length)
      ..writeByte(7)
      ..write(obj.elementLength)
      ..writeByte(8)
      ..write(obj.outer)
      ..writeByte(9)
      ..write(obj.inner);
  }
}

class MolecularSequence_OuterAdapter
    extends TypeAdapter<MolecularSequence_Outer> {
  @override
  MolecularSequence_Outer read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MolecularSequence_Outer(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      start: fields[3] as int,
      elementStart: fields[4] as Element,
      end: fields[5] as int,
      elementEnd: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, MolecularSequence_Outer obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.start)
      ..writeByte(4)
      ..write(obj.elementStart)
      ..writeByte(5)
      ..write(obj.end)
      ..writeByte(6)
      ..write(obj.elementEnd);
  }
}

class MolecularSequence_InnerAdapter
    extends TypeAdapter<MolecularSequence_Inner> {
  @override
  MolecularSequence_Inner read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MolecularSequence_Inner(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      start: fields[3] as int,
      elementStart: fields[4] as Element,
      end: fields[5] as int,
      elementEnd: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, MolecularSequence_Inner obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.start)
      ..writeByte(4)
      ..write(obj.elementStart)
      ..writeByte(5)
      ..write(obj.end)
      ..writeByte(6)
      ..write(obj.elementEnd);
  }
}
