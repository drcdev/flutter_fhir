// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visionPrescription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VisionPrescription _$VisionPrescriptionFromJson(Map<String, dynamic> json) {
  return VisionPrescription(
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    element_created: json['element_created'] == null
        ? null
        : Element.fromJson(json['element_created'] as Map<String, dynamic>),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    dateWritten: json['dateWritten'] == null
        ? null
        : DateTime.parse(json['dateWritten'] as String),
    element_dateWritten: json['element_dateWritten'] == null
        ? null
        : Element.fromJson(json['element_dateWritten'] as Map<String, dynamic>),
    prescriber: json['prescriber'] == null
        ? null
        : Reference.fromJson(json['prescriber'] as Map<String, dynamic>),
    lensSpecification: (json['lensSpecification'] as List)
        ?.map((e) => e == null
            ? null
            : VisionPrescription_LensSpecification.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$VisionPrescriptionToJson(VisionPrescription instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'created': instance.created?.toIso8601String(),
      'element_created': instance.element_created?.toJson(),
      'patient': instance.patient?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'dateWritten': instance.dateWritten?.toIso8601String(),
      'element_dateWritten': instance.element_dateWritten?.toJson(),
      'prescriber': instance.prescriber?.toJson(),
      'lensSpecification':
          instance.lensSpecification?.map((e) => e?.toJson())?.toList(),
    };

VisionPrescription_LensSpecification
    _$VisionPrescription_LensSpecificationFromJson(Map<String, dynamic> json) {
  return VisionPrescription_LensSpecification(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    product: json['product'] == null
        ? null
        : CodeableConcept.fromJson(json['product'] as Map<String, dynamic>),
    eye: json['eye'] as String,
    element_eye: json['element_eye'] == null
        ? null
        : Element.fromJson(json['element_eye'] as Map<String, dynamic>),
    sphere: (json['sphere'] as num)?.toDouble(),
    element_sphere: json['element_sphere'] == null
        ? null
        : Element.fromJson(json['element_sphere'] as Map<String, dynamic>),
    cylinder: (json['cylinder'] as num)?.toDouble(),
    element_cylinder: json['element_cylinder'] == null
        ? null
        : Element.fromJson(json['element_cylinder'] as Map<String, dynamic>),
    axis: json['axis'] as int,
    element_axis: json['element_axis'] == null
        ? null
        : Element.fromJson(json['element_axis'] as Map<String, dynamic>),
    prism: (json['prism'] as List)
        ?.map((e) => e == null
            ? null
            : VisionPrescription_Prism.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    add: (json['add'] as num)?.toDouble(),
    element_add: json['element_add'] == null
        ? null
        : Element.fromJson(json['element_add'] as Map<String, dynamic>),
    power: (json['power'] as num)?.toDouble(),
    element_power: json['element_power'] == null
        ? null
        : Element.fromJson(json['element_power'] as Map<String, dynamic>),
    backCurve: (json['backCurve'] as num)?.toDouble(),
    element_backCurve: json['element_backCurve'] == null
        ? null
        : Element.fromJson(json['element_backCurve'] as Map<String, dynamic>),
    diameter: (json['diameter'] as num)?.toDouble(),
    element_diameter: json['element_diameter'] == null
        ? null
        : Element.fromJson(json['element_diameter'] as Map<String, dynamic>),
    duration: json['duration'] == null
        ? null
        : Quantity.fromJson(json['duration'] as Map<String, dynamic>),
    color: json['color'] as String,
    element_color: json['element_color'] == null
        ? null
        : Element.fromJson(json['element_color'] as Map<String, dynamic>),
    brand: json['brand'] as String,
    element_brand: json['element_brand'] == null
        ? null
        : Element.fromJson(json['element_brand'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$VisionPrescription_LensSpecificationToJson(
        VisionPrescription_LensSpecification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'product': instance.product?.toJson(),
      'eye': instance.eye,
      'element_eye': instance.element_eye?.toJson(),
      'sphere': instance.sphere,
      'element_sphere': instance.element_sphere?.toJson(),
      'cylinder': instance.cylinder,
      'element_cylinder': instance.element_cylinder?.toJson(),
      'axis': instance.axis,
      'element_axis': instance.element_axis?.toJson(),
      'prism': instance.prism?.map((e) => e?.toJson())?.toList(),
      'add': instance.add,
      'element_add': instance.element_add?.toJson(),
      'power': instance.power,
      'element_power': instance.element_power?.toJson(),
      'backCurve': instance.backCurve,
      'element_backCurve': instance.element_backCurve?.toJson(),
      'diameter': instance.diameter,
      'element_diameter': instance.element_diameter?.toJson(),
      'duration': instance.duration?.toJson(),
      'color': instance.color,
      'element_color': instance.element_color?.toJson(),
      'brand': instance.brand,
      'element_brand': instance.element_brand?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };

VisionPrescription_Prism _$VisionPrescription_PrismFromJson(
    Map<String, dynamic> json) {
  return VisionPrescription_Prism(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    amount: (json['amount'] as num)?.toDouble(),
    element_amount: json['element_amount'] == null
        ? null
        : Element.fromJson(json['element_amount'] as Map<String, dynamic>),
    base: json['base'] as String,
    element_base: json['element_base'] == null
        ? null
        : Element.fromJson(json['element_base'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VisionPrescription_PrismToJson(
        VisionPrescription_Prism instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'amount': instance.amount,
      'element_amount': instance.element_amount?.toJson(),
      'base': instance.base,
      'element_base': instance.element_base?.toJson(),
    };
