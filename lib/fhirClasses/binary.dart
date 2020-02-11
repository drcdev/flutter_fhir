import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 64)
class Binary {

  //  This is a Binary resource
  @HiveField(0)
  final String resourceType= 'Binary';

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

  //  MimeType of the binary content represented as a standard MimeType (BCP
  // 13).
  @HiveField(7)
  String contentType;

  //  Extensions for contentType
  @HiveField(8)
  Element elementContentType;

  //  This element identifies another resource that can be used as a proxy
  // of the security sensitivity to use when deciding and enforcing access
  // control rules for the Binary resource. Given that the Binary resource
  // contains very few elements that can be used to determine the
  // sensitivity of the data and relationships to individuals, the
  // referenced resource stands in as a proxy equivalent for this purpose.
  // This referenced resource may be related to the Binary (e.g. Media,
  // DocumentReference), or may be some non-related Resource purely as a
  // security proxy. E.g. to identify that the binary resource relates to a
  // patient, and access should only be granted to applications that have
  // access to the patient.
  @HiveField(9)
  Reference securityContext;

  //  The actual content, base64 encoded.
  @HiveField(10)
  String data;

  //  Extensions for data
  @HiveField(11)
  Element elementData;

Binary(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.contentType,
    this.elementContentType,
    this.securityContext,
    this.data,
    this.elementData
    });

  factory Binary.fromJson(Map<String, dynamic> json) => _$BinaryFromJson(json);
  Map<String, dynamic> toJson() => _$BinaryToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BinaryAdapter extends TypeAdapter<Binary> {
  @override
  final typeId = 64;

  @override
  Binary read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Binary(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      contentType: fields[7] as String,
      elementContentType: fields[8] as Element,
      securityContext: fields[9] as Reference,
      data: fields[10] as String,
      elementData: fields[11] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Binary obj) {
    writer
      ..writeByte(12)
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
      ..write(obj.contentType)
      ..writeByte(8)
      ..write(obj.elementContentType)
      ..writeByte(9)
      ..write(obj.securityContext)
      ..writeByte(10)
      ..write(obj.data)
      ..writeByte(11)
      ..write(obj.elementData);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Binary _$BinaryFromJson(Map<String, dynamic> json) {
  return Binary(
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
    contentType: json['contentType'] as String,
    elementContentType: json['elementContentType'] == null
        ? null
        : Element.fromJson(json['elementContentType'] as Map<String, dynamic>),
    securityContext: json['securityContext'] == null
        ? null
        : Reference.fromJson(json['securityContext'] as Map<String, dynamic>),
    data: json['data'] as String,
    elementData: json['elementData'] == null
        ? null
        : Element.fromJson(json['elementData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BinaryToJson(Binary instance) => <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'contentType': instance.contentType,
      'elementContentType': instance.elementContentType?.toJson(),
      'securityContext': instance.securityContext?.toJson(),
      'data': instance.data,
      'elementData': instance.elementData?.toJson(),
    };
