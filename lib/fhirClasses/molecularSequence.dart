import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 434)
class MolecularSequence {

  //  This is a MolecularSequence resource
  @HiveField(0)
  final String resourceType= 'MolecularSequence';

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

  //  A unique identifier for this particular sequence instance. This is a
  // FHIR-defined id.
  @HiveField(11)
  List<Identifier> identifier;

  //  Amino Acid Sequence/ DNA Sequence / RNA Sequence.
  @HiveField(12)
  String type; // <code> enum: aa/dna/rna;

  //  Extensions for type
  @HiveField(13)
  Element elementType;

  //  Whether the sequence is numbered starting at 0 (0-based numbering or
  // coordinates, inclusive start, exclusive end) or starting at 1 (1-based
  // numbering, inclusive start and inclusive end).
  @HiveField(14)
  int coordinateSystem;

  //  Extensions for coordinateSystem
  @HiveField(15)
  Element elementCoordinateSystem;

  //  The patient whose sequencing results are described by this resource.
  @HiveField(16)
  Reference patient;

  //  Specimen used for sequencing.
  @HiveField(17)
  Reference specimen;

  //  The method for sequencing, for example, chip information.
  @HiveField(18)
  Reference device;

  //  The organization or lab that should be responsible for this result.
  @HiveField(19)
  Reference performer;

  //  The number of copies of the sequence of interest. (RNASeq).
  @HiveField(20)
  Quantity quantity;

  //  A sequence that is used as a reference to describe variants that are
  // present in a sequence analyzed.
  @HiveField(21)
  MolecularSequence_ReferenceSeq referenceSeq;

  //  The definition of variant here originates from Sequence ontology
  // ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)).
  // This element can represent amino acid or nucleic sequence
  // change(including insertion,deletion,SNP,etc.)  It can represent some
  // complex mutation or segment variation with the assist of CIGAR string.
  @HiveField(22)
  List<MolecularSequence_Variant> variant;

  //  Sequence that was observed. It is the result marked by referenceSeq
  // along with variant records on referenceSeq. This shall start from
  // referenceSeq.windowStart and end by referenceSeq.windowEnd.
  @HiveField(23)
  String observedSeq;

  //  Extensions for observedSeq
  @HiveField(24)
  Element elementObservedSeq;

  //  An experimental feature attribute that defines the quality of the
  // feature in a quantitative way, such as a phred quality score
  // ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
  @HiveField(25)
  List<MolecularSequence_Quality> quality;

  //  Coverage (read depth or depth) is the average number of reads
  // representing a given nucleotide in the reconstructed sequence.
  @HiveField(26)
  int readCoverage;

  //  Extensions for readCoverage
  @HiveField(27)
  Element elementReadCoverage;

  //  Configurations of the external repository. The repository shall store
  // target's observedSeq or records related with target's observedSeq.
  @HiveField(28)
  List<MolecularSequence_Repository> repository;

  //  Pointer to next atomic sequence which at most contains one variant.
  @HiveField(29)
  List<Reference> pointer;

  //  Information about chromosome structure variation.
  @HiveField(30)
  List<MolecularSequence_StructureVariant> structureVariant;

MolecularSequence(
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
    this.structureVariant
    });

  factory MolecularSequence.fromJson(Map<String, dynamic> json) => _$MolecularSequenceFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequenceToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 435)
class MolecularSequence_ReferenceSeq {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Structural unit composed of a nucleic acid molecule which controls its
  // own replication through the interaction of specific proteins at one or
  // more origins of replication
  // ([SO:0000340](http://www.sequenceontology.org/browser/current_svn/term/SO:0000340)).
  @HiveField(3)
  CodeableConcept chromosome;

  //  The Genome Build used for reference, following GRCh build versions
  // e.g. 'GRCh 37'.  Version number must be included if a versioned release
  // of a primary build was used.
  @HiveField(4)
  String genomeBuild;

  //  Extensions for genomeBuild
  @HiveField(5)
  Element elementGenomeBuild;

  //  A relative reference to a DNA strand based on gene orientation. The
  // strand that contains the open reading frame of the gene is the "sense"
  // strand, and the opposite complementary strand is the "antisense"
  // strand.
  @HiveField(6)
  String orientation; // <code> enum: sense/antisense;

