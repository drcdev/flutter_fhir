import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 38)
class ContactPoint {

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

  //  Telecommunications form for contact point - what communications system
  // is required to make use of the contact.
  @HiveField(2)
  String system; // <code> enum: phone/fax/email/pager/url/sms/other;

  //  Extensions for system
  @HiveField(3)
  Element elementSystem;

  //  The actual contact point details, in a form that is meaningful to the
  // designated communication system (i.e. phone number or email address).
  @HiveField(4)
  String value;

  //  Extensions for value
  @HiveField(5)
  Element elementValue;

  //  Identifies the purpose for the contact point.
  @HiveField(6)
  String use; // <code> enum: home/work/temp/old/mobile;

  //  Extensions for use
  @HiveField(7)
  Element elementUse;

  //  Specifies a preferred order in which to use a set of contacts.
  // ContactPoints with lower rank values are more preferred than those with
  // higher rank values.
  @HiveField(8)
  int rank;

  //  Extensions for rank
  @HiveField(9)
  Element elementRank;

  //  Time period when the contact point was/is in use.
  @HiveField(10)
  Period period;

ContactPoint(
  {this.id,
    this.extension,
    this.system,
    this.elementSystem,
    this.value,
    this.elementValue,
    this.use,
    this.elementUse,
    this.rank,
    this.elementRank,
    this.period
    });

  factory ContactPoint.fromJson(Map<String, dynamic> json) => _$ContactPointFromJson(json);
  Map<String, dynamic> toJson() => _$ContactPointToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContactPointAdapter extends TypeAdapter<ContactPoint> {
  @override
  final typeId = 38;

  @override
  ContactPoint read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ContactPoint(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      system: fields[2] as String,
      elementSystem: fields[3] as Element,
      value: fields[4] as String,
      elementValue: fields[5] as Element,
      use: fields[6] as String,
      elementUse: fields[7] as Element,
      rank: fields[8] as int,
      elementRank: fields[9] as Element,
      period: fields[10] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, ContactPoint obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.system)
      ..writeByte(3)
      ..write(obj.elementSystem)
      ..writeByte(4)
      ..write(obj.value)
      ..writeByte(5)
      ..write(obj.elementValue)
      ..writeByte(6)
      ..write(obj.use)
      ..writeByte(7)
      ..write(obj.elementUse)
      ..writeByte(8)
      ..write(obj.rank)
      ..writeByte(9)
      ..write(obj.elementRank)
      ..writeByte(10)
      ..write(obj.period);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactPoint _$ContactPointFromJson(Map<String, dynamic> json) {
  return ContactPoint(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] as String,
    elementSystem: json['elementSystem'] == null
        ? null
        : Element.fromJson(json['elementSystem'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    rank: json['rank'] as int,
    elementRank: json['elementRank'] == null
        ? null
        : Element.fromJson(json['elementRank'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ContactPointToJson(ContactPoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'system': instance.system,
      'elementSystem': instance.elementSystem?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
      'use': instance.use,
      'elementUse': instance.elementUse?.toJson(),
      'rank': instance.rank,
      'elementRank': instance.elementRank?.toJson(),
      'period': instance.period?.toJson(),
    };
