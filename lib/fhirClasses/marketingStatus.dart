import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

class MarketingStatus {
  static Future<MarketingStatus> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept country,
    CodeableConcept jurisdiction,
    CodeableConcept status,
    Period dateRange,
    DateTime restoreDate,
    Element elementRestoreDate,
  }) async {
    var fhirDb = new DatabaseHelper();
    MarketingStatus newMarketingStatus = new MarketingStatus(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      country: country,
      jurisdiction: jurisdiction,
      status: status,
      dateRange: dateRange,
      restoreDate: restoreDate,
      elementRestoreDate: elementRestoreDate,
    );
    return newMarketingStatus;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept country;
  CodeableConcept jurisdiction;
  CodeableConcept status;
  Period dateRange;
  DateTime restoreDate;
  Element elementRestoreDate;

  MarketingStatus({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.country,
    this.jurisdiction,
    @required this.status,
    @required this.dateRange,
    this.restoreDate,
    this.elementRestoreDate,
  });

  factory MarketingStatus.fromJson(Map<String, dynamic> json) =>
      _$MarketingStatusFromJson(json);
  Map<String, dynamic> toJson() => _$MarketingStatusToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketingStatus _$MarketingStatusFromJson(Map<String, dynamic> json) {
  return MarketingStatus(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    country: json['country'] == null
        ? null
        : CodeableConcept.fromJson(json['country'] as Map<String, dynamic>),
    jurisdiction: json['jurisdiction'] == null
        ? null
        : CodeableConcept.fromJson(
            json['jurisdiction'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    dateRange: json['dateRange'] == null
        ? null
        : Period.fromJson(json['dateRange'] as Map<String, dynamic>),
    restoreDate: json['restoreDate'] == null
        ? null
        : DateTime.parse(json['restoreDate'] as String),
    elementRestoreDate: json['elementRestoreDate'] == null
        ? null
        : Element.fromJson(json['elementRestoreDate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MarketingStatusToJson(MarketingStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('country', instance.country?.toJson());
  writeNotNull('jurisdiction', instance.jurisdiction?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('dateRange', instance.dateRange?.toJson());
  writeNotNull('restoreDate', instance.restoreDate?.toIso8601String());
  writeNotNull('elementRestoreDate', instance.elementRestoreDate?.toJson());
  return val;
}
