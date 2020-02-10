import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class ProductShelfLife {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  CodeableConcept type;
  Quantity period;
  List<CodeableConcept> specialPrecautionsForStorage;

ProductShelfLife(
  this.type,
    this.period,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.specialPrecautionsForStorage
    });

  factory ProductShelfLife.fromJson(Map<String, dynamic> json) => _$ProductShelfLifeFromJson(json);
  Map<String, dynamic> toJson() => _$ProductShelfLifeToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductShelfLife _$ProductShelfLifeFromJson(Map<String, dynamic> json) {
  return ProductShelfLife(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    json['period'] == null
        ? null
        : Quantity.fromJson(json['period'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    specialPrecautionsForStorage: (json['specialPrecautionsForStorage'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ProductShelfLifeToJson(ProductShelfLife instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'type': instance.type?.toJson(),
      'period': instance.period?.toJson(),
      'specialPrecautionsForStorage': instance.specialPrecautionsForStorage
          ?.map((e) => e?.toJson())
          ?.toList(),
    };
