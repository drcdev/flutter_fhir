// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relatedArtifact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelatedArtifact _$RelatedArtifactFromJson(Map<String, dynamic> json) {
  return RelatedArtifact(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    label: json['label'] as String,
    element_label: json['element_label'] == null
        ? null
        : Element.fromJson(json['element_label'] as Map<String, dynamic>),
    display: json['display'] as String,
    element_display: json['element_display'] == null
        ? null
        : Element.fromJson(json['element_display'] as Map<String, dynamic>),
    citation: json['citation'] as String,
    element_citation: json['element_citation'] == null
        ? null
        : Element.fromJson(json['element_citation'] as Map<String, dynamic>),
    url: json['url'] as String,
    element_url: json['element_url'] == null
        ? null
        : Element.fromJson(json['element_url'] as Map<String, dynamic>),
    document: json['document'] == null
        ? null
        : Attachment.fromJson(json['document'] as Map<String, dynamic>),
    resource: json['resource'] as String,
  );
}

Map<String, dynamic> _$RelatedArtifactToJson(RelatedArtifact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'label': instance.label,
      'element_label': instance.element_label?.toJson(),
      'display': instance.display,
      'element_display': instance.element_display?.toJson(),
      'citation': instance.citation,
      'element_citation': instance.element_citation?.toJson(),
      'url': instance.url,
      'element_url': instance.element_url?.toJson(),
      'document': instance.document?.toJson(),
      'resource': instance.resource,
    };
