// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reference _$ReferenceFromJson(Map<String, dynamic> json) {
  return Reference(
    id: json['id'],
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: json['reference'],
    type: json['type'],
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    display: json['display'],
  )
    ..Canonical = json['Canonical']
    ..of = json['of']
    ..Definition = json['Definition']
    ..String = json['String'];
}

Map<String, dynamic> _$ReferenceToJson(Reference instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference,
      'Canonical': instance.Canonical,
      'of': instance.of,
      'Definition': instance.Definition,
      'String': instance.String,
      'type': instance.type,
      'identifier': instance.identifier?.toJson(),
      'display': instance.display,
    };
