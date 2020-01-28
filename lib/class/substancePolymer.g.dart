// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substancePolymer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstancePolymer _$SubstancePolymerFromJson(Map<String, dynamic> json) {
  return SubstancePolymer(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    language: json['language'] as String,
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
  )
    ..CodeableConcept = json['CodeableConcept']
    ..geometry = json['geometry']
    ..copolymerConnectivity = json['copolymerConnectivity'] as List
    ..modification =
        (json['modification'] as List)?.map((e) => e as String)?.toList()
    ..monomerSet = (json['monomerSet'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_MonomerSet.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..repeat = (json['repeat'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_Repeat.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$SubstancePolymerToJson(SubstancePolymer instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'language': instance.language,
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'CodeableConcept': instance.CodeableConcept,
      'geometry': instance.geometry,
      'copolymerConnectivity': instance.copolymerConnectivity,
      'modification': instance.modification,
      'monomerSet': instance.monomerSet?.map((e) => e?.toJson())?.toList(),
      'repeat': instance.repeat?.map((e) => e?.toJson())?.toList(),
    };

SubstancePolymer_MonomerSet _$SubstancePolymer_MonomerSetFromJson(
    Map<String, dynamic> json) {
  return SubstancePolymer_MonomerSet(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    ratioType: json['ratioType'] == null
        ? null
        : CodeableConcept.fromJson(json['ratioType'] as Map<String, dynamic>),
    startingMaterial: (json['startingMaterial'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_StartingMaterial.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstancePolymer_MonomerSetToJson(
        SubstancePolymer_MonomerSet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'ratioType': instance.ratioType?.toJson(),
      'startingMaterial':
          instance.startingMaterial?.map((e) => e?.toJson())?.toList(),
    };

SubstancePolymer_StartingMaterial _$SubstancePolymer_StartingMaterialFromJson(
    Map<String, dynamic> json) {
  return SubstancePolymer_StartingMaterial(
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
    isDefining: json['isDefining'] as bool,
    amount: json['amount'] == null
        ? null
        : SubstanceAmount.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstancePolymer_StartingMaterialToJson(
        SubstancePolymer_StartingMaterial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'material': instance.material?.toJson(),
      'type': instance.type?.toJson(),
      'isDefining': instance.isDefining,
      'amount': instance.amount?.toJson(),
    };

SubstancePolymer_Repeat _$SubstancePolymer_RepeatFromJson(
    Map<String, dynamic> json) {
  return SubstancePolymer_Repeat(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numberOfUnits: json['numberOfUnits'] as int,
    averageMolecularFormula: json['averageMolecularFormula'] as String,
    repeatUnitAmountType: json['repeatUnitAmountType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['repeatUnitAmountType'] as Map<String, dynamic>),
    repeatUnit: (json['repeatUnit'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_RepeatUnit.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstancePolymer_RepeatToJson(
        SubstancePolymer_Repeat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'numberOfUnits': instance.numberOfUnits,
      'averageMolecularFormula': instance.averageMolecularFormula,
      'repeatUnitAmountType': instance.repeatUnitAmountType?.toJson(),
      'repeatUnit': instance.repeatUnit?.map((e) => e?.toJson())?.toList(),
    };

SubstancePolymer_RepeatUnit _$SubstancePolymer_RepeatUnitFromJson(
    Map<String, dynamic> json) {
  return SubstancePolymer_RepeatUnit(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    orientationOfPolymerisation: json['orientationOfPolymerisation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['orientationOfPolymerisation'] as Map<String, dynamic>),
    repeatUnit: json['repeatUnit'] as String,
    amount: json['amount'] == null
        ? null
        : SubstanceAmount.fromJson(json['amount'] as Map<String, dynamic>),
    degreeOfPolymerisation: (json['degreeOfPolymerisation'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_DegreeOfPolymerisation.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    structuralRepresentation: (json['structuralRepresentation'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_StructuralRepresentation.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstancePolymer_RepeatUnitToJson(
        SubstancePolymer_RepeatUnit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'orientationOfPolymerisation':
          instance.orientationOfPolymerisation?.toJson(),
      'repeatUnit': instance.repeatUnit,
      'amount': instance.amount?.toJson(),
      'degreeOfPolymerisation':
          instance.degreeOfPolymerisation?.map((e) => e?.toJson())?.toList(),
      'structuralRepresentation':
          instance.structuralRepresentation?.map((e) => e?.toJson())?.toList(),
    };

SubstancePolymer_DegreeOfPolymerisation
    _$SubstancePolymer_DegreeOfPolymerisationFromJson(
        Map<String, dynamic> json) {
  return SubstancePolymer_DegreeOfPolymerisation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    degree: json['degree'] == null
        ? null
        : CodeableConcept.fromJson(json['degree'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : SubstanceAmount.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstancePolymer_DegreeOfPolymerisationToJson(
        SubstancePolymer_DegreeOfPolymerisation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'degree': instance.degree?.toJson(),
      'amount': instance.amount?.toJson(),
    };

SubstancePolymer_StructuralRepresentation
    _$SubstancePolymer_StructuralRepresentationFromJson(
        Map<String, dynamic> json) {
  return SubstancePolymer_StructuralRepresentation(
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
    representation: json['representation'] as String,
    attachment: json['attachment'] == null
        ? null
        : Attachment.fromJson(json['attachment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstancePolymer_StructuralRepresentationToJson(
        SubstancePolymer_StructuralRepresentation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'representation': instance.representation,
      'attachment': instance.attachment?.toJson(),
    };
