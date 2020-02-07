// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substanceReferenceInformation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceReferenceInformation _$SubstanceReferenceInformationFromJson(
    Map<String, dynamic> json) {
  return SubstanceReferenceInformation(
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
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    gene: (json['gene'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceReferenceInformation_Gene.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    geneElement: (json['geneElement'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceReferenceInformation_GeneElement.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    classification: (json['classification'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceReferenceInformation_Classification.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    target: (json['target'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceReferenceInformation_Target.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceReferenceInformationToJson(
        SubstanceReferenceInformation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
      'gene': instance.gene?.map((e) => e?.toJson())?.toList(),
      'geneElement': instance.geneElement?.map((e) => e?.toJson())?.toList(),
      'classification':
          instance.classification?.map((e) => e?.toJson())?.toList(),
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
    };

SubstanceReferenceInformation_Gene _$SubstanceReferenceInformation_GeneFromJson(
    Map<String, dynamic> json) {
  return SubstanceReferenceInformation_Gene(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    geneSequenceOrigin: json['geneSequenceOrigin'] == null
        ? null
        : CodeableConcept.fromJson(
            json['geneSequenceOrigin'] as Map<String, dynamic>),
    gene: json['gene'] == null
        ? null
        : CodeableConcept.fromJson(json['gene'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceReferenceInformation_GeneToJson(
        SubstanceReferenceInformation_Gene instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'geneSequenceOrigin': instance.geneSequenceOrigin?.toJson(),
      'gene': instance.gene?.toJson(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
    };

SubstanceReferenceInformation_GeneElement
    _$SubstanceReferenceInformation_GeneElementFromJson(
        Map<String, dynamic> json) {
  return SubstanceReferenceInformation_GeneElement(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    element: json['element'] == null
        ? null
        : Identifier.fromJson(json['element'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceReferenceInformation_GeneElementToJson(
        SubstanceReferenceInformation_GeneElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'element': instance.element?.toJson(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
    };

SubstanceReferenceInformation_Classification
    _$SubstanceReferenceInformation_ClassificationFromJson(
        Map<String, dynamic> json) {
  return SubstanceReferenceInformation_Classification(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    domain: json['domain'] == null
        ? null
        : CodeableConcept.fromJson(json['domain'] as Map<String, dynamic>),
    classification: json['classification'] == null
        ? null
        : CodeableConcept.fromJson(
            json['classification'] as Map<String, dynamic>),
    subtype: (json['subtype'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceReferenceInformation_ClassificationToJson(
        SubstanceReferenceInformation_Classification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'domain': instance.domain?.toJson(),
      'classification': instance.classification?.toJson(),
      'subtype': instance.subtype?.map((e) => e?.toJson())?.toList(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
    };

SubstanceReferenceInformation_Target
    _$SubstanceReferenceInformation_TargetFromJson(Map<String, dynamic> json) {
  return SubstanceReferenceInformation_Target(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    target: json['target'] == null
        ? null
        : Identifier.fromJson(json['target'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    interaction: json['interaction'] == null
        ? null
        : CodeableConcept.fromJson(json['interaction'] as Map<String, dynamic>),
    organism: json['organism'] == null
        ? null
        : CodeableConcept.fromJson(json['organism'] as Map<String, dynamic>),
    organismType: json['organismType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['organismType'] as Map<String, dynamic>),
    amountQuantity: json['amountQuantity'] == null
        ? null
        : Quantity.fromJson(json['amountQuantity'] as Map<String, dynamic>),
    amountRange: json['amountRange'] == null
        ? null
        : Range.fromJson(json['amountRange'] as Map<String, dynamic>),
    amountString: json['amountString'] as String,
    elementAmountString: json['elementAmountString'] == null
        ? null
        : Element.fromJson(json['elementAmountString'] as Map<String, dynamic>),
    amountType: json['amountType'] == null
        ? null
        : CodeableConcept.fromJson(json['amountType'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceReferenceInformation_TargetToJson(
        SubstanceReferenceInformation_Target instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'target': instance.target?.toJson(),
      'type': instance.type?.toJson(),
      'interaction': instance.interaction?.toJson(),
      'organism': instance.organism?.toJson(),
      'organismType': instance.organismType?.toJson(),
      'amountQuantity': instance.amountQuantity?.toJson(),
      'amountRange': instance.amountRange?.toJson(),
      'amountString': instance.amountString,
      'elementAmountString': instance.elementAmountString?.toJson(),
      'amountType': instance.amountType?.toJson(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
    };
