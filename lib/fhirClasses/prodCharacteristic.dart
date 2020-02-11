import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 40)
class ProdCharacteristic {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Where applicable, the height can be specified using a numerical value
  // and its unit of measurement The unit of measurement shall be specified
  // in accordance with ISO 11240 and the resulting terminology The symbol
  // and the symbol identifier shall be used.
  @HiveField(3)
  Quantity height;

  //  Where applicable, the width can be specified using a numerical value
  // and its unit of measurement The unit of measurement shall be specified
  // in accordance with ISO 11240 and the resulting terminology The symbol
  // and the symbol identifier shall be used.
  @HiveField(4)
  Quantity width;

  //  Where applicable, the depth can be specified using a numerical value
  // and its unit of measurement The unit of measurement shall be specified
  // in accordance with ISO 11240 and the resulting terminology The symbol
  // and the symbol identifier shall be used.
  @HiveField(5)
  Quantity depth;

  //  Where applicable, the weight can be specified using a numerical value
  // and its unit of measurement The unit of measurement shall be specified
  // in accordance with ISO 11240 and the resulting terminology The symbol
  // and the symbol identifier shall be used.
  @HiveField(6)
  Quantity weight;

  //  Where applicable, the nominal volume can be specified using a
  // numerical value and its unit of measurement The unit of measurement
  // shall be specified in accordance with ISO 11240 and the resulting
  // terminology The symbol and the symbol identifier shall be used.
  @HiveField(7)
  Quantity nominalVolume;

  //  Where applicable, the external diameter can be specified using a
  // numerical value and its unit of measurement The unit of measurement
  // shall be specified in accordance with ISO 11240 and the resulting
  // terminology The symbol and the symbol identifier shall be used.
  @HiveField(8)
  Quantity externalDiameter;

  //  Where applicable, the shape can be specified An appropriate controlled
  // vocabulary shall be used The term and the term identifier shall be
  // used.
  @HiveField(9)
  String shape;

  //  Extensions for shape
  @HiveField(10)
  Element elementShape;

  //  Where applicable, the color can be specified An appropriate controlled
  // vocabulary shall be used The term and the term identifier shall be
  // used.
  @HiveField(11)
  List<String> color;

  //  Extensions for color
  @HiveField(12)
  List<Element> elementColor;

  //  Where applicable, the imprint can be specified as text.
  @HiveField(13)
  List<String> imprint;

  //  Extensions for imprint
  @HiveField(14)
  List<Element> elementImprint;

  //  Where applicable, the image can be provided The format of the image
  // attachment shall be specified by regional implementations.
  @HiveField(15)
  List<Attachment> image;

  //  Where applicable, the scoring can be specified An appropriate
  // controlled vocabulary shall be used The term and the term identifier
  // shall be used.
  @HiveField(16)
  CodeableConcept scoring;

ProdCharacteristic(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.height,
    this.width,
    this.depth,
    this.weight,
    this.nominalVolume,
    this.externalDiameter,
    this.shape,
    this.elementShape,
    this.color,
    this.elementColor,
    this.imprint,
    this.elementImprint,
    this.image,
    this.scoring
    });

  factory ProdCharacteristic.fromJson(Map<String, dynamic> json) => _$ProdCharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$ProdCharacteristicToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProdCharacteristicAdapter extends TypeAdapter<ProdCharacteristic> {
  @override
  final typeId = 40;

  @override
  ProdCharacteristic read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProdCharacteristic(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      height: fields[3] as Quantity,
      width: fields[4] as Quantity,
      depth: fields[5] as Quantity,
      weight: fields[6] as Quantity,
      nominalVolume: fields[7] as Quantity,
      externalDiameter: fields[8] as Quantity,
      shape: fields[9] as String,
      elementShape: fields[10] as Element,
      color: (fields[11] as List)?.cast<String>(),
      elementColor: (fields[12] as List)?.cast<Element>(),
      imprint: (fields[13] as List)?.cast<String>(),
      elementImprint: (fields[14] as List)?.cast<Element>(),
      image: (fields[15] as List)?.cast<Attachment>(),
      scoring: fields[16] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, ProdCharacteristic obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.height)
      ..writeByte(4)
      ..write(obj.width)
      ..writeByte(5)
      ..write(obj.depth)
      ..writeByte(6)
      ..write(obj.weight)
      ..writeByte(7)
      ..write(obj.nominalVolume)
      ..writeByte(8)
      ..write(obj.externalDiameter)
      ..writeByte(9)
      ..write(obj.shape)
      ..writeByte(10)
      ..write(obj.elementShape)
      ..writeByte(11)
      ..write(obj.color)
      ..writeByte(12)
      ..write(obj.elementColor)
      ..writeByte(13)
      ..write(obj.imprint)
      ..writeByte(14)
      ..write(obj.elementImprint)
      ..writeByte(15)
      ..write(obj.image)
      ..writeByte(16)
      ..write(obj.scoring);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProdCharacteristic _$ProdCharacteristicFromJson(Map<String, dynamic> json) {
  return ProdCharacteristic(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    height: json['height'] == null
        ? null
        : Quantity.fromJson(json['height'] as Map<String, dynamic>),
    width: json['width'] == null
        ? null
        : Quantity.fromJson(json['width'] as Map<String, dynamic>),
    depth: json['depth'] == null
        ? null
        : Quantity.fromJson(json['depth'] as Map<String, dynamic>),
    weight: json['weight'] == null
        ? null
        : Quantity.fromJson(json['weight'] as Map<String, dynamic>),
    nominalVolume: json['nominalVolume'] == null
        ? null
        : Quantity.fromJson(json['nominalVolume'] as Map<String, dynamic>),
    externalDiameter: json['externalDiameter'] == null
        ? null
        : Quantity.fromJson(json['externalDiameter'] as Map<String, dynamic>),
    shape: json['shape'] as String,
    elementShape: json['elementShape'] == null
        ? null
        : Element.fromJson(json['elementShape'] as Map<String, dynamic>),
    color: (json['color'] as List)?.map((e) => e as String)?.toList(),
    elementColor: (json['elementColor'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    imprint: (json['imprint'] as List)?.map((e) => e as String)?.toList(),
    elementImprint: (json['elementImprint'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    image: (json['image'] as List)
        ?.map((e) =>
            e == null ? null : Attachment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    scoring: json['scoring'] == null
        ? null
        : CodeableConcept.fromJson(json['scoring'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProdCharacteristicToJson(ProdCharacteristic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'height': instance.height?.toJson(),
      'width': instance.width?.toJson(),
      'depth': instance.depth?.toJson(),
      'weight': instance.weight?.toJson(),
      'nominalVolume': instance.nominalVolume?.toJson(),
      'externalDiameter': instance.externalDiameter?.toJson(),
      'shape': instance.shape,
      'elementShape': instance.elementShape?.toJson(),
      'color': instance.color,
      'elementColor': instance.elementColor?.map((e) => e?.toJson())?.toList(),
      'imprint': instance.imprint,
      'elementImprint':
          instance.elementImprint?.map((e) => e?.toJson())?.toList(),
      'image': instance.image?.map((e) => e?.toJson())?.toList(),
      'scoring': instance.scoring?.toJson(),
    };
