import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';


@JsonSerializable(explicitToJson: true)
class RelatedArtifact{

	static Future<RelatedArtifact> newInstance(
	{	String id,
	List<Extension> extension,
	String type,
	Element elementType,
	String label,
	Element elementLabel,
	String display,
	Element elementDisplay,
	String citation,
	Element elementCitation,
	String url,
	Element elementUrl,
	Attachment document,
	String resource,
}) async {
var fhirDb = new DatabaseHelper();
RelatedArtifact newRelatedArtifact = new RelatedArtifact(
	id: id ?? await fhirDb.newResourceId('RelatedArtifact'),
	extension: extension,
	type: type,
	elementType: elementType,
	label: label,
	elementLabel: elementLabel,
	display: display,
	elementDisplay: elementDisplay,
	citation: citation,
	elementCitation: elementCitation,
	url: url,
	elementUrl: elementUrl,
	document: document,
	resource: resource,
);
	return newRelatedArtifact;
}

	String id;
	List<Extension> extension;
	String type;
	Element elementType;
	String label;
	Element elementLabel;
	String display;
	Element elementDisplay;
	String citation;
	Element elementCitation;
	String url;
	Element elementUrl;
	Attachment document;
	String resource;

RelatedArtifact(
	{this.id,
this.extension,
this.type,
this.elementType,
this.label,
this.elementLabel,
this.display,
this.elementDisplay,
this.citation,
this.elementCitation,
this.url,
this.elementUrl,
this.document,
this.resource,
});

  factory RelatedArtifact.fromJson(Map<String, dynamic> json) => _$RelatedArtifactFromJson(json);
  Map<String, dynamic> toJson() => _$RelatedArtifactToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
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
