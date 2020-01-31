// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substanceProtein.dart';

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
    disulfideLinkage:
        (json['disulfideLinkage'] as List)?.map((e) => e as String)?.toList(),
    element_disulfideLinkage: (json['element_disulfideLinkage'] as List)
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
      'disulfideLinkage': instance.disulfideLinkage,
      'element_disulfideLinkage':
          instance.element_disulfideLinkage?.map((e) => e?.toJson())?.toList(),
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
    nTerminalModificationId: json['nTerminalModificationId'] == null
        ? null
        : Identifier.fromJson(
            json['nTerminalModificationId'] as Map<String, dynamic>),
    nTerminalModification: json['nTerminalModification'] as String,
    element_nTerminalModification: json['element_nTerminalModification'] == null
        ? null
        : Element.fromJson(
            json['element_nTerminalModification'] as Map<String, dynamic>),
    cTerminalModificationId: json['cTerminalModificationId'] == null
        ? null
        : Identifier.fromJson(
            json['cTerminalModificationId'] as Map<String, dynamic>),
    cTerminalModification: json['cTerminalModification'] as String,
    element_cTerminalModification: json['element_cTerminalModification'] == null
        ? null
        : Element.fromJson(
            json['element_cTerminalModification'] as Map<String, dynamic>),
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
      'element_subunit': instance.element_subunit?.toJson(),
      'sequence': instance.sequence,
      'element_sequence': instance.element_sequence?.toJson(),
      'length': instance.length,
      'element_length': instance.element_length?.toJson(),
      'sequenceAttachment': instance.sequenceAttachment?.toJson(),
      'nTerminalModificationId': instance.nTerminalModificationId?.toJson(),
      'nTerminalModification': instance.nTerminalModification,
      'element_nTerminalModification':
          instance.element_nTerminalModification?.toJson(),
      'cTerminalModificationId': instance.cTerminalModificationId?.toJson(),
      'cTerminalModification': instance.cTerminalModification,
      'element_cTerminalModification':
          instance.element_cTerminalModification?.toJson(),
    };
