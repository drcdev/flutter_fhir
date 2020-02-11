import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 572)
class SubstanceProtein {

  //  This is a SubstanceProtein resource
  @HiveField(0)
  final String resourceType= 'SubstanceProtein';

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

  //  The SubstanceProtein descriptive elements will only be used when a
  // complete or partial amino acid sequence is available or derivable from
  // a nucleic acid sequence.
  @HiveField(11)
  CodeableConcept sequenceType;

  //  Number of linear sequences of amino acids linked through peptide
  // bonds. The number of subunits constituting the SubstanceProtein shall
  // be described. It is possible that the number of subunits can be
  // variable.
  @HiveField(12)
  int numberOfSubunits;

  //  Extensions for numberOfSubunits
  @HiveField(13)
  Element elementNumberOfSubunits;

  //  The disulphide bond between two cysteine residues either on the same
  // subunit or on two different subunits shall be described. The position
  // of the disulfide bonds in the SubstanceProtein shall be listed in
  // increasing order of subunit number and position within subunit followed
  // by the abbreviation of the amino acids involved. The disulfide linkage
  // positions shall actually contain the amino acid Cysteine at the
  // respective positions.
  @HiveField(14)
  List<String> disulfideLinkage;

  //  Extensions for disulfideLinkage
  @HiveField(15)
  List<Element> elementDisulfideLinkage;

  //  This subclause refers to the description of each subunit constituting
  // the SubstanceProtein. A subunit is a linear sequence of amino acids
  // linked through peptide bonds. The Subunit information shall be provided
  // when the finished SubstanceProtein is a complex of multiple sequences;
  // subunits are not used to delineate domains within a single sequence.
  // Subunits are listed in order of decreasing length; sequences of the
  // same length will be ordered by decreasing molecular weight; subunits
  // that have identical sequences will be repeated multiple times.
  @HiveField(16)
  List<SubstanceProtein_Subunit> subunit;

SubstanceProtein(
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
    this.sequenceType,
    this.numberOfSubunits,
    this.elementNumberOfSubunits,
    this.disulfideLinkage,
    this.elementDisulfideLinkage,
    this.subunit
    });

  factory SubstanceProtein.fromJson(Map<String, dynamic> json) => _$SubstanceProteinFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceProteinToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 573)
class SubstanceProtein_Subunit {

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

  //  Index of primary sequences of amino acids linked through peptide bonds
  // in order of decreasing length. Sequences of the same length will be
  // ordered by molecular weight. Subunits that have identical sequences
  // will be repeated and have sequential subscripts.
  @HiveField(3)
  int subunit;

  //  Extensions for subunit
  @HiveField(4)
  Element elementSubunit;

  //  The sequence information shall be provided enumerating the amino acids
  // from N- to C-terminal end using standard single-letter amino acid
  // codes. Uppercase shall be used for L-amino acids and lowercase for
  // D-amino acids. Transcribed SubstanceProteins will always be described
  // using the translated sequence; for synthetic peptide containing amino
  // acids that are not represented with a single letter code an X should be
  // used within the sequence. The modified amino acids will be
  // distinguished by their position in the sequence.
  @HiveField(5)
  String sequence;

  //  Extensions for sequence
  @HiveField(6)
  Element elementSequence;

  //  Length of linear sequences of amino acids contained in the subunit.
  @HiveField(7)
  int length;

  //  Extensions for length
  @HiveField(8)
  Element elementLength;

  //  The sequence information shall be provided enumerating the amino acids
  // from N- to C-terminal end using standard single-letter amino acid
  // codes. Uppercase shall be used for L-amino acids and lowercase for
  // D-amino acids. Transcribed SubstanceProteins will always be described
  // using the translated sequence; for synthetic peptide containing amino
  // acids that are not represented with a single letter code an X should be
  // used within the sequence. The modified amino acids will be
  // distinguished by their position in the sequence.
  @HiveField(9)
  Attachment sequenceAttachment;

  //  Unique identifier for molecular fragment modification based on the ISO
  // 11238 Substance ID.
  @HiveField(10)
  Identifier nTerminalModificationId;

  //  The name of the fragment modified at the N-terminal of the
  // SubstanceProtein shall be specified.
  @HiveField(11)
  String nTerminalModification;

  //  Extensions for nTerminalModification
  @HiveField(12)
  Element elementNTerminalModification;

  //  Unique identifier for molecular fragment modification based on the ISO
  // 11238 Substance ID.
  @HiveField(13)
  Identifier cTerminalModificationId;

  //  The modification at the C-terminal shall be specified.
  @HiveField(14)
  String cTerminalModification;

  //  Extensions for cTerminalModification
  @HiveField(15)
  Element elementCTerminalModification;

SubstanceProtein_Subunit(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.subunit,
    this.elementSubunit,
    this.sequence,
    this.elementSequence,
    this.length,
    this.elementLength,
    this.sequenceAttachment,
    this.nTerminalModificationId,
    this.nTerminalModification,
    this.elementNTerminalModification,
    this.cTerminalModificationId,
    this.cTerminalModification,
    this.elementCTerminalModification
    });

  factory SubstanceProtein_Subunit.fromJson(Map<String, dynamic> json) => _$SubstanceProtein_SubunitFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceProtein_SubunitToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstanceProteinAdapter extends TypeAdapter<SubstanceProtein> {
  @override
  final typeId = 572;

  @override
  SubstanceProtein read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceProtein(
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
      sequenceType: fields[11] as CodeableConcept,
      numberOfSubunits: fields[12] as int,
      elementNumberOfSubunits: fields[13] as Element,
      disulfideLinkage: (fields[14] as List)?.cast<String>(),
      elementDisulfideLinkage: (fields[15] as List)?.cast<Element>(),
      subunit: (fields[16] as List)?.cast<SubstanceProtein_Subunit>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceProtein obj) {
    writer
      ..writeByte(17)
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
      ..write(obj.sequenceType)
      ..writeByte(12)
      ..write(obj.numberOfSubunits)
      ..writeByte(13)
      ..write(obj.elementNumberOfSubunits)
      ..writeByte(14)
      ..write(obj.disulfideLinkage)
      ..writeByte(15)
      ..write(obj.elementDisulfideLinkage)
      ..writeByte(16)
      ..write(obj.subunit);
  }
}

