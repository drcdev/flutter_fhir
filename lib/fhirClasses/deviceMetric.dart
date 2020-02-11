import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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
@HiveType(typeId: 221)
class DeviceMetric {

  //  This is a DeviceMetric resource
  @HiveField(0)
  final String resourceType= 'DeviceMetric';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  Unique instance identifiers assigned to a device by the device or
  // gateway software, manufacturers, other organizations or owners. For
  // example: handle ID.
  @HiveField(11)
  List<Identifier> identifier;

  //  Describes the type of the metric. For example: Heart Rate, PEEP
  // Setting, etc.
  @HiveField(12)
  CodeableConcept type;

  //  Describes the unit that an observed value determined for this metric
  // will have. For example: Percent, Seconds, etc.
  @HiveField(13)
  CodeableConcept unit;

  //  Describes the link to the  Device that this DeviceMetric belongs to
  // and that contains administrative device information such as
  // manufacturer, serial number, etc.
  @HiveField(14)
  Reference source;

  //  Describes the link to the  Device that this DeviceMetric belongs to
  // and that provide information about the location of this DeviceMetric in
  // the containment structure of the parent Device. An example would be a
  // Device that represents a Channel. This reference can be used by a
  // client application to distinguish DeviceMetrics that have the same
  // type, but should be interpreted based on their containment location.
  @HiveField(15)
  Reference parent;

  //  Indicates current operational state of the device. For example: On,
  // Off, Standby, etc.
  @HiveField(16)
  String operationalStatus; // <code> enum: on/off/standby/entered-in-error;

  //  Extensions for operationalStatus
  @HiveField(17)
  Element elementOperationalStatus;

  //  Describes the color representation for the metric. This is often used
  // to aid clinicians to track and identify parameter types by color. In
  // practice, consider a Patient Monitor that has ECG/HR and Pleth for
  // example; the parameters are displayed in different characteristic
  // colors, such as HR-blue, BP-green, and PR and SpO2- magenta.
  @HiveField(18)
  String color; // <code> enum: black/red/green/yellow/blue/magenta/cyan/white;

  //  Extensions for color
  @HiveField(19)
  Element elementColor;

  //  Indicates the category of the observation generation process. A
  // DeviceMetric can be for example a setting, measurement, or calculation.
  @HiveField(20)
  String category; // <code> enum: measurement/setting/calculation/unspecified;

  //  Extensions for category
  @HiveField(21)
  Element elementCategory;

  //  Describes the measurement repetition time. This is not necessarily the
  // same as the update period. The measurement repetition time can range
  // from milliseconds up to hours. An example for a measurement repetition
  // time in the range of milliseconds is the sampling rate of an ECG. An
  // example for a measurement repetition time in the range of hours is a
  // NIBP that is triggered automatically every hour. The update period may
  // be different than the measurement repetition time, if the device does
  // not update the published observed value with the same frequency as it
  // was measured.
  @HiveField(22)
  Timing measurementPeriod;

  //  Describes the calibrations that have been performed or that are
  // required to be performed.
  @HiveField(23)
  List<DeviceMetric_Calibration> calibration;

DeviceMetric(
  this.type,
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
@HiveType(typeId: 222)
class DeviceMetric_Calibration {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Describes the type of the calibration method.
  @HiveField(3)
  String type; // <code> enum: unspecified/offset/gain/two-point;

  //  Extensions for type
  @HiveField(4)
  Element elementType;

  //  Describes the state of the calibration.
  @HiveField(5)
  String state; // <code> enum: not-calibrated/calibration-required/calibrated/unspecified;

  //  Extensions for state
  @HiveField(6)
  Element elementState;

  //  Describes the time last calibration has been performed.
  @HiveField(7)
  DateTime time;

  //  Extensions for time
  @HiveField(8)
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
  final typeId = 221;

  @override
  DeviceMetric read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeviceMetric(
      fields[12] as CodeableConcept,
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

class DeviceMetric_CalibrationAdapter
    extends TypeAdapter<DeviceMetric_Calibration> {
  @override
  final typeId = 222;

  @override
  DeviceMetric_Calibration read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeviceMetric_Calibration(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      state: fields[5] as String,
      elementState: fields[6] as Element,
      time: fields[7] as DateTime,
      elementTime: fields[8] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, DeviceMetric_Calibration obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.elementType)
      ..writeByte(5)
      ..write(obj.state)
      ..writeByte(6)
      ..write(obj.elementState)
      ..writeByte(7)
      ..write(obj.time)
      ..writeByte(8)
      ..write(obj.elementTime);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceMetric _$DeviceMetricFromJson(Map<String, dynamic> json) {
  return DeviceMetric(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
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
