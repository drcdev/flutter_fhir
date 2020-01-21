import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/reference.dart';

part 'annotation.g.dart';

@JsonSerializable(explicitToJson: true)
class Annotation {

  // author[x]: Individual responsible for the annotation. One of these 2:

  //Reference(Practitioner|Patient|RelatedPerson|Organization)
  Reference authorReference;
  String authorString;

  // When the annotation was made
  DateTime time;

  // R!  The annotation  - text content (as markdown)
  String text;

  Annotation({this.authorReference, this.authorString, this.time, this.text});

  factory Annotation.fromJson(Map<String, dynamic> json) => _$AnnotationFromJson(json);
  Map<String, dynamic> toJson() => _$AnnotationToJson(this);
}