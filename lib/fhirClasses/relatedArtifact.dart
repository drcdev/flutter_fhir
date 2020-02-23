import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RelatedArtifact {
  static Future<RelatedArtifact> newInstance({
    String id,
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
      id: id,
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

  RelatedArtifact({
    this.id,
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

  factory RelatedArtifact.fromJson(Map<String, dynamic> json) =>
      _$RelatedArtifactFromJson(json);
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

Map<String, dynamic> _$RelatedArtifactToJson(RelatedArtifact instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('label', instance.label);
  writeNotNull('elementLabel', instance.elementLabel?.toJson());
  writeNotNull('display', instance.display);
  writeNotNull('elementDisplay', instance.elementDisplay?.toJson());
  writeNotNull('citation', instance.citation);
  writeNotNull('elementCitation', instance.elementCitation?.toJson());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull('document', instance.document?.toJson());
  writeNotNull('resource', instance.resource);
  return val;
}
