import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 35)
class Signature {

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

  //  An indication of the reason that the entity signed this document. This
  // may be explicitly included as part of the signature information and can
  // be used when determining accountability for various actions concerning
  // the document.
  @HiveField(2)
  List<Coding> type;

  //  When the digital signature was signed.
  @HiveField(3)
  DateTime when;

  //  Extensions for when
  @HiveField(4)
  Element elementWhen;

  //  A reference to an application-usable description of the identity that
  // signed  (e.g. the signature used their private key).
  @HiveField(5)
  Reference who;

  //  A reference to an application-usable description of the identity that
  // is represented by the signature.
  @HiveField(6)
  Reference onBehalfOf;

  //  A mime type that indicates the technical format of the target
  // resources signed by the signature.
  @HiveField(7)
  String targetFormat;

  //  Extensions for targetFormat
  @HiveField(8)
  Element elementTargetFormat;

  //  A mime type that indicates the technical format of the signature.
  // Important mime types are application/signature+xml for X ML DigSig,
  // application/jose for JWS, and image/* for a graphical image of a
  // signature, etc.
  @HiveField(9)
  String sigFormat;

  //  Extensions for sigFormat
  @HiveField(10)
  Element elementSigFormat;

  //  The base64 encoding of the Signature content. When signature is not
  // recorded electronically this element would be empty.
  @HiveField(11)
  String data;

  //  Extensions for data
  @HiveField(12)
  Element elementData;

Signature(
  this.type,
    this.who,
    {this.id,
    this.extension,
    this.when,
    this.elementWhen,
    this.onBehalfOf,
    this.targetFormat,
    this.elementTargetFormat,
    this.sigFormat,
    this.elementSigFormat,
    this.data,
    this.elementData
    });

  factory Signature.fromJson(Map<String, dynamic> json) => _$SignatureFromJson(json);
  Map<String, dynamic> toJson() => _$SignatureToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SignatureAdapter extends TypeAdapter<Signature> {
  @override
  final typeId = 35;

  @override
  Signature read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Signature(
      (fields[2] as List)?.cast<Coding>(),
      fields[5] as Reference,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      when: fields[3] as DateTime,
      elementWhen: fields[4] as Element,
      onBehalfOf: fields[6] as Reference,
      targetFormat: fields[7] as String,
      elementTargetFormat: fields[8] as Element,
      sigFormat: fields[9] as String,
      elementSigFormat: fields[10] as Element,
      data: fields[11] as String,
      elementData: fields[12] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Signature obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.when)
      ..writeByte(4)
      ..write(obj.elementWhen)
      ..writeByte(5)
      ..write(obj.who)
      ..writeByte(6)
      ..write(obj.onBehalfOf)
      ..writeByte(7)
      ..write(obj.targetFormat)
      ..writeByte(8)
      ..write(obj.elementTargetFormat)
      ..writeByte(9)
      ..write(obj.sigFormat)
      ..writeByte(10)
      ..write(obj.elementSigFormat)
      ..writeByte(11)
      ..write(obj.data)
      ..writeByte(12)
      ..write(obj.elementData);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Signature _$SignatureFromJson(Map<String, dynamic> json) {
  return Signature(
    (json['type'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['who'] == null
        ? null
        : Reference.fromJson(json['who'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    when: json['when'] == null ? null : DateTime.parse(json['when'] as String),
    elementWhen: json['elementWhen'] == null
        ? null
        : Element.fromJson(json['elementWhen'] as Map<String, dynamic>),
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
