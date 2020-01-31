import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'substanceNucleicAcid.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid {

  //  This is a SubstanceNucleicAcid resource
  final String resourceType= 'SubstanceNucleicAcid';

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

  //  The type of the sequence shall be specified based on a controlled
  // vocabulary.
  CodeableConcept sequenceType;

  //  The number of linear sequences of nucleotides linked through
  // phosphodiester bonds shall be described. Subunits would be strands of
  // nucleic acids that are tightly associated typically through
  // Watson-Crick base pairing. NOTE: If not specified in the reference
  // source, the assumption is that there is 1 subunit.
  int numberOfSubunits;

  //  Extensions for numberOfSubunits
  Element element_numberOfSubunits;

  //  The area of hybridisation shall be described if applicable for double
  // stranded RNA or DNA. The number associated with the subunit followed by
  // the number associated to the residue shall be specified in increasing
  // order. The underscore “” shall be used as separator as follows:
  // “Subunitnumber Residue”.
  String areaOfHybridisation;

  //  Extensions for areaOfHybridisation
  Element element_areaOfHybridisation;

  //  (TBC).
  CodeableConcept oligoNucleotideType;

  //  Subunits are listed in order of decreasing length; sequences of the
  // same length will be ordered by molecular weight; subunits that have
  // identical sequences will be repeated multiple times.
  List<SubstanceNucleicAcid_Subunit> subunit;

SubstanceNucleicAcid(
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
    this.sequenceType,
    this.numberOfSubunits,
    this.element_numberOfSubunits,
    this.areaOfHybridisation,
    this.element_areaOfHybridisation,
    this.oligoNucleotideType,
    this.subunit
    });

  factory SubstanceNucleicAcid.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcidFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcidToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid_Subunit {

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

  //  Index of linear sequences of nucleic acids in order of decreasing
  // length. Sequences of the same length will be ordered by molecular
  // weight. Subunits that have identical sequences will be repeated and
  // have sequential subscripts.
  int subunit;

  //  Extensions for subunit
  Element element_subunit;

  //  Actual nucleotide sequence notation from 5' to 3' end using standard
  // single letter codes. In addition to the base sequence, sugar and type
  // of phosphate or non-phosphate linkage should also be captured.
  String sequence;

  //  Extensions for sequence
  Element element_sequence;

  //  The length of the sequence shall be captured.
  int length;

  //  Extensions for length
  Element element_length;

  //  (TBC).
  Attachment sequenceAttachment;

  //  The nucleotide present at the 5’ terminal shall be specified based on
  // a controlled vocabulary. Since the sequence is represented from the 5'
  // to the 3' end, the 5’ prime nucleotide is the letter at the first
  // position in the sequence. A separate representation would be redundant.
  CodeableConcept fivePrime;

  //  The nucleotide present at the 3’ terminal shall be specified based on
  // a controlled vocabulary. Since the sequence is represented from the 5'
  // to the 3' end, the 5’ prime nucleotide is the letter at the last
  // position in the sequence. A separate representation would be redundant.
  CodeableConcept threePrime;

  //  The linkages between sugar residues will also be captured.
  List<SubstanceNucleicAcid_Linkage> linkage;

  //  5.3.6.8.1 Sugar ID (Mandatory).
  List<SubstanceNucleicAcid_Sugar> sugar;

SubstanceNucleicAcid_Subunit(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.subunit,
    this.element_subunit,
    this.sequence,
    this.element_sequence,
    this.length,
    this.element_length,
    this.sequenceAttachment,
    this.fivePrime,
    this.threePrime,
    this.linkage,
    this.sugar
    });

  factory SubstanceNucleicAcid_Subunit.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_SubunitFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcid_SubunitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid_Linkage {

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

  //  The entity that links the sugar residues together should also be
  // captured for nearly all naturally occurring nucleic acid the linkage is
  // a phosphate group. For many synthetic oligonucleotides phosphorothioate
  // linkages are often seen. Linkage connectivity is assumed to be 3’-5’.
  // If the linkage is either 3’-3’ or 5’-5’ this should be specified.
  String connectivity;

  //  Extensions for connectivity
  Element element_connectivity;

  //  Each linkage will be registered as a fragment and have an ID.
  Identifier identifier;

  //  Each linkage will be registered as a fragment and have at least one
  // name. A single name shall be assigned to each linkage.
  String name;

  //  Extensions for name
  Element element_name;

  //  Residues shall be captured as described in 5.3.6.8.3.
  String residueSite;

  //  Extensions for residueSite
  Element element_residueSite;

SubstanceNucleicAcid_Linkage(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.connectivity,
    this.element_connectivity,
    this.identifier,
    this.name,
    this.element_name,
    this.residueSite,
    this.element_residueSite
    });

  factory SubstanceNucleicAcid_Linkage.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_LinkageFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcid_LinkageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid_Sugar {

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

  //  The Substance ID of the sugar or sugar-like component that make up the
  // nucleotide.
  Identifier identifier;

  //  The name of the sugar or sugar-like component that make up the
  // nucleotide.
  String name;

  //  Extensions for name
  Element element_name;

  //  The residues that contain a given sugar will be captured. The order of
  // given residues will be captured in the 5‘-3‘direction consistent with
  // the base sequences listed above.
  String residueSite;

  //  Extensions for residueSite
  Element element_residueSite;

SubstanceNucleicAcid_Sugar(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.name,
    this.element_name,
    this.residueSite,
    this.element_residueSite
    });

  factory SubstanceNucleicAcid_Sugar.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_SugarFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcid_SugarToJson(this);
}

