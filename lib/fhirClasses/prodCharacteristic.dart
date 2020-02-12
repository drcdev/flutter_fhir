import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 51)
class ProdCharacteristic {

	static Future<ProdCharacteristic> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Quantity height,
		Quantity width,
		Quantity depth,
		Quantity weight,
		Quantity nominalVolume,
		Quantity externalDiameter,
		String shape,
		Element elementShape,
		List<String> color,
		List<Element> elementColor,
		List<String> imprint,
		List<Element> elementImprint,
		List<Attachment> image,
		CodeableConcept scoring}) async {
	ProdCharacteristic newProdCharacteristic = new ProdCharacteristic(
			id: await newId('ProdCharacteristic'),
			extension: extension,
			modifierExtension: modifierExtension,
			height: height,
			width: width,
			depth: depth,
			weight: weight,
			nominalVolume: nominalVolume,
			externalDiameter: externalDiameter,
			shape: shape,
			elementShape: elementShape,
			color: color,
			elementColor: elementColor,
			imprint: imprint,
			elementImprint: elementImprint,
			image: image,
			scoring: scoring);
	var prodCharacteristicBox = await Hive.openBox<ProdCharacteristic>('ProdCharacteristicBox');
	prodCharacteristicBox.add(newProdCharacteristic);
	return newProdCharacteristic;
}
  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Quantity height;
  @HiveField(4)
  Quantity width;
  @HiveField(5)
  Quantity depth;
  @HiveField(6)
  Quantity weight;
  @HiveField(7)
  Quantity nominalVolume;
  @HiveField(8)
  Quantity externalDiameter;
  @HiveField(9)
  String shape;
  @HiveField(10)
  Element elementShape;
  @HiveField(11)
  List<String> color;
  @HiveField(12)
  List<Element> elementColor;
  @HiveField(13)
  List<String> imprint;
  @HiveField(14)
  List<Element> elementImprint;
  @HiveField(15)
  List<Attachment> image;
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
  final typeId = 51;

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