  //  Extensions for orientation
  @HiveField(7)
  Element elementOrientation;

  //  Reference identifier of reference sequence submitted to NCBI. It must
  // match the type in the MolecularSequence.type field. For example, the
  // prefix, “NG_” identifies reference sequence for genes, “NM_” for
  // messenger RNA transcripts, and “NP_” for amino acid sequences.
  @HiveField(8)
  CodeableConcept referenceSeqId;

  //  A pointer to another MolecularSequence entity as reference sequence.
  @HiveField(9)
  Reference referenceSeqPointer;

  //  A string like "ACGT".
  @HiveField(10)
  String referenceSeqString;

  //  Extensions for referenceSeqString
  @HiveField(11)
  Element elementReferenceSeqString;

  //  An absolute reference to a strand. The Watson strand is the strand
  // whose 5'-end is on the short arm of the chromosome, and the Crick
  // strand as the one whose 5'-end is on the long arm.
  @HiveField(12)
  String strand; // <code> enum: watson/crick;

  //  Extensions for strand
  @HiveField(13)
  Element elementStrand;

  //  Start position of the window on the reference sequence. If the
  // coordinate system is either 0-based or 1-based, then start position is
  // inclusive.
  @HiveField(14)
  int windowStart;

  //  Extensions for windowStart
  @HiveField(15)
  Element elementWindowStart;

  //  End position of the window on the reference sequence. If the
  // coordinate system is 0-based then end is exclusive and does not include
  // the last position. If the coordinate system is 1-base, then end is
  // inclusive and includes the last position.
  @HiveField(16)
  int windowEnd;

  //  Extensions for windowEnd
  @HiveField(17)
  Element elementWindowEnd;

MolecularSequence_ReferenceSeq(
  {this.id,
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
    this.elementWindowEnd
    });

  factory MolecularSequence_ReferenceSeq.fromJson(Map<String, dynamic> json) => _$MolecularSequence_ReferenceSeqFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_ReferenceSeqToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 436)
class MolecularSequence_Variant {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Start position of the variant on the  reference sequence. If the
  // coordinate system is either 0-based or 1-based, then start position is
  // inclusive.
  @HiveField(3)
  int start;

  //  Extensions for start
  @HiveField(4)
  Element elementStart;

  //  End position of the variant on the reference sequence. If the
  // coordinate system is 0-based then end is exclusive and does not include
  // the last position. If the coordinate system is 1-base, then end is
  // inclusive and includes the last position.
  @HiveField(5)
  int end;

  //  Extensions for end
  @HiveField(6)
  Element elementEnd;

  //  An allele is one of a set of coexisting sequence variants of a gene
  // ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  //  Nucleotide(s)/amino acids from start position of sequence to stop
  // position of sequence on the positive (+) strand of the observed 
  // sequence. When the sequence  type is DNA, it should be the sequence on
  // the positive (+) strand. This will lay in the range between
  // variant.start and variant.end.
  @HiveField(7)
  String observedAllele;

  //  Extensions for observedAllele
  @HiveField(8)
  Element elementObservedAllele;

  //  An allele is one of a set of coexisting sequence variants of a gene
  // ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  // Nucleotide(s)/amino acids from start position of sequence to stop
  // position of sequence on the positive (+) strand of the reference
  // sequence. When the sequence  type is DNA, it should be the sequence on
  // the positive (+) strand. This will lay in the range between
  // variant.start and variant.end.
  @HiveField(9)
  String referenceAllele;

  //  Extensions for referenceAllele
  @HiveField(10)
  Element elementReferenceAllele;

  //  Extended CIGAR string for aligning the sequence with reference bases.
  // See detailed documentation
  // [here](http://support.illumina.com/help/SequencingAnalysisWorkflow/Content/Vault/Informatics/Sequencing_Analysis/CASAVA/swSEQ_mCA_ExtendedCIGARFormat.htm).
  @HiveField(11)
  String cigar;

  //  Extensions for cigar
  @HiveField(12)
  Element elementCigar;

  //  A pointer to an Observation containing variant information.
  @HiveField(13)
  Reference variantPointer;

MolecularSequence_Variant(
  {this.id,
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
    this.variantPointer
    });

