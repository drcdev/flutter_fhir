import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';


@JsonSerializable(explicitToJson: true)
class ContactDetail{

	static Future<ContactDetail> newInstance(
	{	String id,
	List<Extension> extension,
	String name,
	Element elementName,
	List<ContactPoint> telecom,
}) async {
var fhirDb = new DatabaseHelper();
ContactDetail newContactDetail = new ContactDetail(
	id: id ?? await fhirDb.newResourceId('ContactDetail'),
	extension: extension,
	name: name,
	elementName: elementName,
	telecom: telecom,
);
	return newContactDetail;
}

	String id;
	List<Extension> extension;
	String name;
	Element elementName;
	List<ContactPoint> telecom;

ContactDetail(
	{this.id,
this.extension,
this.name,
this.elementName,
this.telecom,
});

  factory ContactDetail.fromJson(Map<String, dynamic> json) => _$ContactDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ContactDetailToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactDetail _$ContactDetailFromJson(Map<String, dynamic> json) {
  return ContactDetail(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    telecom: (json['telecom'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ContactDetailToJson(ContactDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
    };
