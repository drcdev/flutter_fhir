import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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

  //  This is a VisionPrescription resource
  @HiveField(0)
  final String resourceType= 'VisionPrescription';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  A unique identifier assigned to this vision prescription.
  @HiveField(11)
  List<Identifier> identifier;

  //  The status of the resource instance.
  @HiveField(12)
  String status;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  The date this resource was created.
  @HiveField(14)
  DateTime created;

  //  Extensions for created
  @HiveField(15)
  Element elementCreated;

  //  A resource reference to the person to whom the vision prescription
  // applies.
  @HiveField(16)
  Reference patient;

  //  A reference to a resource that identifies the particular occurrence of
  // contact between patient and health care provider during which the
  // prescription was issued.
  @HiveField(17)
  Reference encounter;

  //  The date (and perhaps time) when the prescription was written.
  @HiveField(18)
  DateTime dateWritten;

  //  Extensions for dateWritten
  @HiveField(19)
  Element elementDateWritten;

  //  The healthcare professional responsible for authorizing the
  // prescription.
  @HiveField(20)
  Reference prescriber;

  //  Contain the details of  the individual lens specifications and serves
  // as the authorization for the fullfillment by certified professionals.
  @HiveField(21)
  List<VisionPrescription_LensSpecification> lensSpecification;

VisionPrescription(
  this.patient,
    this.prescriber,
    this.lensSpecification,
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
    this.encounter,
    this.dateWritten,
    this.elementDateWritten
    });

  factory VisionPrescription.fromJson(Map<String, dynamic> json) => _$VisionPrescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$VisionPrescriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VisionPrescription_LensSpecification {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Identifies the type of vision correction product which is required for
  // the patient.
  CodeableConcept product;

  //  The eye for which the lens specification applies.
  String eye; // <code> enum: right/left;

  //  Extensions for eye
  Element elementEye;

  //  Lens power measured in dioptres (0.25 units).
  double sphere;

  //  Extensions for sphere
  Element elementSphere;

  //  Power adjustment for astigmatism measured in dioptres (0.25 units).
  double cylinder;

  //  Extensions for cylinder
  Element elementCylinder;

  //  Adjustment for astigmatism measured in integer degrees.
  int axis;

  //  Extensions for axis
  Element elementAxis;

  //  Allows for adjustment on two axis.
  List<VisionPrescription_Prism> prism;

  //  Power adjustment for multifocal lenses measured in dioptres (0.25
  // units).
  double add;

  //  Extensions for add
  Element elementAdd;

  //  Contact lens power measured in dioptres (0.25 units).
  double power;

  //  Extensions for power
  Element elementPower;

  //  Back curvature measured in millimetres.
  double backCurve;

  //  Extensions for backCurve
  Element elementBackCurve;

  //  Contact lens diameter measured in millimetres.
  double diameter;

  //  Extensions for diameter
  Element elementDiameter;

  //  The recommended maximum wear period for the lens.
  Quantity duration;

  //  Special color or pattern.
  String color;

  //  Extensions for color
  Element elementColor;

  //  Brand recommendations or restrictions.
  String brand;

  //  Extensions for brand
  Element elementBrand;

  //  Notes for special requirements such as coatings and lens materials.
  List<Annotation> note;

VisionPrescription_LensSpecification(
  this.product,
    {this.id,
    this.extension,
    this.modifierExtension,
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Amount of prism to compensate for eye alignment in fractional units.
  double amount;

  //  Extensions for amount
  Element elementAmount;

  //  The relative base, or reference lens edge, for the prism.
  String base; // <code> enum: up/down/in/out;

  //  Extensions for base
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
      fields[16] as Reference,
      fields[20] as Reference,
      (fields[21] as List)?.cast<VisionPrescription_LensSpecification>(),
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
      encounter: fields[17] as Reference,
      dateWritten: fields[18] as DateTime,
      elementDateWritten: fields[19] as Element,
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
