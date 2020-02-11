import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 20)
class Attachment {

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

  //  Identifies the type of the data in the attachment and allows a method
  // to be chosen to interpret or render the data. Includes mime type
  // parameters such as charset where appropriate.
  @HiveField(2)
  String contentType;

  //  Extensions for contentType
  @HiveField(3)
  Element elementContentType;

  //  The human language of the content. The value can be any valid value
  // according to BCP 47.
  @HiveField(4)
  String language;

  //  Extensions for language
  @HiveField(5)
  Element elementLanguage;

  //  The actual data of the attachment - a sequence of bytes, base64
  // encoded.
  @HiveField(6)
  String data;

  //  Extensions for data
  @HiveField(7)
  Element elementData;

  //  A location where the data can be accessed.
  @HiveField(8)
  String url;

  //  Extensions for url
  @HiveField(9)
  Element elementUrl;

  //  The number of bytes of data that make up this attachment (before
  // base64 encoding, if that is done).
  @HiveField(10)
  int size;

  //  Extensions for size
  @HiveField(11)
  Element elementSize;

  //  The calculated hash of the data using SHA-1. Represented using base64.
  @HiveField(12)
  String hash;

  //  Extensions for hash
  @HiveField(13)
  Element elementHash;

  //  A label or set of text to display in place of the data.
  @HiveField(14)
  String title;

  //  Extensions for title
  @HiveField(15)
  Element elementTitle;

  //  The date that the attachment was first created.
  @HiveField(16)
  DateTime creation;

  //  Extensions for creation
  @HiveField(17)
  Element elementCreation;

Attachment(
  {this.id,
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
    this.elementCreation
    });

  factory Attachment.fromJson(Map<String, dynamic> json) => _$AttachmentFromJson(json);
  Map<String, dynamic> toJson() => _$AttachmentToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AttachmentAdapter extends TypeAdapter<Attachment> {
  @override
  final typeId = 20;

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

Map<String, dynamic> _$AttachmentToJson(Attachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'contentType': instance.contentType,
      'elementContentType': instance.elementContentType?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'data': instance.data,
      'elementData': instance.elementData?.toJson(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'size': instance.size,
      'elementSize': instance.elementSize?.toJson(),
      'hash': instance.hash,
      'elementHash': instance.elementHash?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'creation': instance.creation?.toIso8601String(),
      'elementCreation': instance.elementCreation?.toJson(),
    };
