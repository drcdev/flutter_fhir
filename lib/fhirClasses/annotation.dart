import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

part 'annotation.g.dart';

@JsonSerializable(explicitToJson: true)
class Annotation {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  The individual responsible for making the annotation.
  Reference authorReference;

  //  The individual responsible for making the annotation.
  String authorString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for authorString
  Element elementAuthorString;

  //  Indicates when this particular annotation was made.
  DateTime time;

  //  Extensions for time
  Element elementTime;

  //  The text of the annotation in markdown format.
  String text;

  //  Extensions for text
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
