import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'annotation.g.dart';

@JsonSerializable(explicitToJson: true)
class Annotation {
  Reference authorReference;
  String authorString;
  DateTime time;
  String text;

  Annotation({this.authorReference, this.authorString, this.time, this.text});

  factory Annotation.fromJson(Map<String, dynamic> json) => _$AnnotationFromJson(json);
  Map<String, dynamic> toJson() => _$AnnotationToJson(this);
}