part 'molecularSequence.g.dart';

@JsonSerializable(explicitToJson: true)
class MolecularSequence {

MolecularSequence resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
String type; // <code> enum: aa/dna/rna;
Element _type;
int coordinateSystem;
Element _coordinateSystem;
Reference patient;
Reference specimen;
Reference device;
Reference performer;
Quantity quantity;
MolecularSequence_ReferenceSeq referenceSeq;
List<MolecularSequence_Variant> variant;
String observedSeq;
Element _observedSeq;
List<MolecularSequence_Quality> quality;
int readCoverage;
Element _readCoverage;
List<MolecularSequence_Repository> repository;
List<Reference> pointer;
List<MolecularSequence_StructureVariant> structureVariant;

MolecularSequence(
  {this.resourceType,
      this.id,
      this.meta,
      this.implicitRules,
      this._implicitRules,
      this.language,
      this._language,
      this.text,
      this.contained,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.type,
      this._type,
      this.coordinateSystem,
      this._coordinateSystem,
      this.patient,
      this.specimen,
      this.device,
      this.performer,
      this.quantity,
      this.referenceSeq,
      this.variant,
      this.observedSeq,
      this._observedSeq,
      this.quality,
      this.readCoverage,
      this._readCoverage,
      this.repository,
      this.pointer,
      this.structureVariant,
      });

  factory MolecularSequence.fromJson(Map<String, dynamic> json) => _$MolecularSequenceFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequenceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_ReferenceSeq {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept chromosome;
String genomeBuild;
Element _genomeBuild;
String orientation; // <code> enum: sense/antisense;
Element _orientation;
CodeableConcept referenceSeqId;
Reference referenceSeqPointer;
String referenceSeqString;
Element _referenceSeqString;
String strand; // <code> enum: watson/crick;
Element _strand;
int windowStart;
Element _windowStart;
int windowEnd;
Element _windowEnd;

MolecularSequence_ReferenceSeq(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.chromosome,
      this.genomeBuild,
      this._genomeBuild,
      this.orientation,
      this._orientation,
      this.referenceSeqId,
      this.referenceSeqPointer,
      this.referenceSeqString,
      this._referenceSeqString,
      this.strand,
      this._strand,
      this.windowStart,
      this._windowStart,
      this.windowEnd,
      this._windowEnd,
      });

  factory MolecularSequence_ReferenceSeq.fromJson(Map<String, dynamic> json) => _$MolecularSequence_ReferenceSeqFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_ReferenceSeqToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Variant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int start;
Element _start;
int end;
Element _end;
String observedAllele;
Element _observedAllele;
String referenceAllele;
Element _referenceAllele;
String cigar;
Element _cigar;
Reference variantPointer;

MolecularSequence_Variant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.start,
      this._start,
      this.end,
      this._end,
      this.observedAllele,
      this._observedAllele,
      this.referenceAllele,
      this._referenceAllele,
      this.cigar,
      this._cigar,
      this.variantPointer,
      });

  factory MolecularSequence_Variant.fromJson(Map<String, dynamic> json) => _$MolecularSequence_VariantFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_VariantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Quality {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: indel/snp/unknown;
Element _type;
CodeableConcept standardSequence;
int start;
Element _start;
int end;
Element _end;
Quantity score;
CodeableConcept method;
double truthTP;
Element _truthTP;
double queryTP;
Element _queryTP;
double truthFN;
Element _truthFN;
double queryFP;
Element _queryFP;
double gtFP;
Element _gtFP;
double precision;
Element _precision;
double recall;
Element _recall;
double fScore;
Element _fScore;
MolecularSequence_Roc roc;

MolecularSequence_Quality(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.standardSequence,
      this.start,
      this._start,
      this.end,
      this._end,
      this.score,
      this.method,
      this.truthTP,
      this._truthTP,
      this.queryTP,
      this._queryTP,
      this.truthFN,
      this._truthFN,
      this.queryFP,
      this._queryFP,
      this.gtFP,
      this._gtFP,
      this.precision,
      this._precision,
      this.recall,
      this._recall,
      this.fScore,
      this._fScore,
      this.roc,
      });

  factory MolecularSequence_Quality.fromJson(Map<String, dynamic> json) => _$MolecularSequence_QualityFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_QualityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Roc {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<int> score;
List<Element> _score;
List<int> numTP;
List<Element> _numTP;
List<int> numFP;
List<Element> _numFP;
List<int> numFN;
List<Element> _numFN;
List<double> precision;
List<Element> _precision;
List<double> sensitivity;
List<Element> _sensitivity;
List<double> fMeasure;
List<Element> _fMeasure;

MolecularSequence_Roc(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.score,
      this._score,
      this.numTP,
      this._numTP,
      this.numFP,
      this._numFP,
      this.numFN,
      this._numFN,
      this.precision,
      this._precision,
      this.sensitivity,
      this._sensitivity,
      this.fMeasure,
      this._fMeasure,
      });

  factory MolecularSequence_Roc.fromJson(Map<String, dynamic> json) => _$MolecularSequence_RocFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_RocToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Repository {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: directlink/openapi/login/oauth/other;
Element _type;
String url;
Element _url;
String name;
Element _name;
String datasetId;
Element _datasetId;
String variantsetId;
Element _variantsetId;
String readsetId;
Element _readsetId;

MolecularSequence_Repository(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.url,
      this._url,
      this.name,
      this._name,
      this.datasetId,
      this._datasetId,
      this.variantsetId,
      this._variantsetId,
      this.readsetId,
      this._readsetId,
      });

  factory MolecularSequence_Repository.fromJson(Map<String, dynamic> json) => _$MolecularSequence_RepositoryFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_RepositoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_StructureVariant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept variantType;
bool exact;
Element _exact;
int length;
Element _length;
MolecularSequence_Outer outer;
MolecularSequence_Inner inner;

MolecularSequence_StructureVariant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.variantType,
      this.exact,
      this._exact,
      this.length,
      this._length,
      this.outer,
      this.inner,
      });

  factory MolecularSequence_StructureVariant.fromJson(Map<String, dynamic> json) => _$MolecularSequence_StructureVariantFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_StructureVariantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Outer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int start;
Element _start;
int end;
Element _end;

MolecularSequence_Outer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.start,
      this._start,
      this.end,
      this._end,
      });

  factory MolecularSequence_Outer.fromJson(Map<String, dynamic> json) => _$MolecularSequence_OuterFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_OuterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Inner {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int start;
Element _start;
int end;
Element _end;

MolecularSequence_Inner(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.start,
      this._start,
      this.end,
      this._end,
      });

  factory MolecularSequence_Inner.fromJson(Map<String, dynamic> json) => _$MolecularSequence_InnerFromJson(json);
  Map<String, dynamic> toJson() _$MolecularSequence_InnerToJson(this);
}