  factory MolecularSequence_Variant.fromJson(Map<String, dynamic> json) => _$MolecularSequence_VariantFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_VariantToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 437)
class MolecularSequence_Quality {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  INDEL / SNP / Undefined variant.
  @HiveField(3)
  String type; // <code> enum: indel/snp/unknown;

  //  Extensions for type
  @HiveField(4)
  Element elementType;

  //  Gold standard sequence used for comparing against.
  @HiveField(5)
  CodeableConcept standardSequence;

  //  Start position of the sequence. If the coordinate system is either
  // 0-based or 1-based, then start position is inclusive.
  @HiveField(6)
  int start;

  //  Extensions for start
  @HiveField(7)
  Element elementStart;

  //  End position of the sequence. If the coordinate system is 0-based then
  // end is exclusive and does not include the last position. If the
  // coordinate system is 1-base, then end is inclusive and includes the
  // last position.
  @HiveField(8)
  int end;

  //  Extensions for end
  @HiveField(9)
  Element elementEnd;

  //  The score of an experimentally derived feature such as a p-value
  // ([SO:0001685](http://www.sequenceontology.org/browser/current_svn/term/SO:0001685)).
  @HiveField(10)
  Quantity score;

  //  Which method is used to get sequence quality.
  @HiveField(11)
  CodeableConcept method;

  //  True positives, from the perspective of the truth data, i.e. the
  // number of sites in the Truth Call Set for which there are paths through
  // the Query Call Set that are consistent with all of the alleles at this
  // site, and for which there is an accurate genotype call for the event.
  @HiveField(12)
  double truthTP;

  //  Extensions for truthTP
  @HiveField(13)
  Element elementTruthTP;

  //  True positives, from the perspective of the query data, i.e. the
  // number of sites in the Query Call Set for which there are paths through
  // the Truth Call Set that are consistent with all of the alleles at this
  // site, and for which there is an accurate genotype call for the event.
  @HiveField(14)
  double queryTP;

  //  Extensions for queryTP
  @HiveField(15)
  Element elementQueryTP;

  //  False negatives, i.e. the number of sites in the Truth Call Set for
  // which there is no path through the Query Call Set that is consistent
  // with all of the alleles at this site, or sites for which there is an
  // inaccurate genotype call for the event. Sites with correct variant but
  // incorrect genotype are counted here.
  @HiveField(16)
  double truthFN;

  //  Extensions for truthFN
  @HiveField(17)
  Element elementTruthFN;

  //  False positives, i.e. the number of sites in the Query Call Set for
  // which there is no path through the Truth Call Set that is consistent
  // with this site. Sites with correct variant but incorrect genotype are
  // counted here.
  @HiveField(18)
  double queryFP;

  //  Extensions for queryFP
  @HiveField(19)
  Element elementQueryFP;

  //  The number of false positives where the non-REF alleles in the Truth
  // and Query Call Sets match (i.e. cases where the truth is 1/1 and the
  // query is 0/1 or similar).
  @HiveField(20)
  double gtFP;

  //  Extensions for gtFP
  @HiveField(21)
  Element elementGtFP;

  //  QUERY.TP / (QUERY.TP + QUERY.FP).
  @HiveField(22)
  double precision;

  //  Extensions for precision
  @HiveField(23)
  Element elementPrecision;

  //  TRUTH.TP / (TRUTH.TP + TRUTH.FN).
  @HiveField(24)
  double recall;

  //  Extensions for recall
  @HiveField(25)
  Element elementRecall;

  //  Harmonic mean of Recall and Precision, computed as: 2 * precision *
  // recall / (precision + recall).
  @HiveField(26)
  double fScore;

  //  Extensions for fScore
  @HiveField(27)
  Element elementFScore;

  //  Receiver Operator Characteristic (ROC) Curve  to give
  // sensitivity/specificity tradeoff.
  @HiveField(28)
  MolecularSequence_Roc roc;

MolecularSequence_Quality(
  {this.id,
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
    this.roc
    });

  factory MolecularSequence_Quality.fromJson(Map<String, dynamic> json) => _$MolecularSequence_QualityFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_QualityToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 438)
