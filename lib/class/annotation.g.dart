// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotation.dart';

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
    element_authorString: json['element_authorString'] == null
        ? null
        : Element.fromJson(
            json['element_authorString'] as Map<String, dynamic>),
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
    element_time: json['element_time'] == null
        ? null
        : Element.fromJson(json['element_time'] as Map<String, dynamic>),
    text: json['text'] as String,
    element_text: json['element_text'] == null
        ? null
        : Element.fromJson(json['element_text'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AnnotationToJson(Annotation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'authorReference': instance.authorReference?.toJson(),
      'authorString': instance.authorString,
      'element_authorString': instance.element_authorString?.toJson(),
      'time': instance.time?.toIso8601String(),
      'element_time': instance.element_time?.toJson(),
      'text': instance.text,
      'element_text': instance.element_text?.toJson(),
    };
