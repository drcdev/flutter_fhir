import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'substanceProtein.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceProtein {


// This is a SubstanceProtein resource
String resourceType;

// The logical id of the resource, as used in the URL for the resource. Once
//  assigned, this value never changes.
String id;

// The metadata about the resource. This is content that is maintained by the
//  infrastructure. Changes to the content might not always be associated with
//  version changes to the resource.
Meta meta;

// A reference to a set of rules that were followed when the resource was
//  constructed, and which must be understood when processing the content. Often,
//  this is a reference to an implementation guide that defines the special rules
//  along with other profiles etc.
String implicitRules;

// Extensions for implicitRules
Element _implicitRules;

// The base language in which the resource is written.
String language;

// Extensions for language
Element _language;

// A human-readable narrative that contains a summary of the resource and can be
//  used to represent the content of the resource to a human. The narrative need
//  not encode all the structured data, but is required to contain sufficient
//  detail to make it "clinically safe" for a human to just read the narrative.
//  Resource definitions may define what content should be represented in the
//  narrative to ensure clinical safety.
Narrative text;

// These resources do not have an independent existence apart from the resource
//  that contains them - they cannot be identified independently, and nor can they
//  have their own independent transaction scope.
List<ResourceList> contained;

// May be used to represent additional information that is not part of the basic
//  definition of the resource. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the resource and that modifies the understanding of the element
//  that contains it and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer is allowed to define an extension, there is a set of requirements
//  that SHALL be met as part of the definition of the extension. Applications
//  processing a resource are required to check for modifier extensions.
// Modifier
//  extensions SHALL NOT change the meaning of any elements on Resource or
//  DomainResource (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// The SubstanceProtein descriptive elements will only be used when a complete or
//  partial amino acid sequence is available or derivable from a nucleic acid
//  sequence.
CodeableConcept sequenceType;

// Number of linear sequences of amino acids linked through peptide bonds. The
//  number of subunits constituting the SubstanceProtein shall be described. It is
//  possible that the number of subunits can be variable.
int numberOfSubunits;

// Extensions for numberOfSubunits
Element _numberOfSubunits;

// The disulphide bond between two cysteine residues either on the same subunit or
//  on two different subunits shall be described. The position of the disulfide
//  bonds in the SubstanceProtein shall be listed in increasing order of subunit
//  number and position within subunit followed by the abbreviation of the amino
//  acids involved. The disulfide linkage positions shall actually contain the
//  amino acid Cysteine at the respective positions.
List<String> disulfideLinkage;

// Extensions for disulfideLinkage
List<Element> _disulfideLinkage;

// This subclause refers to the description of each subunit constituting the
//  SubstanceProtein. A subunit is a linear sequence of amino acids linked through
//  peptide bonds. The Subunit information shall be provided when the finished
//  SubstanceProtein is a complex of multiple sequences; subunits are not used to
//  delineate domains within a single sequence. Subunits are listed in order of
//  decreasing length; sequences of the same length will be ordered by decreasing
//  molecular weight; subunits that have identical sequences will be repeated multiple times.
List<SubstanceProtein_Subunit> subunit;

SubstanceProtein(
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
    this.sequenceType,
    this.numberOfSubunits,
    this._numberOfSubunits,
    this.disulfideLinkage,
    this._disulfideLinkage,
    this.subunit
    });

  factory SubstanceProtein.fromJson(Map<String, dynamic> json) => _$SubstanceProteinFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceProteinToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceProtein_Subunit {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Index of primary sequences of amino acids linked through peptide bonds in order
//  of decreasing length. Sequences of the same length will be ordered by molecular
//  weight. Subunits that have identical sequences will be repeated and have
//  sequential subscripts.
int subunit;

// Extensions for subunit
Element _subunit;

// The sequence information shall be provided enumerating the amino acids from N-
//  to C-terminal end using standard single-letter amino acid codes. Uppercase
//  shall be used for L-amino acids and lowercase for D-amino acids. Transcribed
//  SubstanceProteins will always be described using the translated sequence; for
//  synthetic peptide containing amino acids that are not represented with a single
//  letter code an X should be used within the sequence. The modified amino acids
//  will be distinguished by their position in the sequence.
String sequence;

// Extensions for sequence
Element _sequence;

// Length of linear sequences of amino acids contained in the subunit.
int length;

// Extensions for length
Element _length;

// The sequence information shall be provided enumerating the amino acids from N-
//  to C-terminal end using standard single-letter amino acid codes. Uppercase
//  shall be used for L-amino acids and lowercase for D-amino acids. Transcribed
//  SubstanceProteins will always be described using the translated sequence; for
//  synthetic peptide containing amino acids that are not represented with a single
//  letter code an X should be used within the sequence. The modified amino acids
//  will be distinguished by their position in the sequence.
Attachment sequenceAttachment;

// Unique identifier for molecular fragment modification based on the ISO 11238
//  Substance ID.
Identifier nTerminalModificationId;

// The name of the fragment modified at the N-terminal of the SubstanceProtein
//  shall be specified.
String nTerminalModification;

// Extensions for nTerminalModification
Element _nTerminalModification;

// Unique identifier for molecular fragment modification based on the ISO 11238
//  Substance ID.
Identifier cTerminalModificationId;

// The modification at the C-terminal shall be specified.
String cTerminalModification;

// Extensions for cTerminalModification
Element _cTerminalModification;

SubstanceProtein_Subunit(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.subunit,
    this._subunit,
    this.sequence,
    this._sequence,
    this.length,
    this._length,
    this.sequenceAttachment,
    this.nTerminalModificationId,
    this.nTerminalModification,
    this._nTerminalModification,
    this.cTerminalModificationId,
    this.cTerminalModification,
    this._cTerminalModification
    });

  factory SubstanceProtein_Subunit.fromJson(Map<String, dynamic> json) => _$SubstanceProtein_SubunitFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceProtein_SubunitToJson(this);
}

