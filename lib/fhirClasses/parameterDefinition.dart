import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';


@JsonSerializable(explicitToJson: true)
class ParameterDefinition{

	static Future<ParameterDefinition> newInstance(
	{	String id,
	List<Extension> extension,
	String name,
	Element elementName,
	String use,
	Element elementUse,
	int min,
	Element elementMin,
	String max,
	Element elementMax,
	String documentation,
	Element elementDocumentation,
	String type,
	Element elementType,
	String profile,
}) async {
var fhirDb = new DatabaseHelper();
ParameterDefinition newParameterDefinition = new ParameterDefinition(
	id: id ?? await fhirDb.newResourceId('ParameterDefinition'),
	extension: extension,
	name: name,
	elementName: elementName,
	use: use,
	elementUse: elementUse,
	min: min,
	elementMin: elementMin,
	max: max,
	elementMax: elementMax,
	documentation: documentation,
	elementDocumentation: elementDocumentation,
	type: type,
	elementType: elementType,
	profile: profile,
);
	return newParameterDefinition;
}

	String id;
	List<Extension> extension;
	String name;
	Element elementName;
	String use;
	Element elementUse;
	int min;
	Element elementMin;
	String max;
	Element elementMax;
	String documentation;
	Element elementDocumentation;
	String type;
	Element elementType;
	String profile;

ParameterDefinition(
	{this.id,
this.extension,
this.name,
this.elementName,
this.use,
this.elementUse,
this.min,
this.elementMin,
this.max,
this.elementMax,
this.documentation,
this.elementDocumentation,
this.type,
this.elementType,
this.profile,
});

  factory ParameterDefinition.fromJson(Map<String, dynamic> json) => _$ParameterDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ParameterDefinitionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParameterDefinition _$ParameterDefinitionFromJson(Map<String, dynamic> json) {
  return ParameterDefinition(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    min: json['min'] as int,
    elementMin: json['elementMin'] == null
        ? null
        : Element.fromJson(json['elementMin'] as Map<String, dynamic>),
    max: json['max'] as String,
    elementMax: json['elementMax'] == null
        ? null
        : Element.fromJson(json['elementMax'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    profile: json['profile'] as String,
  );
}

Map<String, dynamic> _$ParameterDefinitionToJson(
        ParameterDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'use': instance.use,
      'elementUse': instance.elementUse?.toJson(),
      'min': instance.min,
      'elementMin': instance.elementMin?.toJson(),
      'max': instance.max,
      'elementMax': instance.elementMax?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'profile': instance.profile,
    };