class SubstanceProtein_SubunitAdapter
    extends TypeAdapter<SubstanceProtein_Subunit> {
  @override
  final typeId = 573;

  @override
  SubstanceProtein_Subunit read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceProtein_Subunit(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      subunit: fields[3] as int,
      elementSubunit: fields[4] as Element,
      sequence: fields[5] as String,
      elementSequence: fields[6] as Element,
      length: fields[7] as int,
      elementLength: fields[8] as Element,
      sequenceAttachment: fields[9] as Attachment,
      nTerminalModificationId: fields[10] as Identifier,
      nTerminalModification: fields[11] as String,
      elementNTerminalModification: fields[12] as Element,
      cTerminalModificationId: fields[13] as Identifier,
      cTerminalModification: fields[14] as String,
      elementCTerminalModification: fields[15] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceProtein_Subunit obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.subunit)
      ..writeByte(4)
      ..write(obj.elementSubunit)
      ..writeByte(5)
      ..write(obj.sequence)
      ..writeByte(6)
      ..write(obj.elementSequence)
      ..writeByte(7)
      ..write(obj.length)
      ..writeByte(8)
      ..write(obj.elementLength)
      ..writeByte(9)
      ..write(obj.sequenceAttachment)
      ..writeByte(10)
      ..write(obj.nTerminalModificationId)
      ..writeByte(11)
      ..write(obj.nTerminalModification)
      ..writeByte(12)
      ..write(obj.elementNTerminalModification)
      ..writeByte(13)
      ..write(obj.cTerminalModificationId)
      ..writeByte(14)
      ..write(obj.cTerminalModification)
      ..writeByte(15)
      ..write(obj.elementCTerminalModification);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceProtein _$SubstanceProteinFromJson(Map<String, dynamic> json) {
  return SubstanceProtein(
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
    sequenceType: json['sequenceType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['sequenceType'] as Map<String, dynamic>),
    numberOfSubunits: json['numberOfSubunits'] as int,
    elementNumberOfSubunits: json['elementNumberOfSubunits'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfSubunits'] as Map<String, dynamic>),
    disulfideLinkage:
        (json['disulfideLinkage'] as List)?.map((e) => e as String)?.toList(),
    elementDisulfideLinkage: (json['elementDisulfideLinkage'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subunit: (json['subunit'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceProtein_Subunit.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceProteinToJson(SubstanceProtein instance) =>
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
      'sequenceType': instance.sequenceType?.toJson(),
      'numberOfSubunits': instance.numberOfSubunits,
      'elementNumberOfSubunits': instance.elementNumberOfSubunits?.toJson(),
      'disulfideLinkage': instance.disulfideLinkage,
      'elementDisulfideLinkage':
          instance.elementDisulfideLinkage?.map((e) => e?.toJson())?.toList(),
      'subunit': instance.subunit?.map((e) => e?.toJson())?.toList(),
    };

SubstanceProtein_Subunit _$SubstanceProtein_SubunitFromJson(
    Map<String, dynamic> json) {
  return SubstanceProtein_Subunit(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subunit: json['subunit'] as int,
    elementSubunit: json['elementSubunit'] == null
        ? null
        : Element.fromJson(json['elementSubunit'] as Map<String, dynamic>),
    sequence: json['sequence'] as String,
    elementSequence: json['elementSequence'] == null
        ? null
        : Element.fromJson(json['elementSequence'] as Map<String, dynamic>),
    length: json['length'] as int,
    elementLength: json['elementLength'] == null
        ? null
        : Element.fromJson(json['elementLength'] as Map<String, dynamic>),
    sequenceAttachment: json['sequenceAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['sequenceAttachment'] as Map<String, dynamic>),
    nTerminalModificationId: json['nTerminalModificationId'] == null
        ? null
        : Identifier.fromJson(
            json['nTerminalModificationId'] as Map<String, dynamic>),
    nTerminalModification: json['nTerminalModification'] as String,
    elementNTerminalModification: json['elementNTerminalModification'] == null
        ? null
        : Element.fromJson(
            json['elementNTerminalModification'] as Map<String, dynamic>),
    cTerminalModificationId: json['cTerminalModificationId'] == null
        ? null
        : Identifier.fromJson(
            json['cTerminalModificationId'] as Map<String, dynamic>),
    cTerminalModification: json['cTerminalModification'] as String,
    elementCTerminalModification: json['elementCTerminalModification'] == null
        ? null
        : Element.fromJson(
            json['elementCTerminalModification'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceProtein_SubunitToJson(
        SubstanceProtein_Subunit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'subunit': instance.subunit,
      'elementSubunit': instance.elementSubunit?.toJson(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'length': instance.length,
      'elementLength': instance.elementLength?.toJson(),
      'sequenceAttachment': instance.sequenceAttachment?.toJson(),
      'nTerminalModificationId': instance.nTerminalModificationId?.toJson(),
      'nTerminalModification': instance.nTerminalModification,
      'elementNTerminalModification':
          instance.elementNTerminalModification?.toJson(),
      'cTerminalModificationId': instance.cTerminalModificationId?.toJson(),
      'cTerminalModification': instance.cTerminalModification,
      'elementCTerminalModification':
          instance.elementCTerminalModification?.toJson(),
    };
