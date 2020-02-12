import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 31)
class Period {

	static Future<Period> newInstance({
		String id,
		List<Extension> extension,
		DateTime start,
		Element elementStart,
		DateTime end,
		Element elementEnd}) async {
	Period newPeriod = new Period(
			id: await newId('Period'),
			extension: extension,
			start: start,
			elementStart: elementStart,
			end: end,
			elementEnd: elementEnd);
	var periodBox = await Hive.openBox<Period>('PeriodBox');
	periodBox.add(newPeriod);
	return newPeriod;
}
  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  DateTime start;
  @HiveField(3)
  Element elementStart;
  @HiveField(4)
  DateTime end;
  @HiveField(5)
  Element elementEnd;

Period(
  {this.id,
    this.extension,
    this.start,
    this.elementStart,
    this.end,
    this.elementEnd
    });

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);
  Map<String, dynamic> toJson() => _$PeriodToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PeriodAdapter extends TypeAdapter<Period> {
  @override
  final typeId = 31;

  @override
  Period read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Period(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      start: fields[2] as DateTime,
      elementStart: fields[3] as Element,
      end: fields[4] as DateTime,
      elementEnd: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Period obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.start)
      ..writeByte(3)
      ..write(obj.elementStart)
      ..writeByte(4)
      ..write(obj.end)
      ..writeByte(5)
      ..write(obj.elementEnd);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Period _$PeriodFromJson(Map<String, dynamic> json) {
  return Period(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    start:
        json['start'] == null ? null : DateTime.parse(json['start'] as String),
    elementStart: json['elementStart'] == null
        ? null
        : Element.fromJson(json['elementStart'] as Map<String, dynamic>),
    end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    elementEnd: json['elementEnd'] == null
        ? null
        : Element.fromJson(json['elementEnd'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PeriodToJson(Period instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'start': instance.start?.toIso8601String(),
      'elementStart': instance.elementStart?.toJson(),
      'end': instance.end?.toIso8601String(),
      'elementEnd': instance.elementEnd?.toJson(),
    };
