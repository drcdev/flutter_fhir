import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 201)
class VisionPrescription {

	static Future<VisionPrescription> newInstance({
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
		List<VisionPrescription_LensSpecification> lensSpecification}) async {
	VisionPrescription newVisionPrescription = new VisionPrescription(
			id: await newId('VisionPrescription'),
			meta: meta,
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
			lensSpecification: lensSpecification);
	var visionPrescriptionBox = await Hive.openBox<VisionPrescription>('VisionPrescriptionBox');
	visionPrescriptionBox.add(newVisionPrescription);
	return newVisionPrescription;
}
  @HiveField(0)
  final String resourceType= 'VisionPrescription';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Identifier> identifier;
  @HiveField(12)
  String status;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  DateTime created;
  @HiveField(15)
  Element elementCreated;
  @HiveField(16)
  Reference patient;
  @HiveField(17)
  Reference encounter;
  @HiveField(18)
  DateTime dateWritten;
  @HiveField(19)
  Element elementDateWritten;
  @HiveField(20)
  Reference prescriber;
  @HiveField(21)
  List<VisionPrescription_LensSpecification> lensSpecification;

VisionPrescription(
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
    @required this.lensSpecification
    });

  factory VisionPrescription.fromJson(Map<String, dynamic> json) => _$VisionPrescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$VisionPrescriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		List<Annotation> note}) async {
	VisionPrescription_LensSpecification newVisionPrescription_LensSpecification = new VisionPrescription_LensSpecification(
			id: await newId('VisionPrescription_LensSpecification'),
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
			note: note);
	var visionPrescription_LensSpecificationBox = await Hive.openBox<VisionPrescription_LensSpecification>('VisionPrescription_LensSpecificationBox');
	visionPrescription_LensSpecificationBox.add(newVisionPrescription_LensSpecification);
	return newVisionPrescription_LensSpecification;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept product;
  String eye; // <code> enum: right/left;
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

VisionPrescription_LensSpecification(
  {this.id,
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
    this.note
    });

  factory VisionPrescription_LensSpecification.fromJson(Map<String, dynamic> json) => _$VisionPrescription_LensSpecificationFromJson(json);
  Map<String, dynamic> toJson() => _$VisionPrescription_LensSpecificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VisionPrescription_Prism {

	static Future<VisionPrescription_Prism> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		double amount,
		Element elementAmount,
		String base,
		Element elementBase}) async {
	VisionPrescription_Prism newVisionPrescription_Prism = new VisionPrescription_Prism(
			id: await newId('VisionPrescription_Prism'),
			extension: extension,
			modifierExtension: modifierExtension,
			amount: amount,
			elementAmount: elementAmount,
			base: base,
			elementBase: elementBase);
	var visionPrescription_PrismBox = await Hive.openBox<VisionPrescription_Prism>('VisionPrescription_PrismBox');
	visionPrescription_PrismBox.add(newVisionPrescription_Prism);
	return newVisionPrescription_Prism;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  double amount;
  Element elementAmount;
  String base; // <code> enum: up/down/in/out;
  Element elementBase;

VisionPrescription_Prism(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.amount,
    this.elementAmount,
    this.base,
    this.elementBase
    });

  factory VisionPrescription_Prism.fromJson(Map<String, dynamic> json) => _$VisionPrescription_PrismFromJson(json);
  Map<String, dynamic> toJson() => _$VisionPrescription_PrismToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VisionPrescriptionAdapter extends TypeAdapter<VisionPrescription> {
  @override
  final typeId = 201;

  @override
  VisionPrescription read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VisionPrescription(
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
      identifier: (fields[11] as List)?.cast<Identifier>(),
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      created: fields[14] as DateTime,
      elementCreated: fields[15] as Element,
      patient: fields[16] as Reference,
      encounter: fields[17] as Reference,
      dateWritten: fields[18] as DateTime,
      elementDateWritten: fields[19] as Element,
      prescriber: fields[20] as Reference,
      lensSpecification:
          (fields[21] as List)?.cast<VisionPrescription_LensSpecification>(),
    );
  }

  @override
  void write(BinaryWriter writer, VisionPrescription obj) {
    writer
      ..writeByte(22)
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
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.created)
      ..writeByte(15)
      ..write(obj.elementCreated)
      ..writeByte(16)
      ..write(obj.patient)
      ..writeByte(17)
      ..write(obj.encounter)
      ..writeByte(18)
      ..write(obj.dateWritten)
      ..writeByte(19)
      ..write(obj.elementDateWritten)
      ..writeByte(20)
      ..write(obj.prescriber)
      ..writeByte(21)
      ..write(obj.lensSpecification);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VisionPrescription _$VisionPrescriptionFromJson(Map<String, dynamic> json) {
  return VisionPrescription(
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

Map<String, dynamic> _$VisionPrescriptionToJson(VisionPrescription instance) =>
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
