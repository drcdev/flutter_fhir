import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 39)
class ProductShelfLife {

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

  //  Unique identifier for the packaged Medicinal Product.
  @HiveField(3)
  Identifier identifier;

  //  This describes the shelf life, taking into account various scenarios
  // such as shelf life of the packaged Medicinal Product itself, shelf life
  // after transformation where necessary and shelf life after the first
  // opening of a bottle, etc. The shelf life type shall be specified using
  // an appropriate controlled vocabulary The controlled term and the
  // controlled term identifier shall be specified.
  @HiveField(4)
  CodeableConcept type;

  //  The shelf life time period can be specified using a numerical value
  // for the period of time and its unit of time measurement The unit of
  // measurement shall be specified in accordance with ISO 11240 and the
  // resulting terminology The symbol and the symbol identifier shall be
  // used.
  @HiveField(5)
  Quantity period;

  //  Special precautions for storage, if any, can be specified using an
  // appropriate controlled vocabulary The controlled term and the
  // controlled term identifier shall be specified.
  @HiveField(6)
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
// TypeAdapterGenerator
// **************************************************************************

class ProductShelfLifeAdapter extends TypeAdapter<ProductShelfLife> {
  @override
  final typeId = 39;

  @override
  ProductShelfLife read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductShelfLife(
      fields[4] as CodeableConcept,
      fields[5] as Quantity,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identifier: fields[3] as Identifier,
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
