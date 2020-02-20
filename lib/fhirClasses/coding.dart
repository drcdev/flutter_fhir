import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Coding {
  static Future<Coding> newInstance({
    String id,
    List<Extension> extension,
    String system,
    Element elementSystem,
    String version,
    Element elementVersion,
    String code,
    Element elementCode,
    String display,
    Element elementDisplay,
    bool userSelected,
    Element elementUserSelected,
  }) async {
    var fhirDb = new DatabaseHelper();
    Coding newCoding = new Coding(
      id: id ?? await fhirDb.newResourceId('Coding'),
      extension: extension,
      system: system,
      elementSystem: elementSystem,
      version: version,
      elementVersion: elementVersion,
      code: code,
      elementCode: elementCode,
      display: display,
      elementDisplay: elementDisplay,
      userSelected: userSelected,
      elementUserSelected: elementUserSelected,
    );
    return newCoding;
  }

  String id;
  List<Extension> extension;
  String system;
  Element elementSystem;
  String version;
  Element elementVersion;
  String code;
  Element elementCode;
  String display;
  Element elementDisplay;
  bool userSelected;
  Element elementUserSelected;

  Coding({
    this.id,
    this.extension,
    this.system,
    this.elementSystem,
    this.version,
    this.elementVersion,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.userSelected,
    this.elementUserSelected,
  });

  factory Coding.fromJson(Map<String, dynamic> json) => _$CodingFromJson(json);
  Map<String, dynamic> toJson() => _$CodingToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coding _$CodingFromJson(Map<String, dynamic> json) {
  return Coding(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] as String,
    elementSystem: json['elementSystem'] == null
        ? null
        : Element.fromJson(json['elementSystem'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
    userSelected: json['userSelected'] as bool,
    elementUserSelected: json['elementUserSelected'] == null
        ? null
        : Element.fromJson(json['elementUserSelected'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CodingToJson(Coding instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('system', instance.system);
  writeNotNull('elementSystem', instance.elementSystem?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('code', instance.code);
  writeNotNull('elementCode', instance.elementCode?.toJson());
  writeNotNull('display', instance.display);
  writeNotNull('elementDisplay', instance.elementDisplay?.toJson());
  writeNotNull('userSelected', instance.userSelected);
  writeNotNull('elementUserSelected', instance.elementUserSelected?.toJson());
  return val;
}
