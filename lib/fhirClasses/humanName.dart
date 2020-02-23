import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class HumanName {
  static Future<HumanName> newInstance({
    String id,
    List<Extension> extension,
    String use,
    Element elementUse,
    String text,
    Element elementText,
    String family,
    Element elementFamily,
    List<String> given,
    List<Element> elementGiven,
    List<String> prefix,
    List<Element> elementPrefix,
    List<String> suffix,
    List<Element> elementSuffix,
    Period period,
  }) async {
    var fhirDb = new DatabaseHelper();
    HumanName newHumanName = new HumanName(
      id: id,
      extension: extension,
      use: use,
      elementUse: elementUse,
      text: text,
      elementText: elementText,
      family: family,
      elementFamily: elementFamily,
      given: given,
      elementGiven: elementGiven,
      prefix: prefix,
      elementPrefix: elementPrefix,
      suffix: suffix,
      elementSuffix: elementSuffix,
      period: period,
    );
    return newHumanName;
  }

  String id;
  List<Extension> extension;
  String use;
  Element elementUse;
  String text;
  Element elementText;
  String family;
  Element elementFamily;
  List<String> given;
  List<Element> elementGiven;
  List<String> prefix;
  List<Element> elementPrefix;
  List<String> suffix;
  List<Element> elementSuffix;
  Period period;

  HumanName({
    this.id,
    this.extension,
    this.use,
    this.elementUse,
    this.text,
    this.elementText,
    this.family,
    this.elementFamily,
    this.given,
    this.elementGiven,
    this.prefix,
    this.elementPrefix,
    this.suffix,
    this.elementSuffix,
    this.period,
  });

  factory HumanName.fromJson(Map<String, dynamic> json) =>
      _$HumanNameFromJson(json);
  Map<String, dynamic> toJson() => _$HumanNameToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HumanName _$HumanNameFromJson(Map<String, dynamic> json) {
  return HumanName(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    family: json['family'] as String,
    elementFamily: json['elementFamily'] == null
        ? null
        : Element.fromJson(json['elementFamily'] as Map<String, dynamic>),
    given: (json['given'] as List)?.map((e) => e as String)?.toList(),
    elementGiven: (json['elementGiven'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prefix: (json['prefix'] as List)?.map((e) => e as String)?.toList(),
    elementPrefix: (json['elementPrefix'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    suffix: (json['suffix'] as List)?.map((e) => e as String)?.toList(),
    elementSuffix: (json['elementSuffix'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HumanNameToJson(HumanName instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('use', instance.use);
  writeNotNull('elementUse', instance.elementUse?.toJson());
  writeNotNull('text', instance.text);
  writeNotNull('elementText', instance.elementText?.toJson());
  writeNotNull('family', instance.family);
  writeNotNull('elementFamily', instance.elementFamily?.toJson());
  writeNotNull('given', instance.given);
  writeNotNull(
      'elementGiven', instance.elementGiven?.map((e) => e?.toJson())?.toList());
  writeNotNull('prefix', instance.prefix);
  writeNotNull('elementPrefix',
      instance.elementPrefix?.map((e) => e?.toJson())?.toList());
  writeNotNull('suffix', instance.suffix);
  writeNotNull('elementSuffix',
      instance.elementSuffix?.map((e) => e?.toJson())?.toList());
  writeNotNull('period', instance.period?.toJson());
  return val;
}
