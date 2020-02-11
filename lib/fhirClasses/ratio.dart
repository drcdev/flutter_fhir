import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 32)
class Ratio {

	static Future<Ratio> newInstance({
		String id,
		List<Extension> extension,
		Quantity numerator,
		Quantity denominator}) async {
	 return Ratio(
			id: await newEntry('Ratio'),
			extension: extension,
			numerator: numerator,
			denominator: denominator);
	}

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  Quantity numerator;
  @HiveField(3)
  Quantity denominator;

Ratio(
  {this.id,
    this.extension,
    this.numerator,
    this.denominator
    });

  factory Ratio.fromJson(Map<String, dynamic> json) => _$RatioFromJson(json);
  Map<String, dynamic> toJson() => _$RatioToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RatioAdapter extends TypeAdapter<Ratio> {
  @override
  final typeId = 32;

  @override
  Ratio read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ratio(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      numerator: fields[2] as Quantity,
      denominator: fields[3] as Quantity,
    );
  }

  @override
  void write(BinaryWriter writer, Ratio obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.numerator)
      ..writeByte(3)
      ..write(obj.denominator);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ratio _$RatioFromJson(Map<String, dynamic> json) {
  return Ratio(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numerator: json['numerator'] == null
        ? null
        : Quantity.fromJson(json['numerator'] as Map<String, dynamic>),
    denominator: json['denominator'] == null
        ? null
        : Quantity.fromJson(json['denominator'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RatioToJson(Ratio instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'numerator': instance.numerator?.toJson(),
      'denominator': instance.denominator?.toJson(),
    };
