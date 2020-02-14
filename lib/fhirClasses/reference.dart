import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class Reference {


	static Future<Reference> newInstance({
		String id,
		List<Extension> extension,
		String reference,
		Element elementReference,
		String type,
		Element elementType,
		Identifier identifier,
		String display,
		Element elementDisplay}) async {
	var fhirDb = new DatabaseHelper();
	Reference newReference = new Reference(
			id: await fhirDb.newResourceId('Reference'),
			extension: extension,
			reference: reference,
			elementReference: elementReference,
			type: type,
			elementType: elementType,
			identifier: identifier,
			display: display,
			elementDisplay: elementDisplay,
);
	int saved = await fhirDb.saveResource(newReference);
	return newReference;
}

save () async {
	var fhirDb = new DatabaseHelper();
	int saved = await fhirDb.save(this);
}
  String id;
  List<Extension> extension;
  String reference;
  Element elementReference;
  String type;
  Element elementType;
  Identifier identifier;
  String display;
  Element elementDisplay;

Reference(
  {this.id,
    this.extension,
    this.reference,
    this.elementReference,
    this.type,
    this.elementType,
    this.identifier,
    this.display,
    this.elementDisplay
    });

  factory Reference.fromJson(Map<String, dynamic> json) => _$ReferenceFromJson(json);
  Map<String, dynamic> toJson() => _$ReferenceToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reference _$ReferenceFromJson(Map<String, dynamic> json) {
  return Reference(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: json['reference'] as String,
    elementReference: json['elementReference'] == null
        ? null
        : Element.fromJson(json['elementReference'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ReferenceToJson(Reference instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference,
      'elementReference': instance.elementReference?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'identifier': instance.identifier?.toJson(),
      'display': instance.display,
      'elementDisplay': instance.elementDisplay?.toJson(),
    };
