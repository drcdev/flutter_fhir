import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class VisionPrescription {
  static Future<VisionPrescription> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    Narrative text,
    List<dynamic> contained,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Identifier> identifier,
    String status,
    Element elementStatus,
    DateTime created,
    Element elementCreated,
    Reference patient,
    Reference encounter,
    DateTime dateWritten,
    Element elementDateWritten,
    Reference prescriber,
    List<VisionPrescription_LensSpecification> lensSpecification,
  }) async {
    var fhirDb = new DatabaseHelper();
    VisionPrescription newVisionPrescription = new VisionPrescription(
      resourceType: 'VisionPrescription',
      id: id ?? await fhirDb.newResourceId('VisionPrescription'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      status: status,
      elementStatus: elementStatus,
      created: created,
      elementCreated: elementCreated,
      patient: patient,
      encounter: encounter,
      dateWritten: dateWritten,
      elementDateWritten: elementDateWritten,
      prescriber: prescriber,
      lensSpecification: lensSpecification,
    );
    newVisionPrescription.meta.createdAt = DateTime.now();
    newVisionPrescription.meta.lastUpdated =
        newVisionPrescription.meta.createdAt;
    int saved = await fhirDb.saveResource(newVisionPrescription);
    return newVisionPrescription;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'VisionPrescription';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  String status;
  Element elementStatus;
  DateTime created;
  Element elementCreated;
  Reference patient;
  Reference encounter;
  DateTime dateWritten;
  Element elementDateWritten;
  Reference prescriber;
  List<VisionPrescription_LensSpecification> lensSpecification;

  VisionPrescription({
    @required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.elementStatus,
    this.created,
    this.elementCreated,
    @required this.patient,
    this.encounter,
    this.dateWritten,
    this.elementDateWritten,
    @required this.prescriber,
    @required this.lensSpecification,
  });

  factory VisionPrescription.fromJson(Map<String, dynamic> json) =>
      _$VisionPrescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$VisionPrescriptionToJson(this);
}

class VisionPrescription_LensSpecification {
  static Future<VisionPrescription_LensSpecification> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept product,
    String eye,
    Element elementEye,
    double sphere,
    Element elementSphere,
    double cylinder,
    Element elementCylinder,
    int axis,
    Element elementAxis,
    List<VisionPrescription_Prism> prism,
    double add,
    Element elementAdd,
    double power,
    Element elementPower,
    double backCurve,
    Element elementBackCurve,
    double diameter,
    Element elementDiameter,
    Quantity duration,
    String color,
    Element elementColor,
    String brand,
    Element elementBrand,
    List<Annotation> note,
  }) async {
    var fhirDb = new DatabaseHelper();
    VisionPrescription_LensSpecification
        newVisionPrescription_LensSpecification =
        new VisionPrescription_LensSpecification(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      product: product,
      eye: eye,
      elementEye: elementEye,
      sphere: sphere,
      elementSphere: elementSphere,
      cylinder: cylinder,
      elementCylinder: elementCylinder,
      axis: axis,
      elementAxis: elementAxis,
      prism: prism,
      add: add,
      elementAdd: elementAdd,
      power: power,
      elementPower: elementPower,
      backCurve: backCurve,
      elementBackCurve: elementBackCurve,
      diameter: diameter,
      elementDiameter: elementDiameter,
      duration: duration,
      color: color,
      elementColor: elementColor,
      brand: brand,
      elementBrand: elementBrand,
      note: note,
    );
    return newVisionPrescription_LensSpecification;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept product;
  String eye;
  Element elementEye;
  double sphere;
  Element elementSphere;
  double cylinder;
  Element elementCylinder;
  int axis;
  Element elementAxis;
  List<VisionPrescription_Prism> prism;
  double add;
  Element elementAdd;
  double power;
  Element elementPower;
  double backCurve;
  Element elementBackCurve;
  double diameter;
  Element elementDiameter;
  Quantity duration;
  String color;
  Element elementColor;
  String brand;
  Element elementBrand;
  List<Annotation> note;

  VisionPrescription_LensSpecification({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.product,
    this.eye,
    this.elementEye,
    this.sphere,
    this.elementSphere,
    this.cylinder,
    this.elementCylinder,
    this.axis,
    this.elementAxis,
    this.prism,
    this.add,
    this.elementAdd,
    this.power,
    this.elementPower,
    this.backCurve,
    this.elementBackCurve,
    this.diameter,
    this.elementDiameter,
    this.duration,
    this.color,
    this.elementColor,
    this.brand,
    this.elementBrand,
    this.note,
  });

  factory VisionPrescription_LensSpecification.fromJson(
          Map<String, dynamic> json) =>
      _$VisionPrescription_LensSpecificationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$VisionPrescription_LensSpecificationToJson(this);
}

