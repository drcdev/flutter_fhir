// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visionPrescription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VisionPrescription _$VisionPrescriptionFromJson(Map<String, dynamic> json) {
  return VisionPrescription(
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    json['prescriber'] == null
        ? null
        : Reference.fromJson(json['prescriber'] as Map<String, dynamic>),
    (json['lensSpecification'] as List)
        ?.map((e) => e == null
            ? null
            : VisionPrescription_LensSpecification.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    dateWritten: json['dateWritten'] == null
        ? null
        : DateTime.parse(json['dateWritten'] as String),
    elementDateWritten: json['elementDateWritten'] == null
        ? null
        : Element.fromJson(json['elementDateWritten'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VisionPrescriptionToJson(VisionPrescription instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'created': instance.created?.toIso8601String(),
      'elementCreated': instance.elementCreated?.toJson(),
      'patient': instance.patient?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'dateWritten': instance.dateWritten?.toIso8601String(),
      'elementDateWritten': instance.elementDateWritten?.toJson(),
      'prescriber': instance.prescriber?.toJson(),
      'lensSpecification':
          instance.lensSpecification?.map((e) => e?.toJson())?.toList(),
    };

VisionPrescription_LensSpecification
    _$VisionPrescription_LensSpecificationFromJson(Map<String, dynamic> json) {
  return VisionPrescription_LensSpecification(
    json['product'] == null
        ? null
        : CodeableConcept.fromJson(json['product'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    eye: json['eye'] as String,
    elementEye: json['elementEye'] == null
        ? null
        : Element.fromJson(json['elementEye'] as Map<String, dynamic>),
    sphere: (json['sphere'] as num)?.toDouble(),
    elementSphere: json['elementSphere'] == null
        ? null
        : Element.fromJson(json['elementSphere'] as Map<String, dynamic>),
    cylinder: (json['cylinder'] as num)?.toDouble(),
    elementCylinder: json['elementCylinder'] == null
        ? null
        : Element.fromJson(json['elementCylinder'] as Map<String, dynamic>),
    axis: json['axis'] as int,
    elementAxis: json['elementAxis'] == null
        ? null
        : Element.fromJson(json['elementAxis'] as Map<String, dynamic>),
    prism: (json['prism'] as List)
        ?.map((e) => e == null
            ? null
            : VisionPrescription_Prism.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    add: (json['add'] as num)?.toDouble(),
    elementAdd: json['elementAdd'] == null
        ? null
        : Element.fromJson(json['elementAdd'] as Map<String, dynamic>),
    power: (json['power'] as num)?.toDouble(),
    elementPower: json['elementPower'] == null
        ? null
        : Element.fromJson(json['elementPower'] as Map<String, dynamic>),
    backCurve: (json['backCurve'] as num)?.toDouble(),
    elementBackCurve: json['elementBackCurve'] == null
        ? null
        : Element.fromJson(json['elementBackCurve'] as Map<String, dynamic>),
    diameter: (json['diameter'] as num)?.toDouble(),
    elementDiameter: json['elementDiameter'] == null
        ? null
        : Element.fromJson(json['elementDiameter'] as Map<String, dynamic>),
    duration: json['duration'] == null
        ? null
        : Quantity.fromJson(json['duration'] as Map<String, dynamic>),
    color: json['color'] as String,
    elementColor: json['elementColor'] == null
        ? null
        : Element.fromJson(json['elementColor'] as Map<String, dynamic>),
    brand: json['brand'] as String,
    elementBrand: json['elementBrand'] == null
        ? null
        : Element.fromJson(json['elementBrand'] as Map<String, dynamic>),
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
      'elementEye': instance.elementEye?.toJson(),
      'sphere': instance.sphere,
      'elementSphere': instance.elementSphere?.toJson(),
      'cylinder': instance.cylinder,
      'elementCylinder': instance.elementCylinder?.toJson(),
      'axis': instance.axis,
      'elementAxis': instance.elementAxis?.toJson(),
      'prism': instance.prism?.map((e) => e?.toJson())?.toList(),
      'add': instance.add,
      'elementAdd': instance.elementAdd?.toJson(),
      'power': instance.power,
      'elementPower': instance.elementPower?.toJson(),
      'backCurve': instance.backCurve,
      'elementBackCurve': instance.elementBackCurve?.toJson(),
      'diameter': instance.diameter,
      'elementDiameter': instance.elementDiameter?.toJson(),
      'duration': instance.duration?.toJson(),
      'color': instance.color,
      'elementColor': instance.elementColor?.toJson(),
      'brand': instance.brand,
      'elementBrand': instance.elementBrand?.toJson(),
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
    elementAmount: json['elementAmount'] == null
        ? null
        : Element.fromJson(json['elementAmount'] as Map<String, dynamic>),
    base: json['base'] as String,
    elementBase: json['elementBase'] == null
        ? null
        : Element.fromJson(json['elementBase'] as Map<String, dynamic>),
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
      'elementAmount': instance.elementAmount?.toJson(),
      'base': instance.base,
      'elementBase': instance.elementBase?.toJson(),
    };
