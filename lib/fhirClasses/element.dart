import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class Element {

	static Future<Element> newInstance({
		String id,
		List<Extension> extension}) async {
	Element newElement = new Element(
			id: await newId('Element'),
			extension: extension);
	var elementBox = await Hive.openBox<Element>('ElementBox');
	elementBox.put(newElement.id, newElement);
	return newElement;
}
  String id;
  List<Extension> extension;

Element(
  {this.id,
    this.extension
    });

  factory Element.fromJson(Map<String, dynamic> json) => _$ElementFromJson(json);
  Map<String, dynamic> toJson() => _$ElementToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Element _$ElementFromJson(Map<String, dynamic> json) {
  return Element(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ElementToJson(Element instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
    };
