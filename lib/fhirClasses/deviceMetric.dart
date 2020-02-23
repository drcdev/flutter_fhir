import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class DeviceMetric {
  static Future<DeviceMetric> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    Narrative text,
    List<dynamic> contained,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Identifier> identifier,
    CodeableConcept type,
    CodeableConcept unit,
    Reference source,
    Reference parent,
    String operationalStatus,
    Element elementOperationalStatus,
    String color,
    Element elementColor,
    String category,
    Element elementCategory,
    Timing measurementPeriod,
    List<DeviceMetric_Calibration> calibration,
  }) async {
    var fhirDb = new DatabaseHelper();
    DeviceMetric newDeviceMetric = new DeviceMetric(
      resourceType: 'DeviceMetric',
      id: id ?? await fhirDb.newResourceId('DeviceMetric'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      type: type,
      unit: unit,
      source: source,
      parent: parent,
      operationalStatus: operationalStatus,
      elementOperationalStatus: elementOperationalStatus,
      color: color,
      elementColor: elementColor,
      category: category,
      elementCategory: elementCategory,
      measurementPeriod: measurementPeriod,
      calibration: calibration,
    );
    newDeviceMetric.meta.createdAt = DateTime.now();
    newDeviceMetric.meta.lastUpdated = newDeviceMetric.meta.createdAt;
    int saved = await fhirDb.saveResource(newDeviceMetric);
    return newDeviceMetric;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'DeviceMetric';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  CodeableConcept type;
  CodeableConcept unit;
  Reference source;
  Reference parent;
  String operationalStatus;
  Element elementOperationalStatus;
  String color;
  Element elementColor;
  String category;
  Element elementCategory;
  Timing measurementPeriod;
  List<DeviceMetric_Calibration> calibration;

  DeviceMetric({
    @required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    @required this.type,
    this.unit,
    this.source,
    this.parent,
    this.operationalStatus,
    this.elementOperationalStatus,
    this.color,
    this.elementColor,
    this.category,
    this.elementCategory,
    this.measurementPeriod,
    this.calibration,
  });

  factory DeviceMetric.fromJson(Map<String, dynamic> json) =>
      _$DeviceMetricFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceMetricToJson(this);
}

class DeviceMetric_Calibration {
  static Future<DeviceMetric_Calibration> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String type,
    Element elementType,
    String state,
    Element elementState,
    DateTime time,
    Element elementTime,
  }) async {
    var fhirDb = new DatabaseHelper();
    DeviceMetric_Calibration newDeviceMetric_Calibration =
        new DeviceMetric_Calibration(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      state: state,
      elementState: elementState,
      time: time,
      elementTime: elementTime,
    );
    return newDeviceMetric_Calibration;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element elementType;
  String state;
  Element elementState;
  DateTime time;
  Element elementTime;

  DeviceMetric_Calibration({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.state,
    this.elementState,
    this.time,
    this.elementTime,
  });

  factory DeviceMetric_Calibration.fromJson(Map<String, dynamic> json) =>
      _$DeviceMetric_CalibrationFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceMetric_CalibrationToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceMetric _$DeviceMetricFromJson(Map<String, dynamic> json) {
  return DeviceMetric(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    unit: json['unit'] == null
        ? null
        : CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>),
    source: json['source'] == null
        ? null
        : Reference.fromJson(json['source'] as Map<String, dynamic>),
    parent: json['parent'] == null
        ? null
        : Reference.fromJson(json['parent'] as Map<String, dynamic>),
    operationalStatus: json['operationalStatus'] as String,
    elementOperationalStatus: json['elementOperationalStatus'] == null
        ? null
        : Element.fromJson(
            json['elementOperationalStatus'] as Map<String, dynamic>),
    color: json['color'] as String,
    elementColor: json['elementColor'] == null
        ? null
        : Element.fromJson(json['elementColor'] as Map<String, dynamic>),
    category: json['category'] as String,
    elementCategory: json['elementCategory'] == null
        ? null
        : Element.fromJson(json['elementCategory'] as Map<String, dynamic>),
    measurementPeriod: json['measurementPeriod'] == null
        ? null
        : Timing.fromJson(json['measurementPeriod'] as Map<String, dynamic>),
    calibration: (json['calibration'] as List)
        ?.map((e) => e == null
            ? null
            : DeviceMetric_Calibration.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DeviceMetricToJson(DeviceMetric instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('unit', instance.unit?.toJson());
  writeNotNull('source', instance.source?.toJson());
  writeNotNull('parent', instance.parent?.toJson());
  writeNotNull('operationalStatus', instance.operationalStatus);
  writeNotNull(
      'elementOperationalStatus', instance.elementOperationalStatus?.toJson());
  writeNotNull('color', instance.color);
  writeNotNull('elementColor', instance.elementColor?.toJson());
  writeNotNull('category', instance.category);
  writeNotNull('elementCategory', instance.elementCategory?.toJson());
  writeNotNull('measurementPeriod', instance.measurementPeriod?.toJson());
  writeNotNull(
      'calibration', instance.calibration?.map((e) => e?.toJson())?.toList());
  return val;
}

DeviceMetric_Calibration _$DeviceMetric_CalibrationFromJson(
    Map<String, dynamic> json) {
  return DeviceMetric_Calibration(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    state: json['state'] as String,
    elementState: json['elementState'] == null
        ? null
        : Element.fromJson(json['elementState'] as Map<String, dynamic>),
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
    elementTime: json['elementTime'] == null
        ? null
        : Element.fromJson(json['elementTime'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeviceMetric_CalibrationToJson(
    DeviceMetric_Calibration instance) {
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
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('state', instance.state);
  writeNotNull('elementState', instance.elementState?.toJson());
  writeNotNull('time', instance.time?.toIso8601String());
  writeNotNull('elementTime', instance.elementTime?.toJson());
  return val;
}
