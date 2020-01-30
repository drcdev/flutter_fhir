// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substanceSourceMaterial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceSourceMaterial _$SubstanceSourceMaterialFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial(
    resourceType: json['resourceType'] as String,
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
    sourceMaterialClass: json['sourceMaterialClass'] == null
        ? null
        : CodeableConcept.fromJson(
            json['sourceMaterialClass'] as Map<String, dynamic>),
    sourceMaterialType: json['sourceMaterialType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['sourceMaterialType'] as Map<String, dynamic>),
    sourceMaterialState: json['sourceMaterialState'] == null
        ? null
        : CodeableConcept.fromJson(
            json['sourceMaterialState'] as Map<String, dynamic>),
    organismId: json['organismId'] == null
        ? null
        : Identifier.fromJson(json['organismId'] as Map<String, dynamic>),
    organismName: json['organismName'] as String,
    element_organismName: json['element_organismName'] == null
        ? null
        : Element.fromJson(
            json['element_organismName'] as Map<String, dynamic>),
    parentSubstanceId: (json['parentSubstanceId'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    parentSubstanceName: (json['parentSubstanceName'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    element_parentSubstanceName: (json['element_parentSubstanceName'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    countryOfOrigin: (json['countryOfOrigin'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    geographicalLocation: (json['geographicalLocation'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    element_geographicalLocation: (json['element_geographicalLocation'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    developmentStage: json['developmentStage'] == null
        ? null
        : CodeableConcept.fromJson(
            json['developmentStage'] as Map<String, dynamic>),
    fractionDescription: (json['fractionDescription'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSourceMaterial_FractionDescription.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    organism: json['organism'] == null
        ? null
        : SubstanceSourceMaterial_Organism.fromJson(
            json['organism'] as Map<String, dynamic>),
    partDescription: (json['partDescription'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSourceMaterial_PartDescription.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterialToJson(
        SubstanceSourceMaterial instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
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
      'sourceMaterialClass': instance.sourceMaterialClass?.toJson(),
      'sourceMaterialType': instance.sourceMaterialType?.toJson(),
      'sourceMaterialState': instance.sourceMaterialState?.toJson(),
      'organismId': instance.organismId?.toJson(),
      'organismName': instance.organismName,
      'element_organismName': instance.element_organismName?.toJson(),
      'parentSubstanceId':
          instance.parentSubstanceId?.map((e) => e?.toJson())?.toList(),
      'parentSubstanceName': instance.parentSubstanceName,
      'element_parentSubstanceName': instance.element_parentSubstanceName
          ?.map((e) => e?.toJson())
          ?.toList(),
      'countryOfOrigin':
          instance.countryOfOrigin?.map((e) => e?.toJson())?.toList(),
      'geographicalLocation': instance.geographicalLocation,
      'element_geographicalLocation': instance.element_geographicalLocation
          ?.map((e) => e?.toJson())
          ?.toList(),
      'developmentStage': instance.developmentStage?.toJson(),
      'fractionDescription':
          instance.fractionDescription?.map((e) => e?.toJson())?.toList(),
      'organism': instance.organism?.toJson(),
      'partDescription':
          instance.partDescription?.map((e) => e?.toJson())?.toList(),
    };

SubstanceSourceMaterial_FractionDescription
    _$SubstanceSourceMaterial_FractionDescriptionFromJson(
        Map<String, dynamic> json) {
  return SubstanceSourceMaterial_FractionDescription(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fraction: json['fraction'] as String,
    element_fraction: json['element_fraction'] == null
        ? null
        : Element.fromJson(json['element_fraction'] as Map<String, dynamic>),
    materialType: json['materialType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['materialType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_FractionDescriptionToJson(
        SubstanceSourceMaterial_FractionDescription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'fraction': instance.fraction,
      'element_fraction': instance.element_fraction?.toJson(),
      'materialType': instance.materialType?.toJson(),
    };

SubstanceSourceMaterial_Organism _$SubstanceSourceMaterial_OrganismFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial_Organism(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    family: json['family'] == null
        ? null
        : CodeableConcept.fromJson(json['family'] as Map<String, dynamic>),
    genus: json['genus'] == null
        ? null
        : CodeableConcept.fromJson(json['genus'] as Map<String, dynamic>),
    species: json['species'] == null
        ? null
        : CodeableConcept.fromJson(json['species'] as Map<String, dynamic>),
    intraspecificType: json['intraspecificType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['intraspecificType'] as Map<String, dynamic>),
    intraspecificDescription: json['intraspecificDescription'] as String,
    element_intraspecificDescription:
        json['element_intraspecificDescription'] == null
            ? null
            : Element.fromJson(json['element_intraspecificDescription']
                as Map<String, dynamic>),
    author: (json['author'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSourceMaterial_Author.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    hybrid: json['hybrid'] == null
        ? null
        : SubstanceSourceMaterial_Hybrid.fromJson(
            json['hybrid'] as Map<String, dynamic>),
    organismGeneral: json['organismGeneral'] == null
        ? null
        : SubstanceSourceMaterial_OrganismGeneral.fromJson(
            json['organismGeneral'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_OrganismToJson(
        SubstanceSourceMaterial_Organism instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'family': instance.family?.toJson(),
      'genus': instance.genus?.toJson(),
      'species': instance.species?.toJson(),
      'intraspecificType': instance.intraspecificType?.toJson(),
      'intraspecificDescription': instance.intraspecificDescription,
      'element_intraspecificDescription':
          instance.element_intraspecificDescription?.toJson(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'hybrid': instance.hybrid?.toJson(),
      'organismGeneral': instance.organismGeneral?.toJson(),
    };

SubstanceSourceMaterial_Author _$SubstanceSourceMaterial_AuthorFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial_Author(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authorType: json['authorType'] == null
        ? null
        : CodeableConcept.fromJson(json['authorType'] as Map<String, dynamic>),
    authorDescription: json['authorDescription'] as String,
    element_authorDescription: json['element_authorDescription'] == null
        ? null
        : Element.fromJson(
            json['element_authorDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_AuthorToJson(
        SubstanceSourceMaterial_Author instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'authorType': instance.authorType?.toJson(),
      'authorDescription': instance.authorDescription,
      'element_authorDescription': instance.element_authorDescription?.toJson(),
    };

SubstanceSourceMaterial_Hybrid _$SubstanceSourceMaterial_HybridFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial_Hybrid(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    maternalOrganismId: json['maternalOrganismId'] as String,
    element_maternalOrganismId: json['element_maternalOrganismId'] == null
        ? null
        : Element.fromJson(
            json['element_maternalOrganismId'] as Map<String, dynamic>),
    maternalOrganismName: json['maternalOrganismName'] as String,
    element_maternalOrganismName: json['element_maternalOrganismName'] == null
        ? null
        : Element.fromJson(
            json['element_maternalOrganismName'] as Map<String, dynamic>),
    paternalOrganismId: json['paternalOrganismId'] as String,
    element_paternalOrganismId: json['element_paternalOrganismId'] == null
        ? null
        : Element.fromJson(
            json['element_paternalOrganismId'] as Map<String, dynamic>),
    paternalOrganismName: json['paternalOrganismName'] as String,
    element_paternalOrganismName: json['element_paternalOrganismName'] == null
        ? null
        : Element.fromJson(
            json['element_paternalOrganismName'] as Map<String, dynamic>),
    hybridType: json['hybridType'] == null
        ? null
        : CodeableConcept.fromJson(json['hybridType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_HybridToJson(
        SubstanceSourceMaterial_Hybrid instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'maternalOrganismId': instance.maternalOrganismId,
      'element_maternalOrganismId':
          instance.element_maternalOrganismId?.toJson(),
      'maternalOrganismName': instance.maternalOrganismName,
      'element_maternalOrganismName':
          instance.element_maternalOrganismName?.toJson(),
      'paternalOrganismId': instance.paternalOrganismId,
      'element_paternalOrganismId':
          instance.element_paternalOrganismId?.toJson(),
      'paternalOrganismName': instance.paternalOrganismName,
      'element_paternalOrganismName':
          instance.element_paternalOrganismName?.toJson(),
      'hybridType': instance.hybridType?.toJson(),
    };

SubstanceSourceMaterial_OrganismGeneral
    _$SubstanceSourceMaterial_OrganismGeneralFromJson(
        Map<String, dynamic> json) {
  return SubstanceSourceMaterial_OrganismGeneral(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    kingdom: json['kingdom'] == null
        ? null
        : CodeableConcept.fromJson(json['kingdom'] as Map<String, dynamic>),
    phylum: json['phylum'] == null
        ? null
        : CodeableConcept.fromJson(json['phylum'] as Map<String, dynamic>),
    classs: json['classs'] == null
        ? null
        : CodeableConcept.fromJson(json['classs'] as Map<String, dynamic>),
    order: json['order'] == null
        ? null
        : CodeableConcept.fromJson(json['order'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_OrganismGeneralToJson(
        SubstanceSourceMaterial_OrganismGeneral instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'kingdom': instance.kingdom?.toJson(),
      'phylum': instance.phylum?.toJson(),
      'classs': instance.classs?.toJson(),
      'order': instance.order?.toJson(),
    };

SubstanceSourceMaterial_PartDescription
    _$SubstanceSourceMaterial_PartDescriptionFromJson(
        Map<String, dynamic> json) {
  return SubstanceSourceMaterial_PartDescription(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    part: json['part'] == null
        ? null
        : CodeableConcept.fromJson(json['part'] as Map<String, dynamic>),
    partLocation: json['partLocation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['partLocation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_PartDescriptionToJson(
        SubstanceSourceMaterial_PartDescription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'part': instance.part?.toJson(),
      'partLocation': instance.partLocation?.toJson(),
    };
