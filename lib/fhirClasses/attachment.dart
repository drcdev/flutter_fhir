import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

class Attachment {
  static Future<Attachment> newInstance({
    String id,
    List<Extension> extension,
    String contentType,
    Element elementContentType,
    String language,
    Element elementLanguage,
    String data,
    Element elementData,
    String url,
    Element elementUrl,
    int size,
    Element elementSize,
    String hash,
    Element elementHash,
    String title,
    Element elementTitle,
    DateTime creation,
    Element elementCreation,
  }) async {
    var fhirDb = new DatabaseHelper();
    Attachment newAttachment = new Attachment(
      id: id,
      extension: extension,
      contentType: contentType,
      elementContentType: elementContentType,
      language: language,
      elementLanguage: elementLanguage,
      data: data,
      elementData: elementData,
      url: url,
      elementUrl: elementUrl,
      size: size,
      elementSize: elementSize,
      hash: hash,
      elementHash: elementHash,
      title: title,
      elementTitle: elementTitle,
      creation: creation,
      elementCreation: elementCreation,
    );
    return newAttachment;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  String contentType;
  @HiveField(3)
  Element elementContentType;
  @HiveField(4)
  String language;
  @HiveField(5)
  Element elementLanguage;
  @HiveField(6)
  String data;
  @HiveField(7)
  Element elementData;
  @HiveField(8)
  String url;
  @HiveField(9)
  Element elementUrl;
  @HiveField(10)
  int size;
  @HiveField(11)
  Element elementSize;
  @HiveField(12)
  String hash;
  @HiveField(13)
  Element elementHash;
  @HiveField(14)
  String title;
  @HiveField(15)
  Element elementTitle;
  @HiveField(16)
  DateTime creation;
  @HiveField(17)
  Element elementCreation;

  Attachment({
    this.id,
    this.extension,
    this.contentType,
    this.elementContentType,
    this.language,
    this.elementLanguage,
    this.data,
    this.elementData,
    this.url,
    this.elementUrl,
    this.size,
    this.elementSize,
    this.hash,
    this.elementHash,
    this.title,
    this.elementTitle,
    this.creation,
    this.elementCreation,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);
  Map<String, dynamic> toJson() => _$AttachmentToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attachment _$AttachmentFromJson(Map<String, dynamic> json) {
  return Attachment(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentType: json['contentType'] as String,
    elementContentType: json['elementContentType'] == null
        ? null
        : Element.fromJson(json['elementContentType'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    data: json['data'] as String,
    elementData: json['elementData'] == null
        ? null
        : Element.fromJson(json['elementData'] as Map<String, dynamic>),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    size: json['size'] as int,
    elementSize: json['elementSize'] == null
        ? null
        : Element.fromJson(json['elementSize'] as Map<String, dynamic>),
    hash: json['hash'] as String,
    elementHash: json['elementHash'] == null
        ? null
        : Element.fromJson(json['elementHash'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    creation: json['creation'] == null
        ? null
        : DateTime.parse(json['creation'] as String),
    elementCreation: json['elementCreation'] == null
        ? null
        : Element.fromJson(json['elementCreation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AttachmentToJson(Attachment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('contentType', instance.contentType);
  writeNotNull('elementContentType', instance.elementContentType?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('data', instance.data);
  writeNotNull('elementData', instance.elementData?.toJson());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull('size', instance.size);
  writeNotNull('elementSize', instance.elementSize?.toJson());
  writeNotNull('hash', instance.hash);
  writeNotNull('elementHash', instance.elementHash?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('creation', instance.creation?.toIso8601String());
  writeNotNull('elementCreation', instance.elementCreation?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AttachmentAdapter extends TypeAdapter<Attachment> {
  @override
  Attachment read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Attachment(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      contentType: fields[2] as String,
      elementContentType: fields[3] as Element,
      language: fields[4] as String,
      elementLanguage: fields[5] as Element,
      data: fields[6] as String,
      elementData: fields[7] as Element,
      url: fields[8] as String,
      elementUrl: fields[9] as Element,
      size: fields[10] as int,
      elementSize: fields[11] as Element,
      hash: fields[12] as String,
      elementHash: fields[13] as Element,
      title: fields[14] as String,
      elementTitle: fields[15] as Element,
      creation: fields[16] as DateTime,
      elementCreation: fields[17] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Attachment obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.contentType)
      ..writeByte(3)
      ..write(obj.elementContentType)
      ..writeByte(4)
      ..write(obj.language)
      ..writeByte(5)
      ..write(obj.elementLanguage)
      ..writeByte(6)
      ..write(obj.data)
      ..writeByte(7)
      ..write(obj.elementData)
      ..writeByte(8)
      ..write(obj.url)
      ..writeByte(9)
      ..write(obj.elementUrl)
      ..writeByte(10)
      ..write(obj.size)
      ..writeByte(11)
      ..write(obj.elementSize)
      ..writeByte(12)
      ..write(obj.hash)
      ..writeByte(13)
      ..write(obj.elementHash)
      ..writeByte(14)
      ..write(obj.title)
      ..writeByte(15)
      ..write(obj.elementTitle)
      ..writeByte(16)
      ..write(obj.creation)
      ..writeByte(17)
      ..write(obj.elementCreation);
  }
}