class MolecularSequence_Roc {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Invidual data point representing the GQ (genotype quality) score
  // threshold.
  @HiveField(3)
  List<int> score;

  //  Extensions for score
  @HiveField(4)
  List<Element> elementScore;

  //  The number of true positives if the GQ score threshold was set to
  // "score" field value.
  @HiveField(5)
  List<int> numTP;

  //  Extensions for numTP
  @HiveField(6)
  List<Element> elementNumTP;

  //  The number of false positives if the GQ score threshold was set to
  // "score" field value.
  @HiveField(7)
  List<int> numFP;

  //  Extensions for numFP
  @HiveField(8)
  List<Element> elementNumFP;

  //  The number of false negatives if the GQ score threshold was set to
  // "score" field value.
  @HiveField(9)
  List<int> numFN;

  //  Extensions for numFN
  @HiveField(10)
  List<Element> elementNumFN;

  //  Calculated precision if the GQ score threshold was set to "score"
  // field value.
  @HiveField(11)
  List<double> precision;

  //  Extensions for precision
  @HiveField(12)
  List<Element> elementPrecision;

  //  Calculated sensitivity if the GQ score threshold was set to "score"
  // field value.
  @HiveField(13)
  List<double> sensitivity;

  //  Extensions for sensitivity
  @HiveField(14)
  List<Element> elementSensitivity;

  //  Calculated fScore if the GQ score threshold was set to "score" field
  // value.
  @HiveField(15)
  List<double> fMeasure;

  //  Extensions for fMeasure
  @HiveField(16)
  List<Element> elementFMeasure;

MolecularSequence_Roc(
  {this.id,
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
    this.elementFMeasure
    });

  factory MolecularSequence_Roc.fromJson(Map<String, dynamic> json) => _$MolecularSequence_RocFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_RocToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 439)
class MolecularSequence_Repository {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Click and see / RESTful API / Need login to see / RESTful API with
  // authentication / Other ways to see resource.
  @HiveField(3)
  String type; // <code> enum: directlink/openapi/login/oauth/other;

  //  Extensions for type
  @HiveField(4)
  Element elementType;

  //  URI of an external repository which contains further details about the
  // genetics data.
  @HiveField(5)
  String url;

  //  Extensions for url
  @HiveField(6)
  Element elementUrl;

  //  URI of an external repository which contains further details about the
  // genetics data.
  @HiveField(7)
  String name;

  //  Extensions for name
  @HiveField(8)
  Element elementName;

  //  Id of the variant in this external repository. The server will
  // understand how to use this id to call for more info about datasets in
  // external repository.
  @HiveField(9)
  String datasetId;

  //  Extensions for datasetId
  @HiveField(10)
  Element elementDatasetId;

  //  Id of the variantset in this external repository. The server will
  // understand how to use this id to call for more info about variantsets
  // in external repository.
  @HiveField(11)
  String variantsetId;

  //  Extensions for variantsetId
  @HiveField(12)
  Element elementVariantsetId;

  //  Id of the read in this external repository.
  @HiveField(13)
  String readsetId;

  //  Extensions for readsetId
  @HiveField(14)
  Element elementReadsetId;

MolecularSequence_Repository(
  {this.id,
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
    this.elementReadsetId
    });

  factory MolecularSequence_Repository.fromJson(Map<String, dynamic> json) => _$MolecularSequence_RepositoryFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_RepositoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 440)
class MolecularSequence_StructureVariant {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Information about chromosome structure variation DNA change type.
  @HiveField(3)
  CodeableConcept variantType;

  //  Used to indicate if the outer and inner start-end values have the same
  // meaning.
  @HiveField(4)
  bool exact;

  //  Extensions for exact
  @HiveField(5)
  Element elementExact;

  //  Length of the variant chromosome.
  @HiveField(6)
  int length;

  //  Extensions for length
  @HiveField(7)
  Element elementLength;

  //  Structural variant outer.
  @HiveField(8)
  MolecularSequence_Outer outer;

  //  Structural variant inner.
  @HiveField(9)
  MolecularSequence_Inner inner;

MolecularSequence_StructureVariant(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.variantType,
    this.exact,
    this.elementExact,
    this.length,
    this.elementLength,
    this.outer,
    this.inner
    });

  factory MolecularSequence_StructureVariant.fromJson(Map<String, dynamic> json) => _$MolecularSequence_StructureVariantFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_StructureVariantToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 441)
