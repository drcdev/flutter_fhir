import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

class Count {
  static Future<Count> newInstance({
    String id,
    List<Extension> extension,
    double value,
    Element elementValue,
    String comparator,
    Element elementComparator,
    String unit,
    Element elementUnit,
    String system,
    Element elementSystem,
    String code,
    Element elementCode,
  }) async {
    var fhirDb = new DatabaseHelper();
    Count newCount = new Count(
      id: id,
      extension: extension,
      value: value,
      elementValue: elementValue,
      comparator: comparator,
      elementComparator: elementComparator,
      unit: unit,
      elementUnit: elementUnit,
      system: system,
      elementSystem: elementSystem,
      code: code,
      elementCode: elementCode,
    );
    return newCount;
  }

  String id;
  List<Extension> extension;
  double value;
  Element elementValue;
  String comparator;
  Element elementComparator;
  String unit;
  Element elementUnit;
  String system;
  Element elementSystem;
  String code;
  Element elementCode;

  Count({
    this.id,
    this.extension,
    this.value,
    this.elementValue,
    this.comparator,
    this.elementComparator,
    this.unit,
    this.elementUnit,
    this.system,
    this.elementSystem,
    this.code,
    this.elementCode,
  });

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
  Map<String, dynamic> toJson() => _$CountToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Count _$CountFromJson(Map<String, dynamic> json) {
  return Count(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: (json['value'] as num)?.toDouble(),
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    comparator: json['comparator'] as String,
    elementComparator: json['elementComparator'] == null
        ? null
        : Element.fromJson(json['elementComparator'] as Map<String, dynamic>),
    unit: json['unit'] as String,
    elementUnit: json['elementUnit'] == null
        ? null
        : Element.fromJson(json['elementUnit'] as Map<String, dynamic>),
    system: json['system'] as String,
    elementSystem: json['elementSystem'] == null
        ? null
        : Element.fromJson(json['elementSystem'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CountToJson(Count instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('value', instance.value);
  writeNotNull('elementValue', instance.elementValue?.toJson());
  writeNotNull('comparator', instance.comparator);
  writeNotNull('elementComparator', instance.elementComparator?.toJson());
  writeNotNull('unit', instance.unit);
  writeNotNull('elementUnit', instance.elementUnit?.toJson());
  writeNotNull('system', instance.system);
  writeNotNull('elementSystem', instance.elementSystem?.toJson());
  writeNotNull('code', instance.code);
  writeNotNull('elementCode', instance.elementCode?.toJson());
  return val;
}
