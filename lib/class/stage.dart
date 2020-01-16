import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'stage.g.dart';

@JsonSerializable(explicitToJson: true)
class Stage {
  CodeableConcept summary;
  List<Reference> assessment;
  CodeableConcept type;

  Stage({this.summary, this.assessment, this.type});

  factory Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);
  Map<String, dynamic> toJson() => _$StageToJson(this);
}