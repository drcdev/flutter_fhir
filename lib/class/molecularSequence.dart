import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'molecularSequence.g.dart';

@JsonSerializable(explicitToJson: true)
class MolecularSequence {

  //  This is a MolecularSequence resource
  final String resourceType= 'MolecularSequence';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element element_implicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element element_language;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  List<ResourceList> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
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
  List<Extension> modifierExtension;

  //  A unique identifier for this particular sequence instance. This is a
  // FHIR-defined id.
  List<Identifier> identifier;

  //  Amino Acid Sequence/ DNA Sequence / RNA Sequence.
  String type; // <code> enum: aa/dna/rna;

  //  Extensions for type
  Element element_type;

  //  Whether the sequence is numbered starting at 0 (0-based numbering or
  // coordinates, inclusive start, exclusive end) or starting at 1 (1-based
  // numbering, inclusive start and inclusive end).
  int coordinateSystem;

  //  Extensions for coordinateSystem
  Element element_coordinateSystem;

  //  The patient whose sequencing results are described by this resource.
  Reference patient;

  //  Specimen used for sequencing.
  Reference specimen;

  //  The method for sequencing, for example, chip information.
  Reference device;

  //  The organization or lab that should be responsible for this result.
  Reference performer;

  //  The number of copies of the sequence of interest. (RNASeq).
  Quantity quantity;

  //  A sequence that is used as a reference to describe variants that are
  // present in a sequence analyzed.
  MolecularSequence_ReferenceSeq referenceSeq;

  //  The definition of variant here originates from Sequence ontology
  // ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)).
  // This element can represent amino acid or nucleic sequence
  // change(including insertion,deletion,SNP,etc.)  It can represent some
  // complex mutation or segment variation with the assist of CIGAR string.
  List<MolecularSequence_Variant> variant;

  //  Sequence that was observed. It is the result marked by referenceSeq
  // along with variant records on referenceSeq. This shall start from
  // referenceSeq.windowStart and end by referenceSeq.windowEnd.
  String observedSeq;

  //  Extensions for observedSeq
  Element element_observedSeq;

  //  An experimental feature attribute that defines the quality of the
  // feature in a quantitative way, such as a phred quality score
  // ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
  List<MolecularSequence_Quality> quality;

  //  Coverage (read depth or depth) is the average number of reads
  // representing a given nucleotide in the reconstructed sequence.
  int readCoverage;

  //  Extensions for readCoverage
  Element element_readCoverage;

  //  Configurations of the external repository. The repository shall store
  // target's observedSeq or records related with target's observedSeq.
  List<MolecularSequence_Repository> repository;

  //  Pointer to next atomic sequence which at most contains one variant.
  List<Reference> pointer;

  //  Information about chromosome structure variation.
  List<MolecularSequence_StructureVariant> structureVariant;

MolecularSequence(
  {this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.element_type,
    this.coordinateSystem,
    this.element_coordinateSystem,
    this.patient,
    this.specimen,
    this.device,
    this.performer,
    this.quantity,
    this.referenceSeq,
    this.variant,
    this.observedSeq,
    this.element_observedSeq,
    this.quality,
    this.readCoverage,
    this.element_readCoverage,
    this.repository,
    this.pointer,
    this.structureVariant
    });

