// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Education _$EducationFromJson(Map<String, dynamic> json) {
  return Education(
    documentType: json['documentType'] as String,
    reference: json['reference'] as String,
    publicationDate: json['publicationDate'] == null
        ? null
        : DateTime.parse(json['publicationDate'] as String),
    presentationDate: json['presentationDate'] == null
        ? null
        : DateTime.parse(json['presentationDate'] as String),
  );
}

Map<String, dynamic> _$EducationToJson(Education instance) => <String, dynamic>{
      'documentType': instance.documentType,
      'reference': instance.reference,
      'publicationDate': instance.publicationDate?.toIso8601String(),
      'presentationDate': instance.presentationDate?.toIso8601String(),
    };
