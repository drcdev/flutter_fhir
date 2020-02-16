import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class Signature {
  static Future<Signature> newInstance(
      {String id,
      List<Extension> extension,
      List<Coding> type,
      DateTime when,
      Element elementWhen,
      Reference who,
      Reference onBehalfOf,
      String targetFormat,
      Element elementTargetFormat,
      String sigFormat,
      Element elementSigFormat,
      String data,
      Element elementData}) async {
    var fhirDb = new DatabaseHelper();
    Signature newSignature = new Signature(
      id: await fhirDb.newResourceId('Signature'),
      extension: extension,
      type: type,
      when: when,
      elementWhen: elementWhen,
      who: who,
      onBehalfOf: onBehalfOf,
      targetFormat: targetFormat,
      elementTargetFormat: elementTargetFormat,
      sigFormat: sigFormat,
      elementSigFormat: elementSigFormat,
      data: data,
      elementData: elementData,
    );
    return newSignature;
  }

  String id;
  List<Extension> extension;
  List<Coding> type;
  DateTime when;
  Element elementWhen;
  Reference who;
  Reference onBehalfOf;
  String targetFormat;
  Element elementTargetFormat;
  String sigFormat;
  Element elementSigFormat;
  String data;
  Element elementData;

  Signature(
      {this.id,
      this.extension,
      @required this.type,
      this.when,
      this.elementWhen,
      @required this.who,
      this.onBehalfOf,
      this.targetFormat,
      this.elementTargetFormat,
      this.sigFormat,
      this.elementSigFormat,
      this.data,
      this.elementData});

  factory Signature.fromJson(Map<String, dynamic> json) =>
      _$SignatureFromJson(json);
  Map<String, dynamic> toJson() => _$SignatureToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Signature _$SignatureFromJson(Map<String, dynamic> json) {
  return Signature(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: (json['type'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    when: json['when'] == null ? null : DateTime.parse(json['when'] as String),
    elementWhen: json['elementWhen'] == null
        ? null
        : Element.fromJson(json['elementWhen'] as Map<String, dynamic>),
    who: json['who'] == null
        ? null
        : Reference.fromJson(json['who'] as Map<String, dynamic>),
    onBehalfOf: json['onBehalfOf'] == null
        ? null
        : Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>),
    targetFormat: json['targetFormat'] as String,
    elementTargetFormat: json['elementTargetFormat'] == null
        ? null
        : Element.fromJson(json['elementTargetFormat'] as Map<String, dynamic>),
    sigFormat: json['sigFormat'] as String,
    elementSigFormat: json['elementSigFormat'] == null
        ? null
        : Element.fromJson(json['elementSigFormat'] as Map<String, dynamic>),
    data: json['data'] as String,
    elementData: json['elementData'] == null
        ? null
        : Element.fromJson(json['elementData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SignatureToJson(Signature instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'when': instance.when?.toIso8601String(),
      'elementWhen': instance.elementWhen?.toJson(),
      'who': instance.who?.toJson(),
      'onBehalfOf': instance.onBehalfOf?.toJson(),
      'targetFormat': instance.targetFormat,
      'elementTargetFormat': instance.elementTargetFormat?.toJson(),
      'sigFormat': instance.sigFormat,
      'elementSigFormat': instance.elementSigFormat?.toJson(),
      'data': instance.data,
      'elementData': instance.elementData?.toJson(),
    };