  factory MolecularSequence.fromJson(Map<String, dynamic> json) => _$MolecularSequenceFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequenceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_ReferenceSeq {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Structural unit composed of a nucleic acid molecule which controls its
  // own replication through the interaction of specific proteins at one or
  // more origins of replication
  // ([SO:0000340](http://www.sequenceontology.org/browser/current_svn/term/SO:0000340)).
  CodeableConcept chromosome;

  //  The Genome Build used for reference, following GRCh build versions
  // e.g. 'GRCh 37'.  Version number must be included if a versioned release
  // of a primary build was used.
  String genomeBuild;

  //  Extensions for genomeBuild
  Element element_genomeBuild;

  //  A relative reference to a DNA strand based on gene orientation. The
  // strand that contains the open reading frame of the gene is the "sense"
  // strand, and the opposite complementary strand is the "antisense"
  // strand.
  String orientation; // <code> enum: sense/antisense;

  //  Extensions for orientation
  Element element_orientation;

  //  Reference identifier of reference sequence submitted to NCBI. It must
  // match the type in the MolecularSequence.type field. For example, the
  // prefix, “NG_” identifies reference sequence for genes, “NM_” for
  // messenger RNA transcripts, and “NP_” for amino acid sequences.
  CodeableConcept referenceSeqId;

  //  A pointer to another MolecularSequence entity as reference sequence.
  Reference referenceSeqPointer;

  //  A string like "ACGT".
  String referenceSeqString;

  //  Extensions for referenceSeqString
  Element element_referenceSeqString;

  //  An absolute reference to a strand. The Watson strand is the strand
  // whose 5'-end is on the short arm of the chromosome, and the Crick
  // strand as the one whose 5'-end is on the long arm.
  String strand; // <code> enum: watson/crick;

  //  Extensions for strand
  Element element_strand;

  //  Start position of the window on the reference sequence. If the
  // coordinate system is either 0-based or 1-based, then start position is
  // inclusive.
  int windowStart;

  //  Extensions for windowStart
  Element element_windowStart;

  //  End position of the window on the reference sequence. If the
  // coordinate system is 0-based then end is exclusive and does not include
  // the last position. If the coordinate system is 1-base, then end is
  // inclusive and includes the last position.
  int windowEnd;

  //  Extensions for windowEnd
  Element element_windowEnd;

MolecularSequence_ReferenceSeq(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.chromosome,
    this.genomeBuild,
    this.element_genomeBuild,
    this.orientation,
    this.element_orientation,
    this.referenceSeqId,
    this.referenceSeqPointer,
    this.referenceSeqString,
    this.element_referenceSeqString,
    this.strand,
    this.element_strand,
    this.windowStart,
    this.element_windowStart,
    this.windowEnd,
    this.element_windowEnd
    });

  factory MolecularSequence_ReferenceSeq.fromJson(Map<String, dynamic> json) => _$MolecularSequence_ReferenceSeqFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_ReferenceSeqToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Variant {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Start position of the variant on the  reference sequence. If the
  // coordinate system is either 0-based or 1-based, then start position is
  // inclusive.
  int start;

  //  Extensions for start
  Element element_start;

  //  End position of the variant on the reference sequence. If the
  // coordinate system is 0-based then end is exclusive and does not include
  // the last position. If the coordinate system is 1-base, then end is
  // inclusive and includes the last position.
  int end;

  //  Extensions for end
  Element element_end;

  //  An allele is one of a set of coexisting sequence variants of a gene
  // ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  //  Nucleotide(s)/amino acids from start position of sequence to stop
  // position of sequence on the positive (+) strand of the observed 
  // sequence. When the sequence  type is DNA, it should be the sequence on
  // the positive (+) strand. This will lay in the range between
  // variant.start and variant.end.
  String observedAllele;

  //  Extensions for observedAllele
  Element element_observedAllele;

  //  An allele is one of a set of coexisting sequence variants of a gene
  // ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  // Nucleotide(s)/amino acids from start position of sequence to stop
  // position of sequence on the positive (+) strand of the reference
  // sequence. When the sequence  type is DNA, it should be the sequence on
  // the positive (+) strand. This will lay in the range between
  // variant.start and variant.end.
  String referenceAllele;

  //  Extensions for referenceAllele
  Element element_referenceAllele;

  //  Extended CIGAR string for aligning the sequence with reference bases.
  // See detailed documentation
  // [here](http://support.illumina.com/help/SequencingAnalysisWorkflow/Content/Vault/Informatics/Sequencing_Analysis/CASAVA/swSEQ_mCA_ExtendedCIGARFormat.htm).
  String cigar;

  //  Extensions for cigar
  Element element_cigar;

  //  A pointer to an Observation containing variant information.
  Reference variantPointer;

MolecularSequence_Variant(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.start,
    this.element_start,
    this.end,
    this.element_end,
    this.observedAllele,
    this.element_observedAllele,
    this.referenceAllele,
    this.element_referenceAllele,
    this.cigar,
    this.element_cigar,
    this.variantPointer
    });

