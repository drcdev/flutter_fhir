import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/period.dart';

part 'identifier.g.dart';

@JsonSerializable(explicitToJson: true)
class Identifier {

  // usual | official | temp | secondary | old (If known)
  String use;

  // Description of identifier
  CodeableConcept type;

  // The namespace for the identifier value
  String system;

  // The value that is unique
  String value;

  // Time period when id is/was valid for use
  Period period;

  // Organization that issued id (may be just text)
  Reference assigner;

  Identifier({this.use, this.type, this.system, this.value, this.period, this.assigner});
  
  factory Identifier.fromJson(Map<String, dynamic> json) => _$IdentifierFromJson(json);
  Map<String, dynamic> toJson() => _$IdentifierToJson(this);
}