class MolecularSequence_Outer {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Structural variant outer start. If the coordinate system is either
  // 0-based or 1-based, then start position is inclusive.
  @HiveField(3)
  int start;

  //  Extensions for start
  @HiveField(4)
  Element elementStart;

  //  Structural variant outer end. If the coordinate system is 0-based then
  // end is exclusive and does not include the last position. If the
  // coordinate system is 1-base, then end is inclusive and includes the
  // last position.
  @HiveField(5)
  int end;

  //  Extensions for end
  @HiveField(6)
  Element elementEnd;

MolecularSequence_Outer(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.start,
    this.elementStart,
    this.end,
    this.elementEnd
    });

  factory MolecularSequence_Outer.fromJson(Map<String, dynamic> json) => _$MolecularSequence_OuterFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_OuterToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 442)
class MolecularSequence_Inner {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Structural variant inner start. If the coordinate system is either
  // 0-based or 1-based, then start position is inclusive.
  @HiveField(3)
  int start;

  //  Extensions for start
  @HiveField(4)
  Element elementStart;

  //  Structural variant inner end. If the coordinate system is 0-based then
  // end is exclusive and does not include the last position. If the
  // coordinate system is 1-base, then end is inclusive and includes the
  // last position.
  @HiveField(5)
  int end;

