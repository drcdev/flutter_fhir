// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contactDetail.dart';

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
