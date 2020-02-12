import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 41)
class ContactDetail {

	static Future<ContactDetail> newInstance({
		String id,
		List<Extension> extension,
		String name,
		Element elementName,
		List<ContactPoint> telecom}) async {
	ContactDetail newContactDetail = new ContactDetail(
			id: await newId('ContactDetail'),
			extension: extension,
			name: name,
			elementName: elementName,
			telecom: telecom);
	var contactDetailBox = await Hive.openBox<ContactDetail>('ContactDetailBox');
	contactDetailBox.put(newContactDetail.id, newContactDetail);
	return newContactDetail;
}
  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  String name;
  @HiveField(3)
  Element elementName;
  @HiveField(4)
  List<ContactPoint> telecom;

ContactDetail(
  {this.id,
    this.extension,
    this.name,
    this.elementName,
    this.telecom
    });

  factory ContactDetail.fromJson(Map<String, dynamic> json) => _$ContactDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ContactDetailToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContactDetailAdapter extends TypeAdapter<ContactDetail> {
  @override
  final typeId = 41;

  @override
  ContactDetail read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ContactDetail(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      name: fields[2] as String,
      elementName: fields[3] as Element,
      telecom: (fields[4] as List)?.cast<ContactPoint>(),
    );
  }

  @override
  void write(BinaryWriter writer, ContactDetail obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.elementName)
      ..writeByte(4)
      ..write(obj.telecom);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactDetail _$ContactDetailFromJson(Map<String, dynamic> json) {
  return ContactDetail(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    telecom: (json['telecom'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ContactDetailToJson(ContactDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
    };
