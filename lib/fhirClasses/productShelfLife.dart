import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class ProductShelfLife {


	static Future<ProductShelfLife> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Identifier identifier,
		CodeableConcept type,
		Quantity period,
		List<CodeableConcept> specialPrecautionsForStorage}) async {
	var fhirDb = new DatabaseHelper();
	ProductShelfLife newProductShelfLife = new ProductShelfLife(
			id: await fhirDb.newResourceId('ProductShelfLife'),
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			type: type,
			period: period,
			specialPrecautionsForStorage: specialPrecautionsForStorage,
);
	int saved = await fhirDb.saveResource(newProductShelfLife);
	return newProductShelfLife;
}

save () async {
	var fhirDb = new DatabaseHelper();
	int saved = await fhirDb.save(this);
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  CodeableConcept type;
  Quantity period;
  List<CodeableConcept> specialPrecautionsForStorage;

ProductShelfLife(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    @required this.type,
    @required this.period,
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
