import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';


@JsonSerializable(explicitToJson: true)
class Binary{

	static Future<Binary> newInstance(
	{	String resourceType,
	String id,
	Meta meta,
	String implicitRules,
	Element elementImplicitRules,
	String language,
	Element elementLanguage,
	String contentType,
	Element elementContentType,
	Reference securityContext,
	String data,
	Element elementData,
}) async {
var fhirDb = new DatabaseHelper();
Binary newBinary = new Binary(
	resourceType: 'Binary',
	id: id ?? await fhirDb.newResourceId('Binary'),
	meta: meta ?? await Meta.newInstance(),
	implicitRules: implicitRules,
	elementImplicitRules: elementImplicitRules,
	language: language,
	elementLanguage: elementLanguage,
	contentType: contentType,
	elementContentType: elementContentType,
	securityContext: securityContext,
	data: data,
	elementData: elementData,
);
	newBinary.meta.createdAt = DateTime.now();
	newBinary.meta.lastUpdated = newBinary.meta.createdAt;
	int saved = await fhirDb.saveResource(newBinary);
	 return newBinary;
}

save() async {
		this.meta.lastUpdated = DateTime.now();
		var fhirDb = new DatabaseHelper();
		int saved = await fhirDb.saveResource(this);
}

	String resourceType= 'Binary';
	String id;
	Meta meta;
	String implicitRules;
	Element elementImplicitRules;
	String language;
	Element elementLanguage;
	String contentType;
	Element elementContentType;
	Reference securityContext;
	String data;
	Element elementData;

Binary(
	{@required this.resourceType,
this.id,
this.meta,
this.implicitRules,
this.elementImplicitRules,
this.language,
this.elementLanguage,
this.contentType,
this.elementContentType,
this.securityContext,
this.data,
this.elementData,
});

  factory Binary.fromJson(Map<String, dynamic> json) => _$BinaryFromJson(json);
  Map<String, dynamic> toJson() => _$BinaryToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Binary _$BinaryFromJson(Map<String, dynamic> json) {
  return Binary(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    contentType: json['contentType'] as String,
    elementContentType: json['elementContentType'] == null
        ? null
        : Element.fromJson(json['elementContentType'] as Map<String, dynamic>),
    securityContext: json['securityContext'] == null
        ? null
        : Reference.fromJson(json['securityContext'] as Map<String, dynamic>),
    data: json['data'] as String,
    elementData: json['elementData'] == null
        ? null
        : Element.fromJson(json['elementData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BinaryToJson(Binary instance) => <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'contentType': instance.contentType,
      'elementContentType': instance.elementContentType?.toJson(),
      'securityContext': instance.securityContext?.toJson(),
      'data': instance.data,
      'elementData': instance.elementData?.toJson(),
    };
