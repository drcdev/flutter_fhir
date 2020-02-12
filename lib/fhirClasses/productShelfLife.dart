import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 50)
class ProductShelfLife {

	static Future<ProductShelfLife> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Identifier identifier,
		CodeableConcept type,
		Quantity period,
		List<CodeableConcept> specialPrecautionsForStorage}) async {
	ProductShelfLife newProductShelfLife = new ProductShelfLife(
			id: await newId('ProductShelfLife'),
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			type: type,
			period: period,
			specialPrecautionsForStorage: specialPrecautionsForStorage);
	var productShelfLifeBox = await Hive.openBox<ProductShelfLife>('ProductShelfLifeBox');
	productShelfLifeBox.add(newProductShelfLife);
	return newProductShelfLife;
}
  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Identifier identifier;
  @HiveField(4)
  CodeableConcept type;
  @HiveField(5)
  Quantity period;
  @HiveField(6)
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
// TypeAdapterGenerator
// **************************************************************************

class ProductShelfLifeAdapter extends TypeAdapter<ProductShelfLife> {
  @override
  final typeId = 50;

  @override
  ProductShelfLife read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductShelfLife(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identifier: fields[3] as Identifier,
      type: fields[4] as CodeableConcept,
      period: fields[5] as Quantity,
      specialPrecautionsForStorage:
          (fields[6] as List)?.cast<CodeableConcept>(),
    );
  }

  @override
  void write(BinaryWriter writer, ProductShelfLife obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.identifier)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.period)
      ..writeByte(6)
      ..write(obj.specialPrecautionsForStorage);
  }
}

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
