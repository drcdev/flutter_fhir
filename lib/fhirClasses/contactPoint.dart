import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

class ContactPoint {
  static Future<ContactPoint> newInstance({
    String id,
    List<Extension> extension,
    String system,
    Element elementSystem,
    String value,
    Element elementValue,
    String use,
    Element elementUse,
    int rank,
    Element elementRank,
    Period period,
  }) async {
    var fhirDb = new DatabaseHelper();
    ContactPoint newContactPoint = new ContactPoint(
      id: id,
      extension: extension,
      system: system,
      elementSystem: elementSystem,
      value: value,
      elementValue: elementValue,
      use: use,
      elementUse: elementUse,
      rank: rank,
      elementRank: elementRank,
      period: period,
    );
    return newContactPoint;
  }

  String id;
  List<Extension> extension;
  String system;
  Element elementSystem;
  String value;
  Element elementValue;
  String use;
  Element elementUse;
  int rank;
  Element elementRank;
  Period period;

  ContactPoint({
    this.id,
    this.extension,
    this.system,
    this.elementSystem,
    this.value,
    this.elementValue,
    this.use,
    this.elementUse,
    this.rank,
    this.elementRank,
    this.period,
  });

  factory ContactPoint.fromJson(Map<String, dynamic> json) =>
      _$ContactPointFromJson(json);
  Map<String, dynamic> toJson() => _$ContactPointToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactPoint _$ContactPointFromJson(Map<String, dynamic> json) {
  return ContactPoint(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] as String,
    elementSystem: json['elementSystem'] == null
        ? null
        : Element.fromJson(json['elementSystem'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    rank: json['rank'] as int,
    elementRank: json['elementRank'] == null
        ? null
        : Element.fromJson(json['elementRank'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ContactPointToJson(ContactPoint instance) {
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
  writeNotNull('value', instance.value);
  writeNotNull('elementValue', instance.elementValue?.toJson());
  writeNotNull('use', instance.use);
  writeNotNull('elementUse', instance.elementUse?.toJson());
  writeNotNull('rank', instance.rank);
  writeNotNull('elementRank', instance.elementRank?.toJson());
  writeNotNull('period', instance.period?.toJson());
  return val;
}
