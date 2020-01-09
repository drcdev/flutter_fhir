import 'package:flutter_fhir/class/identifier.dart';
import 'package:json_annotation/json_annotation.dart';
part 'reference.g.dart';

@JsonSerializable(explicitToJson: true)
class Reference {
  String reference;
  String type;
  Identifier identifier;
  String display;

  Reference({this.reference, this.type, this.identifier, this.display});
  
  factory Reference.fromJson(Map<String, dynamic> json) => _$ReferenceFromJson(json);
  Map<String, dynamic> toJson() => _$ReferenceToJson(this);
}