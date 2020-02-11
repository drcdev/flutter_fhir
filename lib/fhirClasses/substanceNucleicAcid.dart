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
@HiveType(typeId: 561)
class SubstanceNucleicAcid {

  //  This is a SubstanceNucleicAcid resource
  @HiveField(0)
  final String resourceType= 'SubstanceNucleicAcid';

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

  //  The type of the sequence shall be specified based on a controlled
  // vocabulary.
  @HiveField(11)
  CodeableConcept sequenceType;

  //  The number of linear sequences of nucleotides linked through
  // phosphodiester bonds shall be described. Subunits would be strands of
  // nucleic acids that are tightly associated typically through
  // Watson-Crick base pairing. NOTE: If not specified in the reference
  // source, the assumption is that there is 1 subunit.
  @HiveField(12)
  int numberOfSubunits;

  //  Extensions for numberOfSubunits
  @HiveField(13)
  Element elementNumberOfSubunits;

  //  The area of hybridisation shall be described if applicable for double
  // stranded RNA or DNA. The number associated with the subunit followed by
  // the number associated to the residue shall be specified in increasing
  // order. The underscore “” shall be used as separator as follows:
  // “Subunitnumber Residue”.
  @HiveField(14)
  String areaOfHybridisation;

  //  Extensions for areaOfHybridisation
  @HiveField(15)
  Element elementAreaOfHybridisation;

  //  (TBC).
  @HiveField(16)
  CodeableConcept oligoNucleotideType;

  //  Subunits are listed in order of decreasing length; sequences of the
  // same length will be ordered by molecular weight; subunits that have
  // identical sequences will be repeated multiple times.
  @HiveField(17)
  List<SubstanceNucleicAcid_Subunit> subunit;

SubstanceNucleicAcid(
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
    this.areaOfHybridisation,
    this.elementAreaOfHybridisation,
    this.oligoNucleotideType,
    this.subunit
    });

  factory SubstanceNucleicAcid.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcidFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcidToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 562)
class SubstanceNucleicAcid_Subunit {

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

  //  Index of linear sequences of nucleic acids in order of decreasing
  // length. Sequences of the same length will be ordered by molecular
  // weight. Subunits that have identical sequences will be repeated and
  // have sequential subscripts.
  @HiveField(3)
  int subunit;

  //  Extensions for subunit
  @HiveField(4)
  Element elementSubunit;

  //  Actual nucleotide sequence notation from 5' to 3' end using standard
  // single letter codes. In addition to the base sequence, sugar and type
  // of phosphate or non-phosphate linkage should also be captured.
  @HiveField(5)
  String sequence;

  //  Extensions for sequence
  @HiveField(6)
  Element elementSequence;

  //  The length of the sequence shall be captured.
  @HiveField(7)
  int length;

  //  Extensions for length
  @HiveField(8)
  Element elementLength;

  //  (TBC).
  @HiveField(9)
  Attachment sequenceAttachment;

  //  The nucleotide present at the 5’ terminal shall be specified based on
  // a controlled vocabulary. Since the sequence is represented from the 5'
  // to the 3' end, the 5’ prime nucleotide is the letter at the first
  // position in the sequence. A separate representation would be redundant.
  @HiveField(10)
  CodeableConcept fivePrime;

  //  The nucleotide present at the 3’ terminal shall be specified based on
  // a controlled vocabulary. Since the sequence is represented from the 5'
  // to the 3' end, the 5’ prime nucleotide is the letter at the last
  // position in the sequence. A separate representation would be redundant.
  @HiveField(11)
  CodeableConcept threePrime;

  //  The linkages between sugar residues will also be captured.
  @HiveField(12)
  List<SubstanceNucleicAcid_Linkage> linkage;

  //  5.3.6.8.1 Sugar ID (Mandatory).
  @HiveField(13)
  List<SubstanceNucleicAcid_Sugar> sugar;

SubstanceNucleicAcid_Subunit(
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
    this.fivePrime,
    this.threePrime,
    this.linkage,
    this.sugar
    });

  factory SubstanceNucleicAcid_Subunit.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_SubunitFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcid_SubunitToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 563)
class SubstanceNucleicAcid_Linkage {

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

  //  The entity that links the sugar residues together should also be
  // captured for nearly all naturally occurring nucleic acid the linkage is
  // a phosphate group. For many synthetic oligonucleotides phosphorothioate
  // linkages are often seen. Linkage connectivity is assumed to be 3’-5’.
  // If the linkage is either 3’-3’ or 5’-5’ this should be specified.
  @HiveField(3)
  String connectivity;

