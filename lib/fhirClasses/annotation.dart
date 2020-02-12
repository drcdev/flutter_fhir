import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 19)
class Annotation {

	static Future<Annotation> newInstance({
		String id,
		List<Extension> extension,
		Reference authorReference,
		String authorString,
		Element elementAuthorString,
		DateTime time,
		Element elementTime,
		String text,
		Element elementText}) async {
	Annotation newAnnotation = new Annotation(
			id: await newId('Annotation'),
			extension: extension,
			authorReference: authorReference,
			authorString: authorString,
			elementAuthorString: elementAuthorString,
			time: time,
			elementTime: elementTime,
			text: text,
			elementText: elementText);
	var annotationBox = await Hive.openBox<Annotation>('AnnotationBox');
	annotationBox.put(newAnnotation.id, newAnnotation);
	return newAnnotation;
}
  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  Reference authorReference;
  @HiveField(3)
  String authorString; //  pattern: ^[ \r\n\t\S]+$
  @HiveField(4)
  Element elementAuthorString;
  @HiveField(5)
  DateTime time;
  @HiveField(6)
  Element elementTime;
  @HiveField(7)
  String text;
  @HiveField(8)
  Element elementText;

Annotation(
  {this.id,
    this.extension,
    this.authorReference,
    this.authorString,
    this.elementAuthorString,
    this.time,
    this.elementTime,
    this.text,
    this.elementText
    });

  factory Annotation.fromJson(Map<String, dynamic> json) => _$AnnotationFromJson(json);
  Map<String, dynamic> toJson() => _$AnnotationToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AnnotationAdapter extends TypeAdapter<Annotation> {
  @override
  final typeId = 19;

  @override
  Annotation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Annotation(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      authorReference: fields[2] as Reference,
      authorString: fields[3] as String,
      elementAuthorString: fields[4] as Element,
      time: fields[5] as DateTime,
      elementTime: fields[6] as Element,
      text: fields[7] as String,
      elementText: fields[8] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Annotation obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.authorReference)
      ..writeByte(3)
      ..write(obj.authorString)
      ..writeByte(4)
      ..write(obj.elementAuthorString)
      ..writeByte(5)
      ..write(obj.time)
      ..writeByte(6)
      ..write(obj.elementTime)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.elementText);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Annotation _$AnnotationFromJson(Map<String, dynamic> json) {
  return Annotation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authorReference: json['authorReference'] == null
        ? null
        : Reference.fromJson(json['authorReference'] as Map<String, dynamic>),
    authorString: json['authorString'] as String,
    elementAuthorString: json['elementAuthorString'] == null
        ? null
        : Element.fromJson(json['elementAuthorString'] as Map<String, dynamic>),
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
    elementTime: json['elementTime'] == null
        ? null
        : Element.fromJson(json['elementTime'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AnnotationToJson(Annotation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'authorReference': instance.authorReference?.toJson(),
      'authorString': instance.authorString,
      'elementAuthorString': instance.elementAuthorString?.toJson(),
      'time': instance.time?.toIso8601String(),
      'elementTime': instance.elementTime?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
    };
