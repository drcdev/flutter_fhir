import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

class Ratio {
  static Future<Ratio> newInstance({
    String id,
    List<Extension> extension,
    Quantity numerator,
    Quantity denominator,
  }) async {
    var fhirDb = new DatabaseHelper();
    Ratio newRatio = new Ratio(
      id: id,
      extension: extension,
      numerator: numerator,
      denominator: denominator,
    );
    return newRatio;
  }

  String id;
  List<Extension> extension;
  Quantity numerator;
  Quantity denominator;

  Ratio({
    this.id,
    this.extension,
    this.numerator,
    this.denominator,
  });

  factory Ratio.fromJson(Map<String, dynamic> json) => _$RatioFromJson(json);
  Map<String, dynamic> toJson() => _$RatioToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ratio _$RatioFromJson(Map<String, dynamic> json) {
  return Ratio(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numerator: json['numerator'] == null
        ? null
        : Quantity.fromJson(json['numerator'] as Map<String, dynamic>),
    denominator: json['denominator'] == null
        ? null
        : Quantity.fromJson(json['denominator'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RatioToJson(Ratio instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('numerator', instance.numerator?.toJson());
  writeNotNull('denominator', instance.denominator?.toJson());
  return val;
}