  //  Extensions for connectivity
  @HiveField(4)
  Element elementConnectivity;

  //  Each linkage will be registered as a fragment and have an ID.
  @HiveField(5)
  Identifier identifier;

  //  Each linkage will be registered as a fragment and have at least one
  // name. A single name shall be assigned to each linkage.
  @HiveField(6)
  String name;

  //  Extensions for name
  @HiveField(7)
  Element elementName;

  //  Residues shall be captured as described in 5.3.6.8.3.
  @HiveField(8)
  String residueSite;

  //  Extensions for residueSite
  @HiveField(9)
  Element elementResidueSite;

SubstanceNucleicAcid_Linkage(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.connectivity,
    this.elementConnectivity,
    this.identifier,
    this.name,
    this.elementName,
    this.residueSite,
    this.elementResidueSite
    });

  factory SubstanceNucleicAcid_Linkage.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_LinkageFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcid_LinkageToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 564)
class SubstanceNucleicAcid_Sugar {

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

  //  The Substance ID of the sugar or sugar-like component that make up the
  // nucleotide.
  @HiveField(3)
  Identifier identifier;

  //  The name of the sugar or sugar-like component that make up the
  // nucleotide.
  @HiveField(4)
  String name;

  //  Extensions for name
  @HiveField(5)
  Element elementName;

  //  The residues that contain a given sugar will be captured. The order of
  // given residues will be captured in the 5‘-3‘direction consistent with
  // the base sequences listed above.
  @HiveField(6)
  String residueSite;

  //  Extensions for residueSite
  @HiveField(7)
  Element elementResidueSite;

SubstanceNucleicAcid_Sugar(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.name,
    this.elementName,
    this.residueSite,
    this.elementResidueSite
    });

  factory SubstanceNucleicAcid_Sugar.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_SugarFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcid_SugarToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstanceNucleicAcidAdapter extends TypeAdapter<SubstanceNucleicAcid> {
  @override
  final typeId = 561;

  @override
  SubstanceNucleicAcid read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceNucleicAcid(
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
      areaOfHybridisation: fields[14] as String,
      elementAreaOfHybridisation: fields[15] as Element,
      oligoNucleotideType: fields[16] as CodeableConcept,
      subunit: (fields[17] as List)?.cast<SubstanceNucleicAcid_Subunit>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceNucleicAcid obj) {
    writer
      ..writeByte(18)
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
      ..write(obj.areaOfHybridisation)
      ..writeByte(15)
      ..write(obj.elementAreaOfHybridisation)
      ..writeByte(16)
      ..write(obj.oligoNucleotideType)
      ..writeByte(17)
      ..write(obj.subunit);
  }
}

class SubstanceNucleicAcid_SubunitAdapter
    extends TypeAdapter<SubstanceNucleicAcid_Subunit> {
  @override
  final typeId = 562;

  @override
  SubstanceNucleicAcid_Subunit read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceNucleicAcid_Subunit(
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
      fivePrime: fields[10] as CodeableConcept,
      threePrime: fields[11] as CodeableConcept,
      linkage: (fields[12] as List)?.cast<SubstanceNucleicAcid_Linkage>(),
      sugar: (fields[13] as List)?.cast<SubstanceNucleicAcid_Sugar>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceNucleicAcid_Subunit obj) {
    writer
      ..writeByte(14)
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
      ..write(obj.fivePrime)
      ..writeByte(11)
      ..write(obj.threePrime)
      ..writeByte(12)
      ..write(obj.linkage)
      ..writeByte(13)
      ..write(obj.sugar);
  }
}

class SubstanceNucleicAcid_LinkageAdapter
    extends TypeAdapter<SubstanceNucleicAcid_Linkage> {
  @override
  final typeId = 563;

  @override
  SubstanceNucleicAcid_Linkage read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceNucleicAcid_Linkage(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      connectivity: fields[3] as String,
      elementConnectivity: fields[4] as Element,
      identifier: fields[5] as Identifier,
      name: fields[6] as String,
      elementName: fields[7] as Element,
      residueSite: fields[8] as String,
      elementResidueSite: fields[9] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceNucleicAcid_Linkage obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.connectivity)
      ..writeByte(4)
      ..write(obj.elementConnectivity)
      ..writeByte(5)
      ..write(obj.identifier)
      ..writeByte(6)
      ..write(obj.name)
      ..writeByte(7)
      ..write(obj.elementName)
      ..writeByte(8)
      ..write(obj.residueSite)
      ..writeByte(9)
      ..write(obj.elementResidueSite);
  }
}

