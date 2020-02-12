import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 21)
class Identifier {

	static Future<Identifier> newInstance({
		String id,
		List<Extension> extension,
		String use,
		Element elementUse,
		CodeableConcept type,
		String system,
		Element elementSystem,
		String value,
		Element elementValue,
		Period period,
		Reference assigner}) async {
	Identifier newIdentifier = new Identifier(
			id: await newId('Identifier'),
			extension: extension,
			use: use,
			elementUse: elementUse,
			type: type,
			system: system,
			elementSystem: elementSystem,
			value: value,
			elementValue: elementValue,
			period: period,
			assigner: assigner);
	var identifierBox = await Hive.openBox<Identifier>('IdentifierBox');
	identifierBox.add(newIdentifier);
	return newIdentifier;
}
  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  String use; // <code> enum: usual/official/temp/secondary/old;
  @HiveField(3)
  Element elementUse;
  @HiveField(4)
  CodeableConcept type;
  @HiveField(5)
  String system;
  @HiveField(6)
  Element elementSystem;
  @HiveField(7)
  String value;
  @HiveField(8)
  Element elementValue;
  @HiveField(9)
  Period period;
  @HiveField(10)
  Reference assigner;

Identifier(
  {this.id,
    this.extension,
    this.use,
    this.elementUse,
    this.type,
    this.system,
    this.elementSystem,
    this.value,
    this.elementValue,
    this.period,
    this.assigner
    });

  factory Identifier.fromJson(Map<String, dynamic> json) => _$IdentifierFromJson(json);
  Map<String, dynamic> toJson() => _$IdentifierToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IdentifierAdapter extends TypeAdapter<Identifier> {
  @override
  final typeId = 21;

  @override
  Identifier read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Identifier(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      use: fields[2] as String,
      elementUse: fields[3] as Element,
      type: fields[4] as CodeableConcept,
      system: fields[5] as String,
      elementSystem: fields[6] as Element,
      value: fields[7] as String,
      elementValue: fields[8] as Element,
      period: fields[9] as Period,
      assigner: fields[10] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Identifier obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.use)
      ..writeByte(3)
      ..write(obj.elementUse)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.system)
      ..writeByte(6)
      ..write(obj.elementSystem)
      ..writeByte(7)
      ..write(obj.value)
      ..writeByte(8)
      ..write(obj.elementValue)
      ..writeByte(9)
      ..write(obj.period)
      ..writeByte(10)
      ..write(obj.assigner);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Identifier _$IdentifierFromJson(Map<String, dynamic> json) {
  return Identifier(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    system: json['system'] as String,
    elementSystem: json['elementSystem'] == null
        ? null
        : Element.fromJson(json['elementSystem'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    assigner: json['assigner'] == null
        ? null
        : Reference.fromJson(json['assigner'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IdentifierToJson(Identifier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'use': instance.use,
      'elementUse': instance.elementUse?.toJson(),
      'type': instance.type?.toJson(),
      'system': instance.system,
      'elementSystem': instance.elementSystem?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
      'period': instance.period?.toJson(),
      'assigner': instance.assigner?.toJson(),
    };
