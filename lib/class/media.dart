import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'media.g.dart';

@JsonSerializable(explicitToJson: true)
class Media {
  String comment;
  Reference link;

  Media({this.comment, this.link});

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
  Map<String, dynamic> toJson() => _$MediaToJson(this);
}