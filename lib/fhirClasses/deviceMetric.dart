import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 92)
class DeviceMetric {

	static Future<DeviceMetric> newInstance({
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
		List<DeviceMetric_Calibration> calibration}) async {
	 return DeviceMetric(
			id: await newEntry('DeviceMetric'),
			meta: meta,
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
			calibration: calibration);
	}

  @HiveField(0)
  final String resourceType= 'DeviceMetric';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Identifier> identifier;
  @HiveField(12)
  CodeableConcept type;
  @HiveField(13)
  CodeableConcept unit;
  @HiveField(14)
  Reference source;
  @HiveField(15)
  Reference parent;
  @HiveField(16)
  String operationalStatus; // <code> enum: on/off/standby/entered-in-error;
  @HiveField(17)
  Element elementOperationalStatus;
  @HiveField(18)
  String color; // <code> enum: black/red/green/yellow/blue/magenta/cyan/white;
  @HiveField(19)
  Element elementColor;
  @HiveField(20)
  String category; // <code> enum: measurement/setting/calculation/unspecified;
  @HiveField(21)
  Element elementCategory;
  @HiveField(22)
  Timing measurementPeriod;
  @HiveField(23)
  List<DeviceMetric_Calibration> calibration;

DeviceMetric(
  {this.id,
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
    this.calibration
    });

  factory DeviceMetric.fromJson(Map<String, dynamic> json) => _$DeviceMetricFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceMetricToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		Element elementTime}) async {
	 return DeviceMetric_Calibration(
			id: await newEntry('DeviceMetric_Calibration'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			elementType: elementType,
			state: state,
			elementState: elementState,
			time: time,
			elementTime: elementTime);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type; // <code> enum: unspecified/offset/gain/two-point;
  Element elementType;
  String state; // <code> enum: not-calibrated/calibration-required/calibrated/unspecified;
  Element elementState;
  DateTime time;
  Element elementTime;

DeviceMetric_Calibration(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.state,
    this.elementState,
    this.time,
    this.elementTime
    });

  factory DeviceMetric_Calibration.fromJson(Map<String, dynamic> json) => _$DeviceMetric_CalibrationFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceMetric_CalibrationToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeviceMetricAdapter extends TypeAdapter<DeviceMetric> {
  @override
  final typeId = 92;

  @override
  DeviceMetric read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeviceMetric(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      type: fields[12] as CodeableConcept,
      unit: fields[13] as CodeableConcept,
      source: fields[14] as Reference,
      parent: fields[15] as Reference,
      operationalStatus: fields[16] as String,
      elementOperationalStatus: fields[17] as Element,
      color: fields[18] as String,
      elementColor: fields[19] as Element,
      category: fields[20] as String,
      elementCategory: fields[21] as Element,
      measurementPeriod: fields[22] as Timing,
      calibration: (fields[23] as List)?.cast<DeviceMetric_Calibration>(),
    );
  }

  @override
  void write(BinaryWriter writer, DeviceMetric obj) {
    writer
      ..writeByte(24)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.type)
      ..writeByte(13)
      ..write(obj.unit)
      ..writeByte(14)
      ..write(obj.source)
      ..writeByte(15)
      ..write(obj.parent)
      ..writeByte(16)
      ..write(obj.operationalStatus)
      ..writeByte(17)
      ..write(obj.elementOperationalStatus)
      ..writeByte(18)
      ..write(obj.color)
      ..writeByte(19)
      ..write(obj.elementColor)
      ..writeByte(20)
      ..write(obj.category)
      ..writeByte(21)
      ..write(obj.elementCategory)
      ..writeByte(22)
      ..write(obj.measurementPeriod)
      ..writeByte(23)
      ..write(obj.calibration);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceMetric _$DeviceMetricFromJson(Map<String, dynamic> json) {
  return DeviceMetric(
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
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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

Map<String, dynamic> _$DeviceMetricToJson(DeviceMetric instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'unit': instance.unit?.toJson(),
      'source': instance.source?.toJson(),
      'parent': instance.parent?.toJson(),
      'operationalStatus': instance.operationalStatus,
      'elementOperationalStatus': instance.elementOperationalStatus?.toJson(),
      'color': instance.color,
      'elementColor': instance.elementColor?.toJson(),
      'category': instance.category,
      'elementCategory': instance.elementCategory?.toJson(),
      'measurementPeriod': instance.measurementPeriod?.toJson(),
      'calibration': instance.calibration?.map((e) => e?.toJson())?.toList(),
    };

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
        DeviceMetric_Calibration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'state': instance.state,
      'elementState': instance.elementState?.toJson(),
      'time': instance.time?.toIso8601String(),
      'elementTime': instance.elementTime?.toJson(),
    };
