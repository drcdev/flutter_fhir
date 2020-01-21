import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/identifier.dart';

part 'reference.g.dart';

@JsonSerializable(explicitToJson: true)
class Reference {

  // C? Literal reference, Relative, internal or absolute URL
  String reference;

  // Type the reference refers to (e.g. "Patient")
  String type;

  // Logical reference, when literal reference is not known
  Identifier identifier;

  // Text alternative for the resource
  String display;

  Reference({this.reference, this.type, this.identifier, this.display});
  
  factory Reference.fromJson(Map<String, dynamic> json) => _$ReferenceFromJson(json);
  Map<String, dynamic> toJson() => _$ReferenceToJson(this);
}