  factory MolecularSequence_Variant.fromJson(Map<String, dynamic> json) => _$MolecularSequence_VariantFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_VariantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Quality {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  INDEL / SNP / Undefined variant.
  String type; // <code> enum: indel/snp/unknown;

  //  Extensions for type
  Element element_type;

  //  Gold standard sequence used for comparing against.
  CodeableConcept standardSequence;

  //  Start position of the sequence. If the coordinate system is either
  // 0-based or 1-based, then start position is inclusive.
  int start;

  //  Extensions for start
  Element element_start;

  //  End position of the sequence. If the coordinate system is 0-based then
  // end is exclusive and does not include the last position. If the
  // coordinate system is 1-base, then end is inclusive and includes the
  // last position.
  int end;

  //  Extensions for end
  Element element_end;

  //  The score of an experimentally derived feature such as a p-value
  // ([SO:0001685](http://www.sequenceontology.org/browser/current_svn/term/SO:0001685)).
  Quantity score;

  //  Which method is used to get sequence quality.
  CodeableConcept method;

  //  True positives, from the perspective of the truth data, i.e. the
  // number of sites in the Truth Call Set for which there are paths through
  // the Query Call Set that are consistent with all of the alleles at this
  // site, and for which there is an accurate genotype call for the event.
  double truthTP;

  //  Extensions for truthTP
  Element element_truthTP;

  //  True positives, from the perspective of the query data, i.e. the
  // number of sites in the Query Call Set for which there are paths through
  // the Truth Call Set that are consistent with all of the alleles at this
  // site, and for which there is an accurate genotype call for the event.
  double queryTP;

  //  Extensions for queryTP
  Element element_queryTP;

  //  False negatives, i.e. the number of sites in the Truth Call Set for
  // which there is no path through the Query Call Set that is consistent
  // with all of the alleles at this site, or sites for which there is an
  // inaccurate genotype call for the event. Sites with correct variant but
  // incorrect genotype are counted here.
  double truthFN;

  //  Extensions for truthFN
  Element element_truthFN;

  //  False positives, i.e. the number of sites in the Query Call Set for
  // which there is no path through the Truth Call Set that is consistent
  // with this site. Sites with correct variant but incorrect genotype are
  // counted here.
  double queryFP;

  //  Extensions for queryFP
  Element element_queryFP;

  //  The number of false positives where the non-REF alleles in the Truth
  // and Query Call Sets match (i.e. cases where the truth is 1/1 and the
  // query is 0/1 or similar).
  double gtFP;

  //  Extensions for gtFP
  Element element_gtFP;

  //  QUERY.TP / (QUERY.TP + QUERY.FP).
  double precision;

  //  Extensions for precision
  Element element_precision;

  //  TRUTH.TP / (TRUTH.TP + TRUTH.FN).
  double recall;

  //  Extensions for recall
  Element element_recall;

  //  Harmonic mean of Recall and Precision, computed as: 2 * precision *
  // recall / (precision + recall).
  double fScore;

  //  Extensions for fScore
  Element element_fScore;

  //  Receiver Operator Characteristic (ROC) Curve  to give
  // sensitivity/specificity tradeoff.
  MolecularSequence_Roc roc;

MolecularSequence_Quality(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.element_type,
    this.standardSequence,
    this.start,
    this.element_start,
    this.end,
    this.element_end,
    this.score,
    this.method,
    this.truthTP,
    this.element_truthTP,
    this.queryTP,
    this.element_queryTP,
    this.truthFN,
    this.element_truthFN,
    this.queryFP,
    this.element_queryFP,
    this.gtFP,
    this.element_gtFP,
    this.precision,
    this.element_precision,
    this.recall,
    this.element_recall,
    this.fScore,
    this.element_fScore,
    this.roc
    });

  factory MolecularSequence_Quality.fromJson(Map<String, dynamic> json) => _$MolecularSequence_QualityFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_QualityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Roc {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Invidual data point representing the GQ (genotype quality) score
  // threshold.
  List<int> score;

  //  Extensions for score
  List<Element> element_score;

  //  The number of true positives if the GQ score threshold was set to
  // "score" field value.
  List<int> numTP;

  //  Extensions for numTP
  List<Element> element_numTP;

  //  The number of false positives if the GQ score threshold was set to
  // "score" field value.
  List<int> numFP;

  //  Extensions for numFP
  List<Element> element_numFP;

  //  The number of false negatives if the GQ score threshold was set to
  // "score" field value.
  List<int> numFN;

  //  Extensions for numFN
  List<Element> element_numFN;

  //  Calculated precision if the GQ score threshold was set to "score"
  // field value.
  List<double> precision;

  //  Extensions for precision
  List<Element> element_precision;

  //  Calculated sensitivity if the GQ score threshold was set to "score"
  // field value.
  List<double> sensitivity;

  //  Extensions for sensitivity
  List<Element> element_sensitivity;

  //  Calculated fScore if the GQ score threshold was set to "score" field
  // value.
  List<double> fMeasure;

  //  Extensions for fMeasure
  List<Element> element_fMeasure;

MolecularSequence_Roc(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.score,
    this.element_score,
    this.numTP,
    this.element_numTP,
    this.numFP,
    this.element_numFP,
    this.numFN,
    this.element_numFN,
    this.precision,
    this.element_precision,
    this.sensitivity,
    this.element_sensitivity,
    this.fMeasure,
    this.element_fMeasure
    });

