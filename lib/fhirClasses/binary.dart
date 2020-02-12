import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 64)
class Binary {

	static Future<Binary> newInstance({
		String id,
		Meta meta,
		String implicitRules,
		Element elementImplicitRules,
		String language,
		Element elementLanguage,
		String contentType,
		Element elementContentType,
		Reference securityContext,
		String data,
		Element elementData}) async {
	Binary newBinary = new Binary(
			id: await newId('Binary'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			contentType: contentType,
			elementContentType: elementContentType,
			securityContext: securityContext,
			data: data,
			elementData: elementData);
	var binaryBox = await Hive.openBox<Binary>('BinaryBox');
	binaryBox.put(newBinary.id, newBinary);
	return newBinary;
}
  @HiveField(0)
  final String resourceType= 'Binary';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  String contentType;
  @HiveField(8)
  Element elementContentType;
  @HiveField(9)
  Reference securityContext;
  @HiveField(10)
  String data;
  @HiveField(11)
  Element elementData;

Binary(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.contentType,
    this.elementContentType,
    this.securityContext,
    this.data,
    this.elementData
    });

  factory Binary.fromJson(Map<String, dynamic> json) => _$BinaryFromJson(json);
  Map<String, dynamic> toJson() => _$BinaryToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BinaryAdapter extends TypeAdapter<Binary> {
  @override
  final typeId = 64;

  @override
  Binary read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Binary(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      contentType: fields[7] as String,
      elementContentType: fields[8] as Element,
      securityContext: fields[9] as Reference,
      data: fields[10] as String,
      elementData: fields[11] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Binary obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.contentType)
      ..writeByte(8)
      ..write(obj.elementContentType)
      ..writeByte(9)
      ..write(obj.securityContext)
      ..writeByte(10)
      ..write(obj.data)
      ..writeByte(11)
      ..write(obj.elementData);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Binary _$BinaryFromJson(Map<String, dynamic> json) {
  return Binary(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    contentType: json['contentType'] as String,
    elementContentType: json['elementContentType'] == null
        ? null
        : Element.fromJson(json['elementContentType'] as Map<String, dynamic>),
    securityContext: json['securityContext'] == null
        ? null
        : Reference.fromJson(json['securityContext'] as Map<String, dynamic>),
    data: json['data'] as String,
    elementData: json['elementData'] == null
        ? null
        : Element.fromJson(json['elementData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BinaryToJson(Binary instance) => <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'contentType': instance.contentType,
      'elementContentType': instance.elementContentType?.toJson(),
      'securityContext': instance.securityContext?.toJson(),
      'data': instance.data,
      'elementData': instance.elementData?.toJson(),
    };
