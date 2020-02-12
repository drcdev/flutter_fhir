import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
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
		Element elementCreation}) async {
	Attachment newAttachment = new Attachment(
			id: await newId('Attachment'),
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
			elementCreation: elementCreation);
	var attachmentBox = await Hive.openBox<Attachment>('AttachmentBox');
	attachmentBox.put(newAttachment.id, newAttachment);
	return newAttachment;
}
  String id;
  List<Extension> extension;
  String contentType;
  Element elementContentType;
  String language;
  Element elementLanguage;
  String data;
  Element elementData;
  String url;
  Element elementUrl;
  int size;
  Element elementSize;
  String hash;
  Element elementHash;
  String title;
  Element elementTitle;
  DateTime creation;
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
