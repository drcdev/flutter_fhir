import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class Meta {


	static Future<Meta> newInstance({
		String id,
		List<Extension> extension,
		String versionId,
		Element elementVersionId,
		DateTime lastUpdated,
		Element elementLastUpdated,
		String source,
		Element elementSource,
		List<String> profile,
		List<Coding> security,
		List<Coding> tag}) async {
	var fhirDb = new DatabaseHelper();
	Meta newMeta = new Meta(
			id: await fhirDb.newResourceId('Meta'),
			extension: extension,
			versionId: versionId,
			elementVersionId: elementVersionId,
			lastUpdated: lastUpdated,
			elementLastUpdated: elementLastUpdated,
			source: source,
			elementSource: elementSource,
			profile: profile,
			security: security,
			tag: tag,
);
	int saved = await fhirDb.saveResource(newMeta);
	return newMeta;
}

save () async {
	var fhirDb = new DatabaseHelper();
	int saved = await fhirDb.save(this);
}
  String id;
  List<Extension> extension;
  String versionId;
  Element elementVersionId;
  DateTime lastUpdated;
  Element elementLastUpdated;
  String source;
  Element elementSource;
  List<String> profile;
  List<Coding> security;
  List<Coding> tag;

Meta(
  {this.id,
    this.extension,
    this.versionId,
    this.elementVersionId,
    this.lastUpdated,
    this.elementLastUpdated,
    this.source,
    this.elementSource,
    this.profile,
    this.security,
    this.tag
    });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return Meta(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    versionId: json['versionId'] as String,
    elementVersionId: json['elementVersionId'] == null
        ? null
        : Element.fromJson(json['elementVersionId'] as Map<String, dynamic>),
    lastUpdated: json['lastUpdated'] == null
        ? null
        : DateTime.parse(json['lastUpdated'] as String),
    elementLastUpdated: json['elementLastUpdated'] == null
        ? null
        : Element.fromJson(json['elementLastUpdated'] as Map<String, dynamic>),
    source: json['source'] as String,
    elementSource: json['elementSource'] == null
        ? null
        : Element.fromJson(json['elementSource'] as Map<String, dynamic>),
    profile: (json['profile'] as List)?.map((e) => e as String)?.toList(),
    security: (json['security'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tag: (json['tag'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'versionId': instance.versionId,
      'elementVersionId': instance.elementVersionId?.toJson(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'elementLastUpdated': instance.elementLastUpdated?.toJson(),
      'source': instance.source,
      'elementSource': instance.elementSource?.toJson(),
      'profile': instance.profile,
      'security': instance.security?.map((e) => e?.toJson())?.toList(),
      'tag': instance.tag?.map((e) => e?.toJson())?.toList(),
    };