  //  Extensions for end
  @HiveField(6)
  Element elementEnd;

MolecularSequence_Inner(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.start,
    this.elementStart,
    this.end,
    this.elementEnd
    });

  factory MolecularSequence_Inner.fromJson(Map<String, dynamic> json) => _$MolecularSequence_InnerFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_InnerToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MolecularSequenceAdapter extends TypeAdapter<MolecularSequence> {
  @override
  final typeId = 434;

  @override
  MolecularSequence read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MolecularSequence(
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
  final typeId = 435;

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
  final typeId = 436;

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
  final typeId = 437;

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
  final typeId = 438;

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
  final typeId = 439;

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
  final typeId = 440;

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
  final typeId = 441;

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
  final typeId = 442;

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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MolecularSequence _$MolecularSequenceFromJson(Map<String, dynamic> json) {
  return MolecularSequence(
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

Map<String, dynamic> _$MolecularSequenceToJson(MolecularSequence instance) =>
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
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'coordinateSystem': instance.coordinateSystem,
      'elementCoordinateSystem': instance.elementCoordinateSystem?.toJson(),
      'patient': instance.patient?.toJson(),
      'specimen': instance.specimen?.toJson(),
      'device': instance.device?.toJson(),
      'performer': instance.performer?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'referenceSeq': instance.referenceSeq?.toJson(),
      'variant': instance.variant?.map((e) => e?.toJson())?.toList(),
      'observedSeq': instance.observedSeq,
      'elementObservedSeq': instance.elementObservedSeq?.toJson(),
      'quality': instance.quality?.map((e) => e?.toJson())?.toList(),
      'readCoverage': instance.readCoverage,
      'elementReadCoverage': instance.elementReadCoverage?.toJson(),
      'repository': instance.repository?.map((e) => e?.toJson())?.toList(),
      'pointer': instance.pointer?.map((e) => e?.toJson())?.toList(),
      'structureVariant':
          instance.structureVariant?.map((e) => e?.toJson())?.toList(),
    };

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
        MolecularSequence_ReferenceSeq instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'chromosome': instance.chromosome?.toJson(),
      'genomeBuild': instance.genomeBuild,
      'elementGenomeBuild': instance.elementGenomeBuild?.toJson(),
      'orientation': instance.orientation,
      'elementOrientation': instance.elementOrientation?.toJson(),
      'referenceSeqId': instance.referenceSeqId?.toJson(),
      'referenceSeqPointer': instance.referenceSeqPointer?.toJson(),
      'referenceSeqString': instance.referenceSeqString,
      'elementReferenceSeqString': instance.elementReferenceSeqString?.toJson(),
      'strand': instance.strand,
      'elementStrand': instance.elementStrand?.toJson(),
      'windowStart': instance.windowStart,
      'elementWindowStart': instance.elementWindowStart?.toJson(),
      'windowEnd': instance.windowEnd,
      'elementWindowEnd': instance.elementWindowEnd?.toJson(),
    };

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
        MolecularSequence_Variant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'start': instance.start,
      'elementStart': instance.elementStart?.toJson(),
      'end': instance.end,
      'elementEnd': instance.elementEnd?.toJson(),
      'observedAllele': instance.observedAllele,
      'elementObservedAllele': instance.elementObservedAllele?.toJson(),
      'referenceAllele': instance.referenceAllele,
      'elementReferenceAllele': instance.elementReferenceAllele?.toJson(),
      'cigar': instance.cigar,
      'elementCigar': instance.elementCigar?.toJson(),
      'variantPointer': instance.variantPointer?.toJson(),
    };

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
        MolecularSequence_Quality instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'standardSequence': instance.standardSequence?.toJson(),
      'start': instance.start,
      'elementStart': instance.elementStart?.toJson(),
      'end': instance.end,
      'elementEnd': instance.elementEnd?.toJson(),
      'score': instance.score?.toJson(),
      'method': instance.method?.toJson(),
      'truthTP': instance.truthTP,
      'elementTruthTP': instance.elementTruthTP?.toJson(),
      'queryTP': instance.queryTP,
      'elementQueryTP': instance.elementQueryTP?.toJson(),
      'truthFN': instance.truthFN,
      'elementTruthFN': instance.elementTruthFN?.toJson(),
      'queryFP': instance.queryFP,
      'elementQueryFP': instance.elementQueryFP?.toJson(),
      'gtFP': instance.gtFP,
      'elementGtFP': instance.elementGtFP?.toJson(),
      'precision': instance.precision,
      'elementPrecision': instance.elementPrecision?.toJson(),
      'recall': instance.recall,
      'elementRecall': instance.elementRecall?.toJson(),
      'fScore': instance.fScore,
      'elementFScore': instance.elementFScore?.toJson(),
      'roc': instance.roc?.toJson(),
    };

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
        MolecularSequence_Roc instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'score': instance.score,
      'elementScore': instance.elementScore?.map((e) => e?.toJson())?.toList(),
      'numTP': instance.numTP,
      'elementNumTP': instance.elementNumTP?.map((e) => e?.toJson())?.toList(),
      'numFP': instance.numFP,
      'elementNumFP': instance.elementNumFP?.map((e) => e?.toJson())?.toList(),
      'numFN': instance.numFN,
      'elementNumFN': instance.elementNumFN?.map((e) => e?.toJson())?.toList(),
      'precision': instance.precision,
      'elementPrecision':
          instance.elementPrecision?.map((e) => e?.toJson())?.toList(),
      'sensitivity': instance.sensitivity,
      'elementSensitivity':
          instance.elementSensitivity?.map((e) => e?.toJson())?.toList(),
      'fMeasure': instance.fMeasure,
      'elementFMeasure':
          instance.elementFMeasure?.map((e) => e?.toJson())?.toList(),
    };

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
        MolecularSequence_Repository instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'datasetId': instance.datasetId,
      'elementDatasetId': instance.elementDatasetId?.toJson(),
      'variantsetId': instance.variantsetId,
      'elementVariantsetId': instance.elementVariantsetId?.toJson(),
      'readsetId': instance.readsetId,
      'elementReadsetId': instance.elementReadsetId?.toJson(),
    };

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
        MolecularSequence_StructureVariant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'variantType': instance.variantType?.toJson(),
      'exact': instance.exact,
      'elementExact': instance.elementExact?.toJson(),
      'length': instance.length,
      'elementLength': instance.elementLength?.toJson(),
      'outer': instance.outer?.toJson(),
      'inner': instance.inner?.toJson(),
    };

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
        MolecularSequence_Outer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'start': instance.start,
      'elementStart': instance.elementStart?.toJson(),
      'end': instance.end,
      'elementEnd': instance.elementEnd?.toJson(),
    };

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
        MolecularSequence_Inner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'start': instance.start,
      'elementStart': instance.elementStart?.toJson(),
      'end': instance.end,
      'elementEnd': instance.elementEnd?.toJson(),
    };