class SubstanceNucleicAcid_SugarAdapter
    extends TypeAdapter<SubstanceNucleicAcid_Sugar> {
  @override
  final typeId = 564;

  @override
  SubstanceNucleicAcid_Sugar read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceNucleicAcid_Sugar(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identifier: fields[3] as Identifier,
      name: fields[4] as String,
      elementName: fields[5] as Element,
      residueSite: fields[6] as String,
      elementResidueSite: fields[7] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceNucleicAcid_Sugar obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.identifier)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.elementName)
      ..writeByte(6)
      ..write(obj.residueSite)
      ..writeByte(7)
      ..write(obj.elementResidueSite);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceNucleicAcid _$SubstanceNucleicAcidFromJson(Map<String, dynamic> json) {
  return SubstanceNucleicAcid(
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
    areaOfHybridisation: json['areaOfHybridisation'] as String,
    elementAreaOfHybridisation: json['elementAreaOfHybridisation'] == null
        ? null
        : Element.fromJson(
            json['elementAreaOfHybridisation'] as Map<String, dynamic>),
    oligoNucleotideType: json['oligoNucleotideType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['oligoNucleotideType'] as Map<String, dynamic>),
    subunit: (json['subunit'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceNucleicAcid_Subunit.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceNucleicAcidToJson(
        SubstanceNucleicAcid instance) =>
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
      'areaOfHybridisation': instance.areaOfHybridisation,
      'elementAreaOfHybridisation':
          instance.elementAreaOfHybridisation?.toJson(),
      'oligoNucleotideType': instance.oligoNucleotideType?.toJson(),
      'subunit': instance.subunit?.map((e) => e?.toJson())?.toList(),
    };

SubstanceNucleicAcid_Subunit _$SubstanceNucleicAcid_SubunitFromJson(
    Map<String, dynamic> json) {
  return SubstanceNucleicAcid_Subunit(
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
    fivePrime: json['fivePrime'] == null
        ? null
        : CodeableConcept.fromJson(json['fivePrime'] as Map<String, dynamic>),
    threePrime: json['threePrime'] == null
        ? null
        : CodeableConcept.fromJson(json['threePrime'] as Map<String, dynamic>),
    linkage: (json['linkage'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceNucleicAcid_Linkage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sugar: (json['sugar'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceNucleicAcid_Sugar.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceNucleicAcid_SubunitToJson(
        SubstanceNucleicAcid_Subunit instance) =>
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
      'fivePrime': instance.fivePrime?.toJson(),
      'threePrime': instance.threePrime?.toJson(),
      'linkage': instance.linkage?.map((e) => e?.toJson())?.toList(),
      'sugar': instance.sugar?.map((e) => e?.toJson())?.toList(),
    };

SubstanceNucleicAcid_Linkage _$SubstanceNucleicAcid_LinkageFromJson(
    Map<String, dynamic> json) {
  return SubstanceNucleicAcid_Linkage(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    connectivity: json['connectivity'] as String,
    elementConnectivity: json['elementConnectivity'] == null
        ? null
        : Element.fromJson(json['elementConnectivity'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    residueSite: json['residueSite'] as String,
    elementResidueSite: json['elementResidueSite'] == null
        ? null
        : Element.fromJson(json['elementResidueSite'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceNucleicAcid_LinkageToJson(
        SubstanceNucleicAcid_Linkage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'connectivity': instance.connectivity,
      'elementConnectivity': instance.elementConnectivity?.toJson(),
      'identifier': instance.identifier?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'residueSite': instance.residueSite,
      'elementResidueSite': instance.elementResidueSite?.toJson(),
    };

SubstanceNucleicAcid_Sugar _$SubstanceNucleicAcid_SugarFromJson(
    Map<String, dynamic> json) {
  return SubstanceNucleicAcid_Sugar(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    residueSite: json['residueSite'] as String,
    elementResidueSite: json['elementResidueSite'] == null
        ? null
        : Element.fromJson(json['elementResidueSite'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceNucleicAcid_SugarToJson(
        SubstanceNucleicAcid_Sugar instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'residueSite': instance.residueSite,
      'elementResidueSite': instance.elementResidueSite?.toJson(),
    };
