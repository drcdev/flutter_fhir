import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

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
    Element elementDisplay,
  }) async {
    var fhirDb = new DatabaseHelper();
    Reference newReference = new Reference(
      id: id,
      extension: extension,
      reference: reference,
      elementReference: elementReference,
      type: type,
      elementType: elementType,
      identifier: identifier,
      display: display,
      elementDisplay: elementDisplay,
    );
    return newReference;
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

  Reference({
    this.id,
    this.extension,
    this.reference,
    this.elementReference,
    this.type,
    this.elementType,
    this.identifier,
    this.display,
    this.elementDisplay,
  });

  factory Reference.fromJson(Map<String, dynamic> json) =>
      _$ReferenceFromJson(json);
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

Map<String, dynamic> _$ReferenceToJson(Reference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('reference', instance.reference);
  writeNotNull('elementReference', instance.elementReference?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('display', instance.display);
  writeNotNull('elementDisplay', instance.elementDisplay?.toJson());
  return val;
}
