// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specimenDefinition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecimenDefinition _$SpecimenDefinitionFromJson(Map<String, dynamic> json) {
  return SpecimenDefinition(
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    typeCollected: json['typeCollected'] == null
        ? null
        : CodeableConcept.fromJson(
            json['typeCollected'] as Map<String, dynamic>),
    patientPreparation: (json['patientPreparation'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    timeAspect: json['timeAspect'] as String,
    element_timeAspect: json['element_timeAspect'] == null
        ? null
        : Element.fromJson(json['element_timeAspect'] as Map<String, dynamic>),
    collection: (json['collection'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    typeTested: (json['typeTested'] as List)
        ?.map((e) => e == null
            ? null
            : SpecimenDefinition_TypeTested.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SpecimenDefinitionToJson(SpecimenDefinition instance) =>
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
      'identifier': instance.identifier?.toJson(),
      'typeCollected': instance.typeCollected?.toJson(),
      'patientPreparation':
          instance.patientPreparation?.map((e) => e?.toJson())?.toList(),
      'timeAspect': instance.timeAspect,
      'element_timeAspect': instance.element_timeAspect?.toJson(),
      'collection': instance.collection?.map((e) => e?.toJson())?.toList(),
      'typeTested': instance.typeTested?.map((e) => e?.toJson())?.toList(),
    };

SpecimenDefinition_TypeTested _$SpecimenDefinition_TypeTestedFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_TypeTested(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isDerived: json['isDerived'] as bool,
    element_isDerived: json['element_isDerived'] == null
        ? null
        : Element.fromJson(json['element_isDerived'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    preference: json['preference'] as String,
    element_preference: json['element_preference'] == null
        ? null
        : Element.fromJson(json['element_preference'] as Map<String, dynamic>),
    container: json['container'] == null
        ? null
        : SpecimenDefinition_Container.fromJson(
            json['container'] as Map<String, dynamic>),
    requirement: json['requirement'] as String,
    element_requirement: json['element_requirement'] == null
        ? null
        : Element.fromJson(json['element_requirement'] as Map<String, dynamic>),
    retentionTime: json['retentionTime'],
    rejectionCriterion: (json['rejectionCriterion'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    handling: (json['handling'] as List)
        ?.map((e) => e == null
            ? null
            : SpecimenDefinition_Handling.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SpecimenDefinition_TypeTestedToJson(
        SpecimenDefinition_TypeTested instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'isDerived': instance.isDerived,
      'element_isDerived': instance.element_isDerived?.toJson(),
      'type': instance.type?.toJson(),
      'preference': instance.preference,
      'element_preference': instance.element_preference?.toJson(),
      'container': instance.container?.toJson(),
      'requirement': instance.requirement,
      'element_requirement': instance.element_requirement?.toJson(),
      'retentionTime': instance.retentionTime,
      'rejectionCriterion':
          instance.rejectionCriterion?.map((e) => e?.toJson())?.toList(),
      'handling': instance.handling?.map((e) => e?.toJson())?.toList(),
    };

SpecimenDefinition_Container _$SpecimenDefinition_ContainerFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_Container(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    material: json['material'] == null
        ? null
        : CodeableConcept.fromJson(json['material'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    cap: json['cap'] == null
        ? null
        : CodeableConcept.fromJson(json['cap'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    capacity: json['capacity'] == null
        ? null
        : Quantity.fromJson(json['capacity'] as Map<String, dynamic>),
    minimumVolumeQuantity: json['minimumVolumeQuantity'] == null
        ? null
        : Quantity.fromJson(
            json['minimumVolumeQuantity'] as Map<String, dynamic>),
    minimumVolumeString: json['minimumVolumeString'] as String,
    element_minimumVolumeString: json['element_minimumVolumeString'] == null
        ? null
        : Element.fromJson(
            json['element_minimumVolumeString'] as Map<String, dynamic>),
    additive: (json['additive'] as List)
        ?.map((e) => e == null
            ? null
            : SpecimenDefinition_Additive.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    preparation: json['preparation'] as String,
    element_preparation: json['element_preparation'] == null
        ? null
        : Element.fromJson(json['element_preparation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SpecimenDefinition_ContainerToJson(
        SpecimenDefinition_Container instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'material': instance.material?.toJson(),
      'type': instance.type?.toJson(),
      'cap': instance.cap?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'capacity': instance.capacity?.toJson(),
      'minimumVolumeQuantity': instance.minimumVolumeQuantity?.toJson(),
      'minimumVolumeString': instance.minimumVolumeString,
      'element_minimumVolumeString':
          instance.element_minimumVolumeString?.toJson(),
      'additive': instance.additive?.map((e) => e?.toJson())?.toList(),
      'preparation': instance.preparation,
      'element_preparation': instance.element_preparation?.toJson(),
    };

SpecimenDefinition_Additive _$SpecimenDefinition_AdditiveFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_Additive(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    additiveCodeableConcept: json['additiveCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['additiveCodeableConcept'] as Map<String, dynamic>),
    additiveReference: json['additiveReference'] == null
        ? null
        : Reference.fromJson(json['additiveReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SpecimenDefinition_AdditiveToJson(
        SpecimenDefinition_Additive instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'additiveCodeableConcept': instance.additiveCodeableConcept?.toJson(),
      'additiveReference': instance.additiveReference?.toJson(),
    };

SpecimenDefinition_Handling _$SpecimenDefinition_HandlingFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_Handling(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    temperatureQualifier: json['temperatureQualifier'] == null
        ? null
        : CodeableConcept.fromJson(
            json['temperatureQualifier'] as Map<String, dynamic>),
    temperatureRange: json['temperatureRange'] == null
        ? null
        : Range.fromJson(json['temperatureRange'] as Map<String, dynamic>),
    maxDuration: json['maxDuration'],
    instruction: json['instruction'] as String,
    element_instruction: json['element_instruction'] == null
        ? null
        : Element.fromJson(json['element_instruction'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SpecimenDefinition_HandlingToJson(
        SpecimenDefinition_Handling instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'temperatureQualifier': instance.temperatureQualifier?.toJson(),
      'temperatureRange': instance.temperatureRange?.toJson(),
      'maxDuration': instance.maxDuration,
      'instruction': instance.instruction,
      'element_instruction': instance.element_instruction?.toJson(),
    };
