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
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    label: json['label'] as String,
    elementLabel: json['elementLabel'] == null
        ? null
        : Element.fromJson(json['elementLabel'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
    citation: json['citation'] as String,
    elementCitation: json['elementCitation'] == null
        ? null
        : Element.fromJson(json['elementCitation'] as Map<String, dynamic>),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
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
      'elementType': instance.elementType?.toJson(),
      'label': instance.label,
      'elementLabel': instance.elementLabel?.toJson(),
      'display': instance.display,
      'elementDisplay': instance.elementDisplay?.toJson(),
      'citation': instance.citation,
      'elementCitation': instance.elementCitation?.toJson(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'document': instance.document?.toJson(),
      'resource': instance.resource,
    };
