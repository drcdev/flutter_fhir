import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 36)
class HumanName {

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

  //  Identifies the purpose for this name.
  @HiveField(2)
  String use; // <code> enum: usual/official/temp/nickname/anonymous/old/maiden;

  //  Extensions for use
  @HiveField(3)
  Element elementUse;

  //  Specifies the entire name as it should be displayed e.g. on an
  // application UI. This may be provided instead of or as well as the
  // specific parts.
  @HiveField(4)
  String text;

  //  Extensions for text
  @HiveField(5)
  Element elementText;

  //  The part of a name that links to the genealogy. In some cultures (e.g.
  // Eritrea) the family name of a son is the first name of his father.
  @HiveField(6)
  String family;

  //  Extensions for family
  @HiveField(7)
  Element elementFamily;

  //  Given name.
  @HiveField(8)
  List<String> given;

  //  Extensions for given
  @HiveField(9)
  List<Element> elementGiven;

  //  Part of the name that is acquired as a title due to academic, legal,
  // employment or nobility status, etc. and that appears at the start of
  // the name.
  @HiveField(10)
  List<String> prefix;

  //  Extensions for prefix
  @HiveField(11)
  List<Element> elementPrefix;

  //  Part of the name that is acquired as a title due to academic, legal,
  // employment or nobility status, etc. and that appears at the end of the
  // name.
  @HiveField(12)
  List<String> suffix;

  //  Extensions for suffix
  @HiveField(13)
  List<Element> elementSuffix;

  //  Indicates the period of time when this name was valid for the named
  // person.
  @HiveField(14)
  Period period;

HumanName(
  {this.id,
    this.extension,
    this.use,
    this.elementUse,
    this.text,
    this.elementText,
    this.family,
    this.elementFamily,
    this.given,
    this.elementGiven,
    this.prefix,
    this.elementPrefix,
    this.suffix,
    this.elementSuffix,
    this.period
    });

  factory HumanName.fromJson(Map<String, dynamic> json) => _$HumanNameFromJson(json);
  Map<String, dynamic> toJson() => _$HumanNameToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HumanNameAdapter extends TypeAdapter<HumanName> {
  @override
  final typeId = 36;

  @override
  HumanName read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HumanName(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      use: fields[2] as String,
      elementUse: fields[3] as Element,
      text: fields[4] as String,
      elementText: fields[5] as Element,
      family: fields[6] as String,
      elementFamily: fields[7] as Element,
      given: (fields[8] as List)?.cast<String>(),
      elementGiven: (fields[9] as List)?.cast<Element>(),
      prefix: (fields[10] as List)?.cast<String>(),
      elementPrefix: (fields[11] as List)?.cast<Element>(),
      suffix: (fields[12] as List)?.cast<String>(),
      elementSuffix: (fields[13] as List)?.cast<Element>(),
      period: fields[14] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, HumanName obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.use)
      ..writeByte(3)
      ..write(obj.elementUse)
      ..writeByte(4)
      ..write(obj.text)
      ..writeByte(5)
      ..write(obj.elementText)
      ..writeByte(6)
      ..write(obj.family)
      ..writeByte(7)
      ..write(obj.elementFamily)
      ..writeByte(8)
      ..write(obj.given)
      ..writeByte(9)
      ..write(obj.elementGiven)
      ..writeByte(10)
      ..write(obj.prefix)
      ..writeByte(11)
      ..write(obj.elementPrefix)
      ..writeByte(12)
      ..write(obj.suffix)
      ..writeByte(13)
      ..write(obj.elementSuffix)
      ..writeByte(14)
      ..write(obj.period);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HumanName _$HumanNameFromJson(Map<String, dynamic> json) {
  return HumanName(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    family: json['family'] as String,
    elementFamily: json['elementFamily'] == null
        ? null
        : Element.fromJson(json['elementFamily'] as Map<String, dynamic>),
    given: (json['given'] as List)?.map((e) => e as String)?.toList(),
    elementGiven: (json['elementGiven'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prefix: (json['prefix'] as List)?.map((e) => e as String)?.toList(),
    elementPrefix: (json['elementPrefix'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    suffix: (json['suffix'] as List)?.map((e) => e as String)?.toList(),
    elementSuffix: (json['elementSuffix'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HumanNameToJson(HumanName instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'use': instance.use,
      'elementUse': instance.elementUse?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'family': instance.family,
      'elementFamily': instance.elementFamily?.toJson(),
      'given': instance.given,
      'elementGiven': instance.elementGiven?.map((e) => e?.toJson())?.toList(),
      'prefix': instance.prefix,
      'elementPrefix':
          instance.elementPrefix?.map((e) => e?.toJson())?.toList(),
      'suffix': instance.suffix,
      'elementSuffix':
          instance.elementSuffix?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
    };
