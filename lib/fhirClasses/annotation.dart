import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class Annotation {
  static Future<Annotation> newInstance({
    String id,
    List<Extension> extension,
    Reference authorReference,
    String authorString,
    Element elementAuthorString,
    DateTime time,
    Element elementTime,
    String text,
    Element elementText,
  }) async {
    var fhirDb = new DatabaseHelper();
    Annotation newAnnotation = new Annotation(
      id: id ?? await fhirDb.newResourceId('Annotation'),
      extension: extension,
      authorReference: authorReference,
      authorString: authorString,
      elementAuthorString: elementAuthorString,
      time: time,
      elementTime: elementTime,
      text: text,
      elementText: elementText,
    );
    return newAnnotation;
  }

  String id;
  List<Extension> extension;
  Reference authorReference;
  String authorString;
  Element elementAuthorString;
  DateTime time;
  Element elementTime;
  String text;
  Element elementText;

  Annotation({
    this.id,
    this.extension,
    this.authorReference,
    this.authorString,
    this.elementAuthorString,
    this.time,
    this.elementTime,
    this.text,
    this.elementText,
  });

  factory Annotation.fromJson(Map<String, dynamic> json) =>
      _$AnnotationFromJson(json);
  Map<String, dynamic> toJson() => _$AnnotationToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Annotation _$AnnotationFromJson(Map<String, dynamic> json) {
  return Annotation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authorReference: json['authorReference'] == null
        ? null
        : Reference.fromJson(json['authorReference'] as Map<String, dynamic>),
    authorString: json['authorString'] as String,
    elementAuthorString: json['elementAuthorString'] == null
        ? null
        : Element.fromJson(json['elementAuthorString'] as Map<String, dynamic>),
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
    elementTime: json['elementTime'] == null
        ? null
        : Element.fromJson(json['elementTime'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AnnotationToJson(Annotation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'authorReference': instance.authorReference?.toJson(),
      'authorString': instance.authorString,
      'elementAuthorString': instance.elementAuthorString?.toJson(),
      'time': instance.time?.toIso8601String(),
      'elementTime': instance.elementTime?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
    };
