// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substanceNucleicAcid.dart';

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
    element_implicitRules: json['element_implicitRules'] == null
        ? null
        : Element.fromJson(
            json['element_implicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    element_language: json['element_language'] == null
        ? null
        : Element.fromJson(json['element_language'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceList.fromJson(e as Map<String, dynamic>))
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
    element_numberOfSubunits: json['element_numberOfSubunits'] == null
        ? null
        : Element.fromJson(
            json['element_numberOfSubunits'] as Map<String, dynamic>),
    areaOfHybridisation: json['areaOfHybridisation'] as String,
    element_areaOfHybridisation: json['element_areaOfHybridisation'] == null
        ? null
        : Element.fromJson(
            json['element_areaOfHybridisation'] as Map<String, dynamic>),
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
      'element_implicitRules': instance.element_implicitRules?.toJson(),
      'language': instance.language,
      'element_language': instance.element_language?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequenceType': instance.sequenceType?.toJson(),
      'numberOfSubunits': instance.numberOfSubunits,
      'element_numberOfSubunits': instance.element_numberOfSubunits?.toJson(),
      'areaOfHybridisation': instance.areaOfHybridisation,
      'element_areaOfHybridisation':
          instance.element_areaOfHybridisation?.toJson(),
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
    element_subunit: json['element_subunit'] == null
        ? null
        : Element.fromJson(json['element_subunit'] as Map<String, dynamic>),
    sequence: json['sequence'] as String,
    element_sequence: json['element_sequence'] == null
        ? null
        : Element.fromJson(json['element_sequence'] as Map<String, dynamic>),
    length: json['length'] as int,
    element_length: json['element_length'] == null
        ? null
        : Element.fromJson(json['element_length'] as Map<String, dynamic>),
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
      'element_subunit': instance.element_subunit?.toJson(),
      'sequence': instance.sequence,
      'element_sequence': instance.element_sequence?.toJson(),
      'length': instance.length,
      'element_length': instance.element_length?.toJson(),
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
    element_connectivity: json['element_connectivity'] == null
        ? null
        : Element.fromJson(
            json['element_connectivity'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    residueSite: json['residueSite'] as String,
    element_residueSite: json['element_residueSite'] == null
        ? null
        : Element.fromJson(json['element_residueSite'] as Map<String, dynamic>),
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
      'element_connectivity': instance.element_connectivity?.toJson(),
      'identifier': instance.identifier?.toJson(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'residueSite': instance.residueSite,
      'element_residueSite': instance.element_residueSite?.toJson(),
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
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    residueSite: json['residueSite'] as String,
    element_residueSite: json['element_residueSite'] == null
        ? null
        : Element.fromJson(json['element_residueSite'] as Map<String, dynamic>),
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
      'element_name': instance.element_name?.toJson(),
      'residueSite': instance.residueSite,
      'element_residueSite': instance.element_residueSite?.toJson(),
    };