class VisionPrescription_Prism {
  static Future<VisionPrescription_Prism> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    double amount,
    Element elementAmount,
    String base,
    Element elementBase,
  }) async {
    var fhirDb = new DatabaseHelper();
    VisionPrescription_Prism newVisionPrescription_Prism =
        new VisionPrescription_Prism(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      amount: amount,
      elementAmount: elementAmount,
      base: base,
      elementBase: elementBase,
    );
    return newVisionPrescription_Prism;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  double amount;
  Element elementAmount;
  String base;
  Element elementBase;

  VisionPrescription_Prism({
    this.id,
    this.extension,
    this.modifierExtension,
    this.amount,
    this.elementAmount,
    this.base,
    this.elementBase,
  });

  factory VisionPrescription_Prism.fromJson(Map<String, dynamic> json) =>
      _$VisionPrescription_PrismFromJson(json);
  Map<String, dynamic> toJson() => _$VisionPrescription_PrismToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    dateWritten: json['dateWritten'] == null
        ? null
        : DateTime.parse(json['dateWritten'] as String),
    elementDateWritten: json['elementDateWritten'] == null
        ? null
        : Element.fromJson(json['elementDateWritten'] as Map<String, dynamic>),
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

Map<String, dynamic> _$VisionPrescriptionToJson(VisionPrescription instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('elementCreated', instance.elementCreated?.toJson());
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('dateWritten', instance.dateWritten?.toIso8601String());
  writeNotNull('elementDateWritten', instance.elementDateWritten?.toJson());
  writeNotNull('prescriber', instance.prescriber?.toJson());
  writeNotNull('lensSpecification',
      instance.lensSpecification?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    VisionPrescription_LensSpecification instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('product', instance.product?.toJson());
  writeNotNull('eye', instance.eye);
  writeNotNull('elementEye', instance.elementEye?.toJson());
  writeNotNull('sphere', instance.sphere);
  writeNotNull('elementSphere', instance.elementSphere?.toJson());
  writeNotNull('cylinder', instance.cylinder);
  writeNotNull('elementCylinder', instance.elementCylinder?.toJson());
  writeNotNull('axis', instance.axis);
  writeNotNull('elementAxis', instance.elementAxis?.toJson());
  writeNotNull('prism', instance.prism?.map((e) => e?.toJson())?.toList());
  writeNotNull('add', instance.add);
  writeNotNull('elementAdd', instance.elementAdd?.toJson());
  writeNotNull('power', instance.power);
  writeNotNull('elementPower', instance.elementPower?.toJson());
  writeNotNull('backCurve', instance.backCurve);
  writeNotNull('elementBackCurve', instance.elementBackCurve?.toJson());
  writeNotNull('diameter', instance.diameter);
  writeNotNull('elementDiameter', instance.elementDiameter?.toJson());
  writeNotNull('duration', instance.duration?.toJson());
  writeNotNull('color', instance.color);
  writeNotNull('elementColor', instance.elementColor?.toJson());
  writeNotNull('brand', instance.brand);
  writeNotNull('elementBrand', instance.elementBrand?.toJson());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    VisionPrescription_Prism instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('amount', instance.amount);
  writeNotNull('elementAmount', instance.elementAmount?.toJson());
  writeNotNull('base', instance.base);
  writeNotNull('elementBase', instance.elementBase?.toJson());
  return val;
}
