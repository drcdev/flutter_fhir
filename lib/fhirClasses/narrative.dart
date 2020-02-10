import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class Narrative {
  String id;
  List<Extension> extension;
  String status; // <code> enum: generated/extensions/additional/empty;
  Element elementStatus;
  String div;

Narrative(
  this.div,
    {this.id,
    this.extension,
    this.status,
    this.elementStatus
    });

  factory Narrative.fromJson(Map<String, dynamic> json) => _$NarrativeFromJson(json);
  Map<String, dynamic> toJson() => _$NarrativeToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Narrative _$NarrativeFromJson(Map<String, dynamic> json) {
  return Narrative(
    json['div'] as String,
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NarrativeToJson(Narrative instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'div': instance.div,
    };
