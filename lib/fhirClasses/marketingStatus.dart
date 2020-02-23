import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept country;
  @HiveField(4)
  CodeableConcept jurisdiction;
  @HiveField(5)
  CodeableConcept status;
  @HiveField(6)
  Period dateRange;
  @HiveField(7)
  DateTime restoreDate;
  @HiveField(8)
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

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MarketingStatusAdapter extends TypeAdapter<MarketingStatus> {
  @override
  MarketingStatus read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MarketingStatus(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      country: fields[3] as CodeableConcept,
      jurisdiction: fields[4] as CodeableConcept,
      status: fields[5] as CodeableConcept,
      dateRange: fields[6] as Period,
      restoreDate: fields[7] as DateTime,
      elementRestoreDate: fields[8] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, MarketingStatus obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.country)
      ..writeByte(4)
      ..write(obj.jurisdiction)
      ..writeByte(5)
      ..write(obj.status)
      ..writeByte(6)
      ..write(obj.dateRange)
      ..writeByte(7)
      ..write(obj.restoreDate)
      ..writeByte(8)
      ..write(obj.elementRestoreDate);
  }
}
