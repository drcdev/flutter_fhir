// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prodCharacteristic.dart';

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
