import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 23)
class Coding {

	static Future<Coding> newInstance({
		String id,
		List<Extension> extension,
		String system,
		Element elementSystem,
		String version,
		Element elementVersion,
		String code,
		Element elementCode,
		String display,
		Element elementDisplay,
		bool userSelected,
		Element elementUserSelected}) async {
	Coding newCoding = new Coding(
			id: await newId('Coding'),
			extension: extension,
			system: system,
			elementSystem: elementSystem,
			version: version,
			elementVersion: elementVersion,
			code: code,
			elementCode: elementCode,
			display: display,
			elementDisplay: elementDisplay,
			userSelected: userSelected,
			elementUserSelected: elementUserSelected);
	var codingBox = await Hive.openBox<Coding>('CodingBox');
	codingBox.add(newCoding);
	return newCoding;
}
  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  String system;
  @HiveField(3)
  Element elementSystem;
  @HiveField(4)
  String version;
  @HiveField(5)
  Element elementVersion;
  @HiveField(6)
  String code;
  @HiveField(7)
  Element elementCode;
  @HiveField(8)
  String display;
  @HiveField(9)
  Element elementDisplay;
  @HiveField(10)
  bool userSelected;
  @HiveField(11)
  Element elementUserSelected;

Coding(
  {this.id,
    this.extension,
    this.system,
    this.elementSystem,
    this.version,
    this.elementVersion,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.userSelected,
    this.elementUserSelected
    });

  factory Coding.fromJson(Map<String, dynamic> json) => _$CodingFromJson(json);
  Map<String, dynamic> toJson() => _$CodingToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CodingAdapter extends TypeAdapter<Coding> {
  @override
  final typeId = 23;

  @override
  Coding read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Coding(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      system: fields[2] as String,
      elementSystem: fields[3] as Element,
      version: fields[4] as String,
      elementVersion: fields[5] as Element,
      code: fields[6] as String,
      elementCode: fields[7] as Element,
      display: fields[8] as String,
      elementDisplay: fields[9] as Element,
      userSelected: fields[10] as bool,
      elementUserSelected: fields[11] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Coding obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.system)
      ..writeByte(3)
      ..write(obj.elementSystem)
      ..writeByte(4)
      ..write(obj.version)
      ..writeByte(5)
      ..write(obj.elementVersion)
      ..writeByte(6)
      ..write(obj.code)
      ..writeByte(7)
      ..write(obj.elementCode)
      ..writeByte(8)
      ..write(obj.display)
      ..writeByte(9)
      ..write(obj.elementDisplay)
      ..writeByte(10)
      ..write(obj.userSelected)
      ..writeByte(11)
      ..write(obj.elementUserSelected);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coding _$CodingFromJson(Map<String, dynamic> json) {
  return Coding(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] as String,
    elementSystem: json['elementSystem'] == null
        ? null
        : Element.fromJson(json['elementSystem'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
    userSelected: json['userSelected'] as bool,
    elementUserSelected: json['elementUserSelected'] == null
        ? null
        : Element.fromJson(json['elementUserSelected'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CodingToJson(Coding instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'system': instance.system,
      'elementSystem': instance.elementSystem?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'display': instance.display,
      'elementDisplay': instance.elementDisplay?.toJson(),
      'userSelected': instance.userSelected,
      'elementUserSelected': instance.elementUserSelected?.toJson(),
    };
