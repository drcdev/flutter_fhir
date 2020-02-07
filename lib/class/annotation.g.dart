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
