import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

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
    CodeableConcept scoring,
  }) async {
    var fhirDb = new DatabaseHelper();
    ProdCharacteristic newProdCharacteristic = new ProdCharacteristic(
      id: id,
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
      scoring: scoring,
    );
    return newProdCharacteristic;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Quantity height;
  Quantity width;
  Quantity depth;
  Quantity weight;
  Quantity nominalVolume;
  Quantity externalDiameter;
  String shape;
  Element elementShape;
  List<String> color;
  List<Element> elementColor;
  List<String> imprint;
  List<Element> elementImprint;
  List<Attachment> image;
  CodeableConcept scoring;

  ProdCharacteristic({
    this.id,
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
    this.scoring,
  });

  factory ProdCharacteristic.fromJson(Map<String, dynamic> json) =>
      _$ProdCharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$ProdCharacteristicToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
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

Map<String, dynamic> _$ProdCharacteristicToJson(ProdCharacteristic instance) {
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
  writeNotNull('height', instance.height?.toJson());
  writeNotNull('width', instance.width?.toJson());
  writeNotNull('depth', instance.depth?.toJson());
  writeNotNull('weight', instance.weight?.toJson());
  writeNotNull('nominalVolume', instance.nominalVolume?.toJson());
  writeNotNull('externalDiameter', instance.externalDiameter?.toJson());
  writeNotNull('shape', instance.shape);
  writeNotNull('elementShape', instance.elementShape?.toJson());
  writeNotNull('color', instance.color);
  writeNotNull(
      'elementColor', instance.elementColor?.map((e) => e?.toJson())?.toList());
  writeNotNull('imprint', instance.imprint);
  writeNotNull('elementImprint',
      instance.elementImprint?.map((e) => e?.toJson())?.toList());
  writeNotNull('image', instance.image?.map((e) => e?.toJson())?.toList());
  writeNotNull('scoring', instance.scoring?.toJson());
  return val;
}
