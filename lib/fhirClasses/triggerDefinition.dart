import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class TriggerDefinition {
  static Future<TriggerDefinition> newInstance({
    String id,
    List<Extension> extension,
    String type,
    Element elementType,
    String name,
    Element elementName,
    Timing timingTiming,
    Reference timingReference,
    String timingDate,
    Element elementTimingDate,
    String timingDateTime,
    Element elementTimingDateTime,
    List<DataRequirement> data,
    Expression condition,
  }) async {
    var fhirDb = new DatabaseHelper();
    TriggerDefinition newTriggerDefinition = new TriggerDefinition(
      id: id ?? await fhirDb.newResourceId('TriggerDefinition'),
      extension: extension,
      type: type,
      elementType: elementType,
      name: name,
      elementName: elementName,
      timingTiming: timingTiming,
      timingReference: timingReference,
      timingDate: timingDate,
      elementTimingDate: elementTimingDate,
      timingDateTime: timingDateTime,
      elementTimingDateTime: elementTimingDateTime,
      data: data,
      condition: condition,
    );
    return newTriggerDefinition;
  }

  String id;
  List<Extension> extension;
  String type;
  Element elementType;
  String name;
  Element elementName;
  Timing timingTiming;
  Reference timingReference;
  String timingDate;
  Element elementTimingDate;
  String timingDateTime;
  Element elementTimingDateTime;
  List<DataRequirement> data;
  Expression condition;

  TriggerDefinition({
    this.id,
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
    this.condition,
  });

  factory TriggerDefinition.fromJson(Map<String, dynamic> json) =>
      _$TriggerDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$TriggerDefinitionToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
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
