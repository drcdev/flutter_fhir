import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 46)
class TriggerDefinition {

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

  //  The type of triggering event.
  @HiveField(2)
  String type; // <code> enum: named-event/periodic/data-changed/data-added/data-modified/data-removed/data-accessed/data-access-ended;

  //  Extensions for type
  @HiveField(3)
  Element elementType;

  //  A formal name for the event. This may be an absolute URI that
  // identifies the event formally (e.g. from a trigger registry), or a
  // simple relative URI that identifies the event in a local context.
  @HiveField(4)
  String name;

  //  Extensions for name
  @HiveField(5)
  Element elementName;

  //  The timing of the event (if this is a periodic trigger).
  @HiveField(6)
  Timing timingTiming;

  //  The timing of the event (if this is a periodic trigger).
  @HiveField(7)
  Reference timingReference;

  //  The timing of the event (if this is a periodic trigger).
  @HiveField(8)
  String timingDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for timingDate
  @HiveField(9)
  Element elementTimingDate;

  //  The timing of the event (if this is a periodic trigger).
  @HiveField(10)
  String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for timingDateTime
  @HiveField(11)
  Element elementTimingDateTime;

  //  The triggering data of the event (if this is a data trigger). If more
  // than one data is requirement is specified, then all the data
  // requirements must be true.
  @HiveField(12)
  List<DataRequirement> data;

  //  A boolean-valued expression that is evaluated in the context of the
  // container of the trigger definition and returns whether or not the
  // trigger fires.
  @HiveField(13)
  Expression condition;

TriggerDefinition(
  {this.id,
    this.extension,
    this.type,
    this.elementType,
    this.name,
    this.elementName,
    this.timingTiming,
    this.timingReference,
    this.timingDate,
    this.elementTimingDate,
    this.timingDateTime,
    this.elementTimingDateTime,
    this.data,
    this.condition
    });

  factory TriggerDefinition.fromJson(Map<String, dynamic> json) => _$TriggerDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$TriggerDefinitionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TriggerDefinitionAdapter extends TypeAdapter<TriggerDefinition> {
  @override
  final typeId = 46;

  @override
  TriggerDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TriggerDefinition(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      type: fields[2] as String,
      elementType: fields[3] as Element,
      name: fields[4] as String,
      elementName: fields[5] as Element,
      timingTiming: fields[6] as Timing,
      timingReference: fields[7] as Reference,
      timingDate: fields[8] as String,
      elementTimingDate: fields[9] as Element,
      timingDateTime: fields[10] as String,
      elementTimingDateTime: fields[11] as Element,
      data: (fields[12] as List)?.cast<DataRequirement>(),
      condition: fields[13] as Expression,
    );
  }

  @override
  void write(BinaryWriter writer, TriggerDefinition obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.elementType)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.elementName)
      ..writeByte(6)
      ..write(obj.timingTiming)
      ..writeByte(7)
      ..write(obj.timingReference)
      ..writeByte(8)
      ..write(obj.timingDate)
      ..writeByte(9)
      ..write(obj.elementTimingDate)
      ..writeByte(10)
      ..write(obj.timingDateTime)
      ..writeByte(11)
      ..write(obj.elementTimingDateTime)
      ..writeByte(12)
      ..write(obj.data)
      ..writeByte(13)
      ..write(obj.condition);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TriggerDefinition _$TriggerDefinitionFromJson(Map<String, dynamic> json) {
  return TriggerDefinition(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    timingTiming: json['timingTiming'] == null
        ? null
        : Timing.fromJson(json['timingTiming'] as Map<String, dynamic>),
    timingReference: json['timingReference'] == null
        ? null
        : Reference.fromJson(json['timingReference'] as Map<String, dynamic>),
    timingDate: json['timingDate'] as String,
    elementTimingDate: json['elementTimingDate'] == null
        ? null
        : Element.fromJson(json['elementTimingDate'] as Map<String, dynamic>),
    timingDateTime: json['timingDateTime'] as String,
    elementTimingDateTime: json['elementTimingDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementTimingDateTime'] as Map<String, dynamic>),
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : DataRequirement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: json['condition'] == null
        ? null
        : Expression.fromJson(json['condition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TriggerDefinitionToJson(TriggerDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'timingTiming': instance.timingTiming?.toJson(),
      'timingReference': instance.timingReference?.toJson(),
      'timingDate': instance.timingDate,
      'elementTimingDate': instance.elementTimingDate?.toJson(),
      'timingDateTime': instance.timingDateTime,
      'elementTimingDateTime': instance.elementTimingDateTime?.toJson(),
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition?.toJson(),
    };
