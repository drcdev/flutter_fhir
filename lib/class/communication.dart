import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:json_annotation/json_annotation.dart';
part 'communication.g.dart';

@JsonSerializable(explicitToJson: true)
class Communication {
  CodeableConcept language;
  bool preferred;

  Communication({this.language, this.preferred});
  
  factory Communication.fromJson(Map<String, dynamic> json) => _$CommunicationFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationToJson(this);
}