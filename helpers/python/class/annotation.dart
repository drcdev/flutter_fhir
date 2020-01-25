

part 'annotation.g.dart';

@JsonSerializable(explicitToJson: true)
class Annotation {

  String id;
  List<Extension> extension;
  Reference authorReference;
  String authorString;
  Element _authorString;
  StringTime time;
  Element _time;
  String text;
  Element _text;


Annotation(
      {this.id,
this.extension,
this.authorReference,
this.authorString,
this._authorString,
this.time,
this._time,
this.text,
this._text});

  factory Annotation.fromJson(Map<String, dynamic> json) => _$AnnotationFromJson(json);
  Map<String, dynamic> toJson() => _$AnnotationToJson(this);
}