  factory MolecularSequence_Roc.fromJson(Map<String, dynamic> json) => _$MolecularSequence_RocFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_RocToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Repository {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Click and see / RESTful API / Need login to see / RESTful API with
  // authentication / Other ways to see resource.
  String type; // <code> enum: directlink/openapi/login/oauth/other;

  //  Extensions for type
  Element element_type;

  //  URI of an external repository which contains further details about the
  // genetics data.
  String url;

  //  Extensions for url
  Element element_url;

  //  URI of an external repository which contains further details about the
  // genetics data.
  String name;

  //  Extensions for name
  Element element_name;

  //  Id of the variant in this external repository. The server will
  // understand how to use this id to call for more info about datasets in
  // external repository.
  String datasetId;

  //  Extensions for datasetId
  Element element_datasetId;

  //  Id of the variantset in this external repository. The server will
  // understand how to use this id to call for more info about variantsets
  // in external repository.
  String variantsetId;

  //  Extensions for variantsetId
  Element element_variantsetId;

  //  Id of the read in this external repository.
  String readsetId;

  //  Extensions for readsetId
  Element element_readsetId;

MolecularSequence_Repository(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.element_type,
    this.url,
    this.element_url,
    this.name,
    this.element_name,
    this.datasetId,
    this.element_datasetId,
    this.variantsetId,
    this.element_variantsetId,
    this.readsetId,
    this.element_readsetId
    });

  factory MolecularSequence_Repository.fromJson(Map<String, dynamic> json) => _$MolecularSequence_RepositoryFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_RepositoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_StructureVariant {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Information about chromosome structure variation DNA change type.
  CodeableConcept variantType;

  //  Used to indicate if the outer and inner start-end values have the same
  // meaning.
  bool exact;

  //  Extensions for exact
  Element element_exact;

  //  Length of the variant chromosome.
  int length;

  //  Extensions for length
  Element element_length;

  //  Structural variant outer.
  MolecularSequence_Outer outer;

  //  Structural variant inner.
  MolecularSequence_Inner inner;

MolecularSequence_StructureVariant(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.variantType,
    this.exact,
    this.element_exact,
    this.length,
    this.element_length,
    this.outer,
    this.inner
    });

  factory MolecularSequence_StructureVariant.fromJson(Map<String, dynamic> json) => _$MolecularSequence_StructureVariantFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_StructureVariantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Outer {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Structural variant outer start. If the coordinate system is either
  // 0-based or 1-based, then start position is inclusive.
  int start;

  //  Extensions for start
  Element element_start;

  //  Structural variant outer end. If the coordinate system is 0-based then
  // end is exclusive and does not include the last position. If the
  // coordinate system is 1-base, then end is inclusive and includes the
  // last position.
  int end;

  //  Extensions for end
  Element element_end;

MolecularSequence_Outer(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.start,
    this.element_start,
    this.end,
    this.element_end
    });

  factory MolecularSequence_Outer.fromJson(Map<String, dynamic> json) => _$MolecularSequence_OuterFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_OuterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Inner {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Structural variant inner start. If the coordinate system is either
  // 0-based or 1-based, then start position is inclusive.
  int start;

  //  Extensions for start
  Element element_start;

  //  Structural variant inner end. If the coordinate system is 0-based then
  // end is exclusive and does not include the last position. If the
  // coordinate system is 1-base, then end is inclusive and includes the
  // last position.
  int end;

  //  Extensions for end
  Element element_end;

MolecularSequence_Inner(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.start,
    this.element_start,
    this.end,
    this.element_end
    });

  factory MolecularSequence_Inner.fromJson(Map<String, dynamic> json) => _$MolecularSequence_InnerFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_InnerToJson(this);
}

