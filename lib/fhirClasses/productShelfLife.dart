import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

class ProductShelfLife {
  static Future<ProductShelfLife> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Identifier identifier,
    CodeableConcept type,
    Quantity period,
    List<CodeableConcept> specialPrecautionsForStorage,
  }) async {
    var fhirDb = new DatabaseHelper();
    ProductShelfLife newProductShelfLife = new ProductShelfLife(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      type: type,
      period: period,
      specialPrecautionsForStorage: specialPrecautionsForStorage,
    );
    return newProductShelfLife;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  CodeableConcept type;
  Quantity period;
  List<CodeableConcept> specialPrecautionsForStorage;

  ProductShelfLife({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    @required this.type,
    @required this.period,
    this.specialPrecautionsForStorage,
  });

  factory ProductShelfLife.fromJson(Map<String, dynamic> json) =>
      _$ProductShelfLifeFromJson(json);
  Map<String, dynamic> toJson() => _$ProductShelfLifeToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductShelfLife _$ProductShelfLifeFromJson(Map<String, dynamic> json) {
  return ProductShelfLife(
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
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Quantity.fromJson(json['period'] as Map<String, dynamic>),
    specialPrecautionsForStorage: (json['specialPrecautionsForStorage'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ProductShelfLifeToJson(ProductShelfLife instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('specialPrecautionsForStorage',
      instance.specialPrecautionsForStorage?.map((e) => e?.toJson())?.toList());
  return val;